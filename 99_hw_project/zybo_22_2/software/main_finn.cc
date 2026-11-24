// Software de la ARM (Zybo Z7) para el diseño sin HDMI con reductor + IP de FINN.
//   cámara OV5640 (720p60) -> ... -> axis_switch_0 -> reductor 32x24 -> axis_switch_1 -> { DMA0 (captura de depuración) | FINN -> DMA1 }
// FINN trabaja de forma continua: cada trama de la cámara produce 4 bytes (2 x int16 con signo: v, w en forma entera) que el DMA1 recoge.
// La CPU los reescala con Mul/Add del modelo padre (finn_params_*.h) y los entrega por UART.
// Compilar con -DRED_CNN o -DRED_MLP (elige las constantes de reescalado).
#include "xparameters.h"
#include "platform/platform.h"
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
#include "xuartps_hw.h"

#if defined(RED_CNN)
#include "finn_params_cnn.h"
#elif defined(RED_MLP)
#include "finn_params_mlp.h"
#else
#error "definir RED_CNN o RED_MLP"
#endif

#define IMG_BYTES        2304          // 32 x 24 x 3
#define OUT_BYTES        4             // dos palabras int16 con signo (TDATA de 16 bits del IP): v y w en forma entera
#define IRPT_CTL_DEVID   XPAR_PS7_SCUGIC_0_DEVICE_ID
#define GPIO_DEVID       XPAR_PS7_GPIO_0_DEVICE_ID
#define GPIO_IRPT_ID     XPAR_PS7_GPIO_0_INTR
#define CAM_I2C_BASE     XPAR_AXI_IIC_0_BASEADDR      // el I2C de la cámara es el AXI IIC de este diseño (no el de la PS)
#define GAMMA_BASE_ADDR  XPAR_AXI_GAMMACORRECTION_1_BASEADDR
#define DMA_IMG_DEVID    XPAR_AXIDMA_0_DEVICE_ID      // axi_dma_0: captura de la imagen reducida (con TLAST)
#define DMA_OUT_DEVID    XPAR_AXIDMA_1_DEVICE_ID      // axi_dma_1: salida del IP de FINN
#define SW_CAM_DEVID     XPAR_AXIS_SWITCH_0_DEVICE_ID // M0 = VDMA (no se usa), M1 = reductor
#define SW_RED_DEVID     XPAR_AXIS_SWITCH_1_DEVICE_ID // M0 = DMA0, M1 = FINN
#define DDR_BASE         XPAR_DDR_MEM_BASEADDR
#define IMG_ADDR         (DDR_BASE + 0x0B000000)
#define OUT_ADDR         (DDR_BASE + 0x0B100000)

using namespace digilent;

static XAxiDma dma_img, dma_out;
static XAxis_Switch sw_cam, sw_red;

static void conmutar(XAxis_Switch& s, int mi_activo) {   // enruta la entrada 0 solo hacia la salida indicada (cambia al acabar el paquete)
    XAxisScr_RegUpdateDisable(&s);
    XAxisScr_MiPortDisableAll(&s);
    XAxisScr_MiPortEnable(&s, mi_activo, 0);
    XAxisScr_RegUpdateEnable(&s);
}

