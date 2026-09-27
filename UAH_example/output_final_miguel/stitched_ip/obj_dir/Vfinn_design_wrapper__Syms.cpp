// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vfinn_design_wrapper__Syms.h"
#include "Vfinn_design_wrapper.h"
#include "Vfinn_design_wrapper_axis_dwidth_converter_v1_1_26_axis_dwidth_converter__pi5.h"



// FUNCTIONS
Vfinn_design_wrapper__Syms::Vfinn_design_wrapper__Syms(Vfinn_design_wrapper* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_didInit(false)
    // Setup submodule names
    , TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst(Verilated::catName(topp->name(), "finn_design_wrapper.finn_design_i.StreamingDataWidthConverter_Batch_0.dwc.inst"))
    , TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst(Verilated::catName(topp->name(), "finn_design_wrapper.finn_design_i.StreamingDataWidthConverter_Batch_1.dwc.inst"))
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    TOPp->__PVT__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst = &TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst;
    TOPp->__PVT__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst = &TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst;
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
    TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_0__DOT__dwc__DOT__inst.__Vconfigure(this, true);
    TOP__finn_design_wrapper__DOT__finn_design_i__DOT__StreamingDataWidthConverter_Batch_1__DOT__dwc__DOT__inst.__Vconfigure(this, false);
}
