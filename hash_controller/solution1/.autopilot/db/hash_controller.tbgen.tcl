set moduleName hash_controller
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hash_controller}
set C_modelType { void 0 }
set C_modelArgList {
	{ rd_0 int 256 regular {axi_master 0}  }
	{ rd_1 int 256 regular {axi_master 0}  }
	{ wr_0 int 256 regular {axi_master 1}  }
	{ wr_1 int 256 regular {axi_master 1}  }
	{ rd_0_offset int 64 regular {axi_slave 0}  }
	{ rd_1_offset int 64 regular {axi_slave 0}  }
	{ wr_0_offset int 64 regular {axi_slave 0}  }
	{ wr_1_offset int 64 regular {axi_slave 0}  }
	{ ingress_0_V_data_V int 512 regular {axi_s 1 volatile  { ingress_0 Data } }  }
	{ ingress_0_V_keep_V int 64 regular {axi_s 1 volatile  { ingress_0 Keep } }  }
	{ ingress_0_V_strb_V int 64 regular {axi_s 1 volatile  { ingress_0 Strb } }  }
	{ ingress_0_V_last_V int 1 regular {axi_s 1 volatile  { ingress_0 Last } }  }
	{ ingress_0_V_dest_V int 1 regular {axi_s 1 volatile  { ingress_0 Dest } }  }
	{ ingress_1_V_data_V int 512 regular {axi_s 1 volatile  { ingress_1 Data } }  }
	{ ingress_1_V_keep_V int 64 regular {axi_s 1 volatile  { ingress_1 Keep } }  }
	{ ingress_1_V_strb_V int 64 regular {axi_s 1 volatile  { ingress_1 Strb } }  }
	{ ingress_1_V_last_V int 1 regular {axi_s 1 volatile  { ingress_1 Last } }  }
	{ ingress_1_V_dest_V int 1 regular {axi_s 1 volatile  { ingress_1 Dest } }  }
	{ egress_0_V_data_V int 512 regular {axi_s 0 volatile  { egress_0 Data } }  }
	{ egress_0_V_keep_V int 64 regular {axi_s 0 volatile  { egress_0 Keep } }  }
	{ egress_0_V_strb_V int 64 regular {axi_s 0 volatile  { egress_0 Strb } }  }
	{ egress_0_V_last_V int 1 regular {axi_s 0 volatile  { egress_0 Last } }  }
	{ egress_0_V_dest_V int 1 regular {axi_s 0 volatile  { egress_0 Dest } }  }
	{ egress_1_V_data_V int 512 regular {axi_s 0 volatile  { egress_1 Data } }  }
	{ egress_1_V_keep_V int 64 regular {axi_s 0 volatile  { egress_1 Keep } }  }
	{ egress_1_V_strb_V int 64 regular {axi_s 0 volatile  { egress_1 Strb } }  }
	{ egress_1_V_last_V int 1 regular {axi_s 0 volatile  { egress_1 Last } }  }
	{ egress_1_V_dest_V int 1 regular {axi_s 0 volatile  { egress_1 Dest } }  }
	{ golden_fifo_0 int 32 regular {axi_s 1 volatile  { golden_fifo_0 Data } }  }
	{ golden_fifo_1 int 32 regular {axi_s 1 volatile  { golden_fifo_1 Data } }  }
	{ first uint 1 regular {axi_slave 0}  }
	{ last uint 1 regular {axi_slave 0}  }
	{ block_header int 512 regular {axi_slave 0}  }
	{ target int 512 regular {axi_slave 0}  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rd_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_0_offset","offset": { "type": "dynamic","port_name": "rd_0_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "rd_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_1_offset","offset": { "type": "dynamic","port_name": "rd_1_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "wr_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_0_offset","offset": { "type": "dynamic","port_name": "wr_0_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "wr_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_1_offset","offset": { "type": "dynamic","port_name": "wr_1_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "rd_0_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "rd_1_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "wr_0_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "wr_1_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "ingress_0_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_0_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ingress_1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "egress_0_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "egress_0_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "egress_1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "golden_fifo_0", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "golden_fifo_1", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "first", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "last", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "block_header", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 512, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":147}} , 
 	{ "Name" : "target", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 512, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":215}} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} ]}
# RTL Port declarations: 
set portNum 235
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_rd_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_rd_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_rd_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_rd_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_rd_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_rd_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_rd_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_rd_0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_rd_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_rd_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_rd_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_rd_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_rd_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_rd_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_rd_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_rd_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_rd_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_rd_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_rd_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_rd_1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_rd_1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_rd_1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_rd_1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_rd_1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_rd_1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_rd_1_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_rd_1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_rd_1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_rd_1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_rd_1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_rd_1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_rd_1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_rd_1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_rd_1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_rd_1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_rd_1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_rd_1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_rd_1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_rd_1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_rd_1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_rd_1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_rd_1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_rd_1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_wr_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_wr_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_wr_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_wr_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_wr_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_wr_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_wr_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_wr_0_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_wr_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_wr_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_wr_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_wr_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_wr_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_wr_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_wr_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_wr_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_wr_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_wr_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_wr_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_wr_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_wr_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_wr_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_wr_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_wr_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_wr_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_wr_1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_wr_1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_wr_1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_wr_1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_wr_1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_wr_1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_wr_1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_WDATA sc_out sc_lv 256 signal 3 } 
	{ m_axi_wr_1_WSTRB sc_out sc_lv 32 signal 3 } 
	{ m_axi_wr_1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_wr_1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_wr_1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_wr_1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_wr_1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_wr_1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_wr_1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_wr_1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wr_1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_RDATA sc_in sc_lv 256 signal 3 } 
	{ m_axi_wr_1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_wr_1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_wr_1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_wr_1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_wr_1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_wr_1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_wr_1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_wr_1_BUSER sc_in sc_lv 1 signal 3 } 
	{ ingress_0_TDATA sc_out sc_lv 512 signal 8 } 
	{ ingress_0_TVALID sc_out sc_logic 1 outvld 12 } 
	{ ingress_0_TREADY sc_in sc_logic 1 outacc 12 } 
	{ ingress_0_TKEEP sc_out sc_lv 64 signal 9 } 
	{ ingress_0_TSTRB sc_out sc_lv 64 signal 10 } 
	{ ingress_0_TLAST sc_out sc_lv 1 signal 11 } 
	{ ingress_0_TDEST sc_out sc_lv 1 signal 12 } 
	{ ingress_1_TDATA sc_out sc_lv 512 signal 13 } 
	{ ingress_1_TVALID sc_out sc_logic 1 outvld 17 } 
	{ ingress_1_TREADY sc_in sc_logic 1 outacc 17 } 
	{ ingress_1_TKEEP sc_out sc_lv 64 signal 14 } 
	{ ingress_1_TSTRB sc_out sc_lv 64 signal 15 } 
	{ ingress_1_TLAST sc_out sc_lv 1 signal 16 } 
	{ ingress_1_TDEST sc_out sc_lv 1 signal 17 } 
	{ egress_0_TDATA sc_in sc_lv 512 signal 18 } 
	{ egress_0_TVALID sc_in sc_logic 1 invld 22 } 
	{ egress_0_TREADY sc_out sc_logic 1 inacc 22 } 
	{ egress_0_TKEEP sc_in sc_lv 64 signal 19 } 
	{ egress_0_TSTRB sc_in sc_lv 64 signal 20 } 
	{ egress_0_TLAST sc_in sc_lv 1 signal 21 } 
	{ egress_0_TDEST sc_in sc_lv 1 signal 22 } 
	{ egress_1_TDATA sc_in sc_lv 512 signal 23 } 
	{ egress_1_TVALID sc_in sc_logic 1 invld 27 } 
	{ egress_1_TREADY sc_out sc_logic 1 inacc 27 } 
	{ egress_1_TKEEP sc_in sc_lv 64 signal 24 } 
	{ egress_1_TSTRB sc_in sc_lv 64 signal 25 } 
	{ egress_1_TLAST sc_in sc_lv 1 signal 26 } 
	{ egress_1_TDEST sc_in sc_lv 1 signal 27 } 
	{ golden_fifo_0_TDATA sc_out sc_lv 32 signal 28 } 
	{ golden_fifo_0_TVALID sc_out sc_logic 1 outvld 28 } 
	{ golden_fifo_0_TREADY sc_in sc_logic 1 outacc 28 } 
	{ golden_fifo_1_TDATA sc_out sc_lv 32 signal 29 } 
	{ golden_fifo_1_TVALID sc_out sc_logic 1 outvld 29 } 
	{ golden_fifo_1_TREADY sc_in sc_logic 1 outacc 29 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"hash_controller","role":"start","value":"0","valid_bit":"0"},{"name":"hash_controller","role":"continue","value":"0","valid_bit":"4"},{"name":"hash_controller","role":"auto_start","value":"0","valid_bit":"7"},{"name":"rd_0_offset","role":"data","value":"16"},{"name":"rd_1_offset","role":"data","value":"28"},{"name":"wr_0_offset","role":"data","value":"40"},{"name":"wr_1_offset","role":"data","value":"52"},{"name":"first","role":"data","value":"64"},{"name":"last","role":"data","value":"72"},{"name":"block_header","role":"data","value":"80"},{"name":"target","role":"data","value":"148"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"hash_controller","role":"start","value":"0","valid_bit":"0"},{"name":"hash_controller","role":"done","value":"0","valid_bit":"1"},{"name":"hash_controller","role":"idle","value":"0","valid_bit":"2"},{"name":"hash_controller","role":"ready","value":"0","valid_bit":"3"},{"name":"hash_controller","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_rd_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_rd_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_rd_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_rd_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "AWID" }} , 
 	{ "name": "m_axi_rd_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rd_0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_rd_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rd_0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_rd_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_rd_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_rd_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_rd_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_rd_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_rd_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BID" }} , 
 	{ "name": "m_axi_rd_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_rd_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_rd_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_rd_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_rd_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "AWID" }} , 
 	{ "name": "m_axi_rd_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rd_1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_rd_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rd_1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_rd_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_rd_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_rd_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_rd_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_rd_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rd_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_rd_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BID" }} , 
 	{ "name": "m_axi_rd_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_wr_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wr_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wr_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wr_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "AWID" }} , 
 	{ "name": "m_axi_wr_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_wr_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_wr_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_wr_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_wr_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_wr_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_wr_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_wr_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BID" }} , 
 	{ "name": "m_axi_wr_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_wr_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wr_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wr_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wr_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "AWID" }} , 
 	{ "name": "m_axi_wr_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_wr_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_wr_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_wr_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_wr_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_wr_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_wr_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wr_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_wr_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BID" }} , 
 	{ "name": "m_axi_wr_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_1", "role": "BUSER" }} , 
 	{ "name": "ingress_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_0_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_1_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_1_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_0_V_data_V", "role": "default" }} , 
 	{ "name": "egress_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_last_V", "role": "default" }} , 
 	{ "name": "egress_0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_1_V_data_V", "role": "default" }} , 
 	{ "name": "egress_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_last_V", "role": "default" }} , 
 	{ "name": "egress_1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "golden_fifo_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_0", "role": "TDATA" }} , 
 	{ "name": "golden_fifo_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_0", "role": "TVALID" }} , 
 	{ "name": "golden_fifo_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_0", "role": "TREADY" }} , 
 	{ "name": "golden_fifo_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_1", "role": "TDATA" }} , 
 	{ "name": "golden_fifo_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_1", "role": "TVALID" }} , 
 	{ "name": "golden_fifo_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_1", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "hash_controller",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67108877", "EstimateLatencyMax" : "67108877",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rd_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "rd_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rd_1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "rd_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wr_0", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "wr_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wr_1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "wr_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rd_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rd_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ingress_0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_0_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_0_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_0_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_0_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_0_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_1_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_1_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_1_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ingress_1_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "ingress_1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_0_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_0_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_0_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_0_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_0_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_1_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_1_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_1_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "egress_1_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "egress_1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "golden_fifo_0", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "golden_fifo_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "golden_fifo_1", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pass_fu_180", "Port" : "golden_fifo_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "first", "Type" : "None", "Direction" : "I"},
			{"Name" : "last", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "target", "Type" : "None", "Direction" : "I"},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180", "Parent" : "0", "Child" : ["2", "4", "6", "8"],
		"CDFG" : "pass",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67108874", "EstimateLatencyMax" : "67108874",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "ingress_U0"},
			{"ID" : "4", "Name" : "ingress_1_U0"},
			{"ID" : "6", "Name" : "egress_U0"},
			{"ID" : "8", "Name" : "egress_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "ingress_U0"},
			{"ID" : "4", "Name" : "ingress_1_U0"},
			{"ID" : "6", "Name" : "egress_U0"},
			{"ID" : "8", "Name" : "egress_1_U0"}],
		"Port" : [
			{"Name" : "rd_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "rd_0"}]},
			{"Name" : "rd_01", "Type" : "None", "Direction" : "I"},
			{"Name" : "rd_1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "rd_1"}]},
			{"Name" : "rd_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_0", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "wr_0"}]},
			{"Name" : "wr_03", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "wr_1"}]},
			{"Name" : "wr_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ingress_0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_data_V"}]},
			{"Name" : "ingress_0_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_keep_V"}]},
			{"Name" : "ingress_0_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_strb_V"}]},
			{"Name" : "ingress_0_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_last_V"}]},
			{"Name" : "ingress_0_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_dest_V"}]},
			{"Name" : "ingress_1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_data_V"}]},
			{"Name" : "ingress_1_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_keep_V"}]},
			{"Name" : "ingress_1_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_strb_V"}]},
			{"Name" : "ingress_1_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_last_V"}]},
			{"Name" : "ingress_1_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_dest_V"}]},
			{"Name" : "egress_0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "egress_0_V_data_V"}]},
			{"Name" : "egress_0_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "egress_0_V_keep_V"}]},
			{"Name" : "egress_0_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "egress_0_V_strb_V"}]},
			{"Name" : "egress_0_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "egress_0_V_last_V"}]},
			{"Name" : "egress_0_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "egress_0_V_dest_V"}]},
			{"Name" : "egress_1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_data_V"}]},
			{"Name" : "egress_1_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_keep_V"}]},
			{"Name" : "egress_1_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_strb_V"}]},
			{"Name" : "egress_1_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_last_V"}]},
			{"Name" : "egress_1_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_dest_V"}]},
			{"Name" : "golden_fifo_0", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "egress_U0", "Port" : "golden_fifo_0"}]},
			{"Name" : "golden_fifo_1", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "egress_1_U0", "Port" : "golden_fifo_1"}]},
			{"Name" : "first", "Type" : "None", "Direction" : "I"},
			{"Name" : "last", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "target", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.ingress_U0", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.ingress_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.ingress_1_U0", "Parent" : "1", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.ingress_1_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.egress_U0", "Parent" : "1", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.egress_U0.flow_control_loop_pipe_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.egress_1_U0", "Parent" : "1", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pass_fu_180.egress_1_U0.flow_control_loop_pipe_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rd_0_m_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rd_1_m_axi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wr_0_m_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wr_1_m_axi_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_0_V_dest_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_ingress_1_V_dest_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_0_V_dest_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_egress_1_V_dest_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_golden_fifo_0_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_golden_fifo_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hash_controller {
		rd_0 {Type I LastRead 9 FirstWrite -1}
		rd_1 {Type I LastRead 9 FirstWrite -1}
		wr_0 {Type O LastRead 4 FirstWrite 2}
		wr_1 {Type O LastRead 4 FirstWrite 2}
		rd_0_offset {Type I LastRead 0 FirstWrite -1}
		rd_1_offset {Type I LastRead 0 FirstWrite -1}
		wr_0_offset {Type I LastRead 0 FirstWrite -1}
		wr_1_offset {Type I LastRead 0 FirstWrite -1}
		ingress_0_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_dest_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_dest_V {Type O LastRead -1 FirstWrite 10}
		egress_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_dest_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		golden_fifo_0 {Type O LastRead -1 FirstWrite 7}
		golden_fifo_1 {Type O LastRead -1 FirstWrite 7}
		first {Type I LastRead 0 FirstWrite -1}
		last {Type I LastRead 0 FirstWrite -1}
		block_header {Type I LastRead 0 FirstWrite -1}
		target {Type I LastRead 0 FirstWrite -1}
		ap_local_deadlock {Type O LastRead -1 FirstWrite -1}}
	pass {
		rd_0 {Type I LastRead 9 FirstWrite -1}
		rd_01 {Type I LastRead 0 FirstWrite -1}
		rd_1 {Type I LastRead 9 FirstWrite -1}
		rd_12 {Type I LastRead 0 FirstWrite -1}
		wr_0 {Type O LastRead 4 FirstWrite 2}
		wr_03 {Type I LastRead 0 FirstWrite -1}
		wr_1 {Type O LastRead 4 FirstWrite 2}
		wr_14 {Type I LastRead 0 FirstWrite -1}
		ingress_0_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_dest_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_dest_V {Type O LastRead -1 FirstWrite 10}
		egress_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_0_V_dest_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		egress_1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		golden_fifo_0 {Type O LastRead -1 FirstWrite 7}
		golden_fifo_1 {Type O LastRead -1 FirstWrite 7}
		first {Type I LastRead 0 FirstWrite -1}
		last {Type I LastRead 0 FirstWrite -1}
		block_header {Type I LastRead 0 FirstWrite -1}
		target {Type I LastRead 0 FirstWrite -1}}
	ingress {
		ingress_0_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_0_V_dest_V {Type O LastRead -1 FirstWrite 10}
		rd_0 {Type I LastRead 9 FirstWrite -1}
		gmem {Type I LastRead 0 FirstWrite -1}
		first {Type I LastRead 0 FirstWrite -1}
		block_header {Type I LastRead 0 FirstWrite -1}}
	ingress_1 {
		ingress_1_V_data_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_keep_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_strb_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_last_V {Type O LastRead -1 FirstWrite 10}
		ingress_1_V_dest_V {Type O LastRead -1 FirstWrite 10}
		rd_1 {Type I LastRead 9 FirstWrite -1}
		gmem {Type I LastRead 0 FirstWrite -1}
		first {Type I LastRead 0 FirstWrite -1}
		block_header {Type I LastRead 0 FirstWrite -1}}
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
		golden_fifo_0 {Type O LastRead -1 FirstWrite 7}}
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
	{"Name" : "Latency", "Min" : "67108877", "Max" : "67108877"}
	, {"Name" : "Interval", "Min" : "67108878", "Max" : "67108878"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rd_0 { m_axi {  { m_axi_rd_0_AWVALID VALID 1 1 }  { m_axi_rd_0_AWREADY READY 0 1 }  { m_axi_rd_0_AWADDR ADDR 1 64 }  { m_axi_rd_0_AWID ID 1 1 }  { m_axi_rd_0_AWLEN SIZE 1 8 }  { m_axi_rd_0_AWSIZE BURST 1 3 }  { m_axi_rd_0_AWBURST LOCK 1 2 }  { m_axi_rd_0_AWLOCK CACHE 1 2 }  { m_axi_rd_0_AWCACHE PROT 1 4 }  { m_axi_rd_0_AWPROT QOS 1 3 }  { m_axi_rd_0_AWQOS REGION 1 4 }  { m_axi_rd_0_AWREGION USER 1 4 }  { m_axi_rd_0_AWUSER DATA 1 1 }  { m_axi_rd_0_WVALID VALID 1 1 }  { m_axi_rd_0_WREADY READY 0 1 }  { m_axi_rd_0_WDATA FIFONUM 1 256 }  { m_axi_rd_0_WSTRB STRB 1 32 }  { m_axi_rd_0_WLAST LAST 1 1 }  { m_axi_rd_0_WID ID 1 1 }  { m_axi_rd_0_WUSER DATA 1 1 }  { m_axi_rd_0_ARVALID VALID 1 1 }  { m_axi_rd_0_ARREADY READY 0 1 }  { m_axi_rd_0_ARADDR ADDR 1 64 }  { m_axi_rd_0_ARID ID 1 1 }  { m_axi_rd_0_ARLEN SIZE 1 8 }  { m_axi_rd_0_ARSIZE BURST 1 3 }  { m_axi_rd_0_ARBURST LOCK 1 2 }  { m_axi_rd_0_ARLOCK CACHE 1 2 }  { m_axi_rd_0_ARCACHE PROT 1 4 }  { m_axi_rd_0_ARPROT QOS 1 3 }  { m_axi_rd_0_ARQOS REGION 1 4 }  { m_axi_rd_0_ARREGION USER 1 4 }  { m_axi_rd_0_ARUSER DATA 1 1 }  { m_axi_rd_0_RVALID VALID 0 1 }  { m_axi_rd_0_RREADY READY 1 1 }  { m_axi_rd_0_RDATA FIFONUM 0 256 }  { m_axi_rd_0_RLAST LAST 0 1 }  { m_axi_rd_0_RID ID 0 1 }  { m_axi_rd_0_RUSER DATA 0 1 }  { m_axi_rd_0_RRESP RESP 0 2 }  { m_axi_rd_0_BVALID VALID 0 1 }  { m_axi_rd_0_BREADY READY 1 1 }  { m_axi_rd_0_BRESP RESP 0 2 }  { m_axi_rd_0_BID ID 0 1 }  { m_axi_rd_0_BUSER DATA 0 1 } } }
	rd_1 { m_axi {  { m_axi_rd_1_AWVALID VALID 1 1 }  { m_axi_rd_1_AWREADY READY 0 1 }  { m_axi_rd_1_AWADDR ADDR 1 64 }  { m_axi_rd_1_AWID ID 1 1 }  { m_axi_rd_1_AWLEN SIZE 1 8 }  { m_axi_rd_1_AWSIZE BURST 1 3 }  { m_axi_rd_1_AWBURST LOCK 1 2 }  { m_axi_rd_1_AWLOCK CACHE 1 2 }  { m_axi_rd_1_AWCACHE PROT 1 4 }  { m_axi_rd_1_AWPROT QOS 1 3 }  { m_axi_rd_1_AWQOS REGION 1 4 }  { m_axi_rd_1_AWREGION USER 1 4 }  { m_axi_rd_1_AWUSER DATA 1 1 }  { m_axi_rd_1_WVALID VALID 1 1 }  { m_axi_rd_1_WREADY READY 0 1 }  { m_axi_rd_1_WDATA FIFONUM 1 256 }  { m_axi_rd_1_WSTRB STRB 1 32 }  { m_axi_rd_1_WLAST LAST 1 1 }  { m_axi_rd_1_WID ID 1 1 }  { m_axi_rd_1_WUSER DATA 1 1 }  { m_axi_rd_1_ARVALID VALID 1 1 }  { m_axi_rd_1_ARREADY READY 0 1 }  { m_axi_rd_1_ARADDR ADDR 1 64 }  { m_axi_rd_1_ARID ID 1 1 }  { m_axi_rd_1_ARLEN SIZE 1 8 }  { m_axi_rd_1_ARSIZE BURST 1 3 }  { m_axi_rd_1_ARBURST LOCK 1 2 }  { m_axi_rd_1_ARLOCK CACHE 1 2 }  { m_axi_rd_1_ARCACHE PROT 1 4 }  { m_axi_rd_1_ARPROT QOS 1 3 }  { m_axi_rd_1_ARQOS REGION 1 4 }  { m_axi_rd_1_ARREGION USER 1 4 }  { m_axi_rd_1_ARUSER DATA 1 1 }  { m_axi_rd_1_RVALID VALID 0 1 }  { m_axi_rd_1_RREADY READY 1 1 }  { m_axi_rd_1_RDATA FIFONUM 0 256 }  { m_axi_rd_1_RLAST LAST 0 1 }  { m_axi_rd_1_RID ID 0 1 }  { m_axi_rd_1_RUSER DATA 0 1 }  { m_axi_rd_1_RRESP RESP 0 2 }  { m_axi_rd_1_BVALID VALID 0 1 }  { m_axi_rd_1_BREADY READY 1 1 }  { m_axi_rd_1_BRESP RESP 0 2 }  { m_axi_rd_1_BID ID 0 1 }  { m_axi_rd_1_BUSER DATA 0 1 } } }
	wr_0 { m_axi {  { m_axi_wr_0_AWVALID VALID 1 1 }  { m_axi_wr_0_AWREADY READY 0 1 }  { m_axi_wr_0_AWADDR ADDR 1 64 }  { m_axi_wr_0_AWID ID 1 1 }  { m_axi_wr_0_AWLEN SIZE 1 8 }  { m_axi_wr_0_AWSIZE BURST 1 3 }  { m_axi_wr_0_AWBURST LOCK 1 2 }  { m_axi_wr_0_AWLOCK CACHE 1 2 }  { m_axi_wr_0_AWCACHE PROT 1 4 }  { m_axi_wr_0_AWPROT QOS 1 3 }  { m_axi_wr_0_AWQOS REGION 1 4 }  { m_axi_wr_0_AWREGION USER 1 4 }  { m_axi_wr_0_AWUSER DATA 1 1 }  { m_axi_wr_0_WVALID VALID 1 1 }  { m_axi_wr_0_WREADY READY 0 1 }  { m_axi_wr_0_WDATA FIFONUM 1 256 }  { m_axi_wr_0_WSTRB STRB 1 32 }  { m_axi_wr_0_WLAST LAST 1 1 }  { m_axi_wr_0_WID ID 1 1 }  { m_axi_wr_0_WUSER DATA 1 1 }  { m_axi_wr_0_ARVALID VALID 1 1 }  { m_axi_wr_0_ARREADY READY 0 1 }  { m_axi_wr_0_ARADDR ADDR 1 64 }  { m_axi_wr_0_ARID ID 1 1 }  { m_axi_wr_0_ARLEN SIZE 1 8 }  { m_axi_wr_0_ARSIZE BURST 1 3 }  { m_axi_wr_0_ARBURST LOCK 1 2 }  { m_axi_wr_0_ARLOCK CACHE 1 2 }  { m_axi_wr_0_ARCACHE PROT 1 4 }  { m_axi_wr_0_ARPROT QOS 1 3 }  { m_axi_wr_0_ARQOS REGION 1 4 }  { m_axi_wr_0_ARREGION USER 1 4 }  { m_axi_wr_0_ARUSER DATA 1 1 }  { m_axi_wr_0_RVALID VALID 0 1 }  { m_axi_wr_0_RREADY READY 1 1 }  { m_axi_wr_0_RDATA FIFONUM 0 256 }  { m_axi_wr_0_RLAST LAST 0 1 }  { m_axi_wr_0_RID ID 0 1 }  { m_axi_wr_0_RUSER DATA 0 1 }  { m_axi_wr_0_RRESP RESP 0 2 }  { m_axi_wr_0_BVALID VALID 0 1 }  { m_axi_wr_0_BREADY READY 1 1 }  { m_axi_wr_0_BRESP RESP 0 2 }  { m_axi_wr_0_BID ID 0 1 }  { m_axi_wr_0_BUSER DATA 0 1 } } }
	wr_1 { m_axi {  { m_axi_wr_1_AWVALID VALID 1 1 }  { m_axi_wr_1_AWREADY READY 0 1 }  { m_axi_wr_1_AWADDR ADDR 1 64 }  { m_axi_wr_1_AWID ID 1 1 }  { m_axi_wr_1_AWLEN SIZE 1 8 }  { m_axi_wr_1_AWSIZE BURST 1 3 }  { m_axi_wr_1_AWBURST LOCK 1 2 }  { m_axi_wr_1_AWLOCK CACHE 1 2 }  { m_axi_wr_1_AWCACHE PROT 1 4 }  { m_axi_wr_1_AWPROT QOS 1 3 }  { m_axi_wr_1_AWQOS REGION 1 4 }  { m_axi_wr_1_AWREGION USER 1 4 }  { m_axi_wr_1_AWUSER DATA 1 1 }  { m_axi_wr_1_WVALID VALID 1 1 }  { m_axi_wr_1_WREADY READY 0 1 }  { m_axi_wr_1_WDATA FIFONUM 1 256 }  { m_axi_wr_1_WSTRB STRB 1 32 }  { m_axi_wr_1_WLAST LAST 1 1 }  { m_axi_wr_1_WID ID 1 1 }  { m_axi_wr_1_WUSER DATA 1 1 }  { m_axi_wr_1_ARVALID VALID 1 1 }  { m_axi_wr_1_ARREADY READY 0 1 }  { m_axi_wr_1_ARADDR ADDR 1 64 }  { m_axi_wr_1_ARID ID 1 1 }  { m_axi_wr_1_ARLEN SIZE 1 8 }  { m_axi_wr_1_ARSIZE BURST 1 3 }  { m_axi_wr_1_ARBURST LOCK 1 2 }  { m_axi_wr_1_ARLOCK CACHE 1 2 }  { m_axi_wr_1_ARCACHE PROT 1 4 }  { m_axi_wr_1_ARPROT QOS 1 3 }  { m_axi_wr_1_ARQOS REGION 1 4 }  { m_axi_wr_1_ARREGION USER 1 4 }  { m_axi_wr_1_ARUSER DATA 1 1 }  { m_axi_wr_1_RVALID VALID 0 1 }  { m_axi_wr_1_RREADY READY 1 1 }  { m_axi_wr_1_RDATA FIFONUM 0 256 }  { m_axi_wr_1_RLAST LAST 0 1 }  { m_axi_wr_1_RID ID 0 1 }  { m_axi_wr_1_RUSER DATA 0 1 }  { m_axi_wr_1_RRESP RESP 0 2 }  { m_axi_wr_1_BVALID VALID 0 1 }  { m_axi_wr_1_BREADY READY 1 1 }  { m_axi_wr_1_BRESP RESP 0 2 }  { m_axi_wr_1_BID ID 0 1 }  { m_axi_wr_1_BUSER DATA 0 1 } } }
	ingress_0_V_data_V { axis {  { ingress_0_TDATA out_data 1 512 } } }
	ingress_0_V_keep_V { axis {  { ingress_0_TKEEP out_data 1 64 } } }
	ingress_0_V_strb_V { axis {  { ingress_0_TSTRB out_data 1 64 } } }
	ingress_0_V_last_V { axis {  { ingress_0_TLAST out_data 1 1 } } }
	ingress_0_V_dest_V { axis {  { ingress_0_TVALID out_vld 1 1 }  { ingress_0_TREADY out_acc 0 1 }  { ingress_0_TDEST out_data 1 1 } } }
	ingress_1_V_data_V { axis {  { ingress_1_TDATA out_data 1 512 } } }
	ingress_1_V_keep_V { axis {  { ingress_1_TKEEP out_data 1 64 } } }
	ingress_1_V_strb_V { axis {  { ingress_1_TSTRB out_data 1 64 } } }
	ingress_1_V_last_V { axis {  { ingress_1_TLAST out_data 1 1 } } }
	ingress_1_V_dest_V { axis {  { ingress_1_TVALID out_vld 1 1 }  { ingress_1_TREADY out_acc 0 1 }  { ingress_1_TDEST out_data 1 1 } } }
	egress_0_V_data_V { axis {  { egress_0_TDATA in_data 0 512 } } }
	egress_0_V_keep_V { axis {  { egress_0_TKEEP in_data 0 64 } } }
	egress_0_V_strb_V { axis {  { egress_0_TSTRB in_data 0 64 } } }
	egress_0_V_last_V { axis {  { egress_0_TLAST in_data 0 1 } } }
	egress_0_V_dest_V { axis {  { egress_0_TVALID in_vld 0 1 }  { egress_0_TREADY in_acc 1 1 }  { egress_0_TDEST in_data 0 1 } } }
	egress_1_V_data_V { axis {  { egress_1_TDATA in_data 0 512 } } }
	egress_1_V_keep_V { axis {  { egress_1_TKEEP in_data 0 64 } } }
	egress_1_V_strb_V { axis {  { egress_1_TSTRB in_data 0 64 } } }
	egress_1_V_last_V { axis {  { egress_1_TLAST in_data 0 1 } } }
	egress_1_V_dest_V { axis {  { egress_1_TVALID in_vld 0 1 }  { egress_1_TREADY in_acc 1 1 }  { egress_1_TDEST in_data 0 1 } } }
	golden_fifo_0 { axis {  { golden_fifo_0_TDATA out_data 1 32 }  { golden_fifo_0_TVALID out_vld 1 1 }  { golden_fifo_0_TREADY out_acc 0 1 } } }
	golden_fifo_1 { axis {  { golden_fifo_1_TDATA out_data 1 32 }  { golden_fifo_1_TVALID out_vld 1 1 }  { golden_fifo_1_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
	{ rd_0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ rd_1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ wr_0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ wr_1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ rd_0 1 }
	{ rd_1 1 }
	{ wr_0 1 }
	{ wr_1 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ rd_0 1 }
	{ rd_1 1 }
	{ wr_0 1 }
	{ wr_1 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
