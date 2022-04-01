set moduleName pass
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pass}
set C_modelType { void 0 }
set C_modelArgList {
	{ rd_0 int 256 regular {axi_master 0}  }
	{ rd_01 int 64 regular  }
	{ rd_1 int 256 regular {axi_master 0}  }
	{ rd_12 int 64 regular  }
	{ wr_0 int 256 regular {axi_master 1}  }
	{ wr_03 int 64 regular  }
	{ wr_1 int 256 regular {axi_master 1}  }
	{ wr_14 int 64 regular  }
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
	{ first uint 1 regular  }
	{ last uint 1 regular  }
	{ block_header int 512 regular  }
	{ target int 512 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rd_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_0_offset","offset": { "type": "dynamic","port_name": "rd_0_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "rd_01", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rd_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "rd_1_offset","offset": { "type": "dynamic","port_name": "rd_1_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "rd_12", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wr_0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_0_offset","offset": { "type": "dynamic","port_name": "wr_0_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "wr_03", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wr_1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "wr_1_offset","offset": { "type": "dynamic","port_name": "wr_1_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "wr_14", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
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
 	{ "Name" : "first", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "last", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "block_header", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "target", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 241
set portList { 
	{ m_axi_rd_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_rd_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_rd_0_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_rd_0_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_rd_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_rd_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_rd_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_rd_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_rd_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_rd_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_rd_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ rd_01 sc_in sc_lv 64 signal 1 } 
	{ m_axi_rd_1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_rd_1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_rd_1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_rd_1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_rd_1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_rd_1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_rd_1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_rd_1_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_rd_1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_rd_1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_rd_1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_rd_1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_rd_1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_rd_1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_rd_1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_rd_1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_rd_1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_rd_1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_rd_1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_rd_1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_rd_1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_rd_1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_rd_1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_rd_1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_rd_1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_rd_1_BUSER sc_in sc_lv 1 signal 2 } 
	{ rd_12 sc_in sc_lv 64 signal 3 } 
	{ m_axi_wr_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_wr_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_wr_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_wr_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_wr_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_wr_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_wr_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_wr_0_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_wr_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_wr_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_wr_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_wr_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_wr_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_wr_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_wr_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_wr_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_wr_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_wr_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_wr_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_wr_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_wr_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_wr_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_wr_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_wr_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_wr_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_wr_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ wr_03 sc_in sc_lv 64 signal 5 } 
	{ m_axi_wr_1_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_wr_1_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_wr_1_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_wr_1_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_wr_1_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_wr_1_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_wr_1_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_WDATA sc_out sc_lv 256 signal 6 } 
	{ m_axi_wr_1_WSTRB sc_out sc_lv 32 signal 6 } 
	{ m_axi_wr_1_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_wr_1_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_wr_1_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_wr_1_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_wr_1_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_wr_1_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_wr_1_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_wr_1_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_wr_1_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_RDATA sc_in sc_lv 256 signal 6 } 
	{ m_axi_wr_1_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_wr_1_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_wr_1_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_wr_1_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_wr_1_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_wr_1_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_wr_1_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_wr_1_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_wr_1_BUSER sc_in sc_lv 1 signal 6 } 
	{ wr_14 sc_in sc_lv 64 signal 7 } 
	{ ingress_0_TDATA sc_out sc_lv 512 signal 8 } 
	{ ingress_0_TKEEP sc_out sc_lv 64 signal 9 } 
	{ ingress_0_TSTRB sc_out sc_lv 64 signal 10 } 
	{ ingress_0_TLAST sc_out sc_lv 1 signal 11 } 
	{ ingress_0_TDEST sc_out sc_lv 1 signal 12 } 
	{ ingress_1_TDATA sc_out sc_lv 512 signal 13 } 
	{ ingress_1_TKEEP sc_out sc_lv 64 signal 14 } 
	{ ingress_1_TSTRB sc_out sc_lv 64 signal 15 } 
	{ ingress_1_TLAST sc_out sc_lv 1 signal 16 } 
	{ ingress_1_TDEST sc_out sc_lv 1 signal 17 } 
	{ egress_0_TDATA sc_in sc_lv 512 signal 18 } 
	{ egress_0_TKEEP sc_in sc_lv 64 signal 19 } 
	{ egress_0_TSTRB sc_in sc_lv 64 signal 20 } 
	{ egress_0_TLAST sc_in sc_lv 1 signal 21 } 
	{ egress_0_TDEST sc_in sc_lv 1 signal 22 } 
	{ egress_1_TDATA sc_in sc_lv 512 signal 23 } 
	{ egress_1_TKEEP sc_in sc_lv 64 signal 24 } 
	{ egress_1_TSTRB sc_in sc_lv 64 signal 25 } 
	{ egress_1_TLAST sc_in sc_lv 1 signal 26 } 
	{ egress_1_TDEST sc_in sc_lv 1 signal 27 } 
	{ golden_fifo_0_TDATA sc_out sc_lv 32 signal 28 } 
	{ golden_fifo_1_TDATA sc_out sc_lv 32 signal 29 } 
	{ first sc_in sc_lv 1 signal 30 } 
	{ last sc_in sc_lv 1 signal 31 } 
	{ block_header sc_in sc_lv 512 signal 32 } 
	{ target sc_in sc_lv 512 signal 33 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ingress_0_TVALID sc_out sc_logic 1 outvld 12 } 
	{ ingress_0_TREADY sc_in sc_logic 1 outacc 12 } 
	{ rd_01_ap_vld sc_in sc_logic 1 invld 1 } 
	{ first_ap_vld sc_in sc_logic 1 invld 30 } 
	{ block_header_ap_vld sc_in sc_logic 1 invld 32 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ingress_1_TVALID sc_out sc_logic 1 outvld 17 } 
	{ ingress_1_TREADY sc_in sc_logic 1 outacc 17 } 
	{ rd_12_ap_vld sc_in sc_logic 1 invld 3 } 
	{ wr_03_ap_vld sc_in sc_logic 1 invld 5 } 
	{ egress_0_TVALID sc_in sc_logic 1 invld 22 } 
	{ egress_0_TREADY sc_out sc_logic 1 inacc 22 } 
	{ last_ap_vld sc_in sc_logic 1 invld 31 } 
	{ target_ap_vld sc_in sc_logic 1 invld 33 } 
	{ golden_fifo_0_TVALID sc_out sc_logic 1 outvld 28 } 
	{ golden_fifo_0_TREADY sc_in sc_logic 1 outacc 28 } 
	{ wr_14_ap_vld sc_in sc_logic 1 invld 7 } 
	{ egress_1_TVALID sc_in sc_logic 1 invld 27 } 
	{ egress_1_TREADY sc_out sc_logic 1 inacc 27 } 
	{ golden_fifo_1_TVALID sc_out sc_logic 1 outvld 29 } 
	{ golden_fifo_1_TREADY sc_in sc_logic 1 outacc 29 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
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
 	{ "name": "rd_01", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_01", "role": "default" }} , 
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
 	{ "name": "rd_12", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_12", "role": "default" }} , 
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
 	{ "name": "wr_03", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_03", "role": "default" }} , 
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
 	{ "name": "wr_14", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_14", "role": "default" }} , 
 	{ "name": "ingress_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_0_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ingress_1_V_data_V", "role": "default" }} , 
 	{ "name": "ingress_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "ingress_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ingress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "ingress_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_last_V", "role": "default" }} , 
 	{ "name": "ingress_1_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_0_V_data_V", "role": "default" }} , 
 	{ "name": "egress_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_0_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_last_V", "role": "default" }} , 
 	{ "name": "egress_0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "egress_1_V_data_V", "role": "default" }} , 
 	{ "name": "egress_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_keep_V", "role": "default" }} , 
 	{ "name": "egress_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "egress_1_V_strb_V", "role": "default" }} , 
 	{ "name": "egress_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_last_V", "role": "default" }} , 
 	{ "name": "egress_1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "golden_fifo_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_0", "role": "TDATA" }} , 
 	{ "name": "golden_fifo_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "golden_fifo_1", "role": "TDATA" }} , 
 	{ "name": "first", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "first", "role": "default" }} , 
 	{ "name": "last", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last", "role": "default" }} , 
 	{ "name": "block_header", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "block_header", "role": "default" }} , 
 	{ "name": "target", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "target", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ingress_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "rd_01_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rd_01", "role": "ap_vld" }} , 
 	{ "name": "first_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "first", "role": "ap_vld" }} , 
 	{ "name": "block_header_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "block_header", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ingress_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "ingress_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ingress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "rd_12_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rd_12", "role": "ap_vld" }} , 
 	{ "name": "wr_03_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wr_03", "role": "ap_vld" }} , 
 	{ "name": "egress_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_0_V_dest_V", "role": "default" }} , 
 	{ "name": "last_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "last", "role": "ap_vld" }} , 
 	{ "name": "target_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "target", "role": "ap_vld" }} , 
 	{ "name": "golden_fifo_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_0", "role": "TVALID" }} , 
 	{ "name": "golden_fifo_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_0", "role": "TREADY" }} , 
 	{ "name": "wr_14_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wr_14", "role": "ap_vld" }} , 
 	{ "name": "egress_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "egress_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "egress_1_V_dest_V", "role": "default" }} , 
 	{ "name": "golden_fifo_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "golden_fifo_1", "role": "TVALID" }} , 
 	{ "name": "golden_fifo_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "golden_fifo_1", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7"],
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
			{"ID" : "1", "Name" : "ingress_U0"},
			{"ID" : "3", "Name" : "ingress_1_U0"},
			{"ID" : "5", "Name" : "egress_U0"},
			{"ID" : "7", "Name" : "egress_1_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "ingress_U0"},
			{"ID" : "3", "Name" : "ingress_1_U0"},
			{"ID" : "5", "Name" : "egress_U0"},
			{"ID" : "7", "Name" : "egress_1_U0"}],
		"Port" : [
			{"Name" : "rd_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "rd_0"}]},
			{"Name" : "rd_01", "Type" : "None", "Direction" : "I"},
			{"Name" : "rd_1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "rd_1"}]},
			{"Name" : "rd_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_0", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "wr_0"}]},
			{"Name" : "wr_03", "Type" : "None", "Direction" : "I"},
			{"Name" : "wr_1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "wr_1"}]},
			{"Name" : "wr_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ingress_0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_data_V"}]},
			{"Name" : "ingress_0_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_keep_V"}]},
			{"Name" : "ingress_0_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_strb_V"}]},
			{"Name" : "ingress_0_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_last_V"}]},
			{"Name" : "ingress_0_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "ingress_U0", "Port" : "ingress_0_V_dest_V"}]},
			{"Name" : "ingress_1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_data_V"}]},
			{"Name" : "ingress_1_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_keep_V"}]},
			{"Name" : "ingress_1_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_strb_V"}]},
			{"Name" : "ingress_1_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_last_V"}]},
			{"Name" : "ingress_1_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "ingress_1_U0", "Port" : "ingress_1_V_dest_V"}]},
			{"Name" : "egress_0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "egress_0_V_data_V"}]},
			{"Name" : "egress_0_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "egress_0_V_keep_V"}]},
			{"Name" : "egress_0_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "egress_0_V_strb_V"}]},
			{"Name" : "egress_0_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "egress_0_V_last_V"}]},
			{"Name" : "egress_0_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "egress_0_V_dest_V"}]},
			{"Name" : "egress_1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_data_V"}]},
			{"Name" : "egress_1_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_keep_V"}]},
			{"Name" : "egress_1_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_strb_V"}]},
			{"Name" : "egress_1_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_last_V"}]},
			{"Name" : "egress_1_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "egress_1_V_dest_V"}]},
			{"Name" : "golden_fifo_0", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "egress_U0", "Port" : "golden_fifo_0"}]},
			{"Name" : "golden_fifo_1", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "egress_1_U0", "Port" : "golden_fifo_1"}]},
			{"Name" : "first", "Type" : "None", "Direction" : "I"},
			{"Name" : "last", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "target", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ingress_U0", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ingress_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ingress_1_U0", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ingress_1_U0.flow_control_loop_pipe_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.egress_U0", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.egress_U0.flow_control_loop_pipe_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.egress_1_U0", "Parent" : "0", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.egress_1_U0.flow_control_loop_pipe_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "67108874", "Max" : "67108874"}
	, {"Name" : "Interval", "Min" : "67108875", "Max" : "67108875"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rd_0 { m_axi {  { m_axi_rd_0_AWVALID VALID 1 1 }  { m_axi_rd_0_AWREADY READY 0 1 }  { m_axi_rd_0_AWADDR ADDR 1 64 }  { m_axi_rd_0_AWID ID 1 1 }  { m_axi_rd_0_AWLEN SIZE 1 32 }  { m_axi_rd_0_AWSIZE BURST 1 3 }  { m_axi_rd_0_AWBURST LOCK 1 2 }  { m_axi_rd_0_AWLOCK CACHE 1 2 }  { m_axi_rd_0_AWCACHE PROT 1 4 }  { m_axi_rd_0_AWPROT QOS 1 3 }  { m_axi_rd_0_AWQOS REGION 1 4 }  { m_axi_rd_0_AWREGION USER 1 4 }  { m_axi_rd_0_AWUSER DATA 1 1 }  { m_axi_rd_0_WVALID VALID 1 1 }  { m_axi_rd_0_WREADY READY 0 1 }  { m_axi_rd_0_WDATA FIFONUM 1 256 }  { m_axi_rd_0_WSTRB STRB 1 32 }  { m_axi_rd_0_WLAST LAST 1 1 }  { m_axi_rd_0_WID ID 1 1 }  { m_axi_rd_0_WUSER DATA 1 1 }  { m_axi_rd_0_ARVALID VALID 1 1 }  { m_axi_rd_0_ARREADY READY 0 1 }  { m_axi_rd_0_ARADDR ADDR 1 64 }  { m_axi_rd_0_ARID ID 1 1 }  { m_axi_rd_0_ARLEN SIZE 1 32 }  { m_axi_rd_0_ARSIZE BURST 1 3 }  { m_axi_rd_0_ARBURST LOCK 1 2 }  { m_axi_rd_0_ARLOCK CACHE 1 2 }  { m_axi_rd_0_ARCACHE PROT 1 4 }  { m_axi_rd_0_ARPROT QOS 1 3 }  { m_axi_rd_0_ARQOS REGION 1 4 }  { m_axi_rd_0_ARREGION USER 1 4 }  { m_axi_rd_0_ARUSER DATA 1 1 }  { m_axi_rd_0_RVALID VALID 0 1 }  { m_axi_rd_0_RREADY READY 1 1 }  { m_axi_rd_0_RDATA FIFONUM 0 256 }  { m_axi_rd_0_RLAST LAST 0 1 }  { m_axi_rd_0_RID ID 0 1 }  { m_axi_rd_0_RFIFONUM LEN 0 9 }  { m_axi_rd_0_RUSER DATA 0 1 }  { m_axi_rd_0_RRESP RESP 0 2 }  { m_axi_rd_0_BVALID VALID 0 1 }  { m_axi_rd_0_BREADY READY 1 1 }  { m_axi_rd_0_BRESP RESP 0 2 }  { m_axi_rd_0_BID ID 0 1 }  { m_axi_rd_0_BUSER DATA 0 1 } } }
	rd_01 { ap_none {  { rd_01 in_data 0 64 }  { rd_01_ap_vld in_vld 0 1 } } }
	rd_1 { m_axi {  { m_axi_rd_1_AWVALID VALID 1 1 }  { m_axi_rd_1_AWREADY READY 0 1 }  { m_axi_rd_1_AWADDR ADDR 1 64 }  { m_axi_rd_1_AWID ID 1 1 }  { m_axi_rd_1_AWLEN SIZE 1 32 }  { m_axi_rd_1_AWSIZE BURST 1 3 }  { m_axi_rd_1_AWBURST LOCK 1 2 }  { m_axi_rd_1_AWLOCK CACHE 1 2 }  { m_axi_rd_1_AWCACHE PROT 1 4 }  { m_axi_rd_1_AWPROT QOS 1 3 }  { m_axi_rd_1_AWQOS REGION 1 4 }  { m_axi_rd_1_AWREGION USER 1 4 }  { m_axi_rd_1_AWUSER DATA 1 1 }  { m_axi_rd_1_WVALID VALID 1 1 }  { m_axi_rd_1_WREADY READY 0 1 }  { m_axi_rd_1_WDATA FIFONUM 1 256 }  { m_axi_rd_1_WSTRB STRB 1 32 }  { m_axi_rd_1_WLAST LAST 1 1 }  { m_axi_rd_1_WID ID 1 1 }  { m_axi_rd_1_WUSER DATA 1 1 }  { m_axi_rd_1_ARVALID VALID 1 1 }  { m_axi_rd_1_ARREADY READY 0 1 }  { m_axi_rd_1_ARADDR ADDR 1 64 }  { m_axi_rd_1_ARID ID 1 1 }  { m_axi_rd_1_ARLEN SIZE 1 32 }  { m_axi_rd_1_ARSIZE BURST 1 3 }  { m_axi_rd_1_ARBURST LOCK 1 2 }  { m_axi_rd_1_ARLOCK CACHE 1 2 }  { m_axi_rd_1_ARCACHE PROT 1 4 }  { m_axi_rd_1_ARPROT QOS 1 3 }  { m_axi_rd_1_ARQOS REGION 1 4 }  { m_axi_rd_1_ARREGION USER 1 4 }  { m_axi_rd_1_ARUSER DATA 1 1 }  { m_axi_rd_1_RVALID VALID 0 1 }  { m_axi_rd_1_RREADY READY 1 1 }  { m_axi_rd_1_RDATA FIFONUM 0 256 }  { m_axi_rd_1_RLAST LAST 0 1 }  { m_axi_rd_1_RID ID 0 1 }  { m_axi_rd_1_RFIFONUM LEN 0 9 }  { m_axi_rd_1_RUSER DATA 0 1 }  { m_axi_rd_1_RRESP RESP 0 2 }  { m_axi_rd_1_BVALID VALID 0 1 }  { m_axi_rd_1_BREADY READY 1 1 }  { m_axi_rd_1_BRESP RESP 0 2 }  { m_axi_rd_1_BID ID 0 1 }  { m_axi_rd_1_BUSER DATA 0 1 } } }
	rd_12 { ap_none {  { rd_12 in_data 0 64 }  { rd_12_ap_vld in_vld 0 1 } } }
	wr_0 { m_axi {  { m_axi_wr_0_AWVALID VALID 1 1 }  { m_axi_wr_0_AWREADY READY 0 1 }  { m_axi_wr_0_AWADDR ADDR 1 64 }  { m_axi_wr_0_AWID ID 1 1 }  { m_axi_wr_0_AWLEN SIZE 1 32 }  { m_axi_wr_0_AWSIZE BURST 1 3 }  { m_axi_wr_0_AWBURST LOCK 1 2 }  { m_axi_wr_0_AWLOCK CACHE 1 2 }  { m_axi_wr_0_AWCACHE PROT 1 4 }  { m_axi_wr_0_AWPROT QOS 1 3 }  { m_axi_wr_0_AWQOS REGION 1 4 }  { m_axi_wr_0_AWREGION USER 1 4 }  { m_axi_wr_0_AWUSER DATA 1 1 }  { m_axi_wr_0_WVALID VALID 1 1 }  { m_axi_wr_0_WREADY READY 0 1 }  { m_axi_wr_0_WDATA FIFONUM 1 256 }  { m_axi_wr_0_WSTRB STRB 1 32 }  { m_axi_wr_0_WLAST LAST 1 1 }  { m_axi_wr_0_WID ID 1 1 }  { m_axi_wr_0_WUSER DATA 1 1 }  { m_axi_wr_0_ARVALID VALID 1 1 }  { m_axi_wr_0_ARREADY READY 0 1 }  { m_axi_wr_0_ARADDR ADDR 1 64 }  { m_axi_wr_0_ARID ID 1 1 }  { m_axi_wr_0_ARLEN SIZE 1 32 }  { m_axi_wr_0_ARSIZE BURST 1 3 }  { m_axi_wr_0_ARBURST LOCK 1 2 }  { m_axi_wr_0_ARLOCK CACHE 1 2 }  { m_axi_wr_0_ARCACHE PROT 1 4 }  { m_axi_wr_0_ARPROT QOS 1 3 }  { m_axi_wr_0_ARQOS REGION 1 4 }  { m_axi_wr_0_ARREGION USER 1 4 }  { m_axi_wr_0_ARUSER DATA 1 1 }  { m_axi_wr_0_RVALID VALID 0 1 }  { m_axi_wr_0_RREADY READY 1 1 }  { m_axi_wr_0_RDATA FIFONUM 0 256 }  { m_axi_wr_0_RLAST LAST 0 1 }  { m_axi_wr_0_RID ID 0 1 }  { m_axi_wr_0_RFIFONUM LEN 0 9 }  { m_axi_wr_0_RUSER DATA 0 1 }  { m_axi_wr_0_RRESP RESP 0 2 }  { m_axi_wr_0_BVALID VALID 0 1 }  { m_axi_wr_0_BREADY READY 1 1 }  { m_axi_wr_0_BRESP RESP 0 2 }  { m_axi_wr_0_BID ID 0 1 }  { m_axi_wr_0_BUSER DATA 0 1 } } }
	wr_03 { ap_none {  { wr_03 in_data 0 64 }  { wr_03_ap_vld in_vld 0 1 } } }
	wr_1 { m_axi {  { m_axi_wr_1_AWVALID VALID 1 1 }  { m_axi_wr_1_AWREADY READY 0 1 }  { m_axi_wr_1_AWADDR ADDR 1 64 }  { m_axi_wr_1_AWID ID 1 1 }  { m_axi_wr_1_AWLEN SIZE 1 32 }  { m_axi_wr_1_AWSIZE BURST 1 3 }  { m_axi_wr_1_AWBURST LOCK 1 2 }  { m_axi_wr_1_AWLOCK CACHE 1 2 }  { m_axi_wr_1_AWCACHE PROT 1 4 }  { m_axi_wr_1_AWPROT QOS 1 3 }  { m_axi_wr_1_AWQOS REGION 1 4 }  { m_axi_wr_1_AWREGION USER 1 4 }  { m_axi_wr_1_AWUSER DATA 1 1 }  { m_axi_wr_1_WVALID VALID 1 1 }  { m_axi_wr_1_WREADY READY 0 1 }  { m_axi_wr_1_WDATA FIFONUM 1 256 }  { m_axi_wr_1_WSTRB STRB 1 32 }  { m_axi_wr_1_WLAST LAST 1 1 }  { m_axi_wr_1_WID ID 1 1 }  { m_axi_wr_1_WUSER DATA 1 1 }  { m_axi_wr_1_ARVALID VALID 1 1 }  { m_axi_wr_1_ARREADY READY 0 1 }  { m_axi_wr_1_ARADDR ADDR 1 64 }  { m_axi_wr_1_ARID ID 1 1 }  { m_axi_wr_1_ARLEN SIZE 1 32 }  { m_axi_wr_1_ARSIZE BURST 1 3 }  { m_axi_wr_1_ARBURST LOCK 1 2 }  { m_axi_wr_1_ARLOCK CACHE 1 2 }  { m_axi_wr_1_ARCACHE PROT 1 4 }  { m_axi_wr_1_ARPROT QOS 1 3 }  { m_axi_wr_1_ARQOS REGION 1 4 }  { m_axi_wr_1_ARREGION USER 1 4 }  { m_axi_wr_1_ARUSER DATA 1 1 }  { m_axi_wr_1_RVALID VALID 0 1 }  { m_axi_wr_1_RREADY READY 1 1 }  { m_axi_wr_1_RDATA FIFONUM 0 256 }  { m_axi_wr_1_RLAST LAST 0 1 }  { m_axi_wr_1_RID ID 0 1 }  { m_axi_wr_1_RFIFONUM LEN 0 9 }  { m_axi_wr_1_RUSER DATA 0 1 }  { m_axi_wr_1_RRESP RESP 0 2 }  { m_axi_wr_1_BVALID VALID 0 1 }  { m_axi_wr_1_BREADY READY 1 1 }  { m_axi_wr_1_BRESP RESP 0 2 }  { m_axi_wr_1_BID ID 0 1 }  { m_axi_wr_1_BUSER DATA 0 1 } } }
	wr_14 { ap_none {  { wr_14 in_data 0 64 }  { wr_14_ap_vld in_vld 0 1 } } }
	ingress_0_V_data_V { axis {  { ingress_0_TDATA out_data 1 512 } } }
	ingress_0_V_keep_V { axis {  { ingress_0_TKEEP out_data 1 64 } } }
	ingress_0_V_strb_V { axis {  { ingress_0_TSTRB out_data 1 64 } } }
	ingress_0_V_last_V { axis {  { ingress_0_TLAST out_data 1 1 } } }
	ingress_0_V_dest_V { axis {  { ingress_0_TDEST out_data 1 1 }  { ingress_0_TVALID out_vld 1 1 }  { ingress_0_TREADY out_acc 0 1 } } }
	ingress_1_V_data_V { axis {  { ingress_1_TDATA out_data 1 512 } } }
	ingress_1_V_keep_V { axis {  { ingress_1_TKEEP out_data 1 64 } } }
	ingress_1_V_strb_V { axis {  { ingress_1_TSTRB out_data 1 64 } } }
	ingress_1_V_last_V { axis {  { ingress_1_TLAST out_data 1 1 } } }
	ingress_1_V_dest_V { axis {  { ingress_1_TDEST out_data 1 1 }  { ingress_1_TVALID out_vld 1 1 }  { ingress_1_TREADY out_acc 0 1 } } }
	egress_0_V_data_V { axis {  { egress_0_TDATA in_data 0 512 } } }
	egress_0_V_keep_V { axis {  { egress_0_TKEEP in_data 0 64 } } }
	egress_0_V_strb_V { axis {  { egress_0_TSTRB in_data 0 64 } } }
	egress_0_V_last_V { axis {  { egress_0_TLAST in_data 0 1 } } }
	egress_0_V_dest_V { axis {  { egress_0_TDEST in_data 0 1 }  { egress_0_TVALID in_vld 0 1 }  { egress_0_TREADY in_acc 1 1 } } }
	egress_1_V_data_V { axis {  { egress_1_TDATA in_data 0 512 } } }
	egress_1_V_keep_V { axis {  { egress_1_TKEEP in_data 0 64 } } }
	egress_1_V_strb_V { axis {  { egress_1_TSTRB in_data 0 64 } } }
	egress_1_V_last_V { axis {  { egress_1_TLAST in_data 0 1 } } }
	egress_1_V_dest_V { axis {  { egress_1_TDEST in_data 0 1 }  { egress_1_TVALID in_vld 0 1 }  { egress_1_TREADY in_acc 1 1 } } }
	golden_fifo_0 { axis {  { golden_fifo_0_TDATA out_data 1 32 }  { golden_fifo_0_TVALID out_vld 1 1 }  { golden_fifo_0_TREADY out_acc 0 1 } } }
	golden_fifo_1 { axis {  { golden_fifo_1_TDATA out_data 1 32 }  { golden_fifo_1_TVALID out_vld 1 1 }  { golden_fifo_1_TREADY out_acc 0 1 } } }
	first { ap_none {  { first in_data 0 1 }  { first_ap_vld in_vld 0 1 } } }
	last { ap_none {  { last in_data 0 1 }  { last_ap_vld in_vld 0 1 } } }
	block_header { ap_none {  { block_header in_data 0 512 }  { block_header_ap_vld in_vld 0 1 } } }
	target { ap_none {  { target in_data 0 512 }  { target_ap_vld in_vld 0 1 } } }
}
