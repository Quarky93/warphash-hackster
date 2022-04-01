#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_rd_0 "../tv/cdatafile/c.hash_controller.autotvin_rd_0.dat"
#define AUTOTB_TVOUT_rd_0 "../tv/cdatafile/c.hash_controller.autotvout_rd_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_1 "../tv/cdatafile/c.hash_controller.autotvin_rd_1.dat"
#define AUTOTB_TVOUT_rd_1 "../tv/cdatafile/c.hash_controller.autotvout_rd_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_0 "../tv/cdatafile/c.hash_controller.autotvin_wr_0.dat"
#define AUTOTB_TVOUT_wr_0 "../tv/cdatafile/c.hash_controller.autotvout_wr_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_1 "../tv/cdatafile/c.hash_controller.autotvin_wr_1.dat"
#define AUTOTB_TVOUT_wr_1 "../tv/cdatafile/c.hash_controller.autotvout_wr_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_0_offset "../tv/cdatafile/c.hash_controller.autotvin_rd_0_offset.dat"
#define AUTOTB_TVOUT_rd_0_offset "../tv/cdatafile/c.hash_controller.autotvout_rd_0_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_1_offset "../tv/cdatafile/c.hash_controller.autotvin_rd_1_offset.dat"
#define AUTOTB_TVOUT_rd_1_offset "../tv/cdatafile/c.hash_controller.autotvout_rd_1_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_0_offset "../tv/cdatafile/c.hash_controller.autotvin_wr_0_offset.dat"
#define AUTOTB_TVOUT_wr_0_offset "../tv/cdatafile/c.hash_controller.autotvout_wr_0_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_1_offset "../tv/cdatafile/c.hash_controller.autotvin_wr_1_offset.dat"
#define AUTOTB_TVOUT_wr_1_offset "../tv/cdatafile/c.hash_controller.autotvout_wr_1_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_ingress_0_V_data_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_0_V_data_V.dat"
#define AUTOTB_TVOUT_ingress_0_V_data_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_0_V_data_V.dat"
#define AUTOTB_TVIN_ingress_0_V_keep_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_0_V_keep_V.dat"
#define AUTOTB_TVOUT_ingress_0_V_keep_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_0_V_keep_V.dat"
#define AUTOTB_TVIN_ingress_0_V_strb_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_0_V_strb_V.dat"
#define AUTOTB_TVOUT_ingress_0_V_strb_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_0_V_strb_V.dat"
#define AUTOTB_TVIN_ingress_0_V_last_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_0_V_last_V.dat"
#define AUTOTB_TVOUT_ingress_0_V_last_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_0_V_last_V.dat"
#define AUTOTB_TVIN_ingress_0_V_dest_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_0_V_dest_V.dat"
#define AUTOTB_TVOUT_ingress_0_V_dest_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_0_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_0_V_data_V "../tv/stream_size/stream_size_out_ingress_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_data_V "../tv/stream_size/stream_egress_status_ingress_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_0_V_keep_V "../tv/stream_size/stream_size_out_ingress_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_keep_V "../tv/stream_size/stream_egress_status_ingress_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_0_V_strb_V "../tv/stream_size/stream_size_out_ingress_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_strb_V "../tv/stream_size/stream_egress_status_ingress_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_0_V_last_V "../tv/stream_size/stream_size_out_ingress_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_last_V "../tv/stream_size/stream_egress_status_ingress_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_0_V_dest_V "../tv/stream_size/stream_size_out_ingress_0_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_dest_V "../tv/stream_size/stream_egress_status_ingress_0_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_ingress_1_V_data_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_1_V_data_V.dat"
#define AUTOTB_TVOUT_ingress_1_V_data_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_1_V_data_V.dat"
#define AUTOTB_TVIN_ingress_1_V_keep_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_1_V_keep_V.dat"
#define AUTOTB_TVOUT_ingress_1_V_keep_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_1_V_keep_V.dat"
#define AUTOTB_TVIN_ingress_1_V_strb_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_1_V_strb_V.dat"
#define AUTOTB_TVOUT_ingress_1_V_strb_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_1_V_strb_V.dat"
#define AUTOTB_TVIN_ingress_1_V_last_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_1_V_last_V.dat"
#define AUTOTB_TVOUT_ingress_1_V_last_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_1_V_last_V.dat"
#define AUTOTB_TVIN_ingress_1_V_dest_V "../tv/cdatafile/c.hash_controller.autotvin_ingress_1_V_dest_V.dat"
#define AUTOTB_TVOUT_ingress_1_V_dest_V "../tv/cdatafile/c.hash_controller.autotvout_ingress_1_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_1_V_data_V "../tv/stream_size/stream_size_out_ingress_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_data_V "../tv/stream_size/stream_egress_status_ingress_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_1_V_keep_V "../tv/stream_size/stream_size_out_ingress_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_keep_V "../tv/stream_size/stream_egress_status_ingress_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_1_V_strb_V "../tv/stream_size/stream_size_out_ingress_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_strb_V "../tv/stream_size/stream_egress_status_ingress_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_1_V_last_V "../tv/stream_size/stream_size_out_ingress_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_last_V "../tv/stream_size/stream_egress_status_ingress_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_ingress_1_V_dest_V "../tv/stream_size/stream_size_out_ingress_1_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_dest_V "../tv/stream_size/stream_egress_status_ingress_1_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_egress_0_V_data_V "../tv/cdatafile/c.hash_controller.autotvin_egress_0_V_data_V.dat"
#define AUTOTB_TVOUT_egress_0_V_data_V "../tv/cdatafile/c.hash_controller.autotvout_egress_0_V_data_V.dat"
#define AUTOTB_TVIN_egress_0_V_keep_V "../tv/cdatafile/c.hash_controller.autotvin_egress_0_V_keep_V.dat"
#define AUTOTB_TVOUT_egress_0_V_keep_V "../tv/cdatafile/c.hash_controller.autotvout_egress_0_V_keep_V.dat"
#define AUTOTB_TVIN_egress_0_V_strb_V "../tv/cdatafile/c.hash_controller.autotvin_egress_0_V_strb_V.dat"
#define AUTOTB_TVOUT_egress_0_V_strb_V "../tv/cdatafile/c.hash_controller.autotvout_egress_0_V_strb_V.dat"
#define AUTOTB_TVIN_egress_0_V_last_V "../tv/cdatafile/c.hash_controller.autotvin_egress_0_V_last_V.dat"
#define AUTOTB_TVOUT_egress_0_V_last_V "../tv/cdatafile/c.hash_controller.autotvout_egress_0_V_last_V.dat"
#define AUTOTB_TVIN_egress_0_V_dest_V "../tv/cdatafile/c.hash_controller.autotvin_egress_0_V_dest_V.dat"
#define AUTOTB_TVOUT_egress_0_V_dest_V "../tv/cdatafile/c.hash_controller.autotvout_egress_0_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_0_V_data_V "../tv/stream_size/stream_size_in_egress_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V "../tv/stream_size/stream_ingress_status_egress_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_0_V_keep_V "../tv/stream_size/stream_size_in_egress_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V "../tv/stream_size/stream_ingress_status_egress_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_0_V_strb_V "../tv/stream_size/stream_size_in_egress_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V "../tv/stream_size/stream_ingress_status_egress_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_0_V_last_V "../tv/stream_size/stream_size_in_egress_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V "../tv/stream_size/stream_ingress_status_egress_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_0_V_dest_V "../tv/stream_size/stream_size_in_egress_0_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V "../tv/stream_size/stream_ingress_status_egress_0_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_egress_1_V_data_V "../tv/cdatafile/c.hash_controller.autotvin_egress_1_V_data_V.dat"
#define AUTOTB_TVOUT_egress_1_V_data_V "../tv/cdatafile/c.hash_controller.autotvout_egress_1_V_data_V.dat"
#define AUTOTB_TVIN_egress_1_V_keep_V "../tv/cdatafile/c.hash_controller.autotvin_egress_1_V_keep_V.dat"
#define AUTOTB_TVOUT_egress_1_V_keep_V "../tv/cdatafile/c.hash_controller.autotvout_egress_1_V_keep_V.dat"
#define AUTOTB_TVIN_egress_1_V_strb_V "../tv/cdatafile/c.hash_controller.autotvin_egress_1_V_strb_V.dat"
#define AUTOTB_TVOUT_egress_1_V_strb_V "../tv/cdatafile/c.hash_controller.autotvout_egress_1_V_strb_V.dat"
#define AUTOTB_TVIN_egress_1_V_last_V "../tv/cdatafile/c.hash_controller.autotvin_egress_1_V_last_V.dat"
#define AUTOTB_TVOUT_egress_1_V_last_V "../tv/cdatafile/c.hash_controller.autotvout_egress_1_V_last_V.dat"
#define AUTOTB_TVIN_egress_1_V_dest_V "../tv/cdatafile/c.hash_controller.autotvin_egress_1_V_dest_V.dat"
#define AUTOTB_TVOUT_egress_1_V_dest_V "../tv/cdatafile/c.hash_controller.autotvout_egress_1_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_1_V_data_V "../tv/stream_size/stream_size_in_egress_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V "../tv/stream_size/stream_ingress_status_egress_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_1_V_keep_V "../tv/stream_size/stream_size_in_egress_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V "../tv/stream_size/stream_ingress_status_egress_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_1_V_strb_V "../tv/stream_size/stream_size_in_egress_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V "../tv/stream_size/stream_ingress_status_egress_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_1_V_last_V "../tv/stream_size/stream_size_in_egress_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V "../tv/stream_size/stream_ingress_status_egress_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_egress_1_V_dest_V "../tv/stream_size/stream_size_in_egress_1_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V "../tv/stream_size/stream_ingress_status_egress_1_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_golden_fifo_0 "../tv/cdatafile/c.hash_controller.autotvin_golden_fifo_0.dat"
#define AUTOTB_TVOUT_golden_fifo_0 "../tv/cdatafile/c.hash_controller.autotvout_golden_fifo_0.dat"
#define WRAPC_STREAM_SIZE_OUT_golden_fifo_0 "../tv/stream_size/stream_size_out_golden_fifo_0.dat"
#define WRAPC_STREAM_EGRESS_STATUS_golden_fifo_0 "../tv/stream_size/stream_egress_status_golden_fifo_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_golden_fifo_1 "../tv/cdatafile/c.hash_controller.autotvin_golden_fifo_1.dat"
#define AUTOTB_TVOUT_golden_fifo_1 "../tv/cdatafile/c.hash_controller.autotvout_golden_fifo_1.dat"
#define WRAPC_STREAM_SIZE_OUT_golden_fifo_1 "../tv/stream_size/stream_size_out_golden_fifo_1.dat"
#define WRAPC_STREAM_EGRESS_STATUS_golden_fifo_1 "../tv/stream_size/stream_egress_status_golden_fifo_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_first "../tv/cdatafile/c.hash_controller.autotvin_first.dat"
#define AUTOTB_TVOUT_first "../tv/cdatafile/c.hash_controller.autotvout_first.dat"
// wrapc file define:
#define AUTOTB_TVIN_last "../tv/cdatafile/c.hash_controller.autotvin_last.dat"
#define AUTOTB_TVOUT_last "../tv/cdatafile/c.hash_controller.autotvout_last.dat"
// wrapc file define:
#define AUTOTB_TVIN_block_header "../tv/cdatafile/c.hash_controller.autotvin_block_header.dat"
#define AUTOTB_TVOUT_block_header "../tv/cdatafile/c.hash_controller.autotvout_block_header.dat"
// wrapc file define:
#define AUTOTB_TVIN_target "../tv/cdatafile/c.hash_controller.autotvin_target.dat"
#define AUTOTB_TVOUT_target "../tv/cdatafile/c.hash_controller.autotvout_target.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_rd_0 "../tv/rtldatafile/rtl.hash_controller.autotvout_rd_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_1 "../tv/rtldatafile/rtl.hash_controller.autotvout_rd_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_0 "../tv/rtldatafile/rtl.hash_controller.autotvout_wr_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_1 "../tv/rtldatafile/rtl.hash_controller.autotvout_wr_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_0_offset "../tv/rtldatafile/rtl.hash_controller.autotvout_rd_0_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_1_offset "../tv/rtldatafile/rtl.hash_controller.autotvout_rd_1_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_0_offset "../tv/rtldatafile/rtl.hash_controller.autotvout_wr_0_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_1_offset "../tv/rtldatafile/rtl.hash_controller.autotvout_wr_1_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ingress_0_V_data_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_ingress_0_V_keep_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_ingress_0_V_strb_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_ingress_0_V_last_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_ingress_0_V_dest_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_0_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ingress_1_V_data_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_ingress_1_V_keep_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_ingress_1_V_strb_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_ingress_1_V_last_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_ingress_1_V_dest_V "../tv/rtldatafile/rtl.hash_controller.autotvout_ingress_1_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_egress_0_V_data_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_egress_0_V_keep_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_egress_0_V_strb_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_egress_0_V_last_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_egress_0_V_dest_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_0_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_egress_1_V_data_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_egress_1_V_keep_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_egress_1_V_strb_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_egress_1_V_last_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_egress_1_V_dest_V "../tv/rtldatafile/rtl.hash_controller.autotvout_egress_1_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_golden_fifo_0 "../tv/rtldatafile/rtl.hash_controller.autotvout_golden_fifo_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_golden_fifo_1 "../tv/rtldatafile/rtl.hash_controller.autotvout_golden_fifo_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_first "../tv/rtldatafile/rtl.hash_controller.autotvout_first.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_last "../tv/rtldatafile/rtl.hash_controller.autotvout_last.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_block_header "../tv/rtldatafile/rtl.hash_controller.autotvout_block_header.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_target "../tv/rtldatafile/rtl.hash_controller.autotvout_target.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  rd_0_depth = 0;
  rd_1_depth = 0;
  wr_0_depth = 0;
  wr_1_depth = 0;
  rd_0_offset_depth = 0;
  rd_1_offset_depth = 0;
  wr_0_offset_depth = 0;
  wr_1_offset_depth = 0;
  ingress_0_V_data_V_depth = 0;
  ingress_0_V_keep_V_depth = 0;
  ingress_0_V_strb_V_depth = 0;
  ingress_0_V_last_V_depth = 0;
  ingress_0_V_dest_V_depth = 0;
  ingress_1_V_data_V_depth = 0;
  ingress_1_V_keep_V_depth = 0;
  ingress_1_V_strb_V_depth = 0;
  ingress_1_V_last_V_depth = 0;
  ingress_1_V_dest_V_depth = 0;
  egress_0_V_data_V_depth = 0;
  egress_0_V_keep_V_depth = 0;
  egress_0_V_strb_V_depth = 0;
  egress_0_V_last_V_depth = 0;
  egress_0_V_dest_V_depth = 0;
  egress_1_V_data_V_depth = 0;
  egress_1_V_keep_V_depth = 0;
  egress_1_V_strb_V_depth = 0;
  egress_1_V_last_V_depth = 0;
  egress_1_V_dest_V_depth = 0;
  golden_fifo_0_depth = 0;
  golden_fifo_1_depth = 0;
  first_depth = 0;
  last_depth = 0;
  block_header_depth = 0;
  target_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{rd_0 " << rd_0_depth << "}\n";
  total_list << "{rd_1 " << rd_1_depth << "}\n";
  total_list << "{wr_0 " << wr_0_depth << "}\n";
  total_list << "{wr_1 " << wr_1_depth << "}\n";
  total_list << "{rd_0_offset " << rd_0_offset_depth << "}\n";
  total_list << "{rd_1_offset " << rd_1_offset_depth << "}\n";
  total_list << "{wr_0_offset " << wr_0_offset_depth << "}\n";
  total_list << "{wr_1_offset " << wr_1_offset_depth << "}\n";
  total_list << "{ingress_0_V_data_V " << ingress_0_V_data_V_depth << "}\n";
  total_list << "{ingress_0_V_keep_V " << ingress_0_V_keep_V_depth << "}\n";
  total_list << "{ingress_0_V_strb_V " << ingress_0_V_strb_V_depth << "}\n";
  total_list << "{ingress_0_V_last_V " << ingress_0_V_last_V_depth << "}\n";
  total_list << "{ingress_0_V_dest_V " << ingress_0_V_dest_V_depth << "}\n";
  total_list << "{ingress_1_V_data_V " << ingress_1_V_data_V_depth << "}\n";
  total_list << "{ingress_1_V_keep_V " << ingress_1_V_keep_V_depth << "}\n";
  total_list << "{ingress_1_V_strb_V " << ingress_1_V_strb_V_depth << "}\n";
  total_list << "{ingress_1_V_last_V " << ingress_1_V_last_V_depth << "}\n";
  total_list << "{ingress_1_V_dest_V " << ingress_1_V_dest_V_depth << "}\n";
  total_list << "{egress_0_V_data_V " << egress_0_V_data_V_depth << "}\n";
  total_list << "{egress_0_V_keep_V " << egress_0_V_keep_V_depth << "}\n";
  total_list << "{egress_0_V_strb_V " << egress_0_V_strb_V_depth << "}\n";
  total_list << "{egress_0_V_last_V " << egress_0_V_last_V_depth << "}\n";
  total_list << "{egress_0_V_dest_V " << egress_0_V_dest_V_depth << "}\n";
  total_list << "{egress_1_V_data_V " << egress_1_V_data_V_depth << "}\n";
  total_list << "{egress_1_V_keep_V " << egress_1_V_keep_V_depth << "}\n";
  total_list << "{egress_1_V_strb_V " << egress_1_V_strb_V_depth << "}\n";
  total_list << "{egress_1_V_last_V " << egress_1_V_last_V_depth << "}\n";
  total_list << "{egress_1_V_dest_V " << egress_1_V_dest_V_depth << "}\n";
  total_list << "{golden_fifo_0 " << golden_fifo_0_depth << "}\n";
  total_list << "{golden_fifo_1 " << golden_fifo_1_depth << "}\n";
  total_list << "{first " << first_depth << "}\n";
  total_list << "{last " << last_depth << "}\n";
  total_list << "{block_header " << block_header_depth << "}\n";
  total_list << "{target " << target_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int rd_0_depth;
    int rd_1_depth;
    int wr_0_depth;
    int wr_1_depth;
    int rd_0_offset_depth;
    int rd_1_offset_depth;
    int wr_0_offset_depth;
    int wr_1_offset_depth;
    int ingress_0_V_data_V_depth;
    int ingress_0_V_keep_V_depth;
    int ingress_0_V_strb_V_depth;
    int ingress_0_V_last_V_depth;
    int ingress_0_V_dest_V_depth;
    int ingress_1_V_data_V_depth;
    int ingress_1_V_keep_V_depth;
    int ingress_1_V_strb_V_depth;
    int ingress_1_V_last_V_depth;
    int ingress_1_V_dest_V_depth;
    int egress_0_V_data_V_depth;
    int egress_0_V_keep_V_depth;
    int egress_0_V_strb_V_depth;
    int egress_0_V_last_V_depth;
    int egress_0_V_dest_V_depth;
    int egress_1_V_data_V_depth;
    int egress_1_V_keep_V_depth;
    int egress_1_V_strb_V_depth;
    int egress_1_V_last_V_depth;
    int egress_1_V_dest_V_depth;
    int golden_fifo_0_depth;
    int golden_fifo_1_depth;
    int first_depth;
    int last_depth;
    int block_header_depth;
    int target_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s20__ { char data[32]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void hash_controller_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, char, char, __cosim_s40__*, __cosim_s40__*);