static void iniciar_dma(XAxiDma& d, u32 id) {
    XAxiDma_Config* c = XAxiDma_LookupConfig(id);
    XAxiDma_CfgInitialize(&d, c);
    XAxiDma_IntrDisable(&d, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
}

static void iniciar_switch(XAxis_Switch& s, u32 id, int mi_activo) {
    XAxis_Switch_Config* c = XAxisScr_LookupConfig(id);
    XAxisScr_CfgInitialize(&s, c, c->BaseAddress);
    conmutar(s, mi_activo);
}

static void camara_720p(OV5640& cam) {
    MIPI_CSI_2_RX_mWriteReg(XPAR_MIPI_CSI_2_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, (CR_RESET_MASK & ~CR_ENABLE_MASK));
    MIPI_D_PHY_RX_mWriteReg(XPAR_MIPI_D_PHY_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, (CR_RESET_MASK & ~CR_ENABLE_MASK));
    cam.reset();
    Xil_Out32(GAMMA_BASE_ADDR, 3);                       // gamma 1/1,8 (igual que el diseño original; opción 'g' para cambiarlo)
    cam.init();
    MIPI_CSI_2_RX_mWriteReg(XPAR_MIPI_CSI_2_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, CR_ENABLE_MASK);
    MIPI_D_PHY_RX_mWriteReg(XPAR_MIPI_D_PHY_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, CR_ENABLE_MASK);
    cam.set_mode(OV5640_cfg::mode_t::MODE_720P_1280_720_60fps);   // el reductor espera 1280x720
    cam.set_awb(OV5640_cfg::awb_t::AWB_ADVANCED);
}

// ---- inferencia continua --------------------------------------------------------------------------
static bool armado = false;
static s16 ultimo[2] = {0, 0};
static u32 n_res = 0;                                    // resultados recibidos

static void armar() {
    XAxiDma_SimpleTransfer(&dma_out, OUT_ADDR, OUT_BYTES, XAXIDMA_DEVICE_TO_DMA);
    armado = true;
}

static bool sondear() {                                  // true si ha llegado un resultado nuevo; deja siempre el DMA armado
    if (!armado) armar();
    if (XAxiDma_Busy(&dma_out, XAXIDMA_DEVICE_TO_DMA)) return false;
    Xil_DCacheInvalidateRange(OUT_ADDR, 32);
    const s16* p = (const s16*)OUT_ADDR;
    ultimo[0] = p[0]; ultimo[1] = p[1]; n_res++;
    armar();
    return true;
}

static void decodificar(float& v, float& w) {
    float vn = ultimo[0] * FINN_MUL + FINN_ADD[0], wn = ultimo[1] * FINN_MUL + FINN_ADD[1];
    vn = vn < 0 ? 0 : (vn > 1 ? 1 : vn); wn = wn < 0 ? 0 : (wn > 1 ? 1 : wn);   // satura a [0,1] como el servidor del simulador
    v = vn * (V_MAX - V_MIN) + V_MIN; w = wn * (W_MAX - W_MIN) + W_MIN;
}

static void imprimir(const char* pre) {
    float v, w; decodificar(v, w);
    xil_printf("%s q=%d,%d v=%d.%03d m/s w=%s%d.%03d rad/s (n=%u)\r\n", pre, (int)ultimo[0], (int)ultimo[1],
               (int)v, (int)((v < 0 ? -v : v) * 1000) % 1000, w < 0 ? "-" : "", (int)(w < 0 ? -w : w),
               (int)((w < 0 ? -w : w) * 1000) % 1000, n_res);
}

static void capturar_imagen() {                          // para comparar con capture_hls.py (32x24 entrelazado RGB o plano, según la red)
    XAxiDma_SimpleTransfer(&dma_img, IMG_ADDR, IMG_BYTES, XAXIDMA_DEVICE_TO_DMA);
    conmutar(sw_red, 0);                                 // reductor -> DMA0
    for (u32 t = 0; XAxiDma_Busy(&dma_img, XAXIDMA_DEVICE_TO_DMA); ) { if (++t > 50000000) { xil_printf("tiempo agotado en DMA0\r\n"); break; } }
    conmutar(sw_red, 1);                                 // de vuelta a FINN
    Xil_DCacheInvalidateRange(IMG_ADDR, IMG_BYTES);
    const u8* p = (const u8*)IMG_ADDR;
    xil_printf("IMG_START\r\n");
    for (int k = 0; k < IMG_BYTES; k++) xil_printf("%02X", p[k]);
    xil_printf("\r\nIMG_END\r\n");
}

static void menu() {
    xil_printf("\r\n\r\nFINN %s - opciones:", "ZYBO");
    xil_printf("\r\n  r. Activar/desactivar salida continua (v,w)");
    xil_printf("\r\n  m. Mostrar la última inferencia");
    xil_printf("\r\n  i. Capturar y enviar la imagen reducida 32x24 (IMG_START ... IMG_END)");
    xil_printf("\r\n  g. Factor gamma (1..5)");
    xil_printf("\r\n  +/-. Frecuencia de la salida continua (1..30 Hz)");
    xil_printf("\r\n  s. Estadísticas (resultados por segundo)\r\n");
}

int main() {
    init_platform();
    ScuGicInterruptController irpt_ctl(IRPT_CTL_DEVID);
    PS_GPIO<ScuGicInterruptController> gpio_driver(GPIO_DEVID, irpt_ctl, GPIO_IRPT_ID);
    AXI_IIC iic_driver(CAM_I2C_BASE);
    OV5640 cam(iic_driver, gpio_driver);

    iniciar_dma(dma_img, DMA_IMG_DEVID);
    iniciar_dma(dma_out, DMA_OUT_DEVID);
    iniciar_switch(sw_cam, SW_CAM_DEVID, 1);             // cámara -> reductor (el VDMA queda aislado)
    iniciar_switch(sw_red, SW_RED_DEVID, 1);             // reductor -> FINN
    armar();
    menu();
    camara_720p(cam);
    xil_printf("Cámara iniciada (720p60).\r\n");

    bool continuo = false; u32 hz = 10; XTime t_sal = 0, t_est = 0; u32 n_est = 0;
    XTime_GetTime(&t_est);
    while (1) {
        sondear();
        XTime ahora; XTime_GetTime(&ahora);
        if (continuo && (ahora - t_sal) * hz >= COUNTS_PER_SECOND) { t_sal = ahora; imprimir("R"); }
        if (!XUartPs_IsReceiveData(STDIN_BASEADDRESS)) continue;
        u8 c = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
        switch (c) {
        case 'r': continuo = !continuo; xil_printf("salida continua %s a %u Hz\r\n", continuo ? "activada" : "desactivada", hz); break;
        case 'm': imprimir("M"); break;
        case 'i': capturar_imagen(); break;
        case '+': if (hz < 30) hz++; xil_printf("%u Hz\r\n", hz); break;
        case '-': if (hz > 1) hz--; xil_printf("%u Hz\r\n", hz); break;
        case 'g': {
            xil_printf("gamma: 1=1, 2=1/1.2, 3=1/1.5, 4=1/1.8, 5=1/2.2\r\n");
            u8 k = XUartPs_RecvByte(STDIN_BASEADDRESS) - '0';
            if (k > 0 && k < 6) { Xil_Out32(GAMMA_BASE_ADDR, k - 1); xil_printf("gamma %u\r\n", k); }
            break; }
        case 's': { XTime t; XTime_GetTime(&t); float seg = (float)(t - t_est) / COUNTS_PER_SECOND;
            xil_printf("%u resultados en %d s (%d por segundo)\r\n", n_res - n_est, (int)seg, (int)((n_res - n_est) / (seg > 0 ? seg : 1)));
            n_est = n_res; t_est = t; break; }
        default: break;
        }
    }
    cleanup_platform();
    return 0;
}
