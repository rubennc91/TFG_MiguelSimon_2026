#!/usr/bin/env python3
"""Genera finn_params.h: Mul y Add finales del modelo padre de FINN (la CPU reescala la salida entera del IP) y la decodificación v,w.
uso: generar_parametros.py <dataflow_parent.onnx> <cnn|mlp> > finn_params_<red>.h"""
import sys, onnx
from onnx import numpy_helper as nh
m = onnx.load(sys.argv[1]); red = sys.argv[2].upper()
ini = {i.name: nh.to_array(i).ravel() for i in m.graph.initializer}
mul = [v for k, v in ini.items() if k.startswith("Mul")][0]; add = [v for k, v in ini.items() if k.startswith("Add")][0]
assert len(mul) == 1 and len(add) == 2, (mul, add)
print(f"// generado por generar_parametros.py desde {sys.argv[1]}; salida_float[i] = salida_int8[i]*FINN_MUL + FINN_ADD[i]")
print(f"#define FINN_RED_{red} 1\n#define FINN_MUL {float(mul[0]):.10e}f\nstatic const float FINN_ADD[2] = {{{float(add[0]):.10e}f, {float(add[1]):.10e}f}};")
print("#define V_MIN (-0.6f)\n#define V_MAX (13.0f)\n#define W_MIN (-3.14159265f)\n#define W_MAX (3.14159265f)")
