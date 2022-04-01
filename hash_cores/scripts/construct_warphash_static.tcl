set core_freq [lindex $argv 2]

# -- warphash_static --------------------------------------------------------------------------------------------------
create_bd_design "warphash_static"

create_bd_intf_port -mode slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 ref_clk
create_bd_intf_port -mode slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_clk
create_bd_port -dir I pcie_rstn
create_bd_intf_port -mode master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie

# pcie_clk_buffer
create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 pcie_clk_buffer
set_property -dict [list CONFIG.C_BUF_TYPE {IBUFDSGTE}] [get_bd_cells pcie_clk_buffer]
connect_bd_intf_net [get_bd_intf_ports pcie_clk] [get_bd_intf_pins pcie_clk_buffer/CLK_IN_D]

# ref_clk_buffer
create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 ref_clk_buffer
set_property -dict [list CONFIG.C_BUF_TYPE {IBUFDS}] [get_bd_cells ref_clk_buffer]
connect_bd_intf_net [get_bd_intf_ports ref_clk] [get_bd_intf_pins ref_clk_buffer/CLK_IN_D]

# apb_clk_wiz
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 apb_clk_wiz
set_property -dict [list CONFIG.PRIM_IN_FREQ.VALUE_SRC USER] [get_bd_cells apb_clk_wiz]
set_property -dict [list CONFIG.PRIM_IN_FREQ {200.000} CONFIG.CLK_OUT1_PORT {apb_clk} CONFIG.RESET_TYPE {ACTIVE_LOW} CONFIG.CLKIN1_JITTER_PS {50.0} CONFIG.MMCM_CLKFBOUT_MULT_F {6.000} CONFIG.MMCM_CLKIN1_PERIOD {5.000} CONFIG.MMCM_CLKIN2_PERIOD {10.0} CONFIG.RESET_PORT {resetn} CONFIG.CLKOUT1_JITTER {106.024} CONFIG.CLKOUT1_PHASE_ERROR {82.655}] [get_bd_cells apb_clk_wiz]
connect_bd_net [get_bd_pins ref_clk_buffer/IBUF_OUT] [get_bd_pins apb_clk_wiz/clk_in1]
connect_bd_net [get_bd_ports pcie_rstn] [get_bd_pins apb_clk_wiz/resetn]

# xdma
create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma
set_property -dict [list CONFIG.functional_mode {DMA} CONFIG.pcie_blk_locn {PCIE4C_X1Y1} CONFIG.pl_link_cap_max_link_speed {2.5_GT/s} CONFIG.axi_addr_width {64} CONFIG.axisten_freq {250} CONFIG.vendor_id {1e24} CONFIG.pf0_device_id {1533} CONFIG.pf0_subsystem_vendor_id {1e24} CONFIG.pf0_subsystem_id {1533} CONFIG.axilite_master_en {true} CONFIG.axilite_master_size {128} CONFIG.axilite_master_scale {Kilobytes} CONFIG.xdma_axilite_slave {false} CONFIG.select_quad {GTY_Quad_227} CONFIG.plltype {CPLL} CONFIG.xdma_axi_intf_mm {AXI_Memory_Mapped} CONFIG.xdma_pcie_64bit_en {true} CONFIG.pf0_msix_cap_table_bir {BAR_3:2} CONFIG.pf0_msix_cap_pba_bir {BAR_3:2} CONFIG.axil_master_64bit_en {true} CONFIG.axil_master_prefetchable {true} CONFIG.xdma_pcie_prefetchable {true} CONFIG.PF0_DEVICE_ID_mqdma {9011} CONFIG.PF2_DEVICE_ID_mqdma {9211} CONFIG.PF3_DEVICE_ID_mqdma {9311} CONFIG.vdm_en {1} CONFIG.bridge_burst {false} CONFIG.en_bridge_slv {true} CONFIG.pf0_msi_enabled {false} CONFIG.cfg_mgmt_if {false}] [get_bd_cells xdma]
connect_bd_net [get_bd_ports pcie_rstn] [get_bd_pins xdma/sys_rst_n]
connect_bd_intf_net [get_bd_intf_ports pcie] [get_bd_intf_pins xdma/pcie_mgt]
connect_bd_net [get_bd_pins pcie_clk_buffer/IBUF_OUT] [get_bd_pins xdma/sys_clk_gt]
connect_bd_net [get_bd_pins pcie_clk_buffer/IBUF_DS_ODIV2] [get_bd_pins xdma/sys_clk]