extern "C" void apatb_hash_controller_hw(volatile void * __xlx_apatb_param_rd_0, volatile void * __xlx_apatb_param_rd_1, volatile void * __xlx_apatb_param_wr_0, volatile void * __xlx_apatb_param_wr_1, volatile void * __xlx_apatb_param_ingress_0_V_data_V, volatile void * __xlx_apatb_param_ingress_0_V_keep_V, volatile void * __xlx_apatb_param_ingress_0_V_strb_V, volatile void * __xlx_apatb_param_ingress_0_V_last_V, volatile void * __xlx_apatb_param_ingress_0_V_dest_V, volatile void * __xlx_apatb_param_ingress_1_V_data_V, volatile void * __xlx_apatb_param_ingress_1_V_keep_V, volatile void * __xlx_apatb_param_ingress_1_V_strb_V, volatile void * __xlx_apatb_param_ingress_1_V_last_V, volatile void * __xlx_apatb_param_ingress_1_V_dest_V, volatile void * __xlx_apatb_param_egress_0_V_data_V, volatile void * __xlx_apatb_param_egress_0_V_keep_V, volatile void * __xlx_apatb_param_egress_0_V_strb_V, volatile void * __xlx_apatb_param_egress_0_V_last_V, volatile void * __xlx_apatb_param_egress_0_V_dest_V, volatile void * __xlx_apatb_param_egress_1_V_data_V, volatile void * __xlx_apatb_param_egress_1_V_keep_V, volatile void * __xlx_apatb_param_egress_1_V_strb_V, volatile void * __xlx_apatb_param_egress_1_V_last_V, volatile void * __xlx_apatb_param_egress_1_V_dest_V, volatile void * __xlx_apatb_param_golden_fifo_0, volatile void * __xlx_apatb_param_golden_fifo_1, char __xlx_apatb_param_first, char __xlx_apatb_param_last, __cosim_s40__* __xlx_apatb_param_block_header, __cosim_s40__* __xlx_apatb_param_target) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > wr_0_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "wr_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "wr_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_wr_0)[j*4+0] = wr_0_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_wr_0)[j*4+1] = wr_0_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_wr_0)[j*4+2] = wr_0_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_wr_0)[j*4+3] = wr_0_pc_buffer[i].range(255,192).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > wr_1_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "wr_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "wr_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_wr_1)[j*4+0] = wr_1_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_wr_1)[j*4+1] = wr_1_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_wr_1)[j*4+2] = wr_1_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_wr_1)[j*4+3] = wr_1_pc_buffer[i].range(255,192).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {unsigned xlx_stream_ingress_0_size = 0;

          std::vector<sc_bv<512> > ingress_0_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_0_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_0_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_0_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_0_size=ingress_0_V_data_V_pc_buffer.size();
ingress_0_V_data_V_pc_buffer_Copy=ingress_0_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_0_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_0_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_0_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_0_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_0_size=ingress_0_V_keep_V_pc_buffer.size();
ingress_0_V_keep_V_pc_buffer_Copy=ingress_0_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_0_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_0_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_0_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_0_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_0_size=ingress_0_V_strb_V_pc_buffer.size();
ingress_0_V_strb_V_pc_buffer_Copy=ingress_0_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_0_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_0_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_0_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_0_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_0_size=ingress_0_V_last_V_pc_buffer.size();
ingress_0_V_last_V_pc_buffer_Copy=ingress_0_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_0_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_0_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_0_V_dest_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_0_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_0_size=ingress_0_V_dest_V_pc_buffer.size();
ingress_0_V_dest_V_pc_buffer_Copy=ingress_0_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_ingress_0_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = ingress_0_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = ingress_0_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = ingress_0_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = ingress_0_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = ingress_0_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = ingress_0_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = ingress_0_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = ingress_0_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = ingress_0_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = ingress_0_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = ingress_0_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_last_V)->write(xlx_stream_elt_last);
char xlx_stream_elt_dest;
((char*)&xlx_stream_elt_dest)[0] = ingress_0_V_dest_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_dest_V)->write(xlx_stream_elt_dest);
}}{unsigned xlx_stream_ingress_1_size = 0;

          std::vector<sc_bv<512> > ingress_1_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_1_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_1_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_1_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_1_size=ingress_1_V_data_V_pc_buffer.size();
ingress_1_V_data_V_pc_buffer_Copy=ingress_1_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_1_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_1_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_1_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_1_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_1_size=ingress_1_V_keep_V_pc_buffer.size();
ingress_1_V_keep_V_pc_buffer_Copy=ingress_1_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_1_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_1_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_1_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_1_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_1_size=ingress_1_V_strb_V_pc_buffer.size();
ingress_1_V_strb_V_pc_buffer_Copy=ingress_1_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_1_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_1_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_1_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_1_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_1_size=ingress_1_V_last_V_pc_buffer.size();
ingress_1_V_last_V_pc_buffer_Copy=ingress_1_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > ingress_1_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ingress_1_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > ingress_1_V_dest_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ingress_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ingress_1_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ingress_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_ingress_1_size=ingress_1_V_dest_V_pc_buffer.size();
ingress_1_V_dest_V_pc_buffer_Copy=ingress_1_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_ingress_1_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = ingress_1_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = ingress_1_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = ingress_1_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = ingress_1_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = ingress_1_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = ingress_1_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = ingress_1_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = ingress_1_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = ingress_1_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = ingress_1_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = ingress_1_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_last_V)->write(xlx_stream_elt_last);
char xlx_stream_elt_dest;
((char*)&xlx_stream_elt_dest)[0] = ingress_1_V_dest_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_dest_V)->write(xlx_stream_elt_dest);
}}long __xlx_apatb_param_egress_0_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_egress_0_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_egress_0_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_egress_0_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->read();
}
long __xlx_apatb_param_egress_1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_egress_1_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_egress_1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_egress_1_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->read();
}
long __xlx_apatb_param_golden_fifo_0_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_golden_fifo_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_golden_fifo_0_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_golden_fifo_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > golden_fifo_0_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "golden_fifo_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              golden_fifo_0_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "golden_fifo_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s4__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*4+0] = golden_fifo_0_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*4+1] = golden_fifo_0_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*4+2] = golden_fifo_0_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*4+3] = golden_fifo_0_pc_buffer[j].range(31, 24).to_int64();
((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_golden_fifo_1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_golden_fifo_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_golden_fifo_1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_golden_fifo_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > golden_fifo_1_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "golden_fifo_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              golden_fifo_1_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "golden_fifo_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s4__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*4+0] = golden_fifo_1_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*4+1] = golden_fifo_1_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*4+2] = golden_fifo_1_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*4+3] = golden_fifo_1_pc_buffer[j].range(31, 24).to_int64();
((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_0_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_0_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_ingress_1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_ingress_1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_0_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_egress_1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_golden_fifo_0);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_golden_fifo_0);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_golden_fifo_1);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_golden_fifo_1);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_rd_0 = 0;
// print rd_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_rd_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_rd_0 = 0*32;
  if (__xlx_apatb_param_rd_0) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_rd_0)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_rd_0)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_rd_0)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_rd_0)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_rd_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.rd_0_depth);
