set moduleName ingress_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ingress.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ingress_1_V_data_V int 512 regular {axi_s 1 volatile  { ingress_1 Data } }  }
	{ ingress_1_V_keep_V int 64 regular {axi_s 1 volatile  { ingress_1 Keep } }  }
	{ ingress_1_V_strb_V int 64 regular {axi_s 1 volatile  { ingress_1 Strb } }  }
	{ ingress_1_V_last_V int 1 regular {axi_s 1 volatile  { ingress_1 Last } }  }
	{ ingress_1_V_dest_V int 1 regular {axi_s 1 volatile  { ingress_1 Dest } }  }
	{ rd_1 int 256 regular {axi_master 0}  }
	{ gmem int 64 regular  }
	{ first uint 1 regular  }
	{ block_header int 512 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ingress_1_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rd_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_1_offset","offset": { "type": "dynamic","port_name": "rd_1_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "first", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "block_header", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_rd_1_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_rd_1_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_1_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_1_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_1_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_1_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_1_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_WDATA sc_out sc_lv 256 signal 5 } 
	{ m_axi_rd_1_WSTRB sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_1_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_rd_1_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_1_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_1_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_1_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_1_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_1_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_1_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_1_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_RDATA sc_in sc_lv 256 signal 5 } 
	{ m_axi_rd_1_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_1_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_rd_1_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_1_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_rd_1_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_1_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_1_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_rd_1_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_1_BUSER sc_in sc_lv 1 signal 5 } 
	{ ingress_1_TDATA sc_out sc_lv 512 signal 0 } 
	{ ingress_1_TVALID sc_out sc_logic 1 outvld 4 } 
	{ ingress_1_TREADY sc_in sc_logic 1 outacc 0 } 
	{ ingress_1_TKEEP sc_out sc_lv 64 signal 1 } 
	{ ingress_1_TSTRB sc_out sc_lv 64 signal 2 } 
	{ ingress_1_TLAST sc_out sc_lv 1 signal 3 } 
	{ ingress_1_TDEST sc_out sc_lv 1 signal 4 } 
	{ gmem sc_in sc_lv 64 signal 6 } 
	{ first sc_in sc_lv 1 signal 7 } 
	{ block_header sc_in sc_lv 512 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_rd_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_rd_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_rd_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_rd_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWID" }} , 
 	{ "name": "m_axi_rd_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_rd_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_rd_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_rd_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_rd_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_rd_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_rd_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_rd_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_rd_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_rd_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_rd_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_rd_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "rd_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_rd_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_rd_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_rd_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "WID" }} , 
 	{ "name": "m_axi_rd_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_rd_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_rd_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_rd_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_rd_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "ARID" }} , 
 	{ "name": "m_axi_rd_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_rd_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_rd_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_rd_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_rd_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_rd_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_rd_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_rd_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_rd_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_rd_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_rd_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_rd_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "rd_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_rd_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_rd_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RID" }} , 
 	{ "name": "m_axi_rd_1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rd_1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_rd_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_rd_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_rd_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_rd_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_rd_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_rd_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BID" }} , 
 	{ "name": "m_axi_rd_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BUSER" }} , 
 	{ "name": "ingress_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_1_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_1_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_1_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "gmem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "default" }} , 
 	{ "name": "first", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "first", "role": "default" }} , 
 	{ "name": "block_header", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "block_header", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ingress_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67108874", "EstimateLatencyMax" : "67108874",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ingress_1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ingress_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ingress_1_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_1_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_1_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_1_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "rd_1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rd_1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "rd_1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "None", "Direction" : "I"},
			{"Name" : "first", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_header", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ingress_1 {
		ingress_1_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_dest_V {Type O LastRead -1 FirstWrite 10}
		rd_1 {Type I LastRead 9 FirstWrite -1}
		gmem {Type I LastRead 0 FirstWrite -1}
		first {Type I LastRead 0 FirstWrite -1}
		block_header {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67108874", "Max" : "67108874"}
	, {"Name" : "Interval", "Min" : "67108874", "Max" : "67108874"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ingress_1_V_data_V { axis {  { ingress_1_TDATA out_data 1 512 }  { ingress_1_TREADY out_acc 0 1 } } }
	ingress_1_V_keep_V { axis {  { ingress_1_TKEEP out_data 1 64 } } }
	ingress_1_V_strb_V { axis {  { ingress_1_TSTRB out_data 1 64 } } }
	ingress_1_V_last_V { axis {  { ingress_1_TLAST out_data 1 1 } } }
	ingress_1_V_dest_V { axis {  { ingress_1_TVALID out_vld 1 1 }  { ingress_1_TDEST out_data 1 1 } } }
	rd_1 { m_axi {  { m_axi_rd_1_AWVALID VALID 1 1 }  { m_axi_rd_1_AWREADY READY 0 1 }  { m_axi_rd_1_AWADDR ADDR 1 64 }  { m_axi_rd_1_AWID ID 1 1 }  { m_axi_rd_1_AWLEN SIZE 1 32 }  { m_axi_rd_1_AWSIZE BURST 1 3 }  { m_axi_rd_1_AWBURST LOCK 1 2 }  { m_axi_rd_1_AWLOCK CACHE 1 2 }  { m_axi_rd_1_AWCACHE PROT 1 4 }  { m_axi_rd_1_AWPROT QOS 1 3 }  { m_axi_rd_1_AWQOS REGION 1 4 }  { m_axi_rd_1_AWREGION USER 1 4 }  { m_axi_rd_1_AWUSER DATA 1 1 }  { m_axi_rd_1_WVALID VALID 1 1 }  { m_axi_rd_1_WREADY READY 0 1 }  { m_axi_rd_1_WDATA FIFONUM 1 256 }  { m_axi_rd_1_WSTRB STRB 1 32 }  { m_axi_rd_1_WLAST LAST 1 1 }  { m_axi_rd_1_WID ID 1 1 }  { m_axi_rd_1_WUSER DATA 1 1 }  { m_axi_rd_1_ARVALID VALID 1 1 }  { m_axi_rd_1_ARREADY READY 0 1 }  { m_axi_rd_1_ARADDR ADDR 1 64 }  { m_axi_rd_1_ARID ID 1 1 }  { m_axi_rd_1_ARLEN SIZE 1 32 }  { m_axi_rd_1_ARSIZE BURST 1 3 }  { m_axi_rd_1_ARBURST LOCK 1 2 }  { m_axi_rd_1_ARLOCK CACHE 1 2 }  { m_axi_rd_1_ARCACHE PROT 1 4 }  { m_axi_rd_1_ARPROT QOS 1 3 }  { m_axi_rd_1_ARQOS REGION 1 4 }  { m_axi_rd_1_ARREGION USER 1 4 }  { m_axi_rd_1_ARUSER DATA 1 1 }  { m_axi_rd_1_RVALID VALID 0 1 }  { m_axi_rd_1_RREADY READY 1 1 }  { m_axi_rd_1_RDATA FIFONUM 0 256 }  { m_axi_rd_1_RLAST LAST 0 1 }  { m_axi_rd_1_RID ID 0 1 }  { m_axi_rd_1_RFIFONUM LEN 0 9 }  { m_axi_rd_1_RUSER DATA 0 1 }  { m_axi_rd_1_RRESP RESP 0 2 }  { m_axi_rd_1_BVALID VALID 0 1 }  { m_axi_rd_1_BREADY READY 1 1 }  { m_axi_rd_1_BRESP RESP 0 2 }  { m_axi_rd_1_BID ID 0 1 }  { m_axi_rd_1_BUSER DATA 0 1 } } }
	gmem { ap_none {  { gmem in_data 0 64 } } }
	first { ap_none {  { first in_data 0 1 } } }
	block_header { ap_none {  { block_header in_data 0 512 } } }
}
