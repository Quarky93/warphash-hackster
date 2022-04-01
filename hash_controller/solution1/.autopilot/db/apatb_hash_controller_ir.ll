; ModuleID = '/home/quarky/hash_controller/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 1>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 1>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_hash_controller_ir(%"struct.ap_uint<256>"* %rd_0, %"struct.ap_uint<256>"* %rd_1, %"struct.ap_uint<256>"* %wr_0, %"struct.ap_uint<256>"* %wr_1, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_0, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_1, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_0, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_1, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_0, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_1, i1 %first, i1 %last, %"struct.ap_uint<512>"* nocapture readonly %block_header, %"struct.ap_uint<512>"* nocapture readonly %target) local_unnamed_addr #1 {
entry:
  %rd_0_copy = alloca i256, align 512
  %rd_1_copy = alloca i256, align 512
  %wr_0_copy = alloca i256, align 512
  %wr_1_copy = alloca i256, align 512
  %ingress_0_copy.data = alloca i512
  %ingress_0_copy.keep = alloca i64
  %ingress_0_copy.strb = alloca i64
  %ingress_0_copy.last = alloca i1
  %ingress_0_copy.dest = alloca i1
  %ingress_1_copy.data = alloca i512
  %ingress_1_copy.keep = alloca i64
  %ingress_1_copy.strb = alloca i64
  %ingress_1_copy.last = alloca i1
  %ingress_1_copy.dest = alloca i1
  %egress_0_copy.data = alloca i512
  %egress_0_copy.keep = alloca i64
  %egress_0_copy.strb = alloca i64
  %egress_0_copy.last = alloca i1
  %egress_0_copy.dest = alloca i1
  %egress_1_copy.data = alloca i512
  %egress_1_copy.keep = alloca i64
  %egress_1_copy.strb = alloca i64
  %egress_1_copy.last = alloca i1
  %egress_1_copy.dest = alloca i1
  %golden_fifo_0_copy = alloca %"class.hls::stream<ap_uint<32>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_0_copy) ]
  %golden_fifo_1_copy = alloca %"class.hls::stream<ap_uint<32>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_1_copy) ]
  call fastcc void @copy_in(%"struct.ap_uint<256>"* %rd_0, i256* nonnull align 512 %rd_0_copy, %"struct.ap_uint<256>"* %rd_1, i256* nonnull align 512 %rd_1_copy, %"struct.ap_uint<256>"* %wr_0, i256* nonnull align 512 %wr_0_copy, %"struct.ap_uint<256>"* %wr_1, i256* nonnull align 512 %wr_1_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_0, i512* %ingress_0_copy.data, i64* %ingress_0_copy.keep, i64* %ingress_0_copy.strb, i1* %ingress_0_copy.last, i1* %ingress_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_1, i512* %ingress_1_copy.data, i64* %ingress_1_copy.keep, i64* %ingress_1_copy.strb, i1* %ingress_1_copy.last, i1* %ingress_1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_0, i512* %egress_0_copy.data, i64* %egress_0_copy.keep, i64* %egress_0_copy.strb, i1* %egress_0_copy.last, i1* %egress_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_1, i512* %egress_1_copy.data, i64* %egress_1_copy.keep, i64* %egress_1_copy.strb, i1* %egress_1_copy.last, i1* %egress_1_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %golden_fifo_0_copy, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_1, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %golden_fifo_1_copy)
  call void @apatb_hash_controller_hw(i256* %rd_0_copy, i256* %rd_1_copy, i256* %wr_0_copy, i256* %wr_1_copy, i512* %ingress_0_copy.data, i64* %ingress_0_copy.keep, i64* %ingress_0_copy.strb, i1* %ingress_0_copy.last, i1* %ingress_0_copy.dest, i512* %ingress_1_copy.data, i64* %ingress_1_copy.keep, i64* %ingress_1_copy.strb, i1* %ingress_1_copy.last, i1* %ingress_1_copy.dest, i512* %egress_0_copy.data, i64* %egress_0_copy.keep, i64* %egress_0_copy.strb, i1* %egress_0_copy.last, i1* %egress_0_copy.dest, i512* %egress_1_copy.data, i64* %egress_1_copy.keep, i64* %egress_1_copy.strb, i1* %egress_1_copy.last, i1* %egress_1_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_0_copy, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_1_copy, i1 %first, i1 %last, %"struct.ap_uint<512>"* %block_header, %"struct.ap_uint<512>"* %target)
  call fastcc void @copy_out(%"struct.ap_uint<256>"* %rd_0, i256* nonnull align 512 %rd_0_copy, %"struct.ap_uint<256>"* %rd_1, i256* nonnull align 512 %rd_1_copy, %"struct.ap_uint<256>"* %wr_0, i256* nonnull align 512 %wr_0_copy, %"struct.ap_uint<256>"* %wr_1, i256* nonnull align 512 %wr_1_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_0, i512* %ingress_0_copy.data, i64* %ingress_0_copy.keep, i64* %ingress_0_copy.strb, i1* %ingress_0_copy.last, i1* %ingress_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %ingress_1, i512* %ingress_1_copy.data, i64* %ingress_1_copy.keep, i64* %ingress_1_copy.strb, i1* %ingress_1_copy.last, i1* %ingress_1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_0, i512* %egress_0_copy.data, i64* %egress_0_copy.keep, i64* %egress_0_copy.strb, i1* %egress_0_copy.last, i1* %egress_0_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %egress_1, i512* %egress_1_copy.data, i64* %egress_1_copy.keep, i64* %egress_1_copy.strb, i1* %egress_1_copy.last, i1* %egress_1_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %golden_fifo_0_copy, %"class.hls::stream<ap_uint<32>, 0>"* %golden_fifo_1, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %golden_fifo_1_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"struct.ap_uint<256>"* readonly, i256* noalias align 512, %"struct.ap_uint<256>"* readonly, i256* noalias align 512, %"struct.ap_uint<256>"* readonly, i256* noalias align 512, %"struct.ap_uint<256>"* readonly, i256* noalias align 512, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.4" %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.3" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.4" %_V_dest_V6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.0" %_V_data_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.1" %_V_keep_V4, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.2" %_V_strb_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.3" %_V_last_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.4" %_V_dest_V7, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.43"(i256* align 512 %1, %"struct.ap_uint<256>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.43"(i256* align 512 %3, %"struct.ap_uint<256>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.43"(i256* align 512 %5, %"struct.ap_uint<256>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.43"(i256* align 512 %7, %"struct.ap_uint<256>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.73"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.73"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i1* %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.73"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5, i1* %_V_dest_V6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.73"(i512* %_V_data_V3, i64* %_V_keep_V4, i64* %_V_strb_V5, i1* %_V_last_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* align 512 %13, %"class.hls::stream<ap_uint<32>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* align 512 %15, %"class.hls::stream<ap_uint<32>, 0>"* %14)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"struct.ap_uint<256>"*, i256* noalias readonly align 512, %"struct.ap_uint<256>"*, i256* noalias readonly align 512, %"struct.ap_uint<256>"*, i256* noalias readonly align 512, %"struct.ap_uint<256>"*, i256* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.4" %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.3" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="21.4" %_V_dest_V6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.0" %_V_data_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.1" %_V_keep_V4, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.2" %_V_strb_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.3" %_V_last_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="27.4" %_V_dest_V7, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %2, i256* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %4, i256* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %6, i256* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %8, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %9, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i1* %_V_dest_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %10, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i1* %_V_last_V5, i1* %_V_dest_V6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %11, i512* %_V_data_V3, i64* %_V_keep_V4, i64* %_V_strb_V5, i1* %_V_last_V6, i1* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %12, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %14, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %15)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* noalias, i256* noalias readonly align 512) unnamed_addr #6 {
entry:
  %2 = icmp eq %"struct.ap_uint<256>"* %0, null
  %3 = icmp eq i256* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i256, i256* %1, align 512
  store i256 %5, i256* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.43"(i256* noalias align 512, %"struct.ap_uint<256>"* noalias readonly) unnamed_addr #6 {
entry:
  %2 = icmp eq i256* %0, null
  %3 = icmp eq %"struct.ap_uint<256>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i256, i256* %.0.0.04, align 32
  store i256 %5, i256* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.66"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.66"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i512* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_64(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i512* %2 to i8*
  %10 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %9, i8* %10)
  %11 = load volatile i512, i512* %2
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %"struct.ap_uint<512>"* %12 to i512*
  store i512 %11, i512* %13
  %14 = bitcast i64* %4 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %14, i8* %15)
  %16 = load volatile i64, i64* %4
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %18 = bitcast %"struct.ap_uint<64>"* %17 to i64*
  store i64 %16, i64* %18
  %19 = bitcast i64* %3 to i8*
  %20 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %19, i8* %20)
  %21 = load volatile i64, i64* %3
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %"struct.ap_uint<64>"* %22 to i64*
  store i64 %21, i64* %23
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %6 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %"struct.ap_uint<1>"* %29 to i1*
  store i1 %28, i1* %30
  %31 = bitcast i1* %5 to i8*
  %32 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %31, i8* %32)
  %33 = bitcast i1* %5 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i1
  %36 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %37 = bitcast %"struct.ap_uint<1>"* %36 to i1*
  store i1 %35, i1* %37
  %38 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1 to i8*
  %39 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %38, i8* %39)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.73"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.76"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>.76"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_hash_controller_hw(i256*, i256*, i256*, i256*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, i1, i1, %"struct.ap_uint<512>"*, %"struct.ap_uint<512>"*)