aesl_fh.write(AUTOTB_TVIN_rd_0, end_str());
}

unsigned __xlx_offset_byte_param_rd_1 = 0;
// print rd_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_rd_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_rd_1 = 0*32;
  if (__xlx_apatb_param_rd_1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_rd_1)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_rd_1)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_rd_1)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_rd_1)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_rd_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.rd_1_depth);
aesl_fh.write(AUTOTB_TVIN_rd_1, end_str());
}

unsigned __xlx_offset_byte_param_wr_0 = 0;
// print wr_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_wr_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_wr_0 = 0*32;
  if (__xlx_apatb_param_wr_0) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_wr_0)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_wr_0)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_wr_0)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_wr_0)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_wr_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.wr_0_depth);
aesl_fh.write(AUTOTB_TVIN_wr_0, end_str());
}

unsigned __xlx_offset_byte_param_wr_1 = 0;
// print wr_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_wr_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_wr_1 = 0*32;
  if (__xlx_apatb_param_wr_1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_wr_1)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_wr_1)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_wr_1)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_wr_1)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_wr_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.wr_1_depth);
aesl_fh.write(AUTOTB_TVIN_wr_1, end_str());
}

// print rd_0_offset Transactions
{
aesl_fh.write(AUTOTB_TVIN_rd_0_offset, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_rd_0;
aesl_fh.write(AUTOTB_TVIN_rd_0_offset, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.rd_0_offset_depth);
aesl_fh.write(AUTOTB_TVIN_rd_0_offset, end_str());
}

// print rd_1_offset Transactions
{
aesl_fh.write(AUTOTB_TVIN_rd_1_offset, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_rd_1;
aesl_fh.write(AUTOTB_TVIN_rd_1_offset, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.rd_1_offset_depth);
aesl_fh.write(AUTOTB_TVIN_rd_1_offset, end_str());
}

// print wr_0_offset Transactions
{
aesl_fh.write(AUTOTB_TVIN_wr_0_offset, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_wr_0;
aesl_fh.write(AUTOTB_TVIN_wr_0_offset, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.wr_0_offset_depth);
aesl_fh.write(AUTOTB_TVIN_wr_0_offset, end_str());
}

// print wr_1_offset Transactions
{
aesl_fh.write(AUTOTB_TVIN_wr_1_offset, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_wr_1;
aesl_fh.write(AUTOTB_TVIN_wr_1_offset, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.wr_1_offset_depth);
aesl_fh.write(AUTOTB_TVIN_wr_1_offset, end_str());
}

// data
std::vector<__cosim_s40__> __xlx_apatb_param_ingress_0_V_data_V_stream_buf;
long __xlx_apatb_param_ingress_0_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_ingress_0_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_ingress_0_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_ingress_0_V_last_V_stream_buf;
// id
// dest
std::vector<char> __xlx_apatb_param_ingress_0_V_dest_V_stream_buf;
// data
std::vector<__cosim_s40__> __xlx_apatb_param_ingress_1_V_data_V_stream_buf;
long __xlx_apatb_param_ingress_1_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_ingress_1_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_ingress_1_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_ingress_1_V_last_V_stream_buf;
// id
// dest
std::vector<char> __xlx_apatb_param_ingress_1_V_dest_V_stream_buf;
// data
std::vector<__cosim_s40__> __xlx_apatb_param_egress_0_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->empty())
    __xlx_apatb_param_egress_0_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_0_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->write(__xlx_apatb_param_egress_0_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_egress_0_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_egress_0_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->empty())
    __xlx_apatb_param_egress_0_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_0_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->write(__xlx_apatb_param_egress_0_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_egress_0_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->empty())
    __xlx_apatb_param_egress_0_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_0_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->write(__xlx_apatb_param_egress_0_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_egress_0_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->empty())
    __xlx_apatb_param_egress_0_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_0_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->write(__xlx_apatb_param_egress_0_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<char> __xlx_apatb_param_egress_0_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->empty())
    __xlx_apatb_param_egress_0_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_0_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->write(__xlx_apatb_param_egress_0_V_dest_V_stream_buf[i]);
  }
// data
std::vector<__cosim_s40__> __xlx_apatb_param_egress_1_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->empty())
    __xlx_apatb_param_egress_1_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_1_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->write(__xlx_apatb_param_egress_1_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_egress_1_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_egress_1_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->empty())
    __xlx_apatb_param_egress_1_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_1_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->write(__xlx_apatb_param_egress_1_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_egress_1_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->empty())
    __xlx_apatb_param_egress_1_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_1_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->write(__xlx_apatb_param_egress_1_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_egress_1_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->empty())
    __xlx_apatb_param_egress_1_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_1_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->write(__xlx_apatb_param_egress_1_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<char> __xlx_apatb_param_egress_1_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->empty())
    __xlx_apatb_param_egress_1_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_egress_1_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->write(__xlx_apatb_param_egress_1_V_dest_V_stream_buf[i]);
  }
