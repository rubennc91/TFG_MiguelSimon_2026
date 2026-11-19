// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfinn_design_wrapper.h for the primary calling header

#include "Vfinn_design_wrapper.h"
#include "Vfinn_design_wrapper__Syms.h"

VL_INLINE_OPT void Vfinn_design_wrapper::_sequent__TOP__8(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_sequent__TOP__8\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_146_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_146_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_143_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_143_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_144_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_144_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_141_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_141_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_142_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_142_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_139_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_139_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_140_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_140_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_137_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_137_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_138_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_138_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_135_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_135_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_136_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_136_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_133_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_133_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_134_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_134_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_131_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_131_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_132_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_132_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_129_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_129_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_130_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_130_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_127_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_127_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_128_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_128_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_0_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_0_U__DOT__rom0
            [(0xffU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378_pp0_iter1_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_2_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_2_U__DOT__rom0
            [(0xffU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378_pp0_iter1_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_1_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_1_U__DOT__rom0
            [(0xffU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378_pp0_iter1_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383_pp0_iter1_reg;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441_pp0_iter1_reg;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm)
            : 1U);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__idxprom2_i_reg_12465 
        = (0xffffffffULL & vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__idxprom2_i_reg_12465);
    if (((((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                          | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                             & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
              >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441_pp0_iter1_reg)) 
         & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383_pp0_iter1_reg)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__idxprom2_i_reg_12465 
            = ((0xffffffff00000000ULL & vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__idxprom2_i_reg_12465) 
               | (IData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378_pp0_iter1_reg)));
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_61_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_61_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_62_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_62_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_59_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_59_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_60_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_60_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_57_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_57_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_58_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_58_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_55_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_55_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_56_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_56_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_53_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_53_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_54_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_54_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_51_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_51_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_52_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_52_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_49_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_49_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_50_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_50_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_47_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_47_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_48_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_48_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_45_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_45_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_46_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_46_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_43_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_43_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_44_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_44_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_41_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_41_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_42_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_42_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_39_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_39_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_40_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_40_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_37_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_37_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_38_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_38_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_35_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_35_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_36_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_36_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_33_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_33_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_34_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_34_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_31_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_31_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_32_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_32_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_125_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_125_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_126_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_126_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_123_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_123_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_124_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_124_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_121_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_121_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_122_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_122_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_119_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_119_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_120_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_120_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_117_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_117_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_118_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_118_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_115_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_115_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_116_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_116_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_113_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_113_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_114_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_114_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_111_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_111_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_112_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_112_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_109_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_109_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_110_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_110_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_107_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_107_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_108_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_108_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_105_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_105_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_106_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_106_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_103_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_103_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_104_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_104_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_101_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_101_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_102_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_102_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_99_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_99_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_100_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_100_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_97_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_97_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_98_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_98_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_95_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_95_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_96_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_96_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_93_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_93_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_94_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_94_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_91_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_91_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_92_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_92_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_89_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_89_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_90_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_90_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_87_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_87_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_88_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_88_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_85_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_85_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_86_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_86_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_83_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_83_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_84_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_84_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_81_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_81_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_82_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_82_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_79_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_79_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_80_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_80_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_77_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_77_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_78_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_78_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_75_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_75_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_76_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_76_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_73_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_73_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_74_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_74_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_71_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_71_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_72_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_72_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_69_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_69_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_70_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_70_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_67_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_67_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_68_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_68_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_65_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_65_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_66_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_66_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_63_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_63_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_64_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_64_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_13_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_13_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_14_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_14_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_11_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_11_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_12_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_12_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_9_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_9_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_10_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_10_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_7_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_7_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_8_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_8_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_5_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_5_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_6_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_6_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_3_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_3_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_4_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_4_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_0_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_0_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_2_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_2_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_1_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_1_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_29_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_29_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_30_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_30_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_27_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_27_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_28_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_28_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_25_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_25_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_26_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_26_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_23_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_23_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_24_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_24_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_21_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_21_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_22_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_22_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_19_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_19_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_20_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_20_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_17_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_17_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_18_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_18_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_15_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_15_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter4_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter4_fsm)
            : 1U);
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter3_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter2_reg;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_16_q0 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__p_ZL7threshs_16_U__DOT__rom0
            [(0x1fU & (IData)((QData)((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg))))];
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter3_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter2_reg;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_data_out 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_rd)
            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_payload_B)
            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_payload_A));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_rd 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_rd;
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter1_reg;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter3_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter2_reg;
    }
    if ((0x10U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_0 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_31_fu_722)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_30_fu_718))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_29_fu_714)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_28_fu_710)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_27_fu_706)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_26_fu_702))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_25_fu_698)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_24_fu_694))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_23_fu_690)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_22_fu_686))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_21_fu_682)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_20_fu_678)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_19_fu_674)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_18_fu_670))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_17_fu_666)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_16_fu_662)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_1 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_63_fu_850)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_62_fu_846))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_61_fu_842)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_60_fu_838)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_59_fu_834)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_58_fu_830))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_57_fu_826)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_56_fu_822))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_55_fu_818)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_54_fu_814))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_53_fu_810)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_52_fu_806)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_51_fu_802)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_50_fu_798))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_49_fu_794)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_48_fu_790)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_2 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_95_fu_978)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_94_fu_974))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_93_fu_970)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_92_fu_966)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_91_fu_962)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_90_fu_958))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_89_fu_954)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_88_fu_950))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_87_fu_946)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_86_fu_942))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_85_fu_938)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_84_fu_934)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_83_fu_930)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_82_fu_926))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_81_fu_922)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_80_fu_918)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_3 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_127_fu_1106)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_126_fu_1102))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_125_fu_1098)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_124_fu_1094)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_123_fu_1090)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_122_fu_1086))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_121_fu_1082)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_120_fu_1078))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_119_fu_1074)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_118_fu_1070))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_117_fu_1066)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_116_fu_1062)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_115_fu_1058)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_114_fu_1054))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_113_fu_1050)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_112_fu_1046)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_4 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_159_fu_1234)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_158_fu_1230))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_157_fu_1226)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_156_fu_1222)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_155_fu_1218)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_154_fu_1214))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_153_fu_1210)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_152_fu_1206))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_151_fu_1202)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_150_fu_1198))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_149_fu_1194)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_148_fu_1190)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_147_fu_1186)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_146_fu_1182))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_145_fu_1178)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_144_fu_1174)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_5 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_191_fu_1362)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_190_fu_1358))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_189_fu_1354)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_188_fu_1350)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_187_fu_1346)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_186_fu_1342))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_185_fu_1338)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_184_fu_1334))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_183_fu_1330)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_182_fu_1326))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_181_fu_1322)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_180_fu_1318)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_179_fu_1314)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_178_fu_1310))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_177_fu_1306)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_176_fu_1302)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_6 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_223_fu_1490)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_222_fu_1486))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_221_fu_1482)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_220_fu_1478)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_219_fu_1474)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_218_fu_1470))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_217_fu_1466)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_216_fu_1462))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_215_fu_1458)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_214_fu_1454))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_213_fu_1450)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_212_fu_1446)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_211_fu_1442)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_210_fu_1438))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_209_fu_1434)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_208_fu_1430)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_7 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_255_fu_1618)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_254_fu_1614))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_253_fu_1610)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_252_fu_1606)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_251_fu_1602)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_250_fu_1598))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_249_fu_1594)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_248_fu_1590))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_247_fu_1586)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_246_fu_1582))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_245_fu_1578)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_244_fu_1574)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_243_fu_1570)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_242_fu_1566))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_241_fu_1562)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_240_fu_1558)))));
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_0 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_15_fu_658)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_14_fu_654))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_13_fu_650)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_12_fu_646)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_11_fu_642)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_10_fu_638))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_9_fu_634)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_8_fu_630))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_7_fu_626)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_6_fu_622))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_5_fu_618)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_4_fu_614)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_3_fu_610)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_2_fu_606))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_1_fu_602)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_fu_598)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_1 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_47_fu_786)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_46_fu_782))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_45_fu_778)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_44_fu_774)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_43_fu_770)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_42_fu_766))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_41_fu_762)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_40_fu_758))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_39_fu_754)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_38_fu_750))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_37_fu_746)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_36_fu_742)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_35_fu_738)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_34_fu_734))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_33_fu_730)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_32_fu_726)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_2 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_79_fu_914)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_78_fu_910))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_77_fu_906)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_76_fu_902)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_75_fu_898)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_74_fu_894))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_73_fu_890)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_72_fu_886))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_71_fu_882)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_70_fu_878))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_69_fu_874)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_68_fu_870)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_67_fu_866)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_66_fu_862))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_65_fu_858)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_64_fu_854)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_3 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_111_fu_1042)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_110_fu_1038))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_109_fu_1034)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_108_fu_1030)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_107_fu_1026)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_106_fu_1022))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_105_fu_1018)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_104_fu_1014))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_103_fu_1010)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_102_fu_1006))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_101_fu_1002)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_100_fu_998)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_99_fu_994)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_98_fu_990))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_97_fu_986)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_96_fu_982)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_4 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_143_fu_1170)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_142_fu_1166))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_141_fu_1162)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_140_fu_1158)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_139_fu_1154)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_138_fu_1150))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_137_fu_1146)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_136_fu_1142))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_135_fu_1138)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_134_fu_1134))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_133_fu_1130)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_132_fu_1126)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_131_fu_1122)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_130_fu_1118))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_129_fu_1114)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_128_fu_1110)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_5 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_175_fu_1298)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_174_fu_1294))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_173_fu_1290)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_172_fu_1286)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_171_fu_1282)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_170_fu_1278))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_169_fu_1274)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_168_fu_1270))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_167_fu_1266)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_166_fu_1262))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_165_fu_1258)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_164_fu_1254)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_163_fu_1250)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_162_fu_1246))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_161_fu_1242)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_160_fu_1238)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_6 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_207_fu_1426)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_206_fu_1422))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_205_fu_1418)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_204_fu_1414)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_203_fu_1410)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_202_fu_1406))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_201_fu_1402)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_200_fu_1398))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_199_fu_1394)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_198_fu_1390))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_197_fu_1386)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_196_fu_1382)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_195_fu_1378)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_194_fu_1374))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_193_fu_1370)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_192_fu_1366)))));
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__mux_2568_8_1_1_U1__DOT__mux_5_7 
            = ((8U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                ? ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_239_fu_1554)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_238_fu_1550))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_237_fu_1546)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_236_fu_1542)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_235_fu_1538)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_234_fu_1534))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_233_fu_1530)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_232_fu_1526))))
                : ((4U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                    ? ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_231_fu_1522)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_230_fu_1518))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_229_fu_1514)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_228_fu_1510)))
                    : ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                        ? ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_227_fu_1506)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_226_fu_1502))
                        : ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__trunc_ln134_reg_5989))
                            ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_225_fu_1498)
                            : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__inputBuf_V_224_fu_1494)))));
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__tile_1_fu_4348_p2 
        = ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__tile_fu_582);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__tile_2_fu_4359_p3 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln174_reg_6011)
            ? 0U : ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__tile_fu_582));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter1_fsm)
            : 1U);
    if (((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
               & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                  >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                             | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                            | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                              & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                    >> 1U))))))) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln123_reg_5981 
            = (0x200U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1));
    }
    if ((((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
               | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                   >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                              | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                             | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                    >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))))) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm)) 
         & (0x200U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln161_reg_6007 
            = (0x100U == ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_sf_2));
    }
    if (vlTOPp->ap_rst_n) {
        if ((((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
                   | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                       >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                  | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                 | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                        >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                      >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                   & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                         >> 1U))))))) 
              & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm)) 
             & (0x200U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1)))) {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_loop_init = 1U;
        } else {
            if (((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                       & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
                      | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                          >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                     | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                    | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                           >> 1U)) 
                                       & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                         >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                   | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                      & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                            >> 1U))))))) 
                 & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_loop_init = 0U;
            }
        }
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_loop_init = 1U;
    }
    if (((1U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_wr))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_payload_B 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo;
    }
    if (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_wr)) 
         & (1U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_payload_A 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__nf_2_fu_2164_p3 
        = ((0x240U == ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__nf_1_fu_316))
            ? 0U : ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__nf_1_fu_316));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter1_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter1_fsm)
            : 1U);
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
              | ((0x240U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                           | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800 
            = (0x240U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1));
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm)
            : 1U);
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter1_reg;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter1_reg;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm)
            : 1U);
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter1_reg;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln161_reg_6007_pp0_iter4_reg) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln123_reg_5981_pp0_iter4_reg)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln161_reg_6007_pp0_iter3_reg) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln123_reg_5981_pp0_iter3_reg)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_wr 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_sel_wr;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg;
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter2_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter1_reg;
    }
    if (vlTOPp->ap_rst_n) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter5_fsm;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter4_fsm;
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm = 1U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm = 1U;
    }
    vlTOPp->m_axis_0_tvalid = (1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
           & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                 >> 1U)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io 
        = ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
               >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm 
        = (1U & ((~ (IData)(vlTOPp->ap_rst_n)) | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter0_fsm)));
    if (vlTOPp->ap_rst_n) {
        if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_) {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo 
                = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_;
        }
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo = 0U;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 1U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 1U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ 
            = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)
                ? 1U : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 2U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 1U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                ? 1U : 2U) : 2U);
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 2U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 2U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 2U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                            ? 1U : 2U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ 
                        = (0x3fU & ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                                     ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                         ? 0U : ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr) 
                                                 - (IData)(1U)))
                                     : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr)));
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ 
                            = (0x3fU & ((IData)(1U) 
                                        + (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr)));
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ 
                                = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ 
                                    = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                            ? 0U : 
                                           (0x3fU & 
                                            ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr) 
                                             - (IData)(1U))));
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm 
        = (1U & ((~ (IData)(vlTOPp->ap_rst_n)) | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter0_fsm)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter5_fsm)
            : 1U);
    if (vlTOPp->ap_rst_n) {
        if ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm))) {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg = 1U;
        } else {
            if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_condition_exit_pp0_iter0_stage0) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg = 0U;
            }
        }
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg = 0U;
    }
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_12378 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2;
    }
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383 
            = (0x2000U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1));
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter1_fsm)
            : 1U);
    if ((((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
               | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                  & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                               & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
         & (0x2000U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441 
            = (0x20U == ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1));
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675;
    }
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm)
            : 1U);
    if ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
               & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                  >> 1U)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ 
                        = (1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                 >> 1U));
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 1U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__shift_en_o_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ 
            = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)
                ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TDATA)
                : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ 
                        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TDATA;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srl
                               [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr]
                                : 0U) : 0U);
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ 
                                = ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                    ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srl
                                   [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr]
                                    : 0U);
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ 
                                        = ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr))
                                            ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srl
                                           [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr]
                                            : 0U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__srlo_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_full_ 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__state_)) 
           & (0x3eU == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_0_1__DOT__inst__DOT__StreamingFIFO_0_1_StreamingFIFO_0_1__DOT__addr_)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_12441_pp0_iter6_reg) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_12383_pp0_iter6_reg)));
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                 & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter1_reg 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter0_fsm 
        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm;
    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_loop_init))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_sf_2 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_nf_3 = 0U;
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_sf_2 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__sf_fu_586;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__i_fu_590;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_nf_3 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__nf_fu_1622;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter0_fsm 
        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_loop_init 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_NS_fsm)
            : 1U);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
            if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                             >> 1U))))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 1U;
            } else {
                if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U)))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
                } else {
                    if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 1U;
                    } else {
                        if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ 
            = (1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state));
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
            if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                             >> 1U))))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
            } else {
                if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U)))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ 
                        = (1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                 >> 1U));
                } else {
                    if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
                    } else {
                        if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 1U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__shift_en_o_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ 
            = ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))
                ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_data_out)
                : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
            if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                             >> 1U))))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
            } else {
                if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U)))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ 
                        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_data_out;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0x1eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srl
                               [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr]
                                : 0U) : 0U);
                } else {
                    if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
                    } else {
                        if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ 
                                = ((0x1eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                    ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srl
                                   [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr]
                                    : 0U);
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ 
                                        = ((0x1eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                            ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srl
                                           [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr]
                                            : 0U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__srlo_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ 
            = ((1U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))
                ? 1U : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
            if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                             >> 1U))))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 2U;
            } else {
                if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U)))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 1U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                ? 1U : 2U) : 2U);
                } else {
                    if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 2U;
                    } else {
                        if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 2U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 2U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                            ? 1U : 2U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
            if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                             >> 1U))))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
            } else {
                if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U)))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ 
                        = (0x1fU & ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                                     ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                         ? 0U : ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr) 
                                                 - (IData)(1U)))
                                     : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr)));
                } else {
                    if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ 
                            = (0x1fU & ((IData)(1U) 
                                        + (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr)));
                    } else {
                        if ((1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ 
                                = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ 
                                    = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr))
                                            ? 0U : 
                                           (0x1fU & 
                                            ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr) 
                                             - (IData)(1U))));
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter7_fsm)
            : 1U);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm 
        = (1U & ((~ (IData)(vlTOPp->ap_rst_n)) | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter0_fsm)));
    if (vlTOPp->ap_rst_n) {
        if ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm))) {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 1U;
        } else {
            if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 0U;
            }
        }
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 0U;
    }
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                 & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675 
            = (0x4800U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1));
    }
    if (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
              | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                 & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
             | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                 >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                              & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_2_reg_24670 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter1_fsm)
            : 1U);
    if ((((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
               | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                  & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                               & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
         & (0x4800U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701 
            = (0x240U == ((IData)(1U) + vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1));
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1 
        = ((0U == vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_nf_3) 
           & (0x200U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1 
        = (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_loop_init))
            ? 0U : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__i_fu_320));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_full_ 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__state_)) 
           & (0x1eU == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__addr_)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state 
        = vlTOPp->__Vdly__finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln161_reg_24701_pp0_iter7_reg) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__icmp_ln123_reg_24675_pp0_iter7_reg)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY 
        = (1U & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm) 
                            >> 2U)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter0_fsm 
        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_init 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_NS_fsm)
            : 1U);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 1U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 1U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ 
                        = (1U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                 >> 1U));
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 1U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 1U;
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__shift_en_o_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ 
            = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)
                ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TDATA)
                : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ 
                        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TDATA;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srl
                               [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr]
                                : 0U) : 0U);
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ 
                                = ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                    ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srl
                                   [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr]
                                    : 0U);
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ 
                                        = ((0x3eU >= (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                            ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srl
                                           [vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr]
                                            : 0U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__srlo_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ 
            = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)
                ? 1U : 0U);
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 2U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 1U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 1U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ 
                        = ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                            ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                ? 1U : 2U) : 2U);
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 2U;
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 2U;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 2U;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                            ? 1U : 2U);
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
    if ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
    } else {
        if ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
            if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                       >> 1U)))) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
            } else {
                if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U))) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
                } else {
                    if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                               & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                     >> 1U))))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
                    } else {
                        if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
                        }
                    }
                }
            }
        } else {
            if ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state))) {
                if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full) {
                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ 
                        = (0x3fU & ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                                     ? ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                         ? 0U : ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr) 
                                                 - (IData)(1U)))
                                     : (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr)));
                } else {
                    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                         & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                               >> 1U)))) {
                        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ 
                            = (0x3fU & ((IData)(1U) 
                                        + (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr)));
                    } else {
                        if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID) 
                             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                >> 1U))) {
                            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ 
                                = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr;
                        } else {
                            if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                       & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                             >> 1U))))) {
                                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ 
                                    = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr;
                            } else {
                                if ((1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__fifo_M_AXIS_TVALID)) 
                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                              >> 1U)))) {
                                    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ 
                                        = ((0U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr))
                                            ? 0U : 
                                           (0x3fU & 
                                            ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr) 
                                             - (IData)(1U))));
                                }
                            }
                        }
                    }
                }
            } else {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_ = 0U;
            }
        }
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter8_fsm)
            : 1U);
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm 
        = (1U & ((~ (IData)(vlTOPp->ap_rst_n)) | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter0_fsm)));
    if (vlTOPp->ap_rst_n) {
        if ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm))) {
            vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 1U;
        } else {
            if (vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0) {
                vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 0U;
            }
        }
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg = 0U;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io 
        = (1U & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))));
    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_init))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1 = 0U;
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__sf_fu_644;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_1_fu_784;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__i_fu_648;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_full_ 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__state_)) 
           & (0x3eU == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_1__DOT__inst__DOT__StreamingFIFO_1_1_StreamingFIFO_1_1__DOT__addr_)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TVALID 
        = (1U & (((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                      | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                         & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))) 
                  & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg))) 
                 & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                    >> 1U)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_condition_exit_pp0_iter0_stage0 
        = (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
                 | ((0x240U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                              | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))))) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm)) 
           & (0x240U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__in0_V_TREADY_int_regslice 
        = (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm) 
            >> 2U) & (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
                            | ((0x240U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                               & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                           | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                               >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                         | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                                            & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))))) 
                       & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm)) 
                      & (0x240U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter1_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter1_fsm))
            ? ((((~ ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
                     | ((0x240U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                        & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))) 
                 & (~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                        >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                  | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))))) 
                & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm))
                ? 2U : ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                              | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY)))))) 
                               & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm)) 
                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm) 
                                     & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
                                        | ((0x240U 
                                            != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                                           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))))))
                         ? 1U : 2U)) : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter1_fsm))
                                         ? (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)) 
                                                  | ((0x240U 
                                                      != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_sig_allocacmp_i_1)) 
                                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                                     >> 1U) 
                                                    & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                                       | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                                                          & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))))) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter0_fsm))
                                             ? 2U : 1U)
                                         : 0U));
    vlTOPp->__Vtableidx26 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                       << 5U)) | ((0x20U 
                                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter4_fsm) 
                                                      << 4U)) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg) 
                                                         << 3U) 
                                                        | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                                            << 2U) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter5_fsm 
        = vlTOPp->__Vtable26_finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter5_fsm
        [vlTOPp->__Vtableidx26];
    vlTOPp->__Vtableidx23 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter1_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter2_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter2_fsm 
        = vlTOPp->__Vtable23_finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter2_fsm
        [vlTOPp->__Vtableidx23];
    vlTOPp->__Vtableidx24 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter2_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter3_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter3_fsm 
        = vlTOPp->__Vtable24_finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter3_fsm
        [vlTOPp->__Vtableidx24];
    vlTOPp->__Vtableidx25 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter3_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter4_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter4_fsm 
        = vlTOPp->__Vtable25_finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_NS_iter4_fsm
        [vlTOPp->__Vtableidx25];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_done_int 
        = ((((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_block_state6_io) 
                 | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__icmp_ln295_reg_5800_pp0_iter4_reg)) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_out_V_TREADY))))) 
             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_CS_iter5_fsm) 
                >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_loop_exit_ready_pp0_iter5_reg)) 
           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_done_reg));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1 
        = ((0U == vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2) 
           & (0x2000U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY 
        = (1U & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm) 
                            >> 2U)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter0_fsm 
        = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm;
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_init 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_loop_init_int) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm 
        = ((IData)(vlTOPp->ap_rst_n) ? (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_NS_fsm)
            : 1U);
    vlTOPp->__Vtableidx22 = ((0x80U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm) 
                                       << 5U)) | ((
                                                   ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__ap_done_int) 
                                                    | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache) 
                                                       & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__grp_Thresholding_Batch_fu_546_ap_start_reg)))) 
                                                   << 6U) 
                                                  | (((((3U 
                                                         == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                                        & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_1_0__DOT__in0_V_1_TREADY))) 
                                                       | (1U 
                                                          == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))) 
                                                      << 5U) 
                                                     | ((0x10U 
                                                         & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm) 
                                                            << 1U)) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_CS_fsm)))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_NS_fsm 
        = vlTOPp->__Vtable22_finn_design_wrapper__DOT__finn_design_i__DOT__Thresholding_Batch_0__DOT__inst__DOT__ap_NS_fsm
        [vlTOPp->__Vtableidx22];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)));
    if (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm) 
         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_init))) {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2 = 0U;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1 = 0U;
    } else {
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_sf_1 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__sf_fu_1730;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__nf_1_fu_4046;
        vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1 
            = vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__i_fu_1734;
    }
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TVALID 
        = (((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                   & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))) 
            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
               >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_9583 
        = ((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                   & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
               | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                   >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                             | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__in0_V_TREADY_int_regslice 
        = (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm) 
            >> 2U) & (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                               & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                           | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                               >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                         | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                            & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                       & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1)) 
                      & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0 
        = (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                 | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
           & (0x2000U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter1_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm))
            ? ((((~ ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                     | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                        & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))) 
                 & (~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                        >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))
                ? 2U : ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
                               & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm) 
                                     & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                                        | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                                           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))))))
                         ? 1U : 2U)) : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm))
                                         ? (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op67_read_state1) 
                                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)))) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                     >> 1U) 
                                                    & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                       | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                          & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))
                                             ? 2U : 1U)
                                         : 0U));
    vlTOPp->__Vtableidx17 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                       << 5U)) | ((0x20U 
                                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter6_fsm) 
                                                      << 4U)) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                         << 3U) 
                                                        | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                            << 2U) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter7_fsm 
        = vlTOPp->__Vtable17_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter7_fsm
        [vlTOPp->__Vtableidx17];
    vlTOPp->__Vtableidx12 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm 
        = vlTOPp->__Vtable12_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm
        [vlTOPp->__Vtableidx12];
    vlTOPp->__Vtableidx13 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm 
        = vlTOPp->__Vtable13_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm
        [vlTOPp->__Vtableidx13];
    vlTOPp->__Vtableidx14 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter4_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter4_fsm 
        = vlTOPp->__Vtable14_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter4_fsm
        [vlTOPp->__Vtableidx14];
    vlTOPp->__Vtableidx15 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter4_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter5_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter5_fsm 
        = vlTOPp->__Vtable15_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter5_fsm
        [vlTOPp->__Vtableidx15];
    vlTOPp->__Vtableidx16 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter5_fsm) 
                                       << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                   << 5U) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                                                      << 4U) 
                                                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                                                         << 3U) 
                                                        | ((4U 
                                                            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                               << 1U)) 
                                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter6_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter6_fsm 
        = vlTOPp->__Vtable16_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter6_fsm
        [vlTOPp->__Vtableidx16];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_int 
        = ((((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state8_io) 
                 | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op2488_write_state8) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))) 
             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter7_reg)) 
            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
               >> 1U)) | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_reg));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1 
        = ((0U == vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_nf_2) 
           & (0x4800U != (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY 
        = (1U & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm) 
                            >> 2U)));
    vlTOPp->__Vtableidx11 = ((0x80U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm) 
                                       << 5U)) | ((
                                                   ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_int) 
                                                    | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache) 
                                                       & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)))) 
                                                   << 6U) 
                                                  | ((0x20U 
                                                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm) 
                                                         << 2U)) 
                                                     | (((((3U 
                                                            == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                                           & (~ 
                                                              ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                                               >> 1U))) 
                                                          | (1U 
                                                             == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))) 
                                                         << 4U) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_CS_fsm)))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_NS_fsm 
        = vlTOPp->__Vtable11_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__inst__DOT__ap_NS_fsm
        [vlTOPp->__Vtableidx11];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io 
        = ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
           & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TVALID 
        = (((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                   & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))) 
            & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
               >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_17359 
        = ((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                   & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
               | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                   >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                             | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__in0_V_TREADY_int_regslice 
        = (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm) 
            >> 2U) & (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                            | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                               & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
                           | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                               >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                         | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                            & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                       & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
                      & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_condition_exit_pp0_iter0_stage0 
        = (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                 | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                    & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
                | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
           & (0x4800U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_sig_allocacmp_i_1)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter1_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm))
            ? ((((~ ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                     | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                        & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1)))) 
                 & (~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                        >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))
                ? 2U : ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY)))))) 
                               & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm)) 
                                  | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm) 
                                     & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                                        | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                                           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1)))))))
                         ? 1U : 2U)) : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm))
                                         ? (((~ (((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)) 
                                                  | ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state)) 
                                                     & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op612_read_state1))) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                     >> 1U) 
                                                    & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                       | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                          & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))))) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter0_fsm))
                                             ? 2U : 1U)
                                         : 0U));
    vlTOPp->__Vtableidx8 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                      << 5U)) | ((0x20U 
                                                  & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm) 
                                                     << 4U)) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                        << 3U) 
                                                       | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                           << 2U) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter8_fsm 
        = vlTOPp->__Vtable8_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter8_fsm
        [vlTOPp->__Vtableidx8];
    vlTOPp->__Vtableidx2 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter1_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm 
        = vlTOPp->__Vtable2_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter2_fsm
        [vlTOPp->__Vtableidx2];
    vlTOPp->__Vtableidx3 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter2_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm 
        = vlTOPp->__Vtable3_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter3_fsm
        [vlTOPp->__Vtableidx3];
    vlTOPp->__Vtableidx4 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter3_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter4_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter4_fsm 
        = vlTOPp->__Vtable4_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter4_fsm
        [vlTOPp->__Vtableidx4];
    vlTOPp->__Vtableidx5 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter4_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter5_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter5_fsm 
        = vlTOPp->__Vtable5_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter5_fsm
        [vlTOPp->__Vtableidx5];
    vlTOPp->__Vtableidx6 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter5_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter6_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter6_fsm 
        = vlTOPp->__Vtable6_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter6_fsm
        [vlTOPp->__Vtableidx6];
    vlTOPp->__Vtableidx7 = ((0x40U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter6_fsm) 
                                      << 5U)) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY) 
                                                  << 5U) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                                                     << 4U) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                                                        << 3U) 
                                                       | ((4U 
                                                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                                                              << 1U)) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter7_fsm))))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter7_fsm 
        = vlTOPp->__Vtable7_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_NS_iter7_fsm
        [vlTOPp->__Vtableidx7];
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_int 
        = ((((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_block_state9_io) 
                 | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_predicate_op4701_write_state9) 
                    & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_out_V_TREADY))))) 
             & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_CS_iter8_fsm) 
                >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_loop_exit_ready_pp0_iter8_reg)) 
           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_reg));
    vlTOPp->__Vtableidx1 = ((0x80U & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm) 
                                      << 5U)) | ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__ap_done_int) 
                                                   | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540__DOT__flow_control_loop_pipe_sequential_init_U__DOT__ap_done_cache) 
                                                      & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__grp_Matrix_Vector_Activate_Batch_fu_540_ap_start_reg)))) 
                                                  << 6U) 
                                                 | ((0x20U 
                                                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm) 
                                                        << 2U)) 
                                                    | (((((3U 
                                                           == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
                                                          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__StreamingFIFO_2__DOT__inst__DOT__StreamingFIFO_2_StreamingFIFO_2__DOT__i_b_reg)) 
                                                         | (1U 
                                                            == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state))) 
                                                        << 4U) 
                                                       | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_CS_fsm)))));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_NS_fsm 
        = vlTOPp->__Vtable1_finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__inst__DOT__ap_NS_fsm
        [vlTOPp->__Vtableidx1];
}

