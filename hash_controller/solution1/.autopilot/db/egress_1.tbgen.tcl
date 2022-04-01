set moduleName egress_1
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
set C_modelName {egress.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ wr_1 int 256 regular {axi_master 1}  }
	{ gmem int 64 regular  }
	{ egress_1_V_data_V int 512 regular {axi_s 0 volatile  { egress_1 Data } }  }
	{ egress_1_V_keep_V int 64 regular {axi_s 0 volatile  { egress_1 Keep } }  }
	{ egress_1_V_strb_V int 64 regular {axi_s 0 volatile  { egress_1 Strb } }  }
	{ egress_1_V_last_V int 1 regular {axi_s 0 volatile  { egress_1 Last } }  }
	{ egress_1_V_dest_V int 1 regular {axi_s 0 volatile  { egress_1 Dest } }  }
	{ last uint 1 regular  }
	{ target int 512 regular  }
	{ golden_fifo_1 int 32 regular {axi_s 1 volatile  { golden_fifo_1 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wr_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_1_offset","offset": { "type": "dynamic","port_name": "wr_1_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "last", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "target", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "golden_fifo_1", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 66
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ egress_1_TVALID sc_in sc_logic 1 invld 2 } 
	{ m_axi_wr_1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_wr_1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_wr_1_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_wr_1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_wr_1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_1_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_wr_1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_wr_1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_wr_1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_1_BUSER sc_in sc_lv 1 signal 0 } 
	{ golden_fifo_1_TREADY sc_in sc_logic 1 outacc 9 } 
	{ gmem sc_in sc_lv 64 signal 1 } 
	{ egress_1_TDATA sc_in sc_lv 512 signal 2 } 
	{ egress_1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ egress_1_TKEEP sc_in sc_lv 64 signal 3 } 
	{ egress_1_TSTRB sc_in sc_lv 64 signal 4 } 
	{ egress_1_TLAST sc_in sc_lv 1 signal 5 } 
	{ egress_1_TDEST sc_in sc_lv 1 signal 6 } 
	{ last sc_in sc_lv 1 signal 7 } 
	{ target sc_in sc_lv 512 signal 8 } 
	{ golden_fifo_1_TDATA sc_out sc_lv 32 signal 9 } 
	{ golden_fifo_1_TVALID sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "egress_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_1_V_data_V", "role": "default" }} , 
 	{ "name": "m_axi_wr_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wr_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wr_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wr_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWID" }} , 
 	{ "name": "m_axi_wr_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_wr_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_wr_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_wr_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_wr_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_wr_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_wr_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_wr_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_wr_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_wr_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_wr_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_wr_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "wr_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_wr_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_wr_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_wr_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "WID" }} , 
 	{ "name": "m_axi_wr_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_wr_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_wr_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_wr_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_wr_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "ARID" }} , 
 	{ "name": "m_axi_wr_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_wr_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_wr_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_wr_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_wr_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_wr_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_wr_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_wr_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_wr_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_wr_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_wr_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_wr_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "wr_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_wr_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_wr_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RID" }} , 
 	{ "name": "m_axi_wr_1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "wr_1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_wr_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_wr_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_wr_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_wr_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_wr_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_wr_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BID" }} , 
 	{ "name": "m_axi_wr_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BUSER" }} , 
 	{ "name": "golden_fifo_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_1", "role": "TREADY" }} , 
 	{ "name": "gmem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "default" }} , 
 	{ "name": "egress_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_1_V_data_V", "role": "default" }} , 
 	{ "name": "egress_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_last_V", "role": "default" }} , 
 	{ "name": "egress_1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "last", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last", "role": "default" }} , 
 	{ "name": "target", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "target", "role": "default" }} , 
 	{ "name": "golden_fifo_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_1", "role": "TDATA" }} , 
 	{ "name": "golden_fifo_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_1", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "egress_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67108872", "EstimateLatencyMax" : "67108872",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wr_1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wr_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "wr_1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "wr_1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "None", "Direction" : "I"},
			{"Name" : "egress_1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "egress_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "egress_1_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_1_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_1_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_1_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "last", "Type" : "None", "Direction" : "I"},
			{"Name" : "target", "Type" : "None", "Direction" : "I"},
			{"Name" : "golden_fifo_1", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "golden_fifo_1_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	egress_1 {
		wr_1 {Type O LastRead 4 FirstWrite 2}
		gmem {Type I LastRead 0 FirstWrite -1}
		egress_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		last {Type I LastRead 0 FirstWrite -1}
		target {Type I LastRead 0 FirstWrite -1}
		golden_fifo_1 {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67108872", "Max" : "67108872"}
	, {"Name" : "Interval", "Min" : "67108872", "Max" : "67108872"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	wr_1 { m_axi {  { m_axi_wr_1_AWVALID VALID 1 1 }  { m_axi_wr_1_AWREADY READY 0 1 }  { m_axi_wr_1_AWADDR ADDR 1 64 }  { m_axi_wr_1_AWID ID 1 1 }  { m_axi_wr_1_AWLEN SIZE 1 32 }  { m_axi_wr_1_AWSIZE BURST 1 3 }  { m_axi_wr_1_AWBURST LOCK 1 2 }  { m_axi_wr_1_AWLOCK CACHE 1 2 }  { m_axi_wr_1_AWCACHE PROT 1 4 }  { m_axi_wr_1_AWPROT QOS 1 3 }  { m_axi_wr_1_AWQOS REGION 1 4 }  { m_axi_wr_1_AWREGION USER 1 4 }  { m_axi_wr_1_AWUSER DATA 1 1 }  { m_axi_wr_1_WVALID VALID 1 1 }  { m_axi_wr_1_WREADY READY 0 1 }  { m_axi_wr_1_WDATA FIFONUM 1 256 }  { m_axi_wr_1_WSTRB STRB 1 32 }  { m_axi_wr_1_WLAST LAST 1 1 }  { m_axi_wr_1_WID ID 1 1 }  { m_axi_wr_1_WUSER DATA 1 1 }  { m_axi_wr_1_ARVALID VALID 1 1 }  { m_axi_wr_1_ARREADY READY 0 1 }  { m_axi_wr_1_ARADDR ADDR 1 64 }  { m_axi_wr_1_ARID ID 1 1 }  { m_axi_wr_1_ARLEN SIZE 1 32 }  { m_axi_wr_1_ARSIZE BURST 1 3 }  { m_axi_wr_1_ARBURST LOCK 1 2 }  { m_axi_wr_1_ARLOCK CACHE 1 2 }  { m_axi_wr_1_ARCACHE PROT 1 4 }  { m_axi_wr_1_ARPROT QOS 1 3 }  { m_axi_wr_1_ARQOS REGION 1 4 }  { m_axi_wr_1_ARREGION USER 1 4 }  { m_axi_wr_1_ARUSER DATA 1 1 }  { m_axi_wr_1_RVALID VALID 0 1 }  { m_axi_wr_1_RREADY READY 1 1 }  { m_axi_wr_1_RDATA FIFONUM 0 256 }  { m_axi_wr_1_RLAST LAST 0 1 }  { m_axi_wr_1_RID ID 0 1 }  { m_axi_wr_1_RFIFONUM LEN 0 9 }  { m_axi_wr_1_RUSER DATA 0 1 }  { m_axi_wr_1_RRESP RESP 0 2 }  { m_axi_wr_1_BVALID VALID 0 1 }  { m_axi_wr_1_BREADY READY 1 1 }  { m_axi_wr_1_BRESP RESP 0 2 }  { m_axi_wr_1_BID ID 0 1 }  { m_axi_wr_1_BUSER DATA 0 1 } } }
	gmem { ap_none {  { gmem in_data 0 64 } } }
	egress_1_V_data_V { axis {  { egress_1_TVALID in_vld 0 1 }  { egress_1_TDATA in_data 0 512 } } }
	egress_1_V_keep_V { axis {  { egress_1_TKEEP in_data 0 64 } } }
	egress_1_V_strb_V { axis {  { egress_1_TSTRB in_data 0 64 } } }
	egress_1_V_last_V { axis {  { egress_1_TLAST in_data 0 1 } } }
	egress_1_V_dest_V { axis {  { egress_1_TREADY in_acc 1 1 }  { egress_1_TDEST in_data 0 1 } } }
	last { ap_none {  { last in_data 0 1 } } }
	target { ap_none {  { target in_data 0 512 } } }
	golden_fifo_1 { axis {  { golden_fifo_1_TREADY out_acc 0 1 }  { golden_fifo_1_TDATA out_data 1 32 }  { golden_fifo_1_TVALID out_vld 1 1 } } }
}