# apb_reset
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 apb_reset
connect_bd_net [get_bd_pins apb_reset/ext_reset_in] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins apb_reset/slowest_sync_clk] [get_bd_pins apb_clk_wiz/apb_clk]
connect_bd_net [get_bd_pins apb_reset/dcm_locked] [get_bd_pins apb_clk_wiz/locked]

# pcie_axil_smartconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 pcie_axil_smartconnect
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.NUM_CLKS {2}] [get_bd_cells pcie_axil_smartconnect]
connect_bd_net [get_bd_pins pcie_axil_smartconnect/aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins pcie_axil_smartconnect/aclk1] [get_bd_pins apb_clk_wiz/apb_clk]
connect_bd_net [get_bd_pins pcie_axil_smartconnect/aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_intf_net [get_bd_intf_pins pcie_axil_smartconnect/S00_AXI] [get_bd_intf_pins xdma/M_AXI_LITE]

# apb_bridge
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_apb_bridge:3.0 apb_bridge
set_property -dict [list CONFIG.C_APB_NUM_SLAVES {2}] [get_bd_cells apb_bridge]
connect_bd_intf_net [get_bd_intf_pins apb_bridge/AXI4_LITE] [get_bd_intf_pins pcie_axil_smartconnect/M00_AXI]
connect_bd_net [get_bd_pins apb_bridge/s_axi_aclk] [get_bd_pins apb_clk_wiz/apb_clk]
connect_bd_net [get_bd_pins apb_bridge/s_axi_aresetn] [get_bd_pins apb_reset/peripheral_aresetn]

# mb
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 mb
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config { axi_intc {0} axi_periph {Enabled} cache {None} clk {None} cores {1} debug_module {Debug Only} ecc {None} local_mem {32KB} preset {None}}  [get_bd_cells mb]
set_property -dict [list CONFIG.C_ADDR_SIZE {64} CONFIG.C_ADDR_TAG_BITS {0} CONFIG.C_DCACHE_ADDR_TAG {0}] [get_bd_cells mb]
connect_bd_net [get_bd_pins mb/Clk] [get_bd_pins xdma/axi_aclk]

# mb_reset
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 mb_reset
connect_bd_net [get_bd_pins mb/Reset] [get_bd_pins mb_reset/mb_reset]
connect_bd_net [get_bd_pins mb_reset/ext_reset_in] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins mb_reset/mb_debug_sys_rst]
connect_bd_net [get_bd_pins mb_reset/slowest_sync_clk] [get_bd_pins xdma/axi_aclk]

# mb_axil_smartconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 mb_axil_smartconnect
set_property -dict [list CONFIG.NUM_MI {4} CONFIG.NUM_SI {1} CONFIG.NUM_CLKS {2}] [get_bd_cells mb_axil_smartconnect]
connect_bd_intf_net [get_bd_intf_pins mb_axil_smartconnect/S00_AXI] [get_bd_intf_pins mb/M_AXI_DP]
connect_bd_net [get_bd_pins mb_axil_smartconnect/aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins mb_axil_smartconnect/aresetn] [get_bd_pins xdma/axi_aresetn]

