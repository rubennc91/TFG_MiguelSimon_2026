set SynModuleInfo {
  {SRCNAME Matrix_Vector_Activate_Stream_Batch MODELNAME Matrix_Vector_Activate_Stream_Batch RTLNAME MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_1_mux_325_32_1_1 RTLNAME MatrixVectorActivation_1_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_1_mul_4ns_4s_8_1_1 RTLNAME MatrixVectorActivation_1_mul_4ns_4s_8_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_1_mul_4s_4ns_8_1_1 RTLNAME MatrixVectorActivation_1_mul_4s_4ns_8_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MatrixVectorActivation_1_flow_control_loop_pipe_sequential_init RTLNAME MatrixVectorActivation_1_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MatrixVectorActivation_1_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MatrixVectorActivation_1 MODELNAME MatrixVectorActivation_1 RTLNAME MatrixVectorActivation_1 IS_TOP 1
    SUBMODULES {
      {MODELNAME MatrixVectorActivation_1_regslice_both RTLNAME MatrixVectorActivation_1_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME MatrixVectorActivation_1_regslice_both_U}
    }
  }
}
