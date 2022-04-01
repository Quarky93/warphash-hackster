
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [5:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_pass_fu_180.ingress_U0.ingress_0_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_pass_fu_180.ingress_1_U0.ingress_1_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_pass_fu_180.egress_U0.egress_0_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_pass_fu_180.egress_U0.golden_fifo_0_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_pass_fu_180.egress_1_U0.egress_1_TDATA_blk_n;
assign axis_block_sigs[5] = ~grp_pass_fu_180.egress_1_U0.golden_fifo_1_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_pass_fu_180.ingress_U0.ap_idle;
assign inst_block_sigs[0] = (grp_pass_fu_180.ingress_U0.ap_done & ~grp_pass_fu_180.ingress_U0.ap_continue);
assign inst_idle_sigs[1] = grp_pass_fu_180.ingress_1_U0.ap_idle;
assign inst_block_sigs[1] = (grp_pass_fu_180.ingress_1_U0.ap_done & ~grp_pass_fu_180.ingress_1_U0.ap_continue);
assign inst_idle_sigs[2] = grp_pass_fu_180.egress_U0.ap_idle;
assign inst_block_sigs[2] = (grp_pass_fu_180.egress_U0.ap_done & ~grp_pass_fu_180.egress_U0.ap_continue);
assign inst_idle_sigs[3] = grp_pass_fu_180.egress_1_U0.ap_idle;
assign inst_block_sigs[3] = (grp_pass_fu_180.egress_1_U0.ap_done & ~grp_pass_fu_180.egress_1_U0.ap_continue);

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_pass_fu_180.ap_idle;
assign inst_idle_sigs[6] = grp_pass_fu_180.ingress_U0.ap_idle;
assign inst_idle_sigs[7] = grp_pass_fu_180.ingress_1_U0.ap_idle;
assign inst_idle_sigs[8] = grp_pass_fu_180.egress_U0.ap_idle;
assign inst_idle_sigs[9] = grp_pass_fu_180.egress_1_U0.ap_idle;

hash_controller_hls_deadlock_idx0_monitor hash_controller_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