# hbm
create_bd_cell -type ip -vlnv xilinx.com:ip:hbm:1.0 hbm
set_property -dict [list CONFIG.USER_HBM_DENSITY {8GB} CONFIG.USER_HBM_STACK {2} CONFIG.USER_MEMORY_DISPLAY {8192} CONFIG.USER_SWITCH_ENABLE_01 {TRUE} CONFIG.USER_HBM_REF_CLK_0 {200} CONFIG.USER_HBM_REF_CLK_PS_0 {2500.00} CONFIG.USER_HBM_REF_CLK_XDC_0 {5.00} CONFIG.USER_HBM_REF_CLK_PS_1 {2500.00} CONFIG.USER_HBM_REF_CLK_XDC_1 {5.00} CONFIG.USER_HBM_FBDIV_0 {18} CONFIG.USER_HBM_RES_0 {9} CONFIG.USER_HBM_LOCK_REF_DLY_0 {20} CONFIG.USER_HBM_LOCK_FB_DLY_0 {20} CONFIG.USER_HBM_HEX_CP_RES_0 {0x00009600} CONFIG.USER_HBM_HEX_LOCK_FB_REF_DLY_0 {0x00001414} CONFIG.USER_HBM_HEX_FBDIV_CLKOUTDIV_0 {0x00000482} CONFIG.USER_HBM_CP_1 {6} CONFIG.USER_HBM_RES_1 {9} CONFIG.USER_HBM_LOCK_REF_DLY_1 {20} CONFIG.USER_HBM_LOCK_FB_DLY_1 {20} CONFIG.USER_HBM_REF_CLK_1 {200} CONFIG.USER_HBM_FBDIV_1 {18} CONFIG.USER_HBM_HEX_CP_RES_1 {0x00009600} CONFIG.USER_HBM_HEX_LOCK_FB_REF_DLY_1 {0x00001414} CONFIG.USER_HBM_HEX_FBDIV_CLKOUTDIV_1 {0x00000482} CONFIG.USER_CLK_SEL_LIST0 {AXI_00_ACLK} CONFIG.USER_CLK_SEL_LIST1 {AXI_16_ACLK} CONFIG.USER_MC_ENABLE_08 {TRUE} CONFIG.USER_MC_ENABLE_09 {TRUE} CONFIG.USER_MC_ENABLE_10 {TRUE} CONFIG.USER_MC_ENABLE_11 {TRUE} CONFIG.USER_MC_ENABLE_12 {TRUE} CONFIG.USER_MC_ENABLE_13 {TRUE} CONFIG.USER_MC_ENABLE_14 {TRUE} CONFIG.USER_MC_ENABLE_15 {TRUE} CONFIG.USER_MC_ENABLE_APB_01 {TRUE} CONFIG.USER_SAXI_02 {false} CONFIG.USER_SAXI_03 {false} CONFIG.USER_SAXI_04 {false} CONFIG.USER_SAXI_05 {false} CONFIG.USER_SAXI_06 {false} CONFIG.USER_SAXI_07 {false} CONFIG.USER_SAXI_08 {false} CONFIG.USER_SAXI_09 {false} CONFIG.USER_SAXI_10 {false} CONFIG.USER_SAXI_11 {false} CONFIG.USER_SAXI_12 {false} CONFIG.USER_SAXI_13 {false} CONFIG.USER_SAXI_14 {false} CONFIG.USER_SAXI_15 {false} CONFIG.USER_SAXI_18 {false} CONFIG.USER_SAXI_19 {false} CONFIG.USER_SAXI_20 {false} CONFIG.USER_SAXI_21 {false} CONFIG.USER_SAXI_22 {false} CONFIG.USER_SAXI_23 {false} CONFIG.USER_SAXI_24 {false} CONFIG.USER_SAXI_25 {false} CONFIG.USER_SAXI_26 {false} CONFIG.USER_SAXI_27 {false} CONFIG.USER_SAXI_28 {false} CONFIG.USER_SAXI_29 {false} CONFIG.USER_SAXI_30 {false} CONFIG.USER_SAXI_31 {false} CONFIG.USER_PHY_ENABLE_08 {TRUE} CONFIG.USER_PHY_ENABLE_09 {TRUE} CONFIG.USER_PHY_ENABLE_10 {TRUE} CONFIG.USER_PHY_ENABLE_11 {TRUE} CONFIG.USER_PHY_ENABLE_12 {TRUE} CONFIG.USER_PHY_ENABLE_13 {TRUE} CONFIG.USER_PHY_ENABLE_14 {TRUE} CONFIG.USER_PHY_ENABLE_15 {TRUE}] [get_bd_cells hbm]
connect_bd_net [get_bd_pins hbm/HBM_REF_CLK_0] [get_bd_pins ref_clk_buffer/IBUF_OUT]
connect_bd_net [get_bd_pins hbm/HBM_REF_CLK_1] [get_bd_pins ref_clk_buffer/IBUF_OUT]
connect_bd_net [get_bd_pins apb_clk_wiz/apb_clk] [get_bd_pins hbm/APB_0_PCLK]
connect_bd_net [get_bd_pins apb_clk_wiz/apb_clk] [get_bd_pins hbm/APB_1_PCLK]
connect_bd_net [get_bd_pins apb_reset/peripheral_aresetn] [get_bd_pins hbm/APB_0_PRESET_N]
connect_bd_net [get_bd_pins apb_reset/peripheral_aresetn] [get_bd_pins hbm/APB_1_PRESET_N]
connect_bd_intf_net [get_bd_intf_pins apb_bridge/APB_M] [get_bd_intf_pins hbm/SAPB_0]
connect_bd_intf_net [get_bd_intf_pins apb_bridge/APB_M2] [get_bd_intf_pins hbm/SAPB_1]

