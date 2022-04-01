# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 10 \
    name ingress_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TDATA { O 512 vector } ingress_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 11 \
    name ingress_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TKEEP { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 12 \
    name ingress_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TSTRB { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 13 \
    name ingress_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 14 \
    name ingress_1_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TVALID { O 1 bit } ingress_1_TDEST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name rd_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rd_1 \
    op interface \
    ports { m_axi_rd_1_AWVALID { O 1 bit } m_axi_rd_1_AWREADY { I 1 bit } m_axi_rd_1_AWADDR { O 64 vector } m_axi_rd_1_AWID { O 1 vector } m_axi_rd_1_AWLEN { O 32 vector } m_axi_rd_1_AWSIZE { O 3 vector } m_axi_rd_1_AWBURST { O 2 vector } m_axi_rd_1_AWLOCK { O 2 vector } m_axi_rd_1_AWCACHE { O 4 vector } m_axi_rd_1_AWPROT { O 3 vector } m_axi_rd_1_AWQOS { O 4 vector } m_axi_rd_1_AWREGION { O 4 vector } m_axi_rd_1_AWUSER { O 1 vector } m_axi_rd_1_WVALID { O 1 bit } m_axi_rd_1_WREADY { I 1 bit } m_axi_rd_1_WDATA { O 256 vector } m_axi_rd_1_WSTRB { O 32 vector } m_axi_rd_1_WLAST { O 1 bit } m_axi_rd_1_WID { O 1 vector } m_axi_rd_1_WUSER { O 1 vector } m_axi_rd_1_ARVALID { O 1 bit } m_axi_rd_1_ARREADY { I 1 bit } m_axi_rd_1_ARADDR { O 64 vector } m_axi_rd_1_ARID { O 1 vector } m_axi_rd_1_ARLEN { O 32 vector } m_axi_rd_1_ARSIZE { O 3 vector } m_axi_rd_1_ARBURST { O 2 vector } m_axi_rd_1_ARLOCK { O 2 vector } m_axi_rd_1_ARCACHE { O 4 vector } m_axi_rd_1_ARPROT { O 3 vector } m_axi_rd_1_ARQOS { O 4 vector } m_axi_rd_1_ARREGION { O 4 vector } m_axi_rd_1_ARUSER { O 1 vector } m_axi_rd_1_RVALID { I 1 bit } m_axi_rd_1_RREADY { O 1 bit } m_axi_rd_1_RDATA { I 256 vector } m_axi_rd_1_RLAST { I 1 bit } m_axi_rd_1_RID { I 1 vector } m_axi_rd_1_RFIFONUM { I 9 vector } m_axi_rd_1_RUSER { I 1 vector } m_axi_rd_1_RRESP { I 2 vector } m_axi_rd_1_BVALID { I 1 bit } m_axi_rd_1_BREADY { O 1 bit } m_axi_rd_1_BRESP { I 2 vector } m_axi_rd_1_BID { I 1 vector } m_axi_rd_1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { gmem { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name first \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_first \
    op interface \
    ports { first { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name block_header \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_header \
    op interface \
    ports { block_header { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName hash_controller_flow_control_loop_pipe_U
set CompName hash_controller_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix hash_controller_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}

