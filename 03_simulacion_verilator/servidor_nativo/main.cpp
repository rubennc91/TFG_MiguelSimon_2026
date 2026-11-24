// Servidor UDP nativo del IP de FINN (stitched IP) simulado con Verilator. Mismo protocolo que servidor_q.py / servidor_finn_rtlsim.py:
//   2304 bytes uint8 (imagen 32x24 RGB planar, lo que da el reductor sin tabla) -> 2 float32 (v, w).
// Hace lo que hará el hardware: tabla del reductor (byte -> q), envío por AXI-Stream (CNN: 24 bits = 1 píxel RGB por palabra, entrelazado;
// MLP: 32 bits = 4 valores planares de 7 bits por palabra), 2 palabras de salida de 16 bits con signo (INT16: v y w en forma entera), y en la CPU Mul/Add, saturación y v, w.
// Compilar con -DRED_CNN o -DRED_MLP (construir.sh). La CPU tendría el mismo código (software/main_finn.cc).
#include <verilated.h>
#include "Vfinn_design_wrapper.h"
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <chrono>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>
#if defined(RED_CNN)
#include "finn_params_cnn.h"
#elif defined(RED_MLP)
#include "finn_params_mlp.h"
#else
#error "definir RED_CNN o RED_MLP"
#endif
#include "tabla_q.h"

#ifndef ELEM_BITS
#define ELEM_BITS 8                  // bits por elemento en el flujo de entrada: 8 si el IP se generó con la entrada UINT8 (bytes del reductor); 7 si fue UINT7
#endif
static const int BYTES = 2304, MAX_CICLOS = 2000000;
#ifdef RED_CNN
static const int PALABRAS = 768;     // 32x24 píxeles, 3 elementos de 7 bits por palabra (21 bits en 24)
#else
static const int PALABRAS = 576;     // 2304 / 4 (32 bits)
#endif

static Vfinn_design_wrapper* top;
static uint64_t ciclos_total = 0;
static int ultimo_raw[2];

static inline void tick() { top->ap_clk = 0; top->eval(); top->ap_clk = 1; top->eval(); ciclos_total++; }

static void reiniciar() {
    top->ap_rst_n = 0; top->s_axis_0_tvalid = 0; top->s_axis_0_tdata = 0; top->m_axis_0_tready = 1;
    for (int i = 0; i < 20; i++) tick();
    top->ap_rst_n = 1;
    for (int i = 0; i < 20; i++) tick();
}

// palabra k de la entrada a partir de la imagen planar (3, 24, 32) ya pasada por la tabla. Los elementos son UINT7 y FINN los empaqueta
// con el paso de su tipo (ELEM_BITS; el primero en los bits bajos); el resto hasta el ancho del flujo (24 / 32 bits) queda a 0.
static uint32_t palabra(const uint8_t* q, int k) {
#ifdef RED_CNN
    const int r = k / 32, c = k % 32, plano = 24 * 32;      // píxel (r, c): R en el byte bajo
    return (uint32_t)q[r * 32 + c] | ((uint32_t)q[plano + r * 32 + c] << ELEM_BITS) | ((uint32_t)q[2 * plano + r * 32 + c] << (2 * ELEM_BITS));
#else
    return (uint32_t)q[4 * k] | ((uint32_t)q[4 * k + 1] << ELEM_BITS) | ((uint32_t)q[4 * k + 2] << (2 * ELEM_BITS)) | ((uint32_t)q[4 * k + 3] << (3 * ELEM_BITS));
#endif
}

static bool inferir(const uint8_t* img, float& v, float& w, int& ciclos) {
    uint8_t q[BYTES]; for (int i = 0; i < BYTES; i++) q[i] = TABLA_Q[img[i]];
    int enviadas = 0, c0 = 0, recibido = 0; int16_t salida[2] = {0, 0}; top->m_axis_0_tready = 1;
    while ((enviadas < PALABRAS || recibido < 2) && c0 < MAX_CICLOS) {
        const bool hay = enviadas < PALABRAS;
        top->s_axis_0_tvalid = hay; top->s_axis_0_tdata = hay ? palabra(q, enviadas) : 0;
        top->ap_clk = 0; top->eval();                          // propaga las entradas antes de mirar tready / tvalid (que pueden depender de ellas)
        const bool acepta = hay && top->s_axis_0_tready;
        if (enviadas >= PALABRAS && top->m_axis_0_tvalid && top->m_axis_0_tready && recibido < 2)   // la salida es válida solo tras entrar la imagen entera
            salida[recibido++] = (int16_t)(top->m_axis_0_tdata & 0xFFFF);
        top->ap_clk = 1; top->eval(); ciclos_total++; c0++;
        if (acepta) enviadas++;
    }
    top->s_axis_0_tvalid = 0; top->s_axis_0_tdata = 0; ciclos = c0;
    if (recibido < 2) return false;
    ultimo_raw[0] = salida[0]; ultimo_raw[1] = salida[1];
    float vn = salida[0] * FINN_MUL + FINN_ADD[0], wn = salida[1] * FINN_MUL + FINN_ADD[1];
    vn = vn < 0 ? 0 : (vn > 1 ? 1 : vn); wn = wn < 0 ? 0 : (wn > 1 ? 1 : wn);
    v = V_MIN + vn * (V_MAX - V_MIN); w = W_MIN + wn * (W_MAX - W_MIN);
    return true;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    int puerto = argc > 1 ? atoi(argv[1]) : 5020;
    top = new Vfinn_design_wrapper; reiniciar();
    int s = socket(AF_INET, SOCK_DGRAM, 0); sockaddr_in a{}; a.sin_family = AF_INET; a.sin_addr.s_addr = INADDR_ANY; a.sin_port = htons(puerto);
    if (bind(s, (sockaddr*)&a, sizeof a) < 0) { perror("bind"); return 1; }
    printf("servidor FINN nativo (Verilator) en UDP %d, entrada %d bytes\n", puerto, BYTES); fflush(stdout);
    std::vector<uint8_t> buf(65536); int n = 0;
    while (true) {
        sockaddr_in de{}; socklen_t l = sizeof de;
        ssize_t m = recvfrom(s, buf.data(), buf.size(), 0, (sockaddr*)&de, &l);
        if (m != BYTES) continue;
        auto t0 = std::chrono::steady_clock::now(); float v = 0, w = 0; int ciclos = 0;
        bool ok = inferir(buf.data(), v, w, ciclos);
        double dt = std::chrono::duration<double>(std::chrono::steady_clock::now() - t0).count();
        if (!ok) { fprintf(stderr, "sin salida del IP tras %d ciclos\n", ciclos); continue; }
        float r[2] = {v, w}; sendto(s, r, sizeof r, 0, (sockaddr*)&de, l); n++;
        printf("[%5d] IP FINN: %d ciclos (%.2f ms a 100 MHz) | raw=%d,%d | v=%6.3f m/s w=%+6.3f rad/s | Verilator %.3f s\n", n, ciclos, ciclos / 1e5, ultimo_raw[0], ultimo_raw[1], v, w, dt); fflush(stdout);
    }
}
