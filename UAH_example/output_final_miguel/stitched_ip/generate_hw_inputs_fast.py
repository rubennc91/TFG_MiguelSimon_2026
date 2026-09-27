# -*- coding: utf-8 -*-

import os
import numpy as np
from PIL import Image
from onnx import helper, TensorProto

from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.onnx_exec import execute_onnx
from qonnx.transformation.infer_shapes import InferShapes

DATASET_DIR = "/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/output_final_miguel/Dataset_JdeRobot/DATA_12_16/counter_montmelo_holonomic"

W = 12
H = 16

os.makedirs("hw_inputs", exist_ok=True)

model_hw_in = ModelWrapper("../intermediate_models/step_convert_to_hls.onnx")
nodes = list(model_hw_in.graph.node)

# Solo usamos los dos primeros nodos:
# MultiThreshold_0 + Reshape_0
model_hw_in.graph.ClearField("node")
model_hw_in.graph.node.extend(nodes[:2])

model_hw_in.graph.ClearField("value_info")

model_hw_in.graph.ClearField("input")
model_hw_in.graph.input.extend([
    helper.make_tensor_value_info("global_in", TensorProto.FLOAT, [1, 3, 16, 12])
])

model_hw_in.graph.ClearField("output")
model_hw_in.graph.output.extend([
    helper.make_tensor_value_info("Reshape_0_out0", TensorProto.FLOAT, [1, 576])
])

model_hw_in.set_tensor_shape("global_in", [1, 3, 16, 12])
model_hw_in.set_tensor_shape("MultiThreshold_0_out0", [1, 3, 16, 12])
model_hw_in.set_tensor_shape("Reshape_0_out0", [1, 576])
model_hw_in = model_hw_in.transform(InferShapes())

def image_number(name):
    stem = os.path.splitext(name)[0]
    try:
        return int(stem)
    except:
        return -1

def image_to_rgb_planes_pil(path):
    img = Image.open(path).convert("RGB")
    img = img.resize((W, H))

    arr = np.asarray(img).astype(np.float32)

    r = arr[:, :, 0].reshape(-1)
    g = arr[:, :, 1].reshape(-1)
    b = arr[:, :, 2].reshape(-1)

    x = np.concatenate([r, g, b], axis=0)

    return x.reshape(1, 3, 16, 12).astype(np.float32)

images = [f for f in os.listdir(DATASET_DIR) if f.endswith(".png")]
images = sorted(images, key=image_number)

print("Imagenes encontradas:", len(images))

for idx, img_name in enumerate(images):
    frame = image_number(img_name)
    img_path = os.path.join(DATASET_DIR, img_name)

    x = image_to_rgb_planes_pil(img_path)

    hw_in = execute_onnx(model_hw_in, {"global_in": x})["Reshape_0_out0"].reshape(-1)

    hw_int8 = np.rint(hw_in).astype(np.int8)
    hw_u8 = hw_int8.view(np.uint8)

    out_path = "hw_inputs/{}.txt".format(frame)
    np.savetxt(out_path, hw_u8.astype(np.uint16), fmt="%d")

    if idx % 10 == 0:
        print("Procesadas", idx, "de", len(images), "imagenes ->", out_path)

print("Generados todos los txt en hw_inputs/")
