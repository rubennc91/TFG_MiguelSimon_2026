// Diagnóstico 2 de la cámara: ¿llegan tramas al reductor? Prueba (A) imagen normal, (B) barras de color del sensor, (C) registros del sensor,
// (D) reiniciar el receptor MIPI con el sensor ya emitiendo. Cada captura espera como máximo 2 s (nunca se cuelga). UART a 115200 8N1.
#include "xparameters.h"
#include "xil_printf.h"
#include "ov5640/OV5640.h"
#include "ov5640/ScuGicInterruptController.h"
#include "ov5640/PS_GPIO.h"
#include "ov5640/AXI_IIC.h"
#include "MIPI_D_PHY_RX.h"
#include "MIPI_CSI_2_RX.h"
#include "xaxidma.h"
#include "xaxis_switch.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "sleep.h"

#define IMG_ADDR (XPAR_DDR_MEM_BASEADDR + 0x0B000000)
#define IMG_BYTES 2304
#define GAMMA_BASE_ADDR XPAR_AXI_GAMMACORRECTION_1_BASEADDR
using namespace digilent;
static XAxiDma dma_img, dma_out;
static XAxis_Switch sw_cam, sw_red;

static void conmutar(XAxis_Switch& s, int mi) { XAxisScr_RegUpdateDisable(&s); XAxisScr_MiPortDisableAll(&s); XAxisScr_MiPortEnable(&s, mi, 0); XAxisScr_RegUpdateEnable(&s); }
static void iniciar_dma(XAxiDma& d, u32 id) { XAxiDma_Config* c = XAxiDma_LookupConfig(id); XAxiDma_CfgInitialize(&d, c); XAxiDma_IntrDisable(&d, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA); }
static void iniciar_switch(XAxis_Switch& s, u32 id, int mi) { XAxis_Switch_Config* c = XAxisScr_LookupConfig(id); XAxisScr_CfgInitialize(&s, c, c->BaseAddress); conmutar(s, mi); }

static void rx(bool on) {   // receptor MIPI (CSI-2 + D-PHY): apagado/reset o habilitado
    u32 v = on ? CR_ENABLE_MASK : (CR_RESET_MASK & ~CR_ENABLE_MASK);
    MIPI_CSI_2_RX_mWriteReg(XPAR_MIPI_CSI_2_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, v);
    MIPI_D_PHY_RX_mWriteReg(XPAR_MIPI_D_PHY_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, v);
}

static bool captura(const char* et) {
    u8* p = (u8*)IMG_ADDR; for (int i = 0; i < IMG_BYTES; i++) p[i] = 0xAA;
    Xil_DCacheFlushRange(IMG_ADDR, IMG_BYTES);
    XAxiDma_SimpleTransfer(&dma_img, IMG_ADDR, IMG_BYTES, XAXIDMA_DEVICE_TO_DMA);
    conmutar(sw_red, 0);
    XTime t0, t; XTime_GetTime(&t0); bool ok = false;
    do { if (!XAxiDma_Busy(&dma_img, XAXIDMA_DEVICE_TO_DMA)) { ok = true; break; } XTime_GetTime(&t); } while ((t - t0) < 2 * COUNTS_PER_SECOND);
    if (!ok) { XAxiDma_Reset(&dma_img); XAxiDma_CfgInitialize(&dma_img, XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID)); XAxiDma_IntrDisable(&dma_img, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA); }
    conmutar(sw_red, 1);
    Xil_DCacheInvalidateRange(IMG_ADDR, IMG_BYTES);
    unsigned mn = 255, mx = 0, suma = 0, sinAA = 0;
    for (int i = 0; i < IMG_BYTES; i++) { unsigned b = p[i]; if (b < mn) mn = b; if (b > mx) mx = b; suma += b; if (b != 0xAA) sinAA++; }
    xil_printf("  %s: %s | bytes distintos de 0xAA: %u/%d  min=%u max=%u media=%u | 1os: %02x %02x %02x %02x %02x %02x\r\n", et,
               ok ? "TRAMA RECIBIDA" : "SIN TRAMA (2 s)", sinAA, IMG_BYTES, mn, mx, suma / IMG_BYTES, p[0], p[1], p[2], p[3], p[4], p[5]);
    return ok;
}

int main() {
    xil_printf("\r\n=== DIAGNOSTICO 2: ¿llegan tramas? ===\r\n");
    ScuGicInterruptController irpt_ctl(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    PS_GPIO<ScuGicInterruptController> gpio(XPAR_PS7_GPIO_0_DEVICE_ID, irpt_ctl, XPAR_PS7_GPIO_0_INTR);
    AXI_IIC iic(XPAR_AXI_IIC_0_BASEADDR);
    OV5640 cam(iic, gpio);
    iniciar_dma(dma_img, XPAR_AXIDMA_0_DEVICE_ID); iniciar_dma(dma_out, XPAR_AXIDMA_1_DEVICE_ID);
    iniciar_switch(sw_cam, XPAR_AXIS_SWITCH_0_DEVICE_ID, 1); iniciar_switch(sw_red, XPAR_AXIS_SWITCH_1_DEVICE_ID, 1);
    rx(false); cam.reset(); Xil_Out32(GAMMA_BASE_ADDR, 3); cam.init(); rx(true);
    cam.set_mode(OV5640_cfg::mode_t::MODE_720P_1280_720_60fps); cam.set_awb(OV5640_cfg::awb_t::AWB_ADVANCED);
    xil_printf("camara configurada en 720p60; esperando 2 s a que arranque el flujo...\r\n"); sleep(2);

    xil_printf("[A] imagen normal (3 capturas)\r\n"); for (int i = 0; i < 3; i++) captura("normal");
    xil_printf("[B] barras de color del sensor (3 capturas)\r\n");
    cam.set_test(OV5640_cfg::test_t::TEST_EIGHT_COLOR_BAR); sleep(1); for (int i = 0; i < 3; i++) captura("barras");
    cam.set_test(OV5640_cfg::test_t::TEST_DISABLED);
    xil_printf("[C] registros del sensor\r\n");
    const uint16_t regs[] = {0x3008, 0x300E, 0x4800, 0x4202, 0x3034, 0x3035, 0x3036, 0x3037, 0x3108, 0x4300, 0x501F, 0x503D, 0x5000, 0x5001, 0x3808, 0x3809, 0x380A, 0x380B, 0x380C, 0x380D, 0x380E, 0x380F};
    for (unsigned i = 0; i < sizeof(regs) / sizeof(regs[0]); i++) { uint8_t v = 0xEE; cam.readReg(regs[i], v); xil_printf("  [%04x]=%02x\r\n", regs[i], v); }
    xil_printf("[D] reiniciar el receptor MIPI con el sensor emitiendo\r\n");
    rx(false); usleep(100000); rx(true); usleep(500000); for (int i = 0; i < 3; i++) captura("tras reiniciar rx");
    xil_printf("=== FIN ===\r\n");
    while (1) usleep(1000000);
}
