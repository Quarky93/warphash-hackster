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
    id 47 \
    name ingress_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_0} \
    metadata {  } \
    op interface \
    ports { ingress_0_TDATA { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 48 \
    name ingress_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_0} \
    metadata {  } \
    op interface \
    ports { ingress_0_TKEEP { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 49 \
    name ingress_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_0} \
    metadata {  } \
    op interface \
    ports { ingress_0_TSTRB { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 50 \
    name ingress_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_0} \
    metadata {  } \
    op interface \
    ports { ingress_0_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 51 \
    name ingress_0_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_0} \
    metadata {  } \
    op interface \
    ports { ingress_0_TDEST { O 1 vector } ingress_0_TVALID { O 1 bit } ingress_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_0_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 52 \
    name ingress_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TDATA { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 53 \
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
    id 54 \
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
    id 55 \
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
    id 56 \
    name ingress_1_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {ingress_1} \
    metadata {  } \
    op interface \
    ports { ingress_1_TDEST { O 1 vector } ingress_1_TVALID { O 1 bit } ingress_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ingress_1_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 57 \
    name egress_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_0} \
    metadata {  } \
    op interface \
    ports { egress_0_TDATA { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 58 \
    name egress_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_0} \
    metadata {  } \
    op interface \
    ports { egress_0_TKEEP { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 59 \
    name egress_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_0} \
    metadata {  } \
    op interface \
    ports { egress_0_TSTRB { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 60 \
    name egress_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_0} \
    metadata {  } \
    op interface \
    ports { egress_0_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 61 \
    name egress_0_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_0} \
    metadata {  } \
    op interface \
    ports { egress_0_TDEST { I 1 vector } egress_0_TVALID { I 1 bit } egress_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_0_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 62 \
    name egress_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_1} \
    metadata {  } \
    op interface \
    ports { egress_1_TDATA { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 63 \
    name egress_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_1} \
    metadata {  } \
    op interface \
    ports { egress_1_TKEEP { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 64 \
    name egress_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_1} \
    metadata {  } \
    op interface \
    ports { egress_1_TSTRB { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 65 \
    name egress_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_1} \
    metadata {  } \
    op interface \
    ports { egress_1_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 66 \
    name egress_1_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {egress_1} \
    metadata {  } \
    op interface \
    ports { egress_1_TDEST { I 1 vector } egress_1_TVALID { I 1 bit } egress_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'egress_1_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 67 \
    name golden_fifo_0 \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { golden_fifo_0_TDATA { O 32 vector } golden_fifo_0_TVALID { O 1 bit } golden_fifo_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'golden_fifo_0'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 68 \
    name golden_fifo_1 \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { golden_fifo_1_TDATA { O 32 vector } golden_fifo_1_TVALID { O 1 bit } golden_fifo_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'golden_fifo_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name rd_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rd_0 \
    op interface \
    ports { m_axi_rd_0_AWVALID { O 1 bit } m_axi_rd_0_AWREADY { I 1 bit } m_axi_rd_0_AWADDR { O 64 vector } m_axi_rd_0_AWID { O 1 vector } m_axi_rd_0_AWLEN { O 32 vector } m_axi_rd_0_AWSIZE { O 3 vector } m_axi_rd_0_AWBURST { O 2 vector } m_axi_rd_0_AWLOCK { O 2 vector } m_axi_rd_0_AWCACHE { O 4 vector } m_axi_rd_0_AWPROT { O 3 vector } m_axi_rd_0_AWQOS { O 4 vector } m_axi_rd_0_AWREGION { O 4 vector } m_axi_rd_0_AWUSER { O 1 vector } m_axi_rd_0_WVALID { O 1 bit } m_axi_rd_0_WREADY { I 1 bit } m_axi_rd_0_WDATA { O 256 vector } m_axi_rd_0_WSTRB { O 32 vector } m_axi_rd_0_WLAST { O 1 bit } m_axi_rd_0_WID { O 1 vector } m_axi_rd_0_WUSER { O 1 vector } m_axi_rd_0_ARVALID { O 1 bit } m_axi_rd_0_ARREADY { I 1 bit } m_axi_rd_0_ARADDR { O 64 vector } m_axi_rd_0_ARID { O 1 vector } m_axi_rd_0_ARLEN { O 32 vector } m_axi_rd_0_ARSIZE { O 3 vector } m_axi_rd_0_ARBURST { O 2 vector } m_axi_rd_0_ARLOCK { O 2 vector } m_axi_rd_0_ARCACHE { O 4 vector } m_axi_rd_0_ARPROT { O 3 vector } m_axi_rd_0_ARQOS { O 4 vector } m_axi_rd_0_ARREGION { O 4 vector } m_axi_rd_0_ARUSER { O 1 vector } m_axi_rd_0_RVALID { I 1 bit } m_axi_rd_0_RREADY { O 1 bit } m_axi_rd_0_RDATA { I 256 vector } m_axi_rd_0_RLAST { I 1 bit } m_axi_rd_0_RID { I 1 vector } m_axi_rd_0_RFIFONUM { I 9 vector } m_axi_rd_0_RUSER { I 1 vector } m_axi_rd_0_RRESP { I 2 vector } m_axi_rd_0_BVALID { I 1 bit } m_axi_rd_0_BREADY { O 1 bit } m_axi_rd_0_BRESP { I 2 vector } m_axi_rd_0_BID { I 1 vector } m_axi_rd_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name rd_01 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rd_01 \
    op interface \
    ports { rd_01 { I 64 vector } rd_01_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
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
    id 42 \
    name rd_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rd_12 \
    op interface \
    ports { rd_12 { I 64 vector } rd_12_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name wr_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wr_0 \
    op interface \
    ports { m_axi_wr_0_AWVALID { O 1 bit } m_axi_wr_0_AWREADY { I 1 bit } m_axi_wr_0_AWADDR { O 64 vector } m_axi_wr_0_AWID { O 1 vector } m_axi_wr_0_AWLEN { O 32 vector } m_axi_wr_0_AWSIZE { O 3 vector } m_axi_wr_0_AWBURST { O 2 vector } m_axi_wr_0_AWLOCK { O 2 vector } m_axi_wr_0_AWCACHE { O 4 vector } m_axi_wr_0_AWPROT { O 3 vector } m_axi_wr_0_AWQOS { O 4 vector } m_axi_wr_0_AWREGION { O 4 vector } m_axi_wr_0_AWUSER { O 1 vector } m_axi_wr_0_WVALID { O 1 bit } m_axi_wr_0_WREADY { I 1 bit } m_axi_wr_0_WDATA { O 256 vector } m_axi_wr_0_WSTRB { O 32 vector } m_axi_wr_0_WLAST { O 1 bit } m_axi_wr_0_WID { O 1 vector } m_axi_wr_0_WUSER { O 1 vector } m_axi_wr_0_ARVALID { O 1 bit } m_axi_wr_0_ARREADY { I 1 bit } m_axi_wr_0_ARADDR { O 64 vector } m_axi_wr_0_ARID { O 1 vector } m_axi_wr_0_ARLEN { O 32 vector } m_axi_wr_0_ARSIZE { O 3 vector } m_axi_wr_0_ARBURST { O 2 vector } m_axi_wr_0_ARLOCK { O 2 vector } m_axi_wr_0_ARCACHE { O 4 vector } m_axi_wr_0_ARPROT { O 3 vector } m_axi_wr_0_ARQOS { O 4 vector } m_axi_wr_0_ARREGION { O 4 vector } m_axi_wr_0_ARUSER { O 1 vector } m_axi_wr_0_RVALID { I 1 bit } m_axi_wr_0_RREADY { O 1 bit } m_axi_wr_0_RDATA { I 256 vector } m_axi_wr_0_RLAST { I 1 bit } m_axi_wr_0_RID { I 1 vector } m_axi_wr_0_RFIFONUM { I 9 vector } m_axi_wr_0_RUSER { I 1 vector } m_axi_wr_0_RRESP { I 2 vector } m_axi_wr_0_BVALID { I 1 bit } m_axi_wr_0_BREADY { O 1 bit } m_axi_wr_0_BRESP { I 2 vector } m_axi_wr_0_BID { I 1 vector } m_axi_wr_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name wr_03 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wr_03 \
    op interface \
    ports { wr_03 { I 64 vector } wr_03_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name wr_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wr_1 \
    op interface \
    ports { m_axi_wr_1_AWVALID { O 1 bit } m_axi_wr_1_AWREADY { I 1 bit } m_axi_wr_1_AWADDR { O 64 vector } m_axi_wr_1_AWID { O 1 vector } m_axi_wr_1_AWLEN { O 32 vector } m_axi_wr_1_AWSIZE { O 3 vector } m_axi_wr_1_AWBURST { O 2 vector } m_axi_wr_1_AWLOCK { O 2 vector } m_axi_wr_1_AWCACHE { O 4 vector } m_axi_wr_1_AWPROT { O 3 vector } m_axi_wr_1_AWQOS { O 4 vector } m_axi_wr_1_AWREGION { O 4 vector } m_axi_wr_1_AWUSER { O 1 vector } m_axi_wr_1_WVALID { O 1 bit } m_axi_wr_1_WREADY { I 1 bit } m_axi_wr_1_WDATA { O 256 vector } m_axi_wr_1_WSTRB { O 32 vector } m_axi_wr_1_WLAST { O 1 bit } m_axi_wr_1_WID { O 1 vector } m_axi_wr_1_WUSER { O 1 vector } m_axi_wr_1_ARVALID { O 1 bit } m_axi_wr_1_ARREADY { I 1 bit } m_axi_wr_1_ARADDR { O 64 vector } m_axi_wr_1_ARID { O 1 vector } m_axi_wr_1_ARLEN { O 32 vector } m_axi_wr_1_ARSIZE { O 3 vector } m_axi_wr_1_ARBURST { O 2 vector } m_axi_wr_1_ARLOCK { O 2 vector } m_axi_wr_1_ARCACHE { O 4 vector } m_axi_wr_1_ARPROT { O 3 vector } m_axi_wr_1_ARQOS { O 4 vector } m_axi_wr_1_ARREGION { O 4 vector } m_axi_wr_1_ARUSER { O 1 vector } m_axi_wr_1_RVALID { I 1 bit } m_axi_wr_1_RREADY { O 1 bit } m_axi_wr_1_RDATA { I 256 vector } m_axi_wr_1_RLAST { I 1 bit } m_axi_wr_1_RID { I 1 vector } m_axi_wr_1_RFIFONUM { I 9 vector } m_axi_wr_1_RUSER { I 1 vector } m_axi_wr_1_RRESP { I 2 vector } m_axi_wr_1_BVALID { I 1 bit } m_axi_wr_1_BREADY { O 1 bit } m_axi_wr_1_BRESP { I 2 vector } m_axi_wr_1_BID { I 1 vector } m_axi_wr_1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name wr_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wr_14 \
    op interface \
    ports { wr_14 { I 64 vector } wr_14_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name first \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_first \
    op interface \
    ports { first { I 1 vector } first_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name last \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_last \
    op interface \
    ports { last { I 1 vector } last_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name block_header \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_header \
    op interface \
    ports { block_header { I 512 vector } block_header_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name target \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_target \
    op interface \
    ports { target { I 512 vector } target_ap_vld { I 1 bit } } \
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


