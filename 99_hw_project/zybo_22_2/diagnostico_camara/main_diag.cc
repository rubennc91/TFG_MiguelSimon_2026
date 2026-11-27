// Diagnóstico mínimo de la cámara (Pcam 5C, OV5640) en la Zybo Z7 con el diseño system_v2 (AXI IIC + GPIO EMIO 54 como alimentación/reset).
// No usa la cámara ni FINN: solo (1) ciclo de alimentación por GPIO, (2) escaneo I2C con tiempos de espera (nunca se cuelga) y (3) lectura del ID si responde 0x3C.
// Salida por la UART a 115200 8N1. Se compila con compilar_diag.sh.
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpiops.h"
#include "xiic_l.h"
#include "sleep.h"

#define IIC XPAR_AXI_IIC_0_BASEADDR
#define R_SOFTR 0x040
#define R_ISR   0x020
#define R_CR    0x100
#define R_SR    0x104
#define R_TX    0x108
#define R_RX    0x10C
#define R_TXOCY 0x114
#define R_RXOCY 0x118
#define PIN_CAM 54

static void iic_reset() { Xil_Out32(IIC + R_SOFTR, 0xA); usleep(100); Xil_Out32(IIC + R_CR, 0x01); usleep(100); Xil_Out32(IIC + R_ISR, Xil_In32(IIC + R_ISR)); }
static void estado(const char* t) { xil_printf("  %s: CR=%02x SR=%02x ISR=%02x TXOCY=%x RXOCY=%x\r\n", t, (unsigned)Xil_In32(IIC + R_CR), (unsigned)Xil_In32(IIC + R_SR), (unsigned)Xil_In32(IIC + R_ISR), (unsigned)Xil_In32(IIC + R_TXOCY), (unsigned)Xil_In32(IIC + R_RXOCY)); }

// 1 si el esclavo contesta (ACK) a una escritura de 1 byte; 0 si NACK; -1 si el bus no se libera (tiempo de espera)
static int sondear(unsigned dir) {
    iic_reset();
    int n = 0; while ((Xil_In32(IIC + R_SR) & 0x04) && n++ < 2000) usleep(10);   // BB: bus ocupado
    if (Xil_In32(IIC + R_SR) & 0x04) return -1;
    Xil_Out32(IIC + R_TX, 0x100 | (dir << 1));        // START + dirección + escritura
    Xil_Out32(IIC + R_TX, 0x200 | 0x00);              // dato y STOP
    usleep(3000);
    unsigned isr = Xil_In32(IIC + R_ISR);
    n = 0; while ((Xil_In32(IIC + R_SR) & 0x04) && n++ < 2000) usleep(10);
    if (Xil_In32(IIC + R_SR) & 0x04) { iic_reset(); return -1; }
    return (isr & 0x2) ? 0 : 1;                       // bit 1 = error de transmisión (NACK)
}

int main() {
    xil_printf("\r\n=== DIAGNOSTICO CAMARA ===\r\n");
    XGpioPs g; XGpioPs_Config* c = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    XGpioPs_CfgInitialize(&g, c, c->BaseAddr);
    XGpioPs_SetDirectionPin(&g, PIN_CAM, 1); XGpioPs_SetOutputEnablePin(&g, PIN_CAM, 1);
    xil_printf("[1] GPIO %d (alimentacion/reset de la camara): ciclo 0 -> 1\r\n", PIN_CAM);
    XGpioPs_WritePin(&g, PIN_CAM, 0); sleep(1); xil_printf("  a 0, leido %d\r\n", (int)XGpioPs_ReadPin(&g, PIN_CAM));
    XGpioPs_WritePin(&g, PIN_CAM, 1); sleep(1); xil_printf("  a 1, leido %d\r\n", (int)XGpioPs_ReadPin(&g, PIN_CAM));

    xil_printf("[2] AXI IIC en %08x\r\n", (unsigned)IIC); iic_reset(); estado("tras reset");
    xil_printf("[3] Escaneo I2C 0x08..0x77 (1 = contesta)\r\n");
    int hallados = 0;
    for (unsigned a = 0x08; a <= 0x77; a++) {
        int r = sondear(a);
        if (r == 1) { xil_printf("  ACK en 0x%02x\r\n", a); hallados++; }
        else if (r < 0) { xil_printf("  0x%02x: el bus no se libera (SDA o SCL atascados?)\r\n", a); estado("estado"); break; }
    }
    xil_printf("  direcciones que contestan: %d\r\n", hallados);
    if (sondear(0x3C) == 1) {                                   // OV5640: ID en 0x300A/0x300B (0x56, 0x40)
        iic_reset();
        uint8_t ra[2] = {0x30, 0x0A}, id[2] = {0, 0};
        unsigned e = XIic_DynSend(IIC, 0x3C, ra, 2, XIIC_STOP);
        xil_printf("[4] escritura de la direccion de registro: %u bytes\r\n", e);
        // lectura con tiempo de espera propio (no usa XIic_DynRecv, que se cuelga sin respuesta)
        Xil_Out32(IIC + R_TX, 0x101 | (0x3C << 1)); Xil_Out32(IIC + R_TX, 0x200 | 2);
        for (int i = 0; i < 2; i++) { int n = 0; while ((Xil_In32(IIC + R_SR) & 0x40) && n++ < 5000) usleep(10); id[i] = (uint8_t)Xil_In32(IIC + R_RX); }
        xil_printf("  ID leido: %02x %02x (esperado 56 40)\r\n", id[0], id[1]);
    } else xil_printf("[4] 0x3C no contesta: no se lee el ID\r\n");
    xil_printf("=== FIN ===\r\n");
    while (1) usleep(1000000);
    return 0;
}
