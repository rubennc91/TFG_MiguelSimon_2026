#include "hls_image_reducer.h"

// Estructura (todo II=1, un píxel por ciclo):
//  1) cada píxel de la franja central se suma a un acumulador de bloque (30 píxeles de ancho, 3 canales);
//  2) al completar los 30 píxeles, la suma se añade a acc[canal][bloque] (memoria; un acceso cada 30 ciclos);
//  3) al completar 30 líneas, un recorrido de 32 ciclos divide (multiplicación por la inversa) y escribe plano[canal][...] y borra acc;
//  4) al terminar la trama, se envían los 3 planos por AXI-Stream (R, G, B).
void hls_image_reducer(hls::stream<stream_in_t>& stream_in, hls::stream<stream_out_t>& stream_out) {
    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE axis port=stream_out
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS PIPELINE II=1

    static ap_uint<18> acc[3][OUT_WIDTH];
    #pragma HLS ARRAY_PARTITION variable=acc complete dim=1
    #pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=lutram
    // Un mismo acc[c][k] se toca como mucho cada 30 ciclos (suma de bloque) y el recorrido de borrado nunca coincide con una suma:
    // no hay dependencia entre ciclos consecutivos, aunque HLS no pueda demostrarlo.
    #pragma HLS DEPENDENCE variable=acc inter false
    static unsigned char plano[3][PIXELS_OUT];
    #pragma HLS ARRAY_PARTITION variable=plano complete dim=1
    #pragma HLS BIND_STORAGE variable=plano type=ram_2p impl=bram
    // plano se escribe durante la trama y se lee solo al final (el envío no empieza hasta acabar el último volcado).
    #pragma HLS DEPENDENCE variable=plano inter false

    static ap_uint<13> blq[3];                       // 30 * 255 = 7650
    static ap_uint<11> x = 0, y = 0;
    static ap_uint<5>  bx = 0, by = 0;
    static ap_uint<6>  ox = 0, oy = 0;
    static bool copiando = false, fin_trama = false, enviando = false;
    static ap_uint<6>  k = 0, oy_c = 0;
    static ap_uint<10> idx = 0;
    static ap_uint<2>  canal = 0;

    stream_in_t v;
    bool hay = stream_in.read_nb(v);
    bool sof = hay && v.user == 1;

    if (sof) {                                       // inicio de trama
        x = 0; y = 0; bx = 0; by = 0; ox = 0; oy = 0;
        copiando = false; fin_trama = false; enviando = false;
        blq[0] = 0; blq[1] = 0; blq[2] = 0;
        // acc queda a cero: se borra tras cada recorrido de división (y pone a cero al arrancar la lógica)
    }

    bool en_franja = hay && x >= CROP_X0 && x < CROP_X0 + CROP_W;
    ap_uint<8> alto = v.data.range(23, 16), medio = v.data.range(15, 8), bajo = v.data.range(7, 0);
#if ENTRADA_ROJO_EN_ALTO
    ap_uint<8> p[3] = {alto, medio, bajo};
#else
    ap_uint<8> p[3] = {bajo, medio, alto};
#endif
    bool fin_bloque = en_franja && bx == BLOCK - 1;
    ap_uint<6> dir = copiando ? k : ox;              // una sola lectura y una sola escritura por ciclo y memoria
    for (int c = 0; c < 3; c++) {
        ap_uint<18> a = acc[c][dir];
        if (copiando) {                              // paso 3: una columna (3 canales) por ciclo
            ap_uint<36> m = (ap_uint<36>(a) * DIV_MUL + (ap_uint<36>(1) << (DIV_SHIFT - 1))) >> DIV_SHIFT;
#if USAR_TABLA
            plano[c][oy_c * OUT_WIDTH + k] = TABLA_Q[(unsigned char)m];
#else
            plano[c][oy_c * OUT_WIDTH + k] = m;
#endif
            acc[c][dir] = 0;
        } else if (fin_bloque) {                     // paso 2: suma del bloque completo (30 píxeles) a la fila de acumuladores
            acc[c][dir] = a + blq[c] + p[c];
        }
    }
    if (copiando) {
        if (k == OUT_WIDTH - 1) copiando = false; else k++;
    } else if (en_franja) {                          // paso 1
        if (fin_bloque) { blq[0] = 0; blq[1] = 0; blq[2] = 0; bx = 0; ox++; }
        else { for (int c = 0; c < 3; c++) blq[c] += p[c]; bx++; }
    }

    if (hay) {                                       // contadores de línea y trama
        if (x == IN_WIDTH - 1) {
            x = 0; bx = 0; ox = 0; blq[0] = 0; blq[1] = 0; blq[2] = 0; y++;
            if (by == BLOCK - 1) { by = 0; copiando = true; k = 0; oy_c = oy; oy++; } else { by++; }
            if (y == IN_HEIGHT) fin_trama = true;
        } else { x++; }
    }

    if (!copiando && fin_trama && !enviando) { fin_trama = false; enviando = true; idx = 0; canal = 0; }

    if (enviando) {                                  // paso 4
        stream_out_t o;
        o.data = plano[canal][idx];
        o.user = (canal == 0 && idx == 0) ? 1 : 0;
        o.last = (canal == 2 && idx == PIXELS_OUT - 1) ? 1 : 0;
        o.keep = 1; o.strb = 1;
        stream_out.write(o);
#if SALIDA_HWC
        if (canal == 2) { canal = 0; if (idx == PIXELS_OUT - 1) { idx = 0; enviando = false; } else { idx++; } } else { canal++; }
#else
        if (idx == PIXELS_OUT - 1) { idx = 0; if (canal == 2) enviando = false; else canal++; } else { idx++; }
#endif
    }
}
