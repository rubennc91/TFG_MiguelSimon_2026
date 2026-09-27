set SynModuleInfo {
  {SRCNAME ConvolutionInputGenerator_2 MODELNAME ConvolutionInputGenerator_2 RTLNAME ConvolutionInputGenerator_2 IS_TOP 1
    SUBMODULES {
      {MODELNAME ConvolutionInputGenerator_2_mux_42_128_1_1 RTLNAME ConvolutionInputGenerator_2_mux_42_128_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_2_inputBuf_V_RAM_S2P_LUTRAM_1R1W RTLNAME ConvolutionInputGenerator_2_inputBuf_V_RAM_S2P_LUTRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ConvolutionInputGenerator_2_regslice_both RTLNAME ConvolutionInputGenerator_2_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ConvolutionInputGenerator_2_regslice_both_U}
      {MODELNAME ConvolutionInputGenerator_2_flow_control_loop_pipe_no_ap_cont RTLNAME ConvolutionInputGenerator_2_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ConvolutionInputGenerator_2_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
}
