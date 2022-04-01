set moduleName egress
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
set C_modelName {egress}
set C_modelType { void 0 }
set C_modelArgList {
	{ wr_0 int 256 regular {axi_master 1}  }
	{ gmem int 64 regular  }
	{ egress_0_V_data_V int 512 regular {axi_s 0 volatile  { egress_0 Data } }  }
	{ egress_0_V_keep_V int 64 regular {axi_s 0 volatile  { egress_0 Keep } }  }
	{ egress_0_V_strb_V int 64 regular {axi_s 0 volatile  { egress_0 Strb } }  }
	{ egress_0_V_last_V int 1 regular {axi_s 0 volatile  { egress_0 Last } }  }
	{ egress_0_V_dest_V int 1 regular {axi_s 0 volatile  { egress_0 Dest } }  }
	{ last uint 1 regular  }
	{ target int 512 regular  }
	{ golden_fifo_0 int 32 regular {axi_s 1 volatile  { golden_fifo_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wr_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_0_offset","offset": { "type": "dynamic","port_name": "wr_0_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "last", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "target", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "golden_fifo_0", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ egress_0_TVALID sc_in sc_logic 1 invld 2 } 
	{ m_axi_wr_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_wr_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_wr_0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_wr_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_wr_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_wr_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_wr_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_wr_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_wr_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_wr_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_wr_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_wr_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_wr_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_wr_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_wr_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_wr_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ golden_fifo_0_TREADY sc_in sc_logic 1 outacc 9 } 
	{ gmem sc_in sc_lv 64 signal 1 } 
	{ egress_0_TDATA sc_in sc_lv 512 signal 2 } 
	{ egress_0_TREADY sc_out sc_logic 1 inacc 6 } 
	{ egress_0_TKEEP sc_in sc_lv 64 signal 3 } 
	{ egress_0_TSTRB sc_in sc_lv 64 signal 4 } 
	{ egress_0_TLAST sc_in sc_lv 1 signal 5 } 
	{ egress_0_TDEST sc_in sc_lv 1 signal 6 } 
	{ last sc_in sc_lv 1 signal 7 } 
	{ target sc_in sc_lv 512 signal 8 } 
	{ golden_fifo_0_TDATA sc_out sc_lv 32 signal 9 } 
	{ golden_fifo_0_TVALID sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "egress_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_0_V_data_V", "role": "default" }} , 
 	{ "name": "m_axi_wr_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wr_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wr_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wr_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWID" }} , 
 	{ "name": "m_axi_wr_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_wr_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_wr_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_wr_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_wr_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_wr_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_wr_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_wr_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_wr_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_wr_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_wr_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_wr_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "wr_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_wr_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_wr_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_wr_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "WID" }} , 
 	{ "name": "m_axi_wr_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_wr_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_wr_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_wr_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_wr_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "ARID" }} , 
 	{ "name": "m_axi_wr_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_wr_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_wr_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_wr_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_wr_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_wr_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wr_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_wr_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_wr_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wr_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_wr_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_wr_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_wr_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_wr_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "wr_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_wr_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_wr_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RID" }} , 
 	{ "name": "m_axi_wr_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "wr_0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_wr_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_wr_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_wr_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_wr_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_wr_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_wr_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BID" }} , 
 	{ "name": "m_axi_wr_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BUSER" }} , 
 	{ "name": "golden_fifo_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_0", "role": "TREADY" }} , 
 	{ "name": "gmem", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "default" }} , 
 	{ "name": "egress_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_0_V_data_V", "role": "default" }} , 
 	{ "name": "egress_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_last_V", "role": "default" }} , 
 	{ "name": "egress_0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "last", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last", "role": "default" }} , 
 	{ "name": "target", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "target", "role": "default" }} , 
 	{ "name": "golden_fifo_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_0", "role": "TDATA" }} , 
 	{ "name": "golden_fifo_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_0", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "egress",
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
			{"Name" : "wr_0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wr_0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "wr_0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "wr_0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "None", "Direction" : "I"},
			{"Name" : "egress_0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "egress_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "egress_0_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_0_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_0_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "egress_0_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "last", "Type" : "None", "Direction" : "I"},
			{"Name" : "target", "Type" : "None", "Direction" : "I"},
			{"Name" : "golden_fifo_0", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "golden_fifo_0_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	egress {
		wr_0 {Type O LastRead 4 FirstWrite 2}
		gmem {Type I LastRead 0 FirstWrite -1}
		egress_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_dest_V {Type I LastRead 1 FirstWrite -1}
		last {Type I LastRead 0 FirstWrite -1}
		target {Type I LastRead 0 FirstWrite -1}
		golden_fifo_0 {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67108872", "Max" : "67108872"}
	, {"Name" : "Interval", "Min" : "67108872", "Max" : "67108872"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	wr_0 { m_axi {  { m_axi_wr_0_AWVALID VALID 1 1 }  { m_axi_wr_0_AWREADY READY 0 1 }  { m_axi_wr_0_AWADDR ADDR 1 64 }  { m_axi_wr_0_AWID ID 1 1 }  { m_axi_wr_0_AWLEN SIZE 1 32 }  { m_axi_wr_0_AWSIZE BURST 1 3 }  { m_axi_wr_0_AWBURST LOCK 1 2 }  { m_axi_wr_0_AWLOCK CACHE 1 2 }  { m_axi_wr_0_AWCACHE PROT 1 4 }  { m_axi_wr_0_AWPROT QOS 1 3 }  { m_axi_wr_0_AWQOS REGION 1 4 }  { m_axi_wr_0_AWREGION USER 1 4 }  { m_axi_wr_0_AWUSER DATA 1 1 }  { m_axi_wr_0_WVALID VALID 1 1 }  { m_axi_wr_0_WREADY READY 0 1 }  { m_axi_wr_0_WDATA FIFONUM 1 256 }  { m_axi_wr_0_WSTRB STRB 1 32 }  { m_axi_wr_0_WLAST LAST 1 1 }  { m_axi_wr_0_WID ID 1 1 }  { m_axi_wr_0_WUSER DATA 1 1 }  { m_axi_wr_0_ARVALID VALID 1 1 }  { m_axi_wr_0_ARREADY READY 0 1 }  { m_axi_wr_0_ARADDR ADDR 1 64 }  { m_axi_wr_0_ARID ID 1 1 }  { m_axi_wr_0_ARLEN SIZE 1 32 }  { m_axi_wr_0_ARSIZE BURST 1 3 }  { m_axi_wr_0_ARBURST LOCK 1 2 }  { m_axi_wr_0_ARLOCK CACHE 1 2 }  { m_axi_wr_0_ARCACHE PROT 1 4 }  { m_axi_wr_0_ARPROT QOS 1 3 }  { m_axi_wr_0_ARQOS REGION 1 4 }  { m_axi_wr_0_ARREGION USER 1 4 }  { m_axi_wr_0_ARUSER DATA 1 1 }  { m_axi_wr_0_RVALID VALID 0 1 }  { m_axi_wr_0_RREADY READY 1 1 }  { m_axi_wr_0_RDATA FIFONUM 0 256 }  { m_axi_wr_0_RLAST LAST 0 1 }  { m_axi_wr_0_RID ID 0 1 }  { m_axi_wr_0_RFIFONUM LEN 0 9 }  { m_axi_wr_0_RUSER DATA 0 1 }  { m_axi_wr_0_RRESP RESP 0 2 }  { m_axi_wr_0_BVALID VALID 0 1 }  { m_axi_wr_0_BREADY READY 1 1 }  { m_axi_wr_0_BRESP RESP 0 2 }  { m_axi_wr_0_BID ID 0 1 }  { m_axi_wr_0_BUSER DATA 0 1 } } }
	gmem { ap_none {  { gmem in_data 0 64 } } }
	egress_0_V_data_V { axis {  { egress_0_TVALID in_vld 0 1 }  { egress_0_TDATA in_data 0 512 } } }
	egress_0_V_keep_V { axis {  { egress_0_TKEEP in_data 0 64 } } }
	egress_0_V_strb_V { axis {  { egress_0_TSTRB in_data 0 64 } } }
	egress_0_V_last_V { axis {  { egress_0_TLAST in_data 0 1 } } }
	egress_0_V_dest_V { axis {  { egress_0_TREADY in_acc 1 1 }  { egress_0_TDEST in_data 0 1 } } }
	last { ap_none {  { last in_data 0 1 } } }
	target { ap_none {  { target in_data 0 512 } } }
	golden_fifo_0 { axis {  { golden_fifo_0_TREADY out_acc 0 1 }  { golden_fifo_0_TDATA out_data 1 32 }  { golden_fifo_0_TVALID out_vld 1 1 } } }
}
