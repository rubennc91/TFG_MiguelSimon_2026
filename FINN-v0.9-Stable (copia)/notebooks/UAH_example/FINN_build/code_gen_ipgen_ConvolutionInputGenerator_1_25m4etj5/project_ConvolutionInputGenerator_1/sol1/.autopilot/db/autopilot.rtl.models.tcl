set SynModuleInfo {
  {SRCNAME ConvolutionInputGenerator_1 MODELNAME ConvolutionInputGenerator_1 RTLNAME ConvolutionInputGenerator_1 IS_TOP 1
    SUBMODULES {
      {MODELNAME ConvolutionInputGenerator_1_mux_42_64_1_1 RTLNAME ConvolutionInputGenerator_1_mux_42_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_1_inputBuf_V_RAM_S2P_LUTRAM_1R1W RTLNAME ConvolutionInputGenerator_1_inputBuf_V_RAM_S2P_LUTRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_1_regslice_both RTLNAME ConvolutionInputGenerator_1_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ConvolutionInputGenerator_1_regslice_both_U}
      {MODELNAME ConvolutionInputGenerator_1_flow_control_loop_pipe_no_ap_cont RTLNAME ConvolutionInputGenerator_1_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ConvolutionInputGenerator_1_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
}