# core_clk_wiz
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 core_clk_wiz
set_property -dict [list CONFIG.PRIM_IN_FREQ.VALUE_SRC USER] [get_bd_cells core_clk_wiz]
set_property -dict [list CONFIG.USE_DYN_RECONFIG {true} CONFIG.PRIM_IN_FREQ {200.000} CONFIG.CLK_OUT1_PORT {core_clk} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {450} CONFIG.USE_SAFE_CLOCK_STARTUP {true} CONFIG.USE_POWER_DOWN {false} CONFIG.CLKIN1_JITTER_PS {50.0} CONFIG.CLKOUT1_DRIVES {BUFGCE} CONFIG.CLKOUT2_DRIVES {BUFGCE} CONFIG.CLKOUT3_DRIVES {BUFGCE} CONFIG.CLKOUT4_DRIVES {BUFGCE} CONFIG.CLKOUT5_DRIVES {BUFGCE} CONFIG.CLKOUT6_DRIVES {BUFGCE} CONFIG.CLKOUT7_DRIVES {BUFGCE} CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} CONFIG.MMCM_DIVCLK_DIVIDE {4} CONFIG.MMCM_CLKFBOUT_MULT_F {23.625} CONFIG.MMCM_CLKIN1_PERIOD {5.000} CONFIG.MMCM_CLKIN2_PERIOD {10.0} CONFIG.MMCM_CLKOUT0_DIVIDE_F {2.625} CONFIG.CLKOUT1_JITTER {104.638} CONFIG.CLKOUT1_PHASE_ERROR {153.873}] [get_bd_cells core_clk_wiz]
connect_bd_net [get_bd_pins core_clk_wiz/s_axi_aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins core_clk_wiz/s_axi_aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins core_clk_wiz/clk_in1] [get_bd_pins ref_clk_buffer/IBUF_OUT]
connect_bd_intf_net [get_bd_intf_pins core_clk_wiz/s_axi_lite] [get_bd_intf_pins mb_axil_smartconnect/M00_AXI]

# core_reset
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 core_reset
connect_bd_net [get_bd_pins core_reset/slowest_sync_clk] [get_bd_pins core_clk_wiz/core_clk]
connect_bd_net [get_bd_ports pcie_rstn] [get_bd_pins core_reset/ext_reset_in]
connect_bd_net [get_bd_pins core_reset/dcm_locked] [get_bd_pins core_clk_wiz/locked]
connect_bd_net [get_bd_pins core_reset/peripheral_aresetn] [get_bd_pins hbm/AXI_00_ARESET_N]
connect_bd_net [get_bd_pins core_reset/peripheral_aresetn] [get_bd_pins hbm/AXI_01_ARESET_N]
connect_bd_net [get_bd_pins core_clk_wiz/core_clk] [get_bd_pins hbm/AXI_00_ACLK]
connect_bd_net [get_bd_pins core_clk_wiz/core_clk] [get_bd_pins hbm/AXI_01_ACLK]

