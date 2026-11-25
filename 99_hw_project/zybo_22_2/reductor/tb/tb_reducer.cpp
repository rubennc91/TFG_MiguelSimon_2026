// Banco de pruebas: manda una trama sintética 1280x720 (línea roja diagonal sobre fondo oscuro + ruido), compara con la media exacta
// por bloques y vuelca entrada/salida a /tmp para comparar con OpenCV (comprobar_reductor.py).
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include "../src/hls_image_reducer.h"
#if SALIDA_HWC
#define IDX(c, p) ((p) * 3 + (c))
#else
#define IDX(c, p) ((c) * PIXELS_OUT + (p))
#endif

static unsigned char R[IN_HEIGHT][IN_WIDTH], G[IN_HEIGHT][IN_WIDTH], B[IN_HEIGHT][IN_WIDTH];

int trama(hls::stream<stream_in_t>& in, hls::stream<stream_out_t>& out, unsigned semilla, int desp, int volcar) {
    unsigned s = semilla;
    for (int y = 0; y < IN_HEIGHT; y++) for (int x = 0; x < IN_WIDTH; x++) {
        s = s * 1664525u + 1013904223u;
        int ruido = (s >> 24) & 15;
        bool linea = std::abs(x - (300 + desp + y)) < 40;
        R[y][x] = linea ? 200 + ruido : 20 + ruido; G[y][x] = linea ? 10 + ruido : 20 + ruido; B[y][x] = 25 + ruido;
        if (x > 900 && y < 100) { R[y][x] = G[y][x] = B[y][x] = 255; }          // zona saturada: comprueba el redondeo en 255
    }
    for (int y = 0; y < IN_HEIGHT; y++) for (int x = 0; x < IN_WIDTH; x++) {
        stream_in_t v;
#if ENTRADA_ROJO_EN_ALTO
        v.data = (ap_uint<24>(R[y][x]) << 16) | (ap_uint<24>(G[y][x]) << 8) | B[y][x];
#else
        v.data = (ap_uint<24>(B[y][x]) << 16) | (ap_uint<24>(G[y][x]) << 8) | R[y][x];
#endif
        v.user = (x == 0 && y == 0); v.last = (x == IN_WIDTH - 1); v.keep = 7; v.strb = 7;
        in.write(v); hls_image_reducer(in, out);
    }
    for (int i = 0; i < 3 * PIXELS_OUT + 100; i++) hls_image_reducer(in, out);   // vaciar la salida
    if (out.size() != 3 * PIXELS_OUT) { printf("FALLO: %d bytes de salida (esperaba %d)\n", (int)out.size(), 3 * PIXELS_OUT); return 1; }
    static unsigned char sal[3 * PIXELS_OUT]; int maxdif = 0, n = 0;
    for (int i = 0; i < 3 * PIXELS_OUT; i++) {
        stream_out_t o = out.read(); sal[i] = o.data;
        if ((o.user == 1) != (i == 0) || (o.last == 1) != (i == 3 * PIXELS_OUT - 1)) { printf("FALLO: TUSER/TLAST en %d\n", i); return 1; }
    }
    for (int c = 0; c < 3; c++) for (int oy = 0; oy < OUT_HEIGHT; oy++) for (int ox = 0; ox < OUT_WIDTH; ox++) {
        long sum = 0;
#if REDUCCION_LINEAL
        const int y0 = 14, y1 = 15, n_pix = 4;
#else
        const int y0 = 0, y1 = BLOCK - 1, n_pix = BLOCK * BLOCK;
#endif
        for (int y = y0; y <= y1; y++) for (int x = y0; x <= y1; x++) {
            int yy = oy * BLOCK + y, xx = CROP_X0 + ox * BLOCK + x;
            sum += c == 0 ? R[yy][xx] : c == 1 ? G[yy][xx] : B[yy][xx];
        }
        int ref = (int)std::floor(sum / (double)n_pix + 0.5);
#if USAR_TABLA
        ref = TABLA_Q[ref];
#endif
        int d = std::abs(ref - sal[IDX(c, oy * OUT_WIDTH + ox)]);
        if (d > maxdif) maxdif = d; if (d) n++;
    }
    if (volcar) { char nom[64]; snprintf(nom, 64, "/tmp/reductor_entrada%d.rgb", volcar); FILE* f = fopen(nom, "wb");
    for (int y = 0; y < IN_HEIGHT; y++) for (int x = 0; x < IN_WIDTH; x++) { fputc(R[y][x], f); fputc(G[y][x], f); fputc(B[y][x], f); }
    fclose(f); snprintf(nom, 64, "/tmp/reductor_salida%d.bin", volcar); f = fopen(nom, "wb"); fwrite(sal, 1, sizeof sal, f); fclose(f); }
    printf("trama (semilla %u): dif max con la media exacta %d (en %d de %d valores)\n", semilla, maxdif, n, 3 * PIXELS_OUT);
    return maxdif <= 1 ? 0 : 1;
}

int main() {
    hls::stream<stream_in_t> in; hls::stream<stream_out_t> out;
    // dos tramas seguidas con contenido distinto: comprueba el reinicio de contadores y acumuladores entre tramas
    if (trama(in, out, 12345, 0, 1)) return 1;
    if (trama(in, out, 777, 150, 2)) return 1;
    return 0;
}
