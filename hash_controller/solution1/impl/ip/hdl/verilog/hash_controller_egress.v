// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hash_controller_egress (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        egress_0_TVALID,
        m_axi_wr_0_AWVALID,
        m_axi_wr_0_AWREADY,
        m_axi_wr_0_AWADDR,
        m_axi_wr_0_AWID,
        m_axi_wr_0_AWLEN,
        m_axi_wr_0_AWSIZE,
        m_axi_wr_0_AWBURST,
        m_axi_wr_0_AWLOCK,
        m_axi_wr_0_AWCACHE,
        m_axi_wr_0_AWPROT,
        m_axi_wr_0_AWQOS,
        m_axi_wr_0_AWREGION,
        m_axi_wr_0_AWUSER,
        m_axi_wr_0_WVALID,
        m_axi_wr_0_WREADY,
        m_axi_wr_0_WDATA,
        m_axi_wr_0_WSTRB,
        m_axi_wr_0_WLAST,
        m_axi_wr_0_WID,
        m_axi_wr_0_WUSER,
        m_axi_wr_0_ARVALID,
        m_axi_wr_0_ARREADY,
        m_axi_wr_0_ARADDR,
        m_axi_wr_0_ARID,
        m_axi_wr_0_ARLEN,
        m_axi_wr_0_ARSIZE,
        m_axi_wr_0_ARBURST,
        m_axi_wr_0_ARLOCK,
        m_axi_wr_0_ARCACHE,
        m_axi_wr_0_ARPROT,
        m_axi_wr_0_ARQOS,
        m_axi_wr_0_ARREGION,
        m_axi_wr_0_ARUSER,
        m_axi_wr_0_RVALID,
        m_axi_wr_0_RREADY,
        m_axi_wr_0_RDATA,
        m_axi_wr_0_RLAST,
        m_axi_wr_0_RID,
        m_axi_wr_0_RFIFONUM,
        m_axi_wr_0_RUSER,
        m_axi_wr_0_RRESP,
        m_axi_wr_0_BVALID,
        m_axi_wr_0_BREADY,
        m_axi_wr_0_BRESP,
        m_axi_wr_0_BID,
        m_axi_wr_0_BUSER,
        golden_fifo_0_TREADY,
        gmem,
        egress_0_TDATA,
        egress_0_TREADY,
        egress_0_TKEEP,
        egress_0_TSTRB,
        egress_0_TLAST,
        egress_0_TDEST,
        last,
        target,
        golden_fifo_0_TDATA,
        golden_fifo_0_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   egress_0_TVALID;
output   m_axi_wr_0_AWVALID;
input   m_axi_wr_0_AWREADY;
output  [63:0] m_axi_wr_0_AWADDR;
output  [0:0] m_axi_wr_0_AWID;
output  [31:0] m_axi_wr_0_AWLEN;
output  [2:0] m_axi_wr_0_AWSIZE;
output  [1:0] m_axi_wr_0_AWBURST;
output  [1:0] m_axi_wr_0_AWLOCK;
output  [3:0] m_axi_wr_0_AWCACHE;
output  [2:0] m_axi_wr_0_AWPROT;
output  [3:0] m_axi_wr_0_AWQOS;
output  [3:0] m_axi_wr_0_AWREGION;
output  [0:0] m_axi_wr_0_AWUSER;
output   m_axi_wr_0_WVALID;
input   m_axi_wr_0_WREADY;
output  [255:0] m_axi_wr_0_WDATA;
output  [31:0] m_axi_wr_0_WSTRB;
output   m_axi_wr_0_WLAST;
output  [0:0] m_axi_wr_0_WID;
output  [0:0] m_axi_wr_0_WUSER;
output   m_axi_wr_0_ARVALID;
input   m_axi_wr_0_ARREADY;
output  [63:0] m_axi_wr_0_ARADDR;
output  [0:0] m_axi_wr_0_ARID;
output  [31:0] m_axi_wr_0_ARLEN;
output  [2:0] m_axi_wr_0_ARSIZE;
output  [1:0] m_axi_wr_0_ARBURST;
output  [1:0] m_axi_wr_0_ARLOCK;
output  [3:0] m_axi_wr_0_ARCACHE;
output  [2:0] m_axi_wr_0_ARPROT;
output  [3:0] m_axi_wr_0_ARQOS;
output  [3:0] m_axi_wr_0_ARREGION;
output  [0:0] m_axi_wr_0_ARUSER;
input   m_axi_wr_0_RVALID;
output   m_axi_wr_0_RREADY;
input  [255:0] m_axi_wr_0_RDATA;
input   m_axi_wr_0_RLAST;
input  [0:0] m_axi_wr_0_RID;
input  [8:0] m_axi_wr_0_RFIFONUM;
input  [0:0] m_axi_wr_0_RUSER;
input  [1:0] m_axi_wr_0_RRESP;
input   m_axi_wr_0_BVALID;
output   m_axi_wr_0_BREADY;
input  [1:0] m_axi_wr_0_BRESP;
input  [0:0] m_axi_wr_0_BID;
input  [0:0] m_axi_wr_0_BUSER;
input   golden_fifo_0_TREADY;
input  [63:0] gmem;
input  [511:0] egress_0_TDATA;
output   egress_0_TREADY;
input  [63:0] egress_0_TKEEP;
input  [63:0] egress_0_TSTRB;
input  [0:0] egress_0_TLAST;
input  [0:0] egress_0_TDEST;
input  [0:0] last;
input  [511:0] target;
output  [31:0] golden_fifo_0_TDATA;
output   golden_fifo_0_TVALID;