# pcie_hbm_smartconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 pcie_hbm_smartconnect
connect_bd_net [get_bd_pins pcie_hbm_smartconnect/aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins pcie_hbm_smartconnect/aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_intf_net [get_bd_intf_pins pcie_hbm_smartconnect/S00_AXI] [get_bd_intf_pins xdma/M_AXI]
connect_bd_intf_net [get_bd_intf_pins pcie_hbm_smartconnect/M00_AXI] [get_bd_intf_pins hbm/SAXI_16]

# cdma
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 cdma
set_property -dict [list CONFIG.C_M_AXI_DATA_WIDTH {256} CONFIG.C_M_AXI_MAX_BURST_LEN {16} CONFIG.C_INCLUDE_SF {1} CONFIG.C_INCLUDE_SG {0} CONFIG.C_ADDR_WIDTH {64}] [get_bd_cells cdma]
connect_bd_intf_net [get_bd_intf_pins cdma/S_AXI_LITE] [get_bd_intf_pins mb_axil_smartconnect/M01_AXI]
connect_bd_net [get_bd_pins cdma/s_axi_lite_aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins cdma/m_axi_aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins cdma/s_axi_lite_aresetn] [get_bd_pins xdma/axi_aresetn]

# cdma_smartconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 cdma_smartconnect
set_property -dict [list CONFIG.NUM_MI {2} CONFIG.NUM_SI {1}] [get_bd_cells cdma_smartconnect]
connect_bd_intf_net [get_bd_intf_pins cdma/M_AXI] [get_bd_intf_pins cdma_smartconnect/S00_AXI]
connect_bd_net [get_bd_pins cdma_smartconnect/aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins cdma_smartconnect/aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_intf_net [get_bd_intf_pins cdma_smartconnect/M00_AXI] [get_bd_intf_pins hbm/SAXI_17]

# hb_icap
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hbicap:1.0 hb_icap
set_property -dict [list CONFIG.C_READ_FIFO_DEPTH {4096} CONFIG.C_SHARED_STARTUP {0} CONFIG.C_INCLUDE_STARTUP {1}] [get_bd_cells hb_icap]
connect_bd_intf_net [get_bd_intf_pins hb_icap/S_AXI_CTRL] [get_bd_intf_pins mb_axil_smartconnect/M02_AXI]
connect_bd_intf_net [get_bd_intf_pins hb_icap/S_AXI] [get_bd_intf_pins cdma_smartconnect/M01_AXI]
connect_bd_net [get_bd_pins hb_icap/s_axi_aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins hb_icap/s_axi_aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins hb_icap/s_axi_mm_aclk] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins hb_icap/s_axi_mm_aresetn] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins ref_clk_buffer/IBUF_OUT] [get_bd_pins hb_icap/icap_clk]

# mailbox
create_bd_cell -type ip -vlnv xilinx.com:ip:mailbox:2.1 mailbox
set_property -dict [list CONFIG.C_S0_AXI_ACLK_FREQ_MHZ {250} CONFIG.C_S1_AXI_ACLK_FREQ_MHZ {250}] [get_bd_cells mailbox]
connect_bd_intf_net [get_bd_intf_pins mb_axil_smartconnect/M03_AXI] [get_bd_intf_pins mailbox/S0_AXI]
connect_bd_intf_net [get_bd_intf_pins mailbox/S1_AXI] [get_bd_intf_pins pcie_axil_smartconnect/M01_AXI]
connect_bd_net [get_bd_pins mailbox/S0_AXI_ACLK] [get_bd_pins xdma/axi_aclk]
connect_bd_net [get_bd_pins mailbox/S0_AXI_ARESETN] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins mailbox/S1_AXI_ARESETN] [get_bd_pins xdma/axi_aresetn]
connect_bd_net [get_bd_pins mailbox/S1_AXI_ACLK] [get_bd_pins xdma/axi_aclk]
