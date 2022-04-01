#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_ingress_0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_0_V_data_V.dat");
unsigned int ap_apatb_ingress_0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_0_V_keep_V.dat");
unsigned int ap_apatb_ingress_0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_0_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_ingress_0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_0_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_ingress_0_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_0_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_0_V_dest_V.dat");
unsigned int ap_apatb_ingress_1_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_1_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_1_V_data_V.dat");
unsigned int ap_apatb_ingress_1_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_1_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_1_V_keep_V.dat");
unsigned int ap_apatb_ingress_1_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_1_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_1_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_ingress_1_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_1_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_1_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_ingress_1_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ingress_1_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_ingress_1_V_dest_V.dat");
unsigned int ap_apatb_egress_0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_0_V_data_V.dat");
unsigned int ap_apatb_egress_0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_0_V_keep_V.dat");
unsigned int ap_apatb_egress_0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_0_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_egress_0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_0_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_egress_0_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_0_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_0_V_dest_V.dat");
unsigned int ap_apatb_egress_1_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_1_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_1_V_data_V.dat");
unsigned int ap_apatb_egress_1_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_1_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_1_V_keep_V.dat");
unsigned int ap_apatb_egress_1_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_1_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_1_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_egress_1_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_1_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_1_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_egress_1_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_egress_1_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_egress_1_V_dest_V.dat");
unsigned int ap_apatb_golden_fifo_0_cap_bc;
static AESL_RUNTIME_BC __xlx_golden_fifo_0_V_size_Reader("../tv/stream_size/stream_size_out_golden_fifo_0.dat");
unsigned int ap_apatb_golden_fifo_1_cap_bc;
static AESL_RUNTIME_BC __xlx_golden_fifo_1_V_size_Reader("../tv/stream_size/stream_size_out_golden_fifo_1.dat");
struct __cosim_s20__ { char data[32]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void hash_controller(__cosim_s20__*, __cosim_s20__*, __cosim_s20__*, __cosim_s20__*, int, int, int, int, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, __cosim_s4__*, __cosim_s4__*, char, char, __cosim_s40__*, __cosim_s40__*);
extern "C" void apatb_hash_controller_hw(volatile void * __xlx_apatb_param_rd_0, volatile void * __xlx_apatb_param_rd_1, volatile void * __xlx_apatb_param_wr_0, volatile void * __xlx_apatb_param_wr_1, volatile void * __xlx_apatb_param_ingress_0_V_data_V, volatile void * __xlx_apatb_param_ingress_0_V_keep_V, volatile void * __xlx_apatb_param_ingress_0_V_strb_V, volatile void * __xlx_apatb_param_ingress_0_V_last_V, volatile void * __xlx_apatb_param_ingress_0_V_dest_V, volatile void * __xlx_apatb_param_ingress_1_V_data_V, volatile void * __xlx_apatb_param_ingress_1_V_keep_V, volatile void * __xlx_apatb_param_ingress_1_V_strb_V, volatile void * __xlx_apatb_param_ingress_1_V_last_V, volatile void * __xlx_apatb_param_ingress_1_V_dest_V, volatile void * __xlx_apatb_param_egress_0_V_data_V, volatile void * __xlx_apatb_param_egress_0_V_keep_V, volatile void * __xlx_apatb_param_egress_0_V_strb_V, volatile void * __xlx_apatb_param_egress_0_V_last_V, volatile void * __xlx_apatb_param_egress_0_V_dest_V, volatile void * __xlx_apatb_param_egress_1_V_data_V, volatile void * __xlx_apatb_param_egress_1_V_keep_V, volatile void * __xlx_apatb_param_egress_1_V_strb_V, volatile void * __xlx_apatb_param_egress_1_V_last_V, volatile void * __xlx_apatb_param_egress_1_V_dest_V, volatile void * __xlx_apatb_param_golden_fifo_0, volatile void * __xlx_apatb_param_golden_fifo_1, char __xlx_apatb_param_first, char __xlx_apatb_param_last, __cosim_s40__* __xlx_apatb_param_block_header, __cosim_s40__* __xlx_apatb_param_target) {
  // Collect __xlx_rd_0__tmp_vec
  vector<sc_bv<256> >__xlx_rd_0__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_rd_0)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_rd_0)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_rd_0)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_rd_0)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_rd_0)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_rd_0)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_rd_0)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_rd_0)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_rd_0)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_rd_0)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_rd_0)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_rd_0)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_rd_0)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_rd_0)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_rd_0)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_rd_0)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_rd_0)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_rd_0)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_rd_0)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_rd_0)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_rd_0)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_rd_0)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_rd_0)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_rd_0)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_rd_0)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_rd_0)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_rd_0)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_rd_0)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_rd_0)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_rd_0)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_rd_0)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_rd_0)[j*32+31];
    __xlx_rd_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_rd_0 = 1;
  int __xlx_offset_param_rd_0 = 0;
  int __xlx_offset_byte_param_rd_0 = 0*32;
  __cosim_s20__* __xlx_rd_0__input_buffer= new __cosim_s20__[__xlx_rd_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_rd_0__tmp_vec.size(); ++i) {
    ((long long*)__xlx_rd_0__input_buffer)[i*4+0] = __xlx_rd_0__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_rd_0__input_buffer)[i*4+1] = __xlx_rd_0__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_rd_0__input_buffer)[i*4+2] = __xlx_rd_0__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_rd_0__input_buffer)[i*4+3] = __xlx_rd_0__tmp_vec[i].range(255, 192).to_uint64();
  }
  // Collect __xlx_rd_1__tmp_vec
  vector<sc_bv<256> >__xlx_rd_1__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_rd_1)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_rd_1)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_rd_1)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_rd_1)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_rd_1)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_rd_1)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_rd_1)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_rd_1)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_rd_1)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_rd_1)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_rd_1)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_rd_1)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_rd_1)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_rd_1)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_rd_1)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_rd_1)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_rd_1)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_rd_1)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_rd_1)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_rd_1)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_rd_1)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_rd_1)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_rd_1)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_rd_1)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_rd_1)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_rd_1)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_rd_1)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_rd_1)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_rd_1)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_rd_1)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_rd_1)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_rd_1)[j*32+31];
    __xlx_rd_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_rd_1 = 1;
  int __xlx_offset_param_rd_1 = 0;
  int __xlx_offset_byte_param_rd_1 = 0*32;
  __cosim_s20__* __xlx_rd_1__input_buffer= new __cosim_s20__[__xlx_rd_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_rd_1__tmp_vec.size(); ++i) {
    ((long long*)__xlx_rd_1__input_buffer)[i*4+0] = __xlx_rd_1__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_rd_1__input_buffer)[i*4+1] = __xlx_rd_1__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_rd_1__input_buffer)[i*4+2] = __xlx_rd_1__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_rd_1__input_buffer)[i*4+3] = __xlx_rd_1__tmp_vec[i].range(255, 192).to_uint64();
  }
  // Collect __xlx_wr_0__tmp_vec
  vector<sc_bv<256> >__xlx_wr_0__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_wr_0)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_wr_0)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_wr_0)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_wr_0)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_wr_0)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_wr_0)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_wr_0)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_wr_0)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_wr_0)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_wr_0)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_wr_0)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_wr_0)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_wr_0)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_wr_0)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_wr_0)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_wr_0)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_wr_0)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_wr_0)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_wr_0)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_wr_0)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_wr_0)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_wr_0)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_wr_0)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_wr_0)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_wr_0)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_wr_0)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_wr_0)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_wr_0)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_wr_0)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_wr_0)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_wr_0)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_wr_0)[j*32+31];
    __xlx_wr_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_wr_0 = 1;
  int __xlx_offset_param_wr_0 = 0;
  int __xlx_offset_byte_param_wr_0 = 0*32;
  __cosim_s20__* __xlx_wr_0__input_buffer= new __cosim_s20__[__xlx_wr_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_wr_0__tmp_vec.size(); ++i) {
    ((long long*)__xlx_wr_0__input_buffer)[i*4+0] = __xlx_wr_0__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_wr_0__input_buffer)[i*4+1] = __xlx_wr_0__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_wr_0__input_buffer)[i*4+2] = __xlx_wr_0__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_wr_0__input_buffer)[i*4+3] = __xlx_wr_0__tmp_vec[i].range(255, 192).to_uint64();
  }
  // Collect __xlx_wr_1__tmp_vec
  vector<sc_bv<256> >__xlx_wr_1__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_wr_1)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_wr_1)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_wr_1)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_wr_1)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_wr_1)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_wr_1)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_wr_1)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_wr_1)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_wr_1)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_wr_1)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_wr_1)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_wr_1)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_wr_1)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_wr_1)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_wr_1)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_wr_1)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_wr_1)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_wr_1)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_wr_1)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_wr_1)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_wr_1)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_wr_1)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_wr_1)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_wr_1)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_wr_1)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_wr_1)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_wr_1)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_wr_1)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_wr_1)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_wr_1)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_wr_1)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_wr_1)[j*32+31];
    __xlx_wr_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_wr_1 = 1;
  int __xlx_offset_param_wr_1 = 0;
  int __xlx_offset_byte_param_wr_1 = 0*32;
  __cosim_s20__* __xlx_wr_1__input_buffer= new __cosim_s20__[__xlx_wr_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_wr_1__tmp_vec.size(); ++i) {
    ((long long*)__xlx_wr_1__input_buffer)[i*4+0] = __xlx_wr_1__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_wr_1__input_buffer)[i*4+1] = __xlx_wr_1__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_wr_1__input_buffer)[i*4+2] = __xlx_wr_1__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_wr_1__input_buffer)[i*4+3] = __xlx_wr_1__tmp_vec[i].range(255, 192).to_uint64();
  }
  //Create input buffer for ingress_0_V_data_V
  ap_apatb_ingress_0_V_data_V_cap_bc = __xlx_ingress_0_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_ingress_0_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_ingress_0_V_data_V_cap_bc];
  //Create input buffer for ingress_0_V_keep_V
  ap_apatb_ingress_0_V_keep_V_cap_bc = __xlx_ingress_0_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_ingress_0_V_keep_V_input_buffer= new long long[ap_apatb_ingress_0_V_keep_V_cap_bc];
  //Create input buffer for ingress_0_V_strb_V
  ap_apatb_ingress_0_V_strb_V_cap_bc = __xlx_ingress_0_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_ingress_0_V_strb_V_input_buffer= new long long[ap_apatb_ingress_0_V_strb_V_cap_bc];
  //Create input buffer for ingress_0_V_last_V
  ap_apatb_ingress_0_V_last_V_cap_bc = __xlx_ingress_0_V_last_V_V_size_Reader.read_size();
  char* __xlx_ingress_0_V_last_V_input_buffer= new char[ap_apatb_ingress_0_V_last_V_cap_bc];
  //Create input buffer for ingress_0_V_dest_V
  ap_apatb_ingress_0_V_dest_V_cap_bc = __xlx_ingress_0_V_dest_V_V_size_Reader.read_size();
  char* __xlx_ingress_0_V_dest_V_input_buffer= new char[ap_apatb_ingress_0_V_dest_V_cap_bc];
  //Create input buffer for ingress_1_V_data_V
  ap_apatb_ingress_1_V_data_V_cap_bc = __xlx_ingress_1_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_ingress_1_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_ingress_1_V_data_V_cap_bc];
  //Create input buffer for ingress_1_V_keep_V
  ap_apatb_ingress_1_V_keep_V_cap_bc = __xlx_ingress_1_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_ingress_1_V_keep_V_input_buffer= new long long[ap_apatb_ingress_1_V_keep_V_cap_bc];
  //Create input buffer for ingress_1_V_strb_V
  ap_apatb_ingress_1_V_strb_V_cap_bc = __xlx_ingress_1_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_ingress_1_V_strb_V_input_buffer= new long long[ap_apatb_ingress_1_V_strb_V_cap_bc];
  //Create input buffer for ingress_1_V_last_V
  ap_apatb_ingress_1_V_last_V_cap_bc = __xlx_ingress_1_V_last_V_V_size_Reader.read_size();
  char* __xlx_ingress_1_V_last_V_input_buffer= new char[ap_apatb_ingress_1_V_last_V_cap_bc];
  //Create input buffer for ingress_1_V_dest_V
  ap_apatb_ingress_1_V_dest_V_cap_bc = __xlx_ingress_1_V_dest_V_V_size_Reader.read_size();
  char* __xlx_ingress_1_V_dest_V_input_buffer= new char[ap_apatb_ingress_1_V_dest_V_cap_bc];
  // collect __xlx_egress_0_V_data_V_tmp_vec
  unsigned __xlx_egress_0_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_egress_0_V_data_V_V_read_Size = __xlx_egress_0_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_egress_0_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->empty() && __xlx_egress_0_V_data_V_V_tmp_Count < __xlx_egress_0_V_data_V_V_read_Size) {
    __xlx_egress_0_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_0_V_data_V)->read());
    __xlx_egress_0_V_data_V_V_tmp_Count++;
  }
  ap_apatb_egress_0_V_data_V_cap_bc = __xlx_egress_0_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_egress_0_V_data_V_input_buffer= new __cosim_s40__[__xlx_egress_0_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_0_V_data_V_tmp_vec.size(); ++i) {
    __xlx_egress_0_V_data_V_input_buffer[i] = __xlx_egress_0_V_data_V_tmp_vec[i];
  }
  // collect __xlx_egress_0_V_keep_V_tmp_vec
  unsigned __xlx_egress_0_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_egress_0_V_keep_V_V_read_Size = __xlx_egress_0_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_egress_0_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->empty() && __xlx_egress_0_V_keep_V_V_tmp_Count < __xlx_egress_0_V_keep_V_V_read_Size) {
    __xlx_egress_0_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_keep_V)->read());
    __xlx_egress_0_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_egress_0_V_keep_V_cap_bc = __xlx_egress_0_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_egress_0_V_keep_V_input_buffer= new long long[__xlx_egress_0_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_0_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_egress_0_V_keep_V_input_buffer[i] = __xlx_egress_0_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_egress_0_V_strb_V_tmp_vec
  unsigned __xlx_egress_0_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_egress_0_V_strb_V_V_read_Size = __xlx_egress_0_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_egress_0_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->empty() && __xlx_egress_0_V_strb_V_V_tmp_Count < __xlx_egress_0_V_strb_V_V_read_Size) {
    __xlx_egress_0_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_0_V_strb_V)->read());
    __xlx_egress_0_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_egress_0_V_strb_V_cap_bc = __xlx_egress_0_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_egress_0_V_strb_V_input_buffer= new long long[__xlx_egress_0_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_0_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_egress_0_V_strb_V_input_buffer[i] = __xlx_egress_0_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_egress_0_V_last_V_tmp_vec
  unsigned __xlx_egress_0_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_egress_0_V_last_V_V_read_Size = __xlx_egress_0_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_egress_0_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->empty() && __xlx_egress_0_V_last_V_V_tmp_Count < __xlx_egress_0_V_last_V_V_read_Size) {
    __xlx_egress_0_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_0_V_last_V)->read());
    __xlx_egress_0_V_last_V_V_tmp_Count++;
  }
  ap_apatb_egress_0_V_last_V_cap_bc = __xlx_egress_0_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_egress_0_V_last_V_input_buffer= new char[__xlx_egress_0_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_0_V_last_V_tmp_vec.size(); ++i) {
    __xlx_egress_0_V_last_V_input_buffer[i] = __xlx_egress_0_V_last_V_tmp_vec[i];
  }
  // collect __xlx_egress_0_V_dest_V_tmp_vec
  unsigned __xlx_egress_0_V_dest_V_V_tmp_Count = 0;
  unsigned __xlx_egress_0_V_dest_V_V_read_Size = __xlx_egress_0_V_dest_V_V_size_Reader.read_size();
  vector<char> __xlx_egress_0_V_dest_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->empty() && __xlx_egress_0_V_dest_V_V_tmp_Count < __xlx_egress_0_V_dest_V_V_read_Size) {
    __xlx_egress_0_V_dest_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_0_V_dest_V)->read());
    __xlx_egress_0_V_dest_V_V_tmp_Count++;
  }
  ap_apatb_egress_0_V_dest_V_cap_bc = __xlx_egress_0_V_dest_V_tmp_vec.size();
  // store input buffer
  char* __xlx_egress_0_V_dest_V_input_buffer= new char[__xlx_egress_0_V_dest_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_0_V_dest_V_tmp_vec.size(); ++i) {
    __xlx_egress_0_V_dest_V_input_buffer[i] = __xlx_egress_0_V_dest_V_tmp_vec[i];
  }
  // collect __xlx_egress_1_V_data_V_tmp_vec
  unsigned __xlx_egress_1_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_egress_1_V_data_V_V_read_Size = __xlx_egress_1_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_egress_1_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->empty() && __xlx_egress_1_V_data_V_V_tmp_Count < __xlx_egress_1_V_data_V_V_read_Size) {
    __xlx_egress_1_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_egress_1_V_data_V)->read());
    __xlx_egress_1_V_data_V_V_tmp_Count++;
  }
  ap_apatb_egress_1_V_data_V_cap_bc = __xlx_egress_1_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_egress_1_V_data_V_input_buffer= new __cosim_s40__[__xlx_egress_1_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_1_V_data_V_tmp_vec.size(); ++i) {
    __xlx_egress_1_V_data_V_input_buffer[i] = __xlx_egress_1_V_data_V_tmp_vec[i];
  }
  // collect __xlx_egress_1_V_keep_V_tmp_vec
  unsigned __xlx_egress_1_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_egress_1_V_keep_V_V_read_Size = __xlx_egress_1_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_egress_1_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->empty() && __xlx_egress_1_V_keep_V_V_tmp_Count < __xlx_egress_1_V_keep_V_V_read_Size) {
    __xlx_egress_1_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_keep_V)->read());
    __xlx_egress_1_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_egress_1_V_keep_V_cap_bc = __xlx_egress_1_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_egress_1_V_keep_V_input_buffer= new long long[__xlx_egress_1_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_1_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_egress_1_V_keep_V_input_buffer[i] = __xlx_egress_1_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_egress_1_V_strb_V_tmp_vec
  unsigned __xlx_egress_1_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_egress_1_V_strb_V_V_read_Size = __xlx_egress_1_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_egress_1_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->empty() && __xlx_egress_1_V_strb_V_V_tmp_Count < __xlx_egress_1_V_strb_V_V_read_Size) {
    __xlx_egress_1_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_egress_1_V_strb_V)->read());
    __xlx_egress_1_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_egress_1_V_strb_V_cap_bc = __xlx_egress_1_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_egress_1_V_strb_V_input_buffer= new long long[__xlx_egress_1_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_1_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_egress_1_V_strb_V_input_buffer[i] = __xlx_egress_1_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_egress_1_V_last_V_tmp_vec
  unsigned __xlx_egress_1_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_egress_1_V_last_V_V_read_Size = __xlx_egress_1_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_egress_1_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->empty() && __xlx_egress_1_V_last_V_V_tmp_Count < __xlx_egress_1_V_last_V_V_read_Size) {
    __xlx_egress_1_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_1_V_last_V)->read());
    __xlx_egress_1_V_last_V_V_tmp_Count++;
  }
  ap_apatb_egress_1_V_last_V_cap_bc = __xlx_egress_1_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_egress_1_V_last_V_input_buffer= new char[__xlx_egress_1_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_1_V_last_V_tmp_vec.size(); ++i) {
    __xlx_egress_1_V_last_V_input_buffer[i] = __xlx_egress_1_V_last_V_tmp_vec[i];
  }
  // collect __xlx_egress_1_V_dest_V_tmp_vec
  unsigned __xlx_egress_1_V_dest_V_V_tmp_Count = 0;
  unsigned __xlx_egress_1_V_dest_V_V_read_Size = __xlx_egress_1_V_dest_V_V_size_Reader.read_size();
  vector<char> __xlx_egress_1_V_dest_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->empty() && __xlx_egress_1_V_dest_V_V_tmp_Count < __xlx_egress_1_V_dest_V_V_read_Size) {
    __xlx_egress_1_V_dest_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_egress_1_V_dest_V)->read());
    __xlx_egress_1_V_dest_V_V_tmp_Count++;
  }
  ap_apatb_egress_1_V_dest_V_cap_bc = __xlx_egress_1_V_dest_V_tmp_vec.size();
  // store input buffer
  char* __xlx_egress_1_V_dest_V_input_buffer= new char[__xlx_egress_1_V_dest_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_egress_1_V_dest_V_tmp_vec.size(); ++i) {
    __xlx_egress_1_V_dest_V_input_buffer[i] = __xlx_egress_1_V_dest_V_tmp_vec[i];
  }
  //Create input buffer for golden_fifo_0
  ap_apatb_golden_fifo_0_cap_bc = __xlx_golden_fifo_0_V_size_Reader.read_size();
  __cosim_s4__* __xlx_golden_fifo_0_input_buffer= new __cosim_s4__[ap_apatb_golden_fifo_0_cap_bc];
  //Create input buffer for golden_fifo_1
  ap_apatb_golden_fifo_1_cap_bc = __xlx_golden_fifo_1_V_size_Reader.read_size();
  __cosim_s4__* __xlx_golden_fifo_1_input_buffer= new __cosim_s4__[ap_apatb_golden_fifo_1_cap_bc];
  // DUT call
  hash_controller(__xlx_rd_0__input_buffer, __xlx_rd_1__input_buffer, __xlx_wr_0__input_buffer, __xlx_wr_1__input_buffer, __xlx_offset_byte_param_rd_0, __xlx_offset_byte_param_rd_1, __xlx_offset_byte_param_wr_0, __xlx_offset_byte_param_wr_1, __xlx_ingress_0_V_data_V_input_buffer, __xlx_ingress_0_V_keep_V_input_buffer, __xlx_ingress_0_V_strb_V_input_buffer, __xlx_ingress_0_V_last_V_input_buffer, __xlx_ingress_0_V_dest_V_input_buffer, __xlx_ingress_1_V_data_V_input_buffer, __xlx_ingress_1_V_keep_V_input_buffer, __xlx_ingress_1_V_strb_V_input_buffer, __xlx_ingress_1_V_last_V_input_buffer, __xlx_ingress_1_V_dest_V_input_buffer, __xlx_egress_0_V_data_V_input_buffer, __xlx_egress_0_V_keep_V_input_buffer, __xlx_egress_0_V_strb_V_input_buffer, __xlx_egress_0_V_last_V_input_buffer, __xlx_egress_0_V_dest_V_input_buffer, __xlx_egress_1_V_data_V_input_buffer, __xlx_egress_1_V_keep_V_input_buffer, __xlx_egress_1_V_strb_V_input_buffer, __xlx_egress_1_V_last_V_input_buffer, __xlx_egress_1_V_dest_V_input_buffer, __xlx_golden_fifo_0_input_buffer, __xlx_golden_fifo_1_input_buffer, __xlx_apatb_param_first, __xlx_apatb_param_last, __xlx_apatb_param_block_header, __xlx_apatb_param_target);
