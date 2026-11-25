"""Modelo en numpy del reductor de imagen del PL (mismo cálculo que hls_image_reducer.cpp): recorte central 960x720 de una trama 1280x720,
suma de bloques de 30x30, media con multiplicación por la inversa (74565 / 2^26, redondeada) y tabla byte -> q. Salida (24, 32, 3) para la CNN (HWC)."""
import json
import numpy as np

DIV_MUL, DIV_SHIFT, BLOCK, CROP_X0, CROP_W = 74565, 26, 30, 160, 960


def reducir(trama, tabla=None):
    """trama: (720, 1280, 3) uint8 con el orden de canales del flujo del reductor (R, G, B). Devuelve (24, 32, 3) uint8."""
    e = trama[:, CROP_X0:CROP_X0 + CROP_W].astype(np.uint64)
    a = e.reshape(24, BLOCK, 32, BLOCK, 3).sum(axis=(1, 3))
    m = ((a * DIV_MUL + (1 << (DIV_SHIFT - 1))) >> DIV_SHIFT).astype(np.uint8)
    return m if tabla is None else np.asarray(tabla, np.uint8)[m]


def cargar_tabla(ruta):
    return json.load(open(ruta))["tabla"]


def reducir_lineal(trama, tabla=None):
    """Variante 'bilineal' (lo que hace el entrenamiento con cv2.INTER_LINEAR): media de los 2x2 píxeles centrales (14, 15) de cada bloque de 30x30."""
    e = trama[:, CROP_X0:CROP_X0 + CROP_W].astype(np.float64).reshape(24, BLOCK, 32, BLOCK, 3)
    m = np.floor(e[:, 14:16, :, 14:16].mean(axis=(1, 3)) + 0.5).astype(np.uint8)
    return m if tabla is None else np.asarray(tabla, np.uint8)[m]