reg ap_idle;
reg m_axi_wr_0_AWVALID;
reg m_axi_wr_0_WVALID;
reg[255:0] m_axi_wr_0_WDATA;
reg m_axi_wr_0_BREADY;
reg egress_0_TREADY;
reg golden_fifo_0_TVALID;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg   [0:0] icmp_ln29_reg_268;
reg    ap_block_state2_pp0_stage1_iter0;
reg   [0:0] last_read_reg_264;
reg    ap_predicate_op41_writereq_state2;
reg    ap_block_state2_io;
wire    ap_block_state4_pp0_stage1_iter1;
reg   [0:0] last_read_reg_264_pp0_iter1_reg;
reg    ap_block_state4_io;
wire    ap_block_state6_pp0_stage1_iter2;
reg   [0:0] last_read_reg_264_pp0_iter3_reg;
reg   [0:0] icmp_ln1072_reg_295;
reg   [0:0] icmp_ln1072_reg_295_pp0_iter2_reg;
reg    ap_predicate_op53_write_state8;
reg    ap_block_state8_pp0_stage1_iter3;
reg    ap_block_state8_io;
reg    ap_done_reg;
reg    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    wr_0_blk_n_AW;
wire    ap_block_pp0_stage1;
reg    wr_0_blk_n_W;
wire    ap_block_pp0_stage0;
reg    wr_0_blk_n_B;
reg    egress_0_TDATA_blk_n;
reg    golden_fifo_0_TDATA_blk_n;
reg   [511:0] target_read_reg_259;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
reg    ap_block_state9_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] last_read_read_fu_102_p2;
reg   [0:0] last_read_reg_264_pp0_iter2_reg;
wire   [0:0] icmp_ln29_fu_167_p2;
reg   [0:0] icmp_ln29_reg_268_pp0_iter1_reg;
reg   [0:0] icmp_ln29_reg_268_pp0_iter2_reg;
wire   [24:0] trunc_ln293_fu_179_p1;
reg   [24:0] trunc_ln293_reg_272;
reg   [24:0] trunc_ln293_reg_272_pp0_iter1_reg;
reg   [24:0] trunc_ln293_reg_272_pp0_iter2_reg;
reg   [24:0] trunc_ln293_reg_272_pp0_iter3_reg;
reg   [58:0] trunc_ln_reg_277;
reg   [511:0] tmp_data_V_reg_282;
reg    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln1072_fu_230_p2;
reg   [0:0] icmp_ln1072_reg_295_pp0_iter1_reg;
reg   [255:0] p_Result_s_reg_299;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire  signed [63:0] sext_ln35_fu_220_p1;
wire   [255:0] trunc_ln674_fu_235_p1;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage1_01001;
reg   [25:0] i_fu_92;
wire   [25:0] add_ln29_fu_173_p2;
wire    ap_loop_init;
reg   [25:0] ap_sig_allocacmp_i_4;
wire   [30:0] shl_ln_fu_183_p3;
wire   [63:0] zext_ln293_fu_191_p1;
wire   [63:0] add_ln293_fu_195_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_314;
reg    ap_condition_435;
reg    ap_condition_439;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