std::vector<__cosim_s4__> __xlx_apatb_param_golden_fifo_0_stream_buf;
long __xlx_apatb_param_golden_fifo_0_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_golden_fifo_1_stream_buf;
long __xlx_apatb_param_golden_fifo_1_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->size();
// print first Transactions
{
aesl_fh.write(AUTOTB_TVIN_first, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_first);
aesl_fh.write(AUTOTB_TVIN_first, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.first_depth);
aesl_fh.write(AUTOTB_TVIN_first, end_str());
}

// print last Transactions
{
aesl_fh.write(AUTOTB_TVIN_last, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_last);
aesl_fh.write(AUTOTB_TVIN_last, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.last_depth);
aesl_fh.write(AUTOTB_TVIN_last, end_str());
}

// print block_header Transactions
{
aesl_fh.write(AUTOTB_TVIN_block_header, begin_str(AESL_transaction));
{
    sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_block_header)[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_block_header)[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_block_header)[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_block_header)[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_block_header)[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_block_header)[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_block_header)[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_block_header)[0*8+7];
aesl_fh.write(AUTOTB_TVIN_block_header, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.block_header_depth);
aesl_fh.write(AUTOTB_TVIN_block_header, end_str());
}

// print target Transactions
{
aesl_fh.write(AUTOTB_TVIN_target, begin_str(AESL_transaction));
{
    sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_target)[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_target)[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_target)[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_target)[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_target)[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_target)[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_target)[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_target)[0*8+7];
aesl_fh.write(AUTOTB_TVIN_target, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.target_depth);
aesl_fh.write(AUTOTB_TVIN_target, end_str());
}

