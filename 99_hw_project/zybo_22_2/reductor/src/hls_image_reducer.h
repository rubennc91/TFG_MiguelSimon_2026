#pragma once
// Reductor de imagen para la CNN/MLP de FINN: 1280x720 RGB -> recorte central 4:3 (960x720) -> 32x24, media por bloques de 30x30.
// Salida: 3 planos de 768 bytes (2304 B) en orden R,G,B (CHW, uint8), como el entrenamiento (grabador.py guarda RGB).
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"

#define IN_WIDTH   1280
#define IN_HEIGHT  720
#define CROP_X0    160                       // (1280-960)/2
#define CROP_W     960
#define OUT_WIDTH  32
#define OUT_HEIGHT 24
#define BLOCK      30                        // 960/32 = 720/24
#define PIXELS_OUT (OUT_WIDTH * OUT_HEIGHT)  // 768
#define DIV_MUL    74565                     // round(2^26 / (BLOCK*BLOCK))
#define DIV_SHIFT  26

// El cable de la cámara/Bayer->RGB decide qué byte es el rojo. capture_hls.py (16x12) mostraba el plano 0 como azul
// al invertir los canales, es decir, el IP anterior entregaba B,G,R. Poner 1 si TDATA[23:16] es el rojo real.
// Orden de salida: 0 = planar R...,G...,B... (lo que espera la MLP: imagen_a_vector). 1 = píxel a píxel R,G,B,R,G,B... (NHWC, lo que espera
// el IP de la CNN de FINN; la Transpose NCHW->NHWC del modelo padre se hace en la CPU, no en el IP).
#ifndef SALIDA_HWC
#define SALIDA_HWC 0
#endif
#ifndef ENTRADA_ROJO_EN_ALTO
#define ENTRADA_ROJO_EN_ALTO 0
#endif

// 1 = el reductor aplica la cuantización de entrada del modelo (byte -> q, tabla de src/tabla_entrada.h, de generar_tabla.py) y el IP de FINN recibe q.
// 0 = entrega la media tal cual (imagen visible, para depurar con capture_hls.py).
#ifndef USAR_TABLA
#define USAR_TABLA 0
#endif
#if USAR_TABLA
#include "tabla_entrada.h"
#endif

typedef ap_axiu<24, 1, 1, 1> stream_in_t;
typedef ap_axiu<8, 1, 1, 1>  stream_out_t;

void hls_image_reducer(hls::stream<stream_in_t>& stream_in, hls::stream<stream_out_t>& stream_out);
