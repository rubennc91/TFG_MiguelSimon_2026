set SynModuleInfo {
  {SRCNAME MatrixVectorActivation_4 MODELNAME MatrixVectorActivation_4 RTLNAME MatrixVectorActivation_4 IS_TOP 1
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_4_mux_1287_4_1_1 RTLNAME MatrixVectorActivation_4_mux_1287_4_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_4_mac_muladd_4ns_4s_16s_16_4_1 RTLNAME MatrixVectorActivation_4_mac_muladd_4ns_4s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_4_regslice_both RTLNAME MatrixVectorActivation_4_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME MatrixVectorActivation_4_regslice_both_U}
      {MODELNAME MatrixVectorActivation_4_flow_control_loop_pipe_no_ap_cont RTLNAME MatrixVectorActivation_4_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MatrixVectorActivation_4_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
}
