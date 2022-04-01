set SynModuleInfo {
  {SRCNAME ingress MODELNAME ingress RTLNAME hash_controller_ingress
    SUBMODULES {
      {MODELNAME hash_controller_flow_control_loop_pipe RTLNAME hash_controller_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hash_controller_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME ingress.1 MODELNAME ingress_1 RTLNAME hash_controller_ingress_1}
  {SRCNAME egress MODELNAME egress RTLNAME hash_controller_egress}
  {SRCNAME egress.1 MODELNAME egress_1 RTLNAME hash_controller_egress_1}
  {SRCNAME pass MODELNAME pass RTLNAME hash_controller_pass}
  {SRCNAME hash_controller MODELNAME hash_controller RTLNAME hash_controller IS_TOP 1
    SUBMODULES {
      {MODELNAME hash_controller_control_s_axi RTLNAME hash_controller_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hash_controller_rd_0_m_axi RTLNAME hash_controller_rd_0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME hash_controller_rd_1_m_axi RTLNAME hash_controller_rd_1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME hash_controller_wr_0_m_axi RTLNAME hash_controller_wr_0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME hash_controller_wr_1_m_axi RTLNAME hash_controller_wr_1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME hash_controller_regslice_both RTLNAME hash_controller_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME hash_controller_regslice_both_U}
    }
  }
}
