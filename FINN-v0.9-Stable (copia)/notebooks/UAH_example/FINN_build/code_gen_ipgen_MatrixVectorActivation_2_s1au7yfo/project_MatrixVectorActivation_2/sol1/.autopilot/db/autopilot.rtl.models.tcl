set SynModuleInfo {
  {SRCNAME Matrix_Vector_Activate_Stream_Batch MODELNAME Matrix_Vector_Activate_Stream_Batch RTLNAME MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_2_mux_164_32_1_1 RTLNAME MatrixVectorActivation_2_mux_164_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mul_4ns_4s_8_1_1 RTLNAME MatrixVectorActivation_2_mul_4ns_4s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mul_4s_4ns_8_1_1 RTLNAME MatrixVectorActivation_2_mul_4s_4ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_8s_9_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_8s_9_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_8s_9_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_8s_9_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_9s_10_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_9s_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_9s_10_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_9s_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_14s_14_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4ns_4s_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_14s_14_4_1 RTLNAME MatrixVectorActivation_2_mac_muladd_4s_4ns_14s_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_2_flow_control_loop_pipe_sequential_init RTLNAME MatrixVectorActivation_2_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MatrixVectorActivation_2_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MatrixVectorActivation_2 MODELNAME MatrixVectorActivation_2 RTLNAME MatrixVectorActivation_2 IS_TOP 1
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_2_regslice_both RTLNAME MatrixVectorActivation_2_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME MatrixVectorActivation_2_regslice_both_U}
    }
  }
}
