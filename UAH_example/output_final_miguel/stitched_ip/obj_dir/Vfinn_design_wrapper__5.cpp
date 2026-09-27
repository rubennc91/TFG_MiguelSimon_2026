// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfinn_design_wrapper.h for the primary calling header

#include "Vfinn_design_wrapper.h"
#include "Vfinn_design_wrapper__Syms.h"

VL_INLINE_OPT void Vfinn_design_wrapper::_combo__TOP__17(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_combo__TOP__17\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
            if (((IData)(vlTOPp->s_axis_0_tvalid) & 
                 (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                     >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 1U;
            } else {
                if (((IData)(vlTOPp->s_axis_0_tvalid) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 0U;
                        }
                    }
                }
            }
        } else {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_ = 0U;
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ 
            = vlTOPp->s_axis_0_tvalid;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
            if (((IData)(vlTOPp->s_axis_0_tvalid) & 
                 (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                     >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ = 0U;
            } else {
                if (((IData)(vlTOPp->s_axis_0_tvalid) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ = 0U;
                        }
                    }
                }
            }
        } else {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__shift_en_o_ 
                = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state)) 
                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                      >> 1U));
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ = 0ULL;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ 
            = ((IData)(vlTOPp->s_axis_0_tvalid) ? vlTOPp->s_axis_0_tdata
                : 0ULL);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
            if (((IData)(vlTOPp->s_axis_0_tvalid) & 
                 (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                     >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ = 0ULL;
            } else {
                if (((IData)(vlTOPp->s_axis_0_tvalid) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ 
                        = vlTOPp->s_axis_0_tdata;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ = 0ULL;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ = 0ULL;
                        }
                    }
                }
            }
        } else {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srlo_ 
                = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                        ? ((0U >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr))
                            ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__srl
                           [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr]
                            : 0ULL) : 0ULL) : 0ULL);
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ 
            = ((IData)(vlTOPp->s_axis_0_tvalid) ? 1U
                : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
            if (((IData)(vlTOPp->s_axis_0_tvalid) & 
                 (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                     >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ = 2U;
            } else {
                if (((IData)(vlTOPp->s_axis_0_tvalid) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ = 1U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ = 0U;
                        }
                    }
                }
            }
        } else {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_ 
                = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                        ? ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr)
                            ? 2U : 1U) : 2U) : 0U);
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state))) {
            if (((IData)(vlTOPp->s_axis_0_tvalid) & 
                 (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                     >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
            } else {
                if (((IData)(vlTOPp->s_axis_0_tvalid) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->s_axis_0_tvalid)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ = 0U;
                        }
                    }
                }
            }
        } else {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_ 
                = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state)) 
                   & ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                       ? ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr)
                           ? ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr) 
                              - (IData)(1U)) : 0U) : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr)));
        }
    }
    vlTOPp->__Vtableidx34 = ((0x80U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__ap_CS_fsm) 
                                       << 5U)) | ((
                                                   ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__grp_Matrix_Vector_Activate_Stream_Batch_fu_30__DOT__ap_done_int) 
                                                    | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__grp_Matrix_Vector_Activate_Stream_Batch_fu_30__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache) 
                                                       & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__grp_Matrix_Vector_Activate_Stream_Batch_fu_30_ap_start_reg)))) 
                                                   << 6U) 
                                                  | ((0x20U 
                                                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__ap_CS_fsm) 
                                                         << 2U)) 
                                                     | (((((3U 
                                                            == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                                           & (~ (IData)(vlTOPp->m_axis_0_tready))) 
                                                          | (1U 
                                                             == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))) 
                                                         << 4U) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__ap_CS_fsm)))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__ap_NS_fsm 
        = vlTOPp->__Vtable34_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_3__DOT__MatrixVectorActivation_3__DOT__inst__DOT__ap_NS_fsm
        [vlTOPp->__Vtableidx34];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_full_ 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__state_)) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0__DOT__inst__DOT__StreamingFIFO_0_StreamingFIFO_0__DOT__addr_)));
}

void Vfinn_design_wrapper::_eval(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_eval\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->ap_clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__ap_clk)))) {
        vlTOPp->_sequent__TOP__7(vlSymsp);
        vlTOPp->_sequent__TOP__8(vlSymsp);
        vlTOPp->_sequent__TOP__9(vlSymsp);
        vlTOPp->_sequent__TOP__10(vlSymsp);
        vlTOPp->_sequent__TOP__11(vlSymsp);
        vlTOPp->_sequent__TOP__12(vlSymsp);
        vlTOPp->_sequent__TOP__13(vlSymsp);
        vlSymsp->TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst._sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__3(vlSymsp);
        vlSymsp->TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst._sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__4(vlSymsp);
        vlTOPp->_sequent__TOP__14(vlSymsp);
        vlSymsp->TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst._sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__5(vlSymsp);
        vlSymsp->TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst._sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__6(vlSymsp);
    }
    vlTOPp->_combo__TOP__17(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__ap_clk = vlTOPp->ap_clk;
    vlTOPp->__Vclklast__TOP__ap_rst_n = vlTOPp->ap_rst_n;
}

VL_INLINE_OPT QData Vfinn_design_wrapper::_change_request(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_change_request\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData Vfinn_design_wrapper::_change_request_1(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_change_request_1\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vfinn_design_wrapper::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((ap_clk & 0xfeU))) {
        Verilated::overWidthError("ap_clk");}
    if (VL_UNLIKELY((ap_rst_n & 0xfeU))) {
        Verilated::overWidthError("ap_rst_n");}
    if (VL_UNLIKELY((m_axis_0_tready & 0xfeU))) {
        Verilated::overWidthError("m_axis_0_tready");}
    if (VL_UNLIKELY((s_axis_0_tvalid & 0xfeU))) {
        Verilated::overWidthError("s_axis_0_tvalid");}
}
#endif  // VL_DEBUG