hash_controller_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if ((icmp_ln29_fu_167_p2 == 1'd0)) begin
            i_fu_92 <= add_ln29_fu_173_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 26'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (last_read_reg_264 == 1'd1))) begin
        icmp_ln1072_reg_295 <= icmp_ln1072_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln1072_reg_295_pp0_iter1_reg <= icmp_ln1072_reg_295;
        icmp_ln1072_reg_295_pp0_iter2_reg <= icmp_ln1072_reg_295_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln29_reg_268 <= icmp_ln29_fu_167_p2;
        icmp_ln29_reg_268_pp0_iter1_reg <= icmp_ln29_reg_268;
        icmp_ln29_reg_268_pp0_iter2_reg <= icmp_ln29_reg_268_pp0_iter1_reg;
        last_read_reg_264 <= last;
        last_read_reg_264_pp0_iter1_reg <= last_read_reg_264;
        last_read_reg_264_pp0_iter2_reg <= last_read_reg_264_pp0_iter1_reg;
        last_read_reg_264_pp0_iter3_reg <= last_read_reg_264_pp0_iter2_reg;
        target_read_reg_259 <= target;
        trunc_ln293_reg_272_pp0_iter1_reg <= trunc_ln293_reg_272;
        trunc_ln293_reg_272_pp0_iter2_reg <= trunc_ln293_reg_272_pp0_iter1_reg;
        trunc_ln293_reg_272_pp0_iter3_reg <= trunc_ln293_reg_272_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (last_read_reg_264 == 1'd0))) begin
        p_Result_s_reg_299 <= {{tmp_data_V_reg_282[511:256]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_data_V_reg_282 <= egress_0_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln293_reg_272 <= trunc_ln293_fu_179_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_fu_167_p2 == 1'd0) & (last_read_read_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln_reg_277 <= {{add_ln293_fu_195_p2[63:5]}};
    end
end

always @ (*) begin
    if (((icmp_ln29_reg_268 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln29_reg_268_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 26'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_92;
    end
end

always @ (*) begin
    if (((icmp_ln29_reg_268 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        egress_0_TDATA_blk_n = egress_0_TVALID;
    end else begin
        egress_0_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln29_reg_268 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        egress_0_TREADY = 1'b1;
    end else begin
        egress_0_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_predicate_op53_write_state8 == 1'b1))) begin
        golden_fifo_0_TDATA_blk_n = golden_fifo_0_TREADY;
    end else begin
        golden_fifo_0_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_op53_write_state8 == 1'b1))) begin
        golden_fifo_0_TVALID = 1'b1;
    end else begin
        golden_fifo_0_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_op41_writereq_state2 == 1'b1))) begin
        m_axi_wr_0_AWVALID = 1'b1;
    end else begin
        m_axi_wr_0_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (last_read_reg_264_pp0_iter3_reg == 1'd0))) begin
        m_axi_wr_0_BREADY = 1'b1;
    end else begin
        m_axi_wr_0_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_439)) begin
            m_axi_wr_0_WDATA = p_Result_s_reg_299;
        end else if ((1'b1 == ap_condition_435)) begin
            m_axi_wr_0_WDATA = trunc_ln674_fu_235_p1;
        end else begin
            m_axi_wr_0_WDATA = 'bx;
        end
    end else begin
        m_axi_wr_0_WDATA = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (last_read_reg_264_pp0_iter1_reg == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (last_read_reg_264 == 1'd0)))) begin
        m_axi_wr_0_WVALID = 1'b1;
    end else begin
        m_axi_wr_0_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_predicate_op41_writereq_state2 == 1'b1))) begin
        wr_0_blk_n_AW = m_axi_wr_0_AWREADY;
    end else begin
        wr_0_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (last_read_reg_264_pp0_iter3_reg == 1'd0))) begin
        wr_0_blk_n_B = m_axi_wr_0_BVALID;
    end else begin
        wr_0_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (last_read_reg_264_pp0_iter1_reg == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (last_read_reg_264 == 1'd0)))) begin
        wr_0_blk_n_W = m_axi_wr_0_WREADY;
    end else begin
        wr_0_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln293_fu_195_p2 = (zext_ln293_fu_191_p1 + gmem);

assign add_ln29_fu_173_p2 = (ap_sig_allocacmp_i_4 + 26'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((m_axi_wr_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (last_read_reg_264_pp0_iter3_reg == 1'd0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_done_reg == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_wr_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (last_read_reg_264_pp0_iter3_reg == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_done_reg == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_wr_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (last_read_reg_264_pp0_iter3_reg == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_done_reg == 1'b1)));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((ap_done_reg == 1'b1) | ((icmp_ln29_reg_268 == 1'd0) & (egress_0_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op53_write_state8 == 1'b1) & (golden_fifo_0_TREADY == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state8_io) | ((ap_predicate_op53_write_state8 == 1'b1) & (golden_fifo_0_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state4_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((icmp_ln29_reg_268 == 1'd0) & (egress_0_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((1'b1 == ap_block_state8_io) | ((ap_predicate_op53_write_state8 == 1'b1) & (golden_fifo_0_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state4_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((icmp_ln29_reg_268 == 1'd0) & (egress_0_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state2_io = ((m_axi_wr_0_AWREADY == 1'b0) & (ap_predicate_op41_writereq_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((icmp_ln29_reg_268 == 1'd0) & (egress_0_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((m_axi_wr_0_WREADY == 1'b0) & (last_read_reg_264 == 1'd0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((m_axi_wr_0_WREADY == 1'b0) & (last_read_reg_264_pp0_iter1_reg == 1'd0));
end

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_io = ((ap_predicate_op53_write_state8 == 1'b1) & (golden_fifo_0_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp0_stage1_iter3 = ((ap_predicate_op53_write_state8 == 1'b1) & (golden_fifo_0_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state9_pp0_stage0_iter4 = ((m_axi_wr_0_BVALID == 1'b0) & (last_read_reg_264_pp0_iter3_reg == 1'd0));
end

always @ (*) begin
    ap_condition_314 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_435 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001) & (last_read_reg_264 == 1'd0));
end

always @ (*) begin
    ap_condition_439 = ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_01001) & (last_read_reg_264_pp0_iter1_reg == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

always @ (*) begin
    ap_predicate_op41_writereq_state2 = ((icmp_ln29_reg_268 == 1'd0) & (last_read_reg_264 == 1'd0));
end

always @ (*) begin
    ap_predicate_op53_write_state8 = ((icmp_ln1072_reg_295_pp0_iter2_reg == 1'd1) & (last_read_reg_264_pp0_iter3_reg == 1'd1));
end

assign golden_fifo_0_TDATA = trunc_ln293_reg_272_pp0_iter3_reg;

assign icmp_ln1072_fu_230_p2 = ((egress_0_TDATA < target_read_reg_259) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_167_p2 = ((ap_sig_allocacmp_i_4 == 26'd33554432) ? 1'b1 : 1'b0);

assign last_read_read_fu_102_p2 = last;

assign m_axi_wr_0_ARADDR = 64'd0;

assign m_axi_wr_0_ARBURST = 2'd0;

assign m_axi_wr_0_ARCACHE = 4'd0;

assign m_axi_wr_0_ARID = 1'd0;

assign m_axi_wr_0_ARLEN = 32'd0;

assign m_axi_wr_0_ARLOCK = 2'd0;

assign m_axi_wr_0_ARPROT = 3'd0;

assign m_axi_wr_0_ARQOS = 4'd0;

assign m_axi_wr_0_ARREGION = 4'd0;

assign m_axi_wr_0_ARSIZE = 3'd0;

assign m_axi_wr_0_ARUSER = 1'd0;

assign m_axi_wr_0_ARVALID = 1'b0;

assign m_axi_wr_0_AWADDR = sext_ln35_fu_220_p1;

assign m_axi_wr_0_AWBURST = 2'd0;

assign m_axi_wr_0_AWCACHE = 4'd0;

assign m_axi_wr_0_AWID = 1'd0;

assign m_axi_wr_0_AWLEN = 32'd2;

assign m_axi_wr_0_AWLOCK = 2'd0;

assign m_axi_wr_0_AWPROT = 3'd0;

assign m_axi_wr_0_AWQOS = 4'd0;

assign m_axi_wr_0_AWREGION = 4'd0;

assign m_axi_wr_0_AWSIZE = 3'd0;

assign m_axi_wr_0_AWUSER = 1'd0;

assign m_axi_wr_0_RREADY = 1'b0;

assign m_axi_wr_0_WID = 1'd0;

assign m_axi_wr_0_WLAST = 1'b0;

assign m_axi_wr_0_WSTRB = 32'd4294967295;

assign m_axi_wr_0_WUSER = 1'd0;

assign sext_ln35_fu_220_p1 = $signed(trunc_ln_reg_277);

assign shl_ln_fu_183_p3 = {{trunc_ln293_fu_179_p1}, {6'd0}};

assign trunc_ln293_fu_179_p1 = ap_sig_allocacmp_i_4[24:0];

assign trunc_ln674_fu_235_p1 = tmp_data_V_reg_282[255:0];

assign zext_ln293_fu_191_p1 = shl_ln_fu_183_p3;

endmodule //hash_controller_egress
