// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vfinn_design_wrapper.h for the primary calling header

#ifndef _VFINN_DESIGN_WRAPPER_AXIS_DWIDTH_CONVERTER_V1_1_26_AXIS_DWIDTH_CONVERTER__PI5_H_
#define _VFINN_DESIGN_WRAPPER_AXIS_DWIDTH_CONVERTER_V1_1_26_AXIS_DWIDTH_CONVERTER__PI5_H_  // guard

#include "verilated_heavy.h"

//==========

class Vfinn_design_wrapper__Syms;

//----------

VL_MODULE(Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5) {
  public:
    
    // PORTS
    VL_IN8(aclk,0,0);
    VL_IN8(aresetn,0,0);
    VL_IN8(aclken,0,0);
    VL_IN8(s_axis_tvalid,0,0);
    VL_OUT8(s_axis_tready,0,0);
    VL_IN8(s_axis_tstrb,7,0);
    VL_IN8(s_axis_tkeep,7,0);
    VL_IN8(s_axis_tlast,0,0);
    VL_IN8(s_axis_tid,0,0);
    VL_IN8(s_axis_tdest,0,0);
    VL_IN8(s_axis_tuser,0,0);
    VL_OUT8(m_axis_tvalid,0,0);
    VL_IN8(m_axis_tready,0,0);
    VL_OUT8(__PVT__m_axis_tstrb,3,0);
    VL_OUT8(__PVT__m_axis_tkeep,3,0);
    VL_OUT8(__PVT__m_axis_tlast,0,0);
    VL_OUT8(__PVT__m_axis_tid,0,0);
    VL_OUT8(__PVT__m_axis_tdest,0,0);
    VL_OUT8(__PVT__m_axis_tuser,0,0);
    VL_OUT(m_axis_tdata,31,0);
    VL_IN64(s_axis_tdata,63,0);
    
    // LOCAL SIGNALS
    CData/*0:0*/ __PVT__areset_r;
    CData/*2:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state;
    CData/*0:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_load;
    CData/*0:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_r;
    CData/*0:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_ns;
    CData/*0:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_r;
    CData/*0:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_out_sel_next_ns;
    IData/*31:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__data_out;
    IData/*31:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r1_data;
    QData/*63:0*/ __PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__r0_data;
    
    // LOCAL VARIABLES
    CData/*0:0*/ __Vtablechg1[256];
    CData/*0:0*/ __Vtablechg2[256];
    static CData/*2:0*/ __Vtable1___PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state[256];
    static CData/*2:0*/ __Vtable2___PVT__gen_downsizer_conversion__DOT__axisc_downsizer_0__DOT__state[256];
    
    // INTERNAL VARIABLES
  private:
    Vfinn_design_wrapper__Syms* __VlSymsp;  // Symbol table
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5);  ///< Copying not allowed
  public:
    Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5(const char* name = "TOP");
    ~Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5();
    
    // INTERNAL METHODS
    void __Vconfigure(Vfinn_design_wrapper__Syms* symsp, bool first);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    void _initial__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__1(Vfinn_design_wrapper__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__3(Vfinn_design_wrapper__Syms* __restrict vlSymsp);
    void _sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__5(Vfinn_design_wrapper__Syms* __restrict vlSymsp);
    void _sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__4(Vfinn_design_wrapper__Syms* __restrict vlSymsp);
    void _sequent__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__6(Vfinn_design_wrapper__Syms* __restrict vlSymsp);
    void _settle__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst__7(Vfinn_design_wrapper__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    void _settle__TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst__8(Vfinn_design_wrapper__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