VL_INLINE_OPT void Vfinn_design_wrapper::_combo__TOP__10(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_combo__TOP__10\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk 
        = (((3U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)) 
            & (~ (IData)(vlTOPp->m_axis_0_tready))) 
           | (1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state)));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__out_V_TVALID_int_regslice 
        = (((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                 | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                    & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                          >> 1U)))) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                        >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                   | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                  | ((~ 
                                                      ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                       >> 1U)) 
                                                     & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))))) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5)) 
           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
              >> 1U));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter4_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm))
            ? ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                              & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                    >> 1U)))) | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                  >> 1U) 
                                                 & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                     | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                    | ((~ 
                                                        ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                         >> 1U)) 
                                                       & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))))) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter3_fsm) 
                         >> 1U))) ? 2U : ((1U & ((~ 
                                                  (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                    | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                       & (~ 
                                                          ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                           >> 1U)))) 
                                                   | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                       >> 1U) 
                                                      & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                          | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                         | ((~ 
                                                             ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                              >> 1U)) 
                                                            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))))) 
                                                 & (~ 
                                                    ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter3_fsm) 
                                                     >> 1U))))
                                           ? 1U : 2U))
            : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm))
                ? ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                          | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U)) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                               & (~ 
                                                  ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                   >> 1U))))))) 
                          & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter3_fsm) 
                             >> 1U))) ? 2U : 1U) : 0U));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter5_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm))
            ? ((1U & (((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                           | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                              & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                    >> 1U))))) & (~ 
                                                  (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                    | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                        >> 1U)) 
                                                      & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                         >> 1U))) ? 2U : ((1U & ((~ 
                                                  (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                    | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                   | ((~ 
                                                       ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                        >> 1U)) 
                                                      & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                                                 & ((~ 
                                                     ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                                      >> 1U)) 
                                                    | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                                        >> 1U) 
                                                       & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                          | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                             & (~ 
                                                                ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                                 >> 1U))))))))
                                           ? 1U : (
                                                   (((~ 
                                                      (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                       | ((~ 
                                                           ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                            >> 1U)) 
                                                          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                                                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                        >> 1U)) 
                                                    & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__icmp_ln123_reg_5981_pp0_iter4_reg))
                                                    ? 1U
                                                    : 2U)))
            : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm))
                ? ((1U & ((~ (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                               | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                  & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                        >> 1U)))) | 
                              (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                          | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U)) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))))) 
                          & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                             >> 1U))) ? 2U : 1U) : 0U));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter2_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter2_fsm))
            ? ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                            >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                       | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                      | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                             >> 1U)) 
                                         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                          | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                              >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                        | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                           & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U))))))) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm) 
                         >> 1U))) ? 2U : ((1U & ((~ 
                                                  ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                     >> 1U) 
                                                    & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                       | ((~ 
                                                           ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                            >> 1U)) 
                                                          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                                                   | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                                       >> 1U) 
                                                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                         | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                            & (~ 
                                                               ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                                >> 1U))))))) 
                                                 & (~ 
                                                    ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm) 
                                                     >> 1U))))
                                           ? 1U : 2U))
            : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter2_fsm))
                ? ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                          | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U)) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                               & (~ 
                                                  ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                   >> 1U))))))) 
                          & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm) 
                             >> 1U))) ? 2U : 1U) : 0U));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter3_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter3_fsm))
            ? ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                            >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                       | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                      | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                             >> 1U)) 
                                         & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                          | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                              >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                        | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                           & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U))))))) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter2_fsm) 
                         >> 1U))) ? 2U : ((1U & ((~ 
                                                  ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                     >> 1U) 
                                                    & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                        | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                       | ((~ 
                                                           ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                            >> 1U)) 
                                                          & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                                                   | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                                       >> 1U) 
                                                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                         | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                            & (~ 
                                                               ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                                >> 1U))))))) 
                                                 & (~ 
                                                    ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter2_fsm) 
                                                     >> 1U))))
                                           ? 1U : 2U))
            : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter3_fsm))
                ? ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                           | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                          | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                 >> 1U)) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                              | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                  >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                            | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                               & (~ 
                                                  ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                   >> 1U))))))) 
                          & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter2_fsm) 
                             >> 1U))) ? 2U : 1U) : 0U));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__in0_V_TREADY_int_regslice 
        = (((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                  & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                     >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                               | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                      >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
                | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                    >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                              | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                       >> 1U))))))) 
            & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm)) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_condition_3804 
        = ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                 & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
                | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                    >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                               | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                              | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                     >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
               | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                   >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                             | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                      >> 1U))))))) 
           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm));
    vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_NS_iter1_fsm 
        = ((2U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm))
            ? ((((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                       >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                  | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                 | ((~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                        >> 1U)) & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                     | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                         >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                   | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                      & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                            >> 1U))))))) 
                 & (~ ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                       & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))) 
                & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm))
                ? 2U : ((1U & ((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                     >> 1U) & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                               | ((~ 
                                                   ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                    >> 1U)) 
                                                  & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6)))) 
                                   | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                       >> 1U) & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                 | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                    & (~ 
                                                       ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                        >> 1U))))))) 
                               & ((~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm)) 
                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm) 
                                      & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1)) 
                                     & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))))))
                         ? 1U : 2U)) : ((1U == (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter1_fsm))
                                         ? (((~ ((((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op293_read_state1) 
                                                   & (~ (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))) 
                                                  | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter5_fsm) 
                                                      >> 1U) 
                                                     & (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state6_io) 
                                                         | (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U_apdone_blk)) 
                                                        | ((~ 
                                                            ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                             >> 1U)) 
                                                           & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1102_write_state6))))) 
                                                 | (((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter4_fsm) 
                                                     >> 1U) 
                                                    & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_block_state5_io) 
                                                       | ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_predicate_op1099_write_state5) 
                                                          & (~ 
                                                             ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                              >> 1U))))))) 
                                             & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__inst__DOT__ap_CS_iter0_fsm))
                                             ? 2U : 1U)
                                         : 0U));
}

void Vfinn_design_wrapper::_eval(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper::_eval\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->ap_clk) & (~ (IData)(vlTOPp->__Vclklast__TOP__ap_clk)))) {
        vlTOPp->_sequent__TOP__3(vlSymsp);
        vlTOPp->_sequent__TOP__4(vlSymsp);
        vlTOPp->_sequent__TOP__5(vlSymsp);
        vlTOPp->_sequent__TOP__6(vlSymsp);
        vlTOPp->_sequent__TOP__7(vlSymsp);
        vlTOPp->_sequent__TOP__8(vlSymsp);
    }
    vlTOPp->_combo__TOP__10(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__ap_clk = vlTOPp->ap_clk;
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
