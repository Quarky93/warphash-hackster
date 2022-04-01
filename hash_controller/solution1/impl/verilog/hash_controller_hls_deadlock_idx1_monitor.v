`timescale 1 ns / 1 ps

module hash_controller_hls_deadlock_idx1_monitor ( // for module hash_controller_hash_controller_inst.grp_pass_fu_180
    input wire clock,
    input wire reset,
    input wire [5:0] axis_block_sigs,
    input wire [9:0] inst_idle_sigs,
    input wire [3:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx2_block;
wire idx3_block;
wire idx4_block;
wire idx5_block;
wire [3:0] process_idle_vec;
wire [3:0] process_chan_block_vec;
wire [3:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign idx2_block = axis_block_sigs[0];
assign idx3_block = axis_block_sigs[1];
assign process_axis_block_vec[0] = idx2_block & (1'b0 | axis_block_sigs[0]);
assign process_idle_vec[0] = inst_idle_sigs[0];
assign process_chan_block_vec[0] = inst_block_sigs[0];
assign process_axis_block_vec[1] = idx3_block & (1'b0 | axis_block_sigs[1]);
assign process_idle_vec[1] = inst_idle_sigs[1];
assign process_chan_block_vec[1] = inst_block_sigs[1];
assign process_axis_block_vec[2] = idx4_block & (1'b0 | axis_block_sigs[2] | axis_block_sigs[3]);
assign process_idle_vec[2] = inst_idle_sigs[2];
assign process_chan_block_vec[2] = inst_block_sigs[2];
assign process_axis_block_vec[3] = idx5_block & (1'b0 | axis_block_sigs[4] | axis_block_sigs[5]);
assign process_idle_vec[3] = inst_idle_sigs[3];
assign process_chan_block_vec[3] = inst_block_sigs[3];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 hash_controller_hls_deadlock_idx4_monitor hash_controller_hls_deadlock_idx4_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx4_block)
);

 hash_controller_hls_deadlock_idx5_monitor hash_controller_hls_deadlock_idx5_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx5_block)
);

endmodule