CodeState = CALL_C_DUT;
hash_controller_hw_stub_wrapper(__xlx_apatb_param_rd_0, __xlx_apatb_param_rd_1, __xlx_apatb_param_wr_0, __xlx_apatb_param_wr_1, __xlx_apatb_param_ingress_0_V_data_V, __xlx_apatb_param_ingress_0_V_keep_V, __xlx_apatb_param_ingress_0_V_strb_V, __xlx_apatb_param_ingress_0_V_last_V, __xlx_apatb_param_ingress_0_V_dest_V, __xlx_apatb_param_ingress_1_V_data_V, __xlx_apatb_param_ingress_1_V_keep_V, __xlx_apatb_param_ingress_1_V_strb_V, __xlx_apatb_param_ingress_1_V_last_V, __xlx_apatb_param_ingress_1_V_dest_V, __xlx_apatb_param_egress_0_V_data_V, __xlx_apatb_param_egress_0_V_keep_V, __xlx_apatb_param_egress_0_V_strb_V, __xlx_apatb_param_egress_0_V_last_V, __xlx_apatb_param_egress_0_V_dest_V, __xlx_apatb_param_egress_1_V_data_V, __xlx_apatb_param_egress_1_V_keep_V, __xlx_apatb_param_egress_1_V_strb_V, __xlx_apatb_param_egress_1_V_last_V, __xlx_apatb_param_egress_1_V_dest_V, __xlx_apatb_param_golden_fifo_0, __xlx_apatb_param_golden_fifo_1, __xlx_apatb_param_first, __xlx_apatb_param_last, __xlx_apatb_param_block_header, __xlx_apatb_param_target);
CodeState = DUMP_OUTPUTS;
// print wr_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_wr_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_wr_0 = 0*32;
  if (__xlx_apatb_param_wr_0) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_wr_0)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_wr_0)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_wr_0)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_wr_0)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_wr_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.wr_0_depth);
