set moduleName ingress
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
set C_modelName {ingress}
set C_modelType { void 0 }
set C_modelArgList {
	{ ingress_0_V_data_V int 512 regular {axi_s 1 volatile  { ingress_0 Data } }  }
	{ ingress_0_V_keep_V int 64 regular {axi_s 1 volatile  { ingress_0 Keep } }  }
	{ ingress_0_V_strb_V int 64 regular {axi_s 1 volatile  { ingress_0 Strb } }  }
	{ ingress_0_V_last_V int 1 regular {axi_s 1 volatile  { ingress_0 Last } }  }
	{ ingress_0_V_dest_V int 1 regular {axi_s 1 volatile  { ingress_0 Dest } }  }
	{ rd_0 int 256 regular {axi_master 0}  }
	{ gmem int 64 regular  }
	{ first uint 1 regular  }
	{ block_header int 512 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ingress_0_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rd_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_0_offset","offset": { "type": "dynamic","port_name": "rd_0_offset"},"direction": "READONLY"}]}]} , 
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
	{ m_axi_rd_0_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_rd_0_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_0_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_0_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_0_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_0_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_0_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_WDATA sc_out sc_lv 256 signal 5 } 
	{ m_axi_rd_0_WSTRB sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_0_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_rd_0_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_rd_0_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_0_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_0_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_rd_0_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_rd_0_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_rd_0_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_rd_0_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_RDATA sc_in sc_lv 256 signal 5 } 
	{ m_axi_rd_0_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_0_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_rd_0_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_0_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_rd_0_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_rd_0_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_rd_0_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_rd_0_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_rd_0_BUSER sc_in sc_lv 1 signal 5 } 
	{ ingress_0_TDATA sc_out sc_lv 512 signal 0 } 
	{ ingress_0_TVALID sc_out sc_logic 1 outvld 4 } 
	{ ingress_0_TREADY sc_in sc_logic 1 outacc 0 } 
	{ ingress_0_TKEEP sc_out sc_lv 64 signal 1 } 
	{ ingress_0_TSTRB sc_out sc_lv 64 signal 2 } 
	{ ingress_0_TLAST sc_out sc_lv 1 signal 3 } 
	{ ingress_0_TDEST sc_out sc_lv 1 signal 4 } 
	{ gmem sc_in sc_lv 64 signal 6 } 
	{ first sc_in sc_logic 1 signal 7 } 
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
 	{ "name": "m_axi_rd_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_rd_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_rd_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_rd_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWID" }} , 
 	{ "name": "m_axi_rd_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_rd_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_rd_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_rd_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_rd_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_rd_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_rd_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_rd_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_rd_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_rd_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_rd_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_rd_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "rd_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_rd_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_rd_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_rd_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "WID" }} , 
 	{ "name": "m_axi_rd_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_rd_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_rd_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_rd_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_rd_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "ARID" }} , 
 	{ "name": "m_axi_rd_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_rd_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_rd_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_rd_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_rd_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_rd_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rd_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_rd_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_rd_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rd_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_rd_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_rd_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_rd_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_rd_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "rd_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_rd_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_rd_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RID" }} , 
 	{ "name": "m_axi_rd_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rd_0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_rd_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_rd_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_rd_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_rd_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_rd_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_rd_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BID" }} , 
 	{ "name": "m_axi_rd_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BUSER" }} , 
 	{ "name": "ingress_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_0_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_0_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "gmem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "default" }} , 
 	{ "name": "first", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "first", "role": "default" }} , 
 	{ "name": "block_header", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "block_header", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ingress",
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
			{"Name" : "ingress_0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ingress_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ingress_0_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_0_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_0_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ingress_0_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "rd_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rd_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "rd_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "None", "Direction" : "I"},
			{"Name" : "first", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_header", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ingress {
		ingress_0_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_dest_V {Type O LastRead -1 FirstWrite 10}
		rd_0 {Type I LastRead 9 FirstWrite -1}
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
	ingress_0_V_data_V { axis {  { ingress_0_TDATA out_data 1 512 }  { ingress_0_TREADY out_acc 0 1 } } }
	ingress_0_V_keep_V { axis {  { ingress_0_TKEEP out_data 1 64 } } }
	ingress_0_V_strb_V { axis {  { ingress_0_TSTRB out_data 1 64 } } }
	ingress_0_V_last_V { axis {  { ingress_0_TLAST out_data 1 1 } } }
	ingress_0_V_dest_V { axis {  { ingress_0_TVALID out_vld 1 1 }  { ingress_0_TDEST out_data 1 1 } } }
	rd_0 { m_axi {  { m_axi_rd_0_AWVALID VALID 1 1 }  { m_axi_rd_0_AWREADY READY 0 1 }  { m_axi_rd_0_AWADDR ADDR 1 64 }  { m_axi_rd_0_AWID ID 1 1 }  { m_axi_rd_0_AWLEN SIZE 1 32 }  { m_axi_rd_0_AWSIZE BURST 1 3 }  { m_axi_rd_0_AWBURST LOCK 1 2 }  { m_axi_rd_0_AWLOCK CACHE 1 2 }  { m_axi_rd_0_AWCACHE PROT 1 4 }  { m_axi_rd_0_AWPROT QOS 1 3 }  { m_axi_rd_0_AWQOS REGION 1 4 }  { m_axi_rd_0_AWREGION USER 1 4 }  { m_axi_rd_0_AWUSER DATA 1 1 }  { m_axi_rd_0_WVALID VALID 1 1 }  { m_axi_rd_0_WREADY READY 0 1 }  { m_axi_rd_0_WDATA FIFONUM 1 256 }  { m_axi_rd_0_WSTRB STRB 1 32 }  { m_axi_rd_0_WLAST LAST 1 1 }  { m_axi_rd_0_WID ID 1 1 }  { m_axi_rd_0_WUSER DATA 1 1 }  { m_axi_rd_0_ARVALID VALID 1 1 }  { m_axi_rd_0_ARREADY READY 0 1 }  { m_axi_rd_0_ARADDR ADDR 1 64 }  { m_axi_rd_0_ARID ID 1 1 }  { m_axi_rd_0_ARLEN SIZE 1 32 }  { m_axi_rd_0_ARSIZE BURST 1 3 }  { m_axi_rd_0_ARBURST LOCK 1 2 }  { m_axi_rd_0_ARLOCK CACHE 1 2 }  { m_axi_rd_0_ARCACHE PROT 1 4 }  { m_axi_rd_0_ARPROT QOS 1 3 }  { m_axi_rd_0_ARQOS REGION 1 4 }  { m_axi_rd_0_ARREGION USER 1 4 }  { m_axi_rd_0_ARUSER DATA 1 1 }  { m_axi_rd_0_RVALID VALID 0 1 }  { m_axi_rd_0_RREADY READY 1 1 }  { m_axi_rd_0_RDATA FIFONUM 0 256 }  { m_axi_rd_0_RLAST LAST 0 1 }  { m_axi_rd_0_RID ID 0 1 }  { m_axi_rd_0_RFIFONUM LEN 0 9 }  { m_axi_rd_0_RUSER DATA 0 1 }  { m_axi_rd_0_RRESP RESP 0 2 }  { m_axi_rd_0_BVALID VALID 0 1 }  { m_axi_rd_0_BREADY READY 1 1 }  { m_axi_rd_0_BRESP RESP 0 2 }  { m_axi_rd_0_BID ID 0 1 }  { m_axi_rd_0_BUSER DATA 0 1 } } }
	gmem { ap_none {  { gmem in_data 0 64 } } }
	first { ap_none {  { first in_data 0 1 } } }
	block_header { ap_none {  { block_header in_data 0 512 } } }
}
