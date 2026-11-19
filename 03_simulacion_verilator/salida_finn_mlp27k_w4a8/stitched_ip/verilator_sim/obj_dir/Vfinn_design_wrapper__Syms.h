// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VFINN_DESIGN_WRAPPER__SYMS_H_
#define _VFINN_DESIGN_WRAPPER__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vfinn_design_wrapper.h"

// SYMS CLASS
class Vfinn_design_wrapper__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vfinn_design_wrapper*          TOPp;
    
    // CREATORS
    Vfinn_design_wrapper__Syms(Vfinn_design_wrapper* topp, const char* namep);
    ~Vfinn_design_wrapper__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