define void @hash_controller_hw_stub_wrapper(i256*, i256*, i256*, i256*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, i512*, i64*, i64*, i1*, i1*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, i1, i1, %"struct.ap_uint<512>"*, %"struct.ap_uint<512>"*) #7 {
entry:
  %30 = alloca %"struct.ap_uint<256>"
  %31 = alloca %"struct.ap_uint<256>"
  %32 = alloca %"struct.ap_uint<256>"
  %33 = alloca %"struct.ap_uint<256>"
  %34 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  %35 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  %36 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  %37 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"
  call void @copy_out(%"struct.ap_uint<256>"* %30, i256* %0, %"struct.ap_uint<256>"* %31, i256* %1, %"struct.ap_uint<256>"* %32, i256* %2, %"struct.ap_uint<256>"* %33, i256* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %34, i512* %4, i64* %5, i64* %6, i1* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %35, i512* %9, i64* %10, i64* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %36, i512* %14, i64* %15, i64* %16, i1* %17, i1* %18, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %37, i512* %19, i64* %20, i64* %21, i1* %22, i1* %23, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %24, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %25)
  call void @hash_controller_hw_stub(%"struct.ap_uint<256>"* %30, %"struct.ap_uint<256>"* %31, %"struct.ap_uint<256>"* %32, %"struct.ap_uint<256>"* %33, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %34, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %35, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %36, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %37, %"class.hls::stream<ap_uint<32>, 0>"* %24, %"class.hls::stream<ap_uint<32>, 0>"* %25, i1 %26, i1 %27, %"struct.ap_uint<512>"* %28, %"struct.ap_uint<512>"* %29)
  call void @copy_in(%"struct.ap_uint<256>"* %30, i256* %0, %"struct.ap_uint<256>"* %31, i256* %1, %"struct.ap_uint<256>"* %32, i256* %2, %"struct.ap_uint<256>"* %33, i256* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %34, i512* %4, i64* %5, i64* %6, i1* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %35, i512* %9, i64* %10, i64* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %36, i512* %14, i64* %15, i64* %16, i1* %17, i1* %18, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"* %37, i512* %19, i64* %20, i64* %21, i1* %22, i1* %23, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %24, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %25)
  ret void
}

declare void @hash_controller_hw_stub(%"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 1>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, i1, i1, %"struct.ap_uint<512>"*, %"struct.ap_uint<512>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
