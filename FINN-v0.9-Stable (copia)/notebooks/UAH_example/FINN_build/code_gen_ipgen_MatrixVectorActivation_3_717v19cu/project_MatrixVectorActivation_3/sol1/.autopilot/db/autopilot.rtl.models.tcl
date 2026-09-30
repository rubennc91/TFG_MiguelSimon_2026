set SynModuleInfo {
  {SRCNAME Matrix_Vector_Activate_Stream_Batch MODELNAME Matrix_Vector_Activate_Stream_Batch RTLNAME MatrixVectorActivation_3_Matrix_Vector_Activate_Stream_Batch
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_3_mux_21_32_1_1 RTLNAME MatrixVectorActivation_3_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_3_mul_4ns_4s_8_1_1 RTLNAME MatrixVectorActivation_3_mul_4ns_4s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_8s_9_4_1 RTLNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_8s_9_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_9s_10_4_1 RTLNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_9s_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_12s_12_4_1 RTLNAME MatrixVectorActivation_3_mac_muladd_4ns_4s_12s_12_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_3_flow_control_loop_pipe_sequential_init RTLNAME MatrixVectorActivation_3_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MatrixVectorActivation_3_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MatrixVectorActivation_3 MODELNAME MatrixVectorActivation_3 RTLNAME MatrixVectorActivation_3 IS_TOP 1
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_3_regslice_both RTLNAME MatrixVectorActivation_3_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME MatrixVectorActivation_3_regslice_both_U}
    }
  }
}
