#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_local_block", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_rd_0_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_0_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_0_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_rd_0_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_0_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_rd_0_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_rd_0_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_rd_0_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_rd_0_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_rd_0_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_rd_0_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_rd_0_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_rd_0_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_0_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_0_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_0_WDATA", 256, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_rd_0_WSTRB", 32, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_rd_0_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_rd_0_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_0_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_0_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_0_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_0_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_rd_0_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_0_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_rd_0_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_rd_0_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_rd_0_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_rd_0_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_rd_0_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_rd_0_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_rd_0_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_rd_0_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_0_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_0_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_0_RDATA", 256, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_rd_0_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_rd_0_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_0_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_0_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_rd_0_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_0_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_0_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_rd_0_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_0_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_1_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_1_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_1_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_rd_1_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_1_AWLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_rd_1_AWSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_rd_1_AWBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_rd_1_AWLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_rd_1_AWCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_rd_1_AWPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_rd_1_AWQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_rd_1_AWREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_rd_1_AWUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_1_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_1_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_1_WDATA", 256, hls_out, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_rd_1_WSTRB", 32, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_rd_1_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_rd_1_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_1_WUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_1_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_1_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_1_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_rd_1_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_1_ARLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_rd_1_ARSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_rd_1_ARBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_rd_1_ARLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_rd_1_ARCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_rd_1_ARPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_rd_1_ARQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_rd_1_ARREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_rd_1_ARUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_1_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_1_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_1_RDATA", 256, hls_in, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_rd_1_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_rd_1_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_1_RUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_rd_1_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_rd_1_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_rd_1_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_rd_1_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_rd_1_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_rd_1_BUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_0_AWVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_0_AWREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_0_AWADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_wr_0_AWID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_0_AWLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_wr_0_AWSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_wr_0_AWBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_wr_0_AWLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_wr_0_AWCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_wr_0_AWPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_wr_0_AWQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_wr_0_AWREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_wr_0_AWUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_0_WVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_0_WREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_0_WDATA", 256, hls_out, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_wr_0_WSTRB", 32, hls_out, 2, "m_axi", "STRB", 1),
	Port_Property("m_axi_wr_0_WLAST", 1, hls_out, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_wr_0_WID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_0_WUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_0_ARVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_0_ARREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_0_ARADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_wr_0_ARID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_0_ARLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_wr_0_ARSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_wr_0_ARBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_wr_0_ARLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_wr_0_ARCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_wr_0_ARPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_wr_0_ARQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_wr_0_ARREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_wr_0_ARUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_0_RVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_0_RREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_0_RDATA", 256, hls_in, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_wr_0_RLAST", 1, hls_in, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_wr_0_RID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_0_RUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_0_RRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_wr_0_BVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_0_BREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_0_BRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_wr_0_BID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_0_BUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_1_AWVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_1_AWREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_1_AWADDR", 64, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_wr_1_AWID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_1_AWLEN", 8, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_wr_1_AWSIZE", 3, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_wr_1_AWBURST", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_wr_1_AWLOCK", 2, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_wr_1_AWCACHE", 4, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_wr_1_AWPROT", 3, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_wr_1_AWQOS", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_wr_1_AWREGION", 4, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_wr_1_AWUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_1_WVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_1_WREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_1_WDATA", 256, hls_out, 3, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_wr_1_WSTRB", 32, hls_out, 3, "m_axi", "STRB", 1),
	Port_Property("m_axi_wr_1_WLAST", 1, hls_out, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_wr_1_WID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_1_WUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_1_ARVALID", 1, hls_out, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_1_ARREADY", 1, hls_in, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_1_ARADDR", 64, hls_out, 3, "m_axi", "ADDR", 1),
	Port_Property("m_axi_wr_1_ARID", 1, hls_out, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_1_ARLEN", 8, hls_out, 3, "m_axi", "SIZE", 1),
	Port_Property("m_axi_wr_1_ARSIZE", 3, hls_out, 3, "m_axi", "BURST", 1),
	Port_Property("m_axi_wr_1_ARBURST", 2, hls_out, 3, "m_axi", "LOCK", 1),
	Port_Property("m_axi_wr_1_ARLOCK", 2, hls_out, 3, "m_axi", "CACHE", 1),
	Port_Property("m_axi_wr_1_ARCACHE", 4, hls_out, 3, "m_axi", "PROT", 1),
	Port_Property("m_axi_wr_1_ARPROT", 3, hls_out, 3, "m_axi", "QOS", 1),
	Port_Property("m_axi_wr_1_ARQOS", 4, hls_out, 3, "m_axi", "REGION", 1),
	Port_Property("m_axi_wr_1_ARREGION", 4, hls_out, 3, "m_axi", "USER", 1),
	Port_Property("m_axi_wr_1_ARUSER", 1, hls_out, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_1_RVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_1_RREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_1_RDATA", 256, hls_in, 3, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_wr_1_RLAST", 1, hls_in, 3, "m_axi", "LAST", 1),
	Port_Property("m_axi_wr_1_RID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_1_RUSER", 1, hls_in, 3, "m_axi", "DATA", 1),
	Port_Property("m_axi_wr_1_RRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_wr_1_BVALID", 1, hls_in, 3, "m_axi", "VALID", 1),
	Port_Property("m_axi_wr_1_BREADY", 1, hls_out, 3, "m_axi", "READY", 1),
	Port_Property("m_axi_wr_1_BRESP", 2, hls_in, 3, "m_axi", "RESP", 1),
	Port_Property("m_axi_wr_1_BID", 1, hls_in, 3, "m_axi", "ID", 1),
	Port_Property("m_axi_wr_1_BUSER", 1, hls_in, 3, "m_axi", "DATA", 1),
	Port_Property("ingress_0_TDATA", 512, hls_out, 8, "axis", "out_data", 1),
	Port_Property("ingress_0_TVALID", 1, hls_out, 12, "axis", "out_vld", 1),
	Port_Property("ingress_0_TREADY", 1, hls_in, 12, "axis", "out_acc", 1),
	Port_Property("ingress_0_TKEEP", 64, hls_out, 9, "axis", "out_data", 1),
	Port_Property("ingress_0_TSTRB", 64, hls_out, 10, "axis", "out_data", 1),
	Port_Property("ingress_0_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
	Port_Property("ingress_0_TDEST", 1, hls_out, 12, "axis", "out_data", 1),
	Port_Property("ingress_1_TDATA", 512, hls_out, 13, "axis", "out_data", 1),
	Port_Property("ingress_1_TVALID", 1, hls_out, 17, "axis", "out_vld", 1),
	Port_Property("ingress_1_TREADY", 1, hls_in, 17, "axis", "out_acc", 1),
	Port_Property("ingress_1_TKEEP", 64, hls_out, 14, "axis", "out_data", 1),
	Port_Property("ingress_1_TSTRB", 64, hls_out, 15, "axis", "out_data", 1),
	Port_Property("ingress_1_TLAST", 1, hls_out, 16, "axis", "out_data", 1),
	Port_Property("ingress_1_TDEST", 1, hls_out, 17, "axis", "out_data", 1),
	Port_Property("egress_0_TDATA", 512, hls_in, 18, "axis", "in_data", 1),
	Port_Property("egress_0_TVALID", 1, hls_in, 22, "axis", "in_vld", 1),
	Port_Property("egress_0_TREADY", 1, hls_out, 22, "axis", "in_acc", 1),
	Port_Property("egress_0_TKEEP", 64, hls_in, 19, "axis", "in_data", 1),
	Port_Property("egress_0_TSTRB", 64, hls_in, 20, "axis", "in_data", 1),
	Port_Property("egress_0_TLAST", 1, hls_in, 21, "axis", "in_data", 1),
	Port_Property("egress_0_TDEST", 1, hls_in, 22, "axis", "in_data", 1),
	Port_Property("egress_1_TDATA", 512, hls_in, 23, "axis", "in_data", 1),
	Port_Property("egress_1_TVALID", 1, hls_in, 27, "axis", "in_vld", 1),
	Port_Property("egress_1_TREADY", 1, hls_out, 27, "axis", "in_acc", 1),
	Port_Property("egress_1_TKEEP", 64, hls_in, 24, "axis", "in_data", 1),
	Port_Property("egress_1_TSTRB", 64, hls_in, 25, "axis", "in_data", 1),
	Port_Property("egress_1_TLAST", 1, hls_in, 26, "axis", "in_data", 1),
	Port_Property("egress_1_TDEST", 1, hls_in, 27, "axis", "in_data", 1),
	Port_Property("golden_fifo_0_TDATA", 32, hls_out, 28, "axis", "out_data", 1),
	Port_Property("golden_fifo_0_TVALID", 1, hls_out, 28, "axis", "out_vld", 1),
	Port_Property("golden_fifo_0_TREADY", 1, hls_in, 28, "axis", "out_acc", 1),
	Port_Property("golden_fifo_1_TDATA", 32, hls_out, 29, "axis", "out_data", 1),
	Port_Property("golden_fifo_1_TVALID", 1, hls_out, 29, "axis", "out_vld", 1),
	Port_Property("golden_fifo_1_TREADY", 1, hls_in, 29, "axis", "out_acc", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 8, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 8, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "hash_controller";
