// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfinn_design_wrapper.h for the primary calling header

#include "Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5.h"
#include "Vfinn_design_wrapper__Syms.h"

//==========

VL_INLINE_OPT void Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__3(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+              Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__3\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*7:0*/ __Vtableidx1;
    // Body
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r 
        = ((~ (IData)(this->__PVT__areset_r)) & (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_ns));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data 
        = (IData)(((2U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state))
                    ? ((0x3fU >= ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r) 
                                  << 5U)) ? (this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data 
                                             >> ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r) 
                                                 << 5U))
                        : 0ULL) : (QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data))));
    __Vtableidx1 = (2U | ((0x80U & ((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)) 
                                    << 7U)) | ((0x40U 
                                                & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                   << 6U)) 
                                               | ((0x20U 
                                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                                      << 4U)) 
                                                  | (((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state) 
                                                      << 2U) 
                                                     | (IData)(this->__PVT__areset_r))))));
    if (this->__Vtablechg1[__Vtableidx1]) {
        this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state 
            = this->__Vtable1___PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state
            [__Vtableidx1];
    }
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data 
        = ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_load)
            ? ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_sel_rd)
                ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_payload_B
                : vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_0__DOT__MatrixVectorActivation_0__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_payload_A)
            : this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data);
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_load 
        = ((1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)) 
           | (3U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r 
        = ((IData)(this->__PVT__areset_r) | (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_ns));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__data_out 
        = (IData)(((0x3fU >= ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r) 
                              << 5U)) ? ((((QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data)) 
                                           << 0x20U) 
                                          | (QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data))) 
                                         >> ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r) 
                                             << 5U))
                    : 0ULL));
    this->__PVT__areset_r = (1U & (~ (IData)(vlTOPp->ap_rst_n)));
}

VL_INLINE_OPT void Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__5(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+              Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__5\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_ns 
        = (1U & ((~ (((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                         >> 1U)) | (1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)))) 
                 & (((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U)) | ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                                    ? (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)
                                    : (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)))));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_ns 
        = (1U & ((((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)) 
                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                      >> 1U)) | (1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state))) 
                 | ((1U & ((~ (2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U))) ? ((IData)(1U) 
                                          + (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))
                     : (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))));
}

VL_INLINE_OPT void Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__4(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+              Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__4\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*7:0*/ __Vtableidx2;
    // Body
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r 
        = ((~ (IData)(this->__PVT__areset_r)) & (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_ns));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data 
        = (IData)(((2U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state))
                    ? ((0x3fU >= ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r) 
                                  << 5U)) ? (this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data 
                                             >> ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r) 
                                                 << 5U))
                        : 0ULL) : (QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data))));
    __Vtableidx2 = (2U | ((0x80U & ((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)) 
                                    << 7U)) | ((0x40U 
                                                & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_state) 
                                                   << 6U)) 
                                               | ((0x20U 
                                                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                                                      << 4U)) 
                                                  | (((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state) 
                                                      << 2U) 
                                                     | (IData)(this->__PVT__areset_r))))));
    if (this->__Vtablechg2[__Vtableidx2]) {
        this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state 
            = this->__Vtable2___PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state
            [__Vtableidx2];
    }
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data 
        = ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_load)
            ? ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_sel_rd)
                ? vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_payload_B
                : vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_1__DOT__MatrixVectorActivation_1__DOT__inst__DOT__regslice_both_out_V_U__DOT__B_V_data_1_payload_A)
            : this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data);
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_load 
        = ((1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)) 
           | (3U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r 
        = ((IData)(this->__PVT__areset_r) | (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_ns));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__data_out 
        = (IData)(((0x3fU >= ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r) 
                              << 5U)) ? ((((QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data)) 
                                           << 0x20U) 
                                          | (QData)((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data))) 
                                         >> ((IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r) 
                                             << 5U))
                    : 0ULL));
    this->__PVT__areset_r = (1U & (~ (IData)(vlTOPp->ap_rst_n)));
}

VL_INLINE_OPT void Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__6(Vfinn_design_wrapper__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+              Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5::_sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__6\n"); );
    Vfinn_design_wrapper* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_ns 
        = (1U & ((~ (((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)) 
                      & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                         >> 1U)) | (1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state)))) 
                 & (((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)) 
                     & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                        >> 1U)) | ((2U & (IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state))
                                    ? (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r)
                                    : (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)))));
    this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_ns 
        = (1U & ((((2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r)) 
                   & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                      >> 1U)) | (1U == (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state))) 
                 | ((1U & ((~ (2U >> (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))) 
                           & ((IData)(vlTOPp->finn_design_wrapper__DOT__finn_design_i__DOT__MatrixVectorActivation_2__DOT__MatrixVectorActivation_2__DOT__inst__DOT__regslice_both_in0_V_U__DOT__B_V_data_1_state) 
                              >> 1U))) ? ((IData)(1U) 
                                          + (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))
                     : (IData)(this->__PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r))));
}
