# -*- coding: utf-8 -*-

import numpy as np
from onnx import helper, TensorProto

from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.onnx_exec import execute_onnx
from qonnx.transformation.infer_shapes import InferShapes

model_path = "../intermediate_models/step_convert_to_hls.onnx"
txt_path = "input_124_opencv.txt"

print("Cargando modelo:", model_path)

model = ModelWrapper(model_path)

nodes = list(model.graph.node)

print("Primeros nodos del modelo:")
for i, node in enumerate(nodes[:6]):
    print(i, node.op_type, node.name, "out:", list(node.output))

# Mantener solo los dos primeros nodos:
# MultiThreshold_0 -> Reshape_0
model.graph.ClearField("node")
model.graph.node.extend(nodes[:2])

# Limpiar informacion intermedia para evitar duplicados
model.graph.ClearField("value_info")

# Definir entrada y salida del submodelo
model.graph.ClearField("input")
model.graph.input.extend([
    helper.make_tensor_value_info("global_in", TensorProto.FLOAT, [1, 3, 16, 12])
])

model.graph.ClearField("output")
model.graph.output.extend([
    helper.make_tensor_value_info("Reshape_0_out0", TensorProto.FLOAT, [1, 576])
])

# Asegurar shapes
model.set_tensor_shape("global_in", [1, 3, 16, 12])
model.set_tensor_shape("MultiThreshold_0_out0", [1, 3, 16, 12])
model.set_tensor_shape("Reshape_0_out0", [1, 576])

# Inferir shapes
model = model.transform(InferShapes())

# Leer entrada cruda generada desde C++/OpenCV
x = np.loadtxt(txt_path, dtype=np.float32)

if x.size != 576:
    raise RuntimeError("La entrada no tiene 576 valores, tiene {}".format(x.size))

x = x.reshape(1, 3, 16, 12).astype(np.float32)

print("Ejecutando hasta Reshape_0_out0...")
out_dict = execute_onnx(model, {"global_in": x})

hw_in = out_dict["Reshape_0_out0"]

print("Shape hw_in:", hw_in.shape)
print("Min:", hw_in.min(), "Max:", hw_in.max())

flat = hw_in.reshape(-1)

print("Primeros 40 valores antes de convertir:")
print(flat[:40])

# Convertir a INT8 real
hw_int8 = np.rint(flat).astype(np.int8)

# Convertir a bytes UINT8 para mandarlo por AXI
hw_u8 = hw_int8.view(np.uint8)

np.savetxt("input_124_hw_int8.txt", hw_int8.astype(np.int16), fmt="%d")
np.savetxt("input_124_hw_bytes.txt", hw_u8.astype(np.uint16), fmt="%d")

print("Guardado input_124_hw_int8.txt")
print("Guardado input_124_hw_bytes.txt")

print("Primeros 40 valores INT8:")
print(hw_int8[:40])

print("Primeros 40 bytes UINT8 a enviar:")
print(hw_u8[:40])
