# -*- coding: utf-8 -*-

import sys
import numpy as np

from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.onnx_exec import execute_onnx
from qonnx.transformation.infer_shapes import InferShapes

if len(sys.argv) < 3:
    print("Uso: python3 test_qonnx_from_txt.py modelo.onnx input.txt")
    sys.exit(1)

onnx_path = sys.argv[1]
txt_path = sys.argv[2]

print("====================================")
print("Modelo:", onnx_path)
print("Input txt:", txt_path)

model = ModelWrapper(onnx_path)
model = model.transform(InferShapes())

all_input_names = [i.name for i in model.graph.input]
output_names = [o.name for o in model.graph.output]

print("Entradas encontradas:")
for name in all_input_names:
    print("  ", name, "shape =", model.get_tensor_shape(name), "dtype =", model.get_tensor_datatype(name))

print("Salidas encontradas:")
for name in output_names:
    print("  ", name, "shape =", model.get_tensor_shape(name), "dtype =", model.get_tensor_datatype(name))

candidate_inputs = []

for name in all_input_names:
    shape = model.get_tensor_shape(name)

    if shape is None:
        continue

    if len(shape) == 4 and shape[1] == 3 and shape[2] == 16 and shape[3] == 12:
        candidate_inputs.append(name)

    elif len(shape) == 2 and shape[1] == 576:
        candidate_inputs.append(name)

if len(candidate_inputs) == 0:
    raise RuntimeError("No se ha encontrado entrada compatible.")

input_name = candidate_inputs[0]
input_shape = model.get_tensor_shape(input_name)

print("====================================")
print("Input usado:", input_name)
print("Input shape:", input_shape)

vals = np.loadtxt(txt_path, dtype=np.float32)

if vals.size != 576:
    raise RuntimeError("El txt no tiene 576 valores, tiene {}".format(vals.size))

print("Primeros 20 valores leidos del txt:")
print(vals[:20])

print("Cambio R-G, posiciones 185 a 199:")
print(vals[185:200])

print("Cambio G-B, posiciones 377 a 391:")
print(vals[377:392])

if len(input_shape) == 4:
    x = vals.reshape(1, 3, 16, 12).astype(np.float32)
elif len(input_shape) == 2:
    x = vals.reshape(1, 576).astype(np.float32)
else:
    raise RuntimeError("Forma de entrada no contemplada: {}".format(input_shape))

input_dict = {
    input_name: x
}

print("====================================")
print("Ejecutando modelo...")
output_dict = execute_onnx(model, input_dict)

print("Salida:")
for name in output_names:
    print("Output:", name)
    print("Shape:", output_dict[name].shape)
    print(output_dict[name])

print("====================================")