aesl_fh.write(AUTOTB_TVOUT_wr_0, end_str());
}

// print wr_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_wr_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_wr_1 = 0*32;
  if (__xlx_apatb_param_wr_1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_wr_1)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_wr_1)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_wr_1)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_wr_1)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_wr_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.wr_1_depth);
aesl_fh.write(AUTOTB_TVOUT_wr_1, end_str());
}


//********************** dump C output stream *******************
long __xlx_apatb_param_ingress_0_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->size() - __xlx_apatb_param_ingress_0_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->empty())
    __xlx_apatb_param_ingress_0_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_0_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->write(__xlx_apatb_param_ingress_0_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_keep_V)->empty())
    __xlx_apatb_param_ingress_0_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_0_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_keep_V)->write(__xlx_apatb_param_ingress_0_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_strb_V)->empty())
    __xlx_apatb_param_ingress_0_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_0_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_strb_V)->write(__xlx_apatb_param_ingress_0_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_last_V)->empty())
    __xlx_apatb_param_ingress_0_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_0_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_last_V)->write(__xlx_apatb_param_ingress_0_V_last_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_dest_V)->empty())
    __xlx_apatb_param_ingress_0_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_0_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_dest_V)->write(__xlx_apatb_param_ingress_0_V_dest_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_dest_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_ingress_0_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_ingress_0_V_data_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_ingress_0_V_keep_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_ingress_0_V_strb_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_ingress_0_V_last_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_6_lv = ((char*)&__xlx_apatb_param_ingress_0_V_dest_V_stream_buf[__xlx_apatb_param_ingress_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_ingress_0_stream_buf_final_size, &tcl_file.ingress_0_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_0_stream_buf_final_size, &tcl_file.ingress_0_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_0_stream_buf_final_size, &tcl_file.ingress_0_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_0_stream_buf_final_size, &tcl_file.ingress_0_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_0_stream_buf_final_size, &tcl_file.ingress_0_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_0_V_dest_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_0_V_dest_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_ingress_1_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->size() - __xlx_apatb_param_ingress_1_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->empty())
    __xlx_apatb_param_ingress_1_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_1_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->write(__xlx_apatb_param_ingress_1_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_keep_V)->empty())
    __xlx_apatb_param_ingress_1_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_1_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_keep_V)->write(__xlx_apatb_param_ingress_1_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_strb_V)->empty())
    __xlx_apatb_param_ingress_1_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_1_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_strb_V)->write(__xlx_apatb_param_ingress_1_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_last_V)->empty())
    __xlx_apatb_param_ingress_1_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_1_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_last_V)->write(__xlx_apatb_param_ingress_1_V_last_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_dest_V)->empty())
    __xlx_apatb_param_ingress_1_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_ingress_1_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_dest_V)->write(__xlx_apatb_param_ingress_1_V_dest_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_dest_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_ingress_1_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_ingress_1_V_data_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_ingress_1_V_keep_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_ingress_1_V_strb_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_ingress_1_V_last_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_6_lv = ((char*)&__xlx_apatb_param_ingress_1_V_dest_V_stream_buf[__xlx_apatb_param_ingress_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_ingress_1_stream_buf_final_size, &tcl_file.ingress_1_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_1_stream_buf_final_size, &tcl_file.ingress_1_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_1_stream_buf_final_size, &tcl_file.ingress_1_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_1_stream_buf_final_size, &tcl_file.ingress_1_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_ingress_1_stream_buf_final_size, &tcl_file.ingress_1_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVOUT_ingress_1_V_dest_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ingress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_ingress_1_V_dest_V, end_str());
}
long __xlx_apatb_param_egress_0_stream_buf_final_size = __xlx_apatb_param_egress_0_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_egress_0_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_0_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_0_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_0_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_0_V_dest_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_egress_0_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_0_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_egress_0_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_0_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_egress_0_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_0_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_egress_0_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_0_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_6_lv = ((char*)&__xlx_apatb_param_egress_0_V_dest_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_0_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_egress_0_stream_buf_final_size, &tcl_file.egress_0_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_0_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_0_stream_buf_final_size, &tcl_file.egress_0_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_0_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_0_stream_buf_final_size, &tcl_file.egress_0_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_0_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_0_stream_buf_final_size, &tcl_file.egress_0_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_0_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_0_stream_buf_final_size, &tcl_file.egress_0_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_0_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_0_stream_buf_final_size > 0) {
  long egress_0_V_data_V_stream_ingress_size = __xlx_apatb_param_egress_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; j++) {
    egress_0_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_0_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_0_stream_buf_final_size > 0) {
  long egress_0_V_keep_V_stream_ingress_size = __xlx_apatb_param_egress_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; j++) {
    egress_0_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_0_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_0_stream_buf_final_size > 0) {
  long egress_0_V_strb_V_stream_ingress_size = __xlx_apatb_param_egress_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; j++) {
    egress_0_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_0_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_0_stream_buf_final_size > 0) {
  long egress_0_V_last_V_stream_ingress_size = __xlx_apatb_param_egress_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; j++) {
    egress_0_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_0_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_0_stream_buf_final_size > 0) {
  long egress_0_V_dest_V_stream_ingress_size = __xlx_apatb_param_egress_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_0_stream_buf_final_size; j != e; j++) {
    egress_0_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_0_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_0_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_0_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_0_V_dest_V, end_str());
}
long __xlx_apatb_param_egress_1_stream_buf_final_size = __xlx_apatb_param_egress_1_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_egress_1_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_1_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_1_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_1_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_egress_1_V_dest_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_egress_1_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_1_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_egress_1_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_1_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_egress_1_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_1_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_egress_1_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_1_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_6_lv = ((char*)&__xlx_apatb_param_egress_1_V_dest_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_egress_1_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_egress_1_stream_buf_final_size, &tcl_file.egress_1_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_1_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_1_stream_buf_final_size, &tcl_file.egress_1_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_1_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_1_stream_buf_final_size, &tcl_file.egress_1_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_1_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_1_stream_buf_final_size, &tcl_file.egress_1_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_1_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_egress_1_stream_buf_final_size, &tcl_file.egress_1_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_egress_1_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_1_stream_buf_final_size > 0) {
  long egress_1_V_data_V_stream_ingress_size = __xlx_apatb_param_egress_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; j++) {
    egress_1_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_1_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_1_stream_buf_final_size > 0) {
  long egress_1_V_keep_V_stream_ingress_size = __xlx_apatb_param_egress_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; j++) {
    egress_1_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_1_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_1_stream_buf_final_size > 0) {
  long egress_1_V_strb_V_stream_ingress_size = __xlx_apatb_param_egress_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; j++) {
    egress_1_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_1_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_1_stream_buf_final_size > 0) {
  long egress_1_V_last_V_stream_ingress_size = __xlx_apatb_param_egress_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; j++) {
    egress_1_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_1_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_egress_1_stream_buf_final_size > 0) {
  long egress_1_V_dest_V_stream_ingress_size = __xlx_apatb_param_egress_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_egress_1_stream_buf_final_size; j != e; j++) {
    egress_1_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long egress_1_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", egress_1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_egress_1_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_egress_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_egress_1_V_dest_V, end_str());
}
long __xlx_apatb_param_golden_fifo_0_stream_buf_final_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->size() - __xlx_apatb_param_golden_fifo_0_stream_buf_size;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->empty())
    __xlx_apatb_param_golden_fifo_0_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->read());
  for (int i = 0; i < __xlx_apatb_param_golden_fifo_0_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->write(__xlx_apatb_param_golden_fifo_0_stream_buf[i]);
  }
// print golden_fifo_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_0, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_golden_fifo_0_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_golden_fifo_0_stream_buf[__xlx_apatb_param_golden_fifo_0_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_golden_fifo_0_stream_buf_final_size, &tcl_file.golden_fifo_0_depth);
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_0, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_0, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_golden_fifo_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_0, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_0, end_str());
}
long __xlx_apatb_param_golden_fifo_1_stream_buf_final_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->size() - __xlx_apatb_param_golden_fifo_1_stream_buf_size;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->empty())
    __xlx_apatb_param_golden_fifo_1_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->read());
  for (int i = 0; i < __xlx_apatb_param_golden_fifo_1_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->write(__xlx_apatb_param_golden_fifo_1_stream_buf[i]);
  }
// print golden_fifo_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_1, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_golden_fifo_1_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_golden_fifo_1_stream_buf[__xlx_apatb_param_golden_fifo_1_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_golden_fifo_1_stream_buf_final_size, &tcl_file.golden_fifo_1_depth);
aesl_fh.write(AUTOTB_TVOUT_golden_fifo_1, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_1, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_golden_fifo_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_1, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_golden_fifo_1, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
