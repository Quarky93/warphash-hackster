#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

// Size of buffer for each port in words (64-byte midstate)
// There are two read and two write ports in this design,
// so the total buffer size is 4GB for source and 4GB for drain.
#define BUFFER_SIZE 33554432

using packet_t = ap_axiu<512, 0, 0, 1>;

void ingress(hls::stream<packet_t> &ingress, const ap_uint<256> *gmem, int dest, bool first, ap_uint<512> block_header) {
	for (int i = 0; i < BUFFER_SIZE; i++) {
#pragma HLS PIPELINE II=2
		packet_t packet;
		if (first == false) {
			packet.data(255, 0) = gmem[2 * i + 0];
			packet.data(511, 256) = gmem[2 * i + 1];
		} else {
			packet.data(511, 32) = block_header(511, 32);
			packet.data(31, 0) = block_header(31, 0) + (i + BUFFER_SIZE * dest);
		}
		packet.dest = dest;
		ingress.write(packet);
	}
}

void egress(ap_uint<256> *gmem, hls::stream<packet_t> &egress, int dest, bool last, ap_uint<512> target, hls::stream<ap_uint<32>> &golden_fifo) {
	for (int i = 0; i < BUFFER_SIZE; i++) {
#pragma HLS PIPELINE II=2
		packet_t packet = egress.read();
		if (last == false) {
			gmem[2 * i + 0] = packet.data(255, 0);
			gmem[2 * i + 1] = packet.data(511, 256);
		} else if (packet.data < target) {
			golden_fifo.write(i + BUFFER_SIZE * dest);
		}
	}
}

void pass(const ap_uint<256> *rd_0,
	const ap_uint<256> *rd_1,
	ap_uint<256> *wr_0,
	ap_uint<256> *wr_1,
	hls::stream<packet_t> &ingress_0,
	hls::stream<packet_t> &ingress_1,
	hls::stream<packet_t> &egress_0,
	hls::stream<packet_t> &egress_1,
	hls::stream<ap_uint<32>> &golden_fifo_0,
	hls::stream<ap_uint<32>> &golden_fifo_1,
	bool first,
	bool last,
	ap_uint<512> block_header,
	ap_uint<512> target) {
#pragma HLS DATAFLOW
	ingress(ingress_0, rd_0, 0, first, block_header);
	ingress(ingress_1, rd_1, 1, first, block_header);
	egress(wr_0, egress_0, 0, last, target, golden_fifo_0);
	egress(wr_1, egress_1, 1, last, target, golden_fifo_1);
}

void hash_controller(
	// HBM facing ports
	const ap_uint<256> *rd_0,
	const ap_uint<256> *rd_1,
	ap_uint<256> *wr_0,
	ap_uint<256> *wr_1,
	// logic facing ports
	hls::stream<packet_t> &ingress_0,
	hls::stream<packet_t> &ingress_1,
	hls::stream<packet_t> &egress_0,
	hls::stream<packet_t> &egress_1,
	hls::stream<ap_uint<32>> &golden_fifo_0,
	hls::stream<ap_uint<32>> &golden_fifo_1,
	// control registers
	// true if we are starting another batch
	// (feed hash cores block header while incrementing nonce)
	// otherwise, pull mid-states from HBM
	bool first,
	bool last,
	// block header (last 32 bits are the nonce)
	ap_uint<512> block_header,
	ap_uint<512> target
	) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=s_axilite port=first
#pragma HLS INTERFACE mode=s_axilite port=last
#pragma HLS INTERFACE mode=s_axilite port=block_header
#pragma HLS INTERFACE mode=s_axilite port=target
#pragma HLS INTERFACE mode=axis register_mode=both port=egress_1 register
#pragma HLS INTERFACE mode=axis register_mode=both port=egress_0 register
#pragma HLS INTERFACE mode=axis register_mode=both port=ingress_1 register
#pragma HLS INTERFACE mode=axis register_mode=both port=ingress_0 register
#pragma HLS INTERFACE mode=axis register_mode=both port=golden_fifo_0 register
#pragma HLS INTERFACE mode=axis register_mode=both port=golden_fifo_1 register
#pragma HLS INTERFACE mode=m_axi bundle=rd_0 port=rd_0 offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=rd_1 port=rd_1 offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=wr_0 port=wr_0 offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=wr_1 port=wr_1 offset=slave
	pass(rd_0, rd_1, wr_0, wr_1, ingress_0, ingress_1, egress_0, egress_1, golden_fifo_0, golden_fifo_1, first, last, block_header, target);
}