// print __xlx_apatb_param_rd_0
  sc_bv<256>*__xlx_rd_0_output_buffer = new sc_bv<256>[__xlx_size_param_rd_0];
  for (int i = 0; i < __xlx_size_param_rd_0; ++i) {
    char* start = (char*)(&(__xlx_rd_0__input_buffer[__xlx_offset_param_rd_0]));
    __xlx_rd_0_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_rd_0_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_rd_0_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_rd_0_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_rd_0; ++i) {
    ((char*)__xlx_apatb_param_rd_0)[i*32+0] = __xlx_rd_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+1] = __xlx_rd_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+2] = __xlx_rd_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+3] = __xlx_rd_0_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+4] = __xlx_rd_0_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+5] = __xlx_rd_0_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+6] = __xlx_rd_0_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+7] = __xlx_rd_0_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+8] = __xlx_rd_0_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+9] = __xlx_rd_0_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+10] = __xlx_rd_0_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+11] = __xlx_rd_0_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+12] = __xlx_rd_0_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+13] = __xlx_rd_0_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+14] = __xlx_rd_0_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+15] = __xlx_rd_0_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+16] = __xlx_rd_0_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+17] = __xlx_rd_0_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+18] = __xlx_rd_0_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+19] = __xlx_rd_0_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+20] = __xlx_rd_0_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+21] = __xlx_rd_0_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+22] = __xlx_rd_0_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+23] = __xlx_rd_0_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+24] = __xlx_rd_0_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+25] = __xlx_rd_0_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+26] = __xlx_rd_0_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+27] = __xlx_rd_0_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+28] = __xlx_rd_0_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+29] = __xlx_rd_0_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+30] = __xlx_rd_0_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_rd_0)[i*32+31] = __xlx_rd_0_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_rd_1
  sc_bv<256>*__xlx_rd_1_output_buffer = new sc_bv<256>[__xlx_size_param_rd_1];
  for (int i = 0; i < __xlx_size_param_rd_1; ++i) {
    char* start = (char*)(&(__xlx_rd_1__input_buffer[__xlx_offset_param_rd_1]));
    __xlx_rd_1_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_rd_1_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_rd_1_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_rd_1_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_rd_1; ++i) {
    ((char*)__xlx_apatb_param_rd_1)[i*32+0] = __xlx_rd_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+1] = __xlx_rd_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+2] = __xlx_rd_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+3] = __xlx_rd_1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+4] = __xlx_rd_1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+5] = __xlx_rd_1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+6] = __xlx_rd_1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+7] = __xlx_rd_1_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+8] = __xlx_rd_1_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+9] = __xlx_rd_1_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+10] = __xlx_rd_1_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+11] = __xlx_rd_1_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+12] = __xlx_rd_1_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+13] = __xlx_rd_1_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+14] = __xlx_rd_1_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+15] = __xlx_rd_1_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+16] = __xlx_rd_1_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+17] = __xlx_rd_1_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+18] = __xlx_rd_1_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+19] = __xlx_rd_1_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+20] = __xlx_rd_1_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+21] = __xlx_rd_1_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+22] = __xlx_rd_1_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+23] = __xlx_rd_1_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+24] = __xlx_rd_1_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+25] = __xlx_rd_1_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+26] = __xlx_rd_1_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+27] = __xlx_rd_1_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+28] = __xlx_rd_1_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+29] = __xlx_rd_1_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+30] = __xlx_rd_1_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_rd_1)[i*32+31] = __xlx_rd_1_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_wr_0
  sc_bv<256>*__xlx_wr_0_output_buffer = new sc_bv<256>[__xlx_size_param_wr_0];
  for (int i = 0; i < __xlx_size_param_wr_0; ++i) {
    char* start = (char*)(&(__xlx_wr_0__input_buffer[__xlx_offset_param_wr_0]));
    __xlx_wr_0_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_wr_0_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_wr_0_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_wr_0_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_wr_0; ++i) {
    ((char*)__xlx_apatb_param_wr_0)[i*32+0] = __xlx_wr_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+1] = __xlx_wr_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+2] = __xlx_wr_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+3] = __xlx_wr_0_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+4] = __xlx_wr_0_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+5] = __xlx_wr_0_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+6] = __xlx_wr_0_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+7] = __xlx_wr_0_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+8] = __xlx_wr_0_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+9] = __xlx_wr_0_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+10] = __xlx_wr_0_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+11] = __xlx_wr_0_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+12] = __xlx_wr_0_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+13] = __xlx_wr_0_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+14] = __xlx_wr_0_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+15] = __xlx_wr_0_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+16] = __xlx_wr_0_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+17] = __xlx_wr_0_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+18] = __xlx_wr_0_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+19] = __xlx_wr_0_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+20] = __xlx_wr_0_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+21] = __xlx_wr_0_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+22] = __xlx_wr_0_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+23] = __xlx_wr_0_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+24] = __xlx_wr_0_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+25] = __xlx_wr_0_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+26] = __xlx_wr_0_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+27] = __xlx_wr_0_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+28] = __xlx_wr_0_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+29] = __xlx_wr_0_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+30] = __xlx_wr_0_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_wr_0)[i*32+31] = __xlx_wr_0_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_wr_1
  sc_bv<256>*__xlx_wr_1_output_buffer = new sc_bv<256>[__xlx_size_param_wr_1];
  for (int i = 0; i < __xlx_size_param_wr_1; ++i) {
    char* start = (char*)(&(__xlx_wr_1__input_buffer[__xlx_offset_param_wr_1]));
    __xlx_wr_1_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_wr_1_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_wr_1_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_wr_1_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_wr_1; ++i) {
    ((char*)__xlx_apatb_param_wr_1)[i*32+0] = __xlx_wr_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+1] = __xlx_wr_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+2] = __xlx_wr_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+3] = __xlx_wr_1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+4] = __xlx_wr_1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+5] = __xlx_wr_1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+6] = __xlx_wr_1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+7] = __xlx_wr_1_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+8] = __xlx_wr_1_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+9] = __xlx_wr_1_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+10] = __xlx_wr_1_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+11] = __xlx_wr_1_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+12] = __xlx_wr_1_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+13] = __xlx_wr_1_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+14] = __xlx_wr_1_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+15] = __xlx_wr_1_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+16] = __xlx_wr_1_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+17] = __xlx_wr_1_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+18] = __xlx_wr_1_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+19] = __xlx_wr_1_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+20] = __xlx_wr_1_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+21] = __xlx_wr_1_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+22] = __xlx_wr_1_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+23] = __xlx_wr_1_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+24] = __xlx_wr_1_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+25] = __xlx_wr_1_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+26] = __xlx_wr_1_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+27] = __xlx_wr_1_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+28] = __xlx_wr_1_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+29] = __xlx_wr_1_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+30] = __xlx_wr_1_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_wr_1)[i*32+31] = __xlx_wr_1_output_buffer[i].range(255, 248).to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_ingress_0_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_0_V_data_V)->write(__xlx_ingress_0_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_0_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_keep_V)->write(__xlx_ingress_0_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_0_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_0_V_strb_V)->write(__xlx_ingress_0_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_0_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_last_V)->write(__xlx_ingress_0_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_0_V_dest_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_0_V_dest_V)->write(__xlx_ingress_0_V_dest_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_1_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_ingress_1_V_data_V)->write(__xlx_ingress_1_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_1_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_keep_V)->write(__xlx_ingress_1_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_1_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_ingress_1_V_strb_V)->write(__xlx_ingress_1_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_1_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_last_V)->write(__xlx_ingress_1_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_ingress_1_V_dest_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_ingress_1_V_dest_V)->write(__xlx_ingress_1_V_dest_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_golden_fifo_0_cap_bc; ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_0)->write(__xlx_golden_fifo_0_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_golden_fifo_1_cap_bc; ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_golden_fifo_1)->write(__xlx_golden_fifo_1_input_buffer[i]);
}
