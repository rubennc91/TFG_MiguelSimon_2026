// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vfinn_design_wrapper.h for the primary calling header

#include "verilated.h"

#include "Vfinn_design_wrapper__Syms.h"
#include "Vfinn_design_wrapper___024root.h"

void Vfinn_design_wrapper___024root____Vthread__eval__0(void* voidSelf, bool even_cycle);
void Vfinn_design_wrapper___024root____Vthread__eval__1(void* voidSelf, bool even_cycle);
void Vfinn_design_wrapper___024root____Vthread__eval__2(void* voidSelf, bool even_cycle);
void Vfinn_design_wrapper___024root____Vthread__eval__3(void* voidSelf, bool even_cycle);

void Vfinn_design_wrapper___024root___eval(Vfinn_design_wrapper___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vfinn_design_wrapper__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper___024root___eval\n"); );
    // Body
    vlSymsp->__Vm_even_cycle = !vlSymsp->__Vm_even_cycle;
    vlSymsp->__Vm_threadPoolp->workerp(0)->addTask(&Vfinn_design_wrapper___024root____Vthread__eval__0, vlSelf, vlSymsp->__Vm_even_cycle);
    vlSymsp->__Vm_threadPoolp->workerp(1)->addTask(&Vfinn_design_wrapper___024root____Vthread__eval__1, vlSelf, vlSymsp->__Vm_even_cycle);
    vlSymsp->__Vm_threadPoolp->workerp(2)->addTask(&Vfinn_design_wrapper___024root____Vthread__eval__2, vlSelf, vlSymsp->__Vm_even_cycle);
    Vfinn_design_wrapper___024root____Vthread__eval__3(vlSelf, vlSymsp->__Vm_even_cycle);
    Verilated::mtaskId(0);
    vlSelf->__Vm_mtaskstate_final.waitUntilUpstreamDone(vlSymsp->__Vm_even_cycle);
    // Final
    vlSelf->__Vclklast__TOP__ap_clk = vlSelf->ap_clk;
    vlSelf->__Vclklast__TOP__ap_rst_n = vlSelf->ap_rst_n;
}

void Vfinn_design_wrapper___024root___sequent__TOP__7(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__20(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__24(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__28(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__26(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__30(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__32(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__15(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__47(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__39(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__43(Vfinn_design_wrapper___024root* vlSelf);

void Vfinn_design_wrapper___024root____Vthread__eval__0(void* voidSelf, bool even_cycle) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper___024root____Vthread__eval__0\n"); );
    // Body
    Vfinn_design_wrapper___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfinn_design_wrapper___024root*>(voidSelf);
    Vfinn_design_wrapper__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Verilated::mtaskId(10);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__7(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_11.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_16.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_20.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_5.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_9.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(6);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__20(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_34.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_12.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(13);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__24(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_28.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_24.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(24);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__28(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_15.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(15);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__26(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_12.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_27.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(27);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__30(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_12.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_29.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(29);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__32(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_33.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(33);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__15(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_41.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_19.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(19);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__47(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_23.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(23);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__39(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_36.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_37.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_39.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(38);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__43(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_final.signalUpstreamDone(even_cycle);
}

void Vfinn_design_wrapper___024root___sequent__TOP__8(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__11(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__16(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__21(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__38(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__46(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__40(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___combo__TOP__3(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__41(Vfinn_design_wrapper___024root* vlSelf);

void Vfinn_design_wrapper___024root____Vthread__eval__1(void* voidSelf, bool even_cycle) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper___024root____Vthread__eval__1\n"); );
    // Body
    Vfinn_design_wrapper___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfinn_design_wrapper___024root*>(voidSelf);
    Vfinn_design_wrapper__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSelf->__Vm_mtaskstate_11.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(11);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__8(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_8.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(21);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__11(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_31.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_32.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_33.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_17.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(35);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__16(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_23.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(7);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__21(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_17.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_22.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(22);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__38(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_39.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_40.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_19.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(18);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__46(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_36.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(36);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__40(vlSelf);
    }
    Vfinn_design_wrapper___024root___combo__TOP__3(vlSelf);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__41(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_final.signalUpstreamDone(even_cycle);
}

void Vfinn_design_wrapper___024root___sequent__TOP__10(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__9(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__12(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__25(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__33(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__34(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__37(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__22(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__14(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__45(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__44(Vfinn_design_wrapper___024root* vlSelf);

void Vfinn_design_wrapper___024root____Vthread__eval__2(void* voidSelf, bool even_cycle) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper___024root____Vthread__eval__2\n"); );
    // Body
    Vfinn_design_wrapper___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfinn_design_wrapper___024root*>(voidSelf);
    Vfinn_design_wrapper__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSelf->__Vm_mtaskstate_20.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(20);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__10(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_15.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_25.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_16.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(16);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__9(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_15.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(26);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__12(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_14.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(14);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__25(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_27.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_28.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_29.signalUpstreamDone(even_cycle);
    Verilated::mtaskId(30);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__33(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_34.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(34);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__34(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_12.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(12);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__37(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_8.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(8);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__22(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_17.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_32.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(32);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__14(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_41.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_23.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_40.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(40);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__45(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_39.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(39);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__44(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_final.signalUpstreamDone(even_cycle);
}

void Vfinn_design_wrapper___024root___sequent__TOP__17(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___combo__TOP__0(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__18(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___combo__TOP__1(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__19(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__23(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__29(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__31(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__13(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__27(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__35(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___combo__TOP__2(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__36(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___combo__TOP__4(Vfinn_design_wrapper___024root* vlSelf);
void Vfinn_design_wrapper___024root___sequent__TOP__42(Vfinn_design_wrapper___024root* vlSelf);

void Vfinn_design_wrapper___024root____Vthread__eval__3(void* voidSelf, bool even_cycle) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vfinn_design_wrapper___024root____Vthread__eval__3\n"); );
    // Body
    Vfinn_design_wrapper___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vfinn_design_wrapper___024root*>(voidSelf);
    Vfinn_design_wrapper__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSelf->__Vm_mtaskstate_5.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(5);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__17(vlSelf);
    }
    Vfinn_design_wrapper___024root___combo__TOP__0(vlSelf);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__18(vlSelf);
    }
    Vfinn_design_wrapper___024root___combo__TOP__1(vlSelf);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__19(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_24.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_9.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(9);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__23(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_14.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_15.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_24.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_34.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_25.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(25);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__29(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_28.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(28);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__31(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_22.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_23.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_31.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(31);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__13(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_23.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_17.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(17);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__27(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_23.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_41.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(41);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__35(vlSelf);
    }
    Vfinn_design_wrapper___024root___combo__TOP__2(vlSelf);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__36(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_39.signalUpstreamDone(even_cycle);
    vlSelf->__Vm_mtaskstate_37.waitUntilUpstreamDone(even_cycle);
    Verilated::mtaskId(37);
    Vfinn_design_wrapper___024root___combo__TOP__4(vlSelf);
    if (((IData)(vlSelf->ap_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__ap_clk)))) {
        Vfinn_design_wrapper___024root___sequent__TOP__42(vlSelf);
    }
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    vlSelf->__Vm_mtaskstate_final.signalUpstreamDone(even_cycle);
}
