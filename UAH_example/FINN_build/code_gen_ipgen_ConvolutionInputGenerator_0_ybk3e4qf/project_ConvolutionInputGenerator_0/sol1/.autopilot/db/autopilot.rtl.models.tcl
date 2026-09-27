set SynModuleInfo {
  {SRCNAME ConvolutionInputGenerator_0 MODELNAME ConvolutionInputGenerator_0 RTLNAME ConvolutionInputGenerator_0 IS_TOP 1
    SUBMODULES {
      {MODELNAME ConvolutionInputGenerator_0_mux_42_8_1_1 RTLNAME ConvolutionInputGenerator_0_mux_42_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_0_inputBuf_V_RAM_S2P_LUTRAM_1R1W RTLNAME ConvolutionInputGenerator_0_inputBuf_V_RAM_S2P_LUTRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_0_regslice_both RTLNAME ConvolutionInputGenerator_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ConvolutionInputGenerator_0_regslice_both_U}
      {MODELNAME ConvolutionInputGenerator_0_flow_control_loop_pipe_no_ap_cont RTLNAME ConvolutionInputGenerator_0_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ConvolutionInputGenerator_0_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
}
