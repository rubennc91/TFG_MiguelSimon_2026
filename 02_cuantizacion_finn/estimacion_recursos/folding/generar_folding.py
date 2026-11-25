#!/usr/bin/env python3
"""Genera un JSON de folding de la CNN para un objetivo de ciclos por trama T: en cada capa MVAU, el menor PE*SIMD (con PE | MH, SIMD | MW) que cumple
ciclos = (MH/PE)*(MW/SIMD)*posiciones <= T. Generador de ventanas y relleno al máximo de canales (3 y 8). uso: generar_folding.py T [lut|dsp] > salida.json"""
import json
import sys

# (nombre, MH, MW, posiciones por trama), de la CNN: ciclos(x8) = 4608, 6144, 3072, 1024, 64 con PE=1 y SIMD=9,9,8,8,8
MVAU = [("MatrixVectorActivation_0", 8, 27, 192), ("MatrixVectorActivation_1", 16, 72, 48), ("MatrixVectorActivation_2", 32, 768, 1),
        ("MatrixVectorActivation_3", 256, 32, 1), ("MatrixVectorActivation_4", 2, 256, 1)]
divs = lambda n: [d for d in range(1, n + 1) if n % d == 0]


def generar(T, res="lut"):
    cfg = {"Defaults": {}, "FMPadding_rtl_0": {"SIMD": 3}, "ConvolutionInputGenerator_rtl_0": {"SIMD": 3, "ram_style": "auto"},
           "StreamingDataWidthConverter_Batch_0": {"impl_style": "vivado"}, "StreamingDataWidthConverter_Batch_1": {"impl_style": "hls"},
           "FMPadding_rtl_1": {"SIMD": 8}, "ConvolutionInputGenerator_rtl_1": {"SIMD": 8, "ram_style": "auto"}, "StreamingDataWidthConverter_Batch_2": {"impl_style": "hls"}}
    ciclos = {}
    for n, mh, mw, pos in MVAU:
        mejor = min(((pe * s, pe, s) for pe in divs(mh) for s in divs(mw) if (mh // pe) * (mw // s) * pos <= T), default=None)
        if mejor is None: mejor = (mh * mw, mh, mw)
        _, pe, s = mejor
        cfg[n] = {"PE": pe, "SIMD": s, "ram_style": "auto", "resType": res, "mem_mode": "const", "runtime_writeable_weights": 0}
        ciclos[n] = (mh // pe) * (mw // s) * pos
    return cfg, ciclos


if __name__ == "__main__":
    cfg, c = generar(int(sys.argv[1]), sys.argv[2] if len(sys.argv) > 2 else "lut")
    print(json.dumps(cfg, indent=1)); print({k[-1]: v for k, v in c.items()}, file=sys.stderr)
