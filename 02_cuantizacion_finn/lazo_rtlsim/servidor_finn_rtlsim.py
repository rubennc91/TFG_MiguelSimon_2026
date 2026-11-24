#!/usr/bin/env python3
"""Servidor UDP que ejecuta el IP de FINN (stitched IP simulado con Verilator/PyVerilator) con el mismo protocolo que servidor_q.py:
N bytes uint8 (imagen 32x24 RGB planar, lo que da la cámara reducida) -> 2 float32 (v, w).
Hace lo mismo que el hardware: la tabla del reductor (byte -> q), la parte entera del IP simulada ciclo a ciclo, y en la CPU el Mul/Add final,
la saturación a [0, 1] y la decodificación de v y w. Se ejecuta DENTRO de la imagen de FINN (lanzar_servidor_finn.sh).
    --prueba N --volcado x.npz : repite N imágenes del volcado, compara con el modelo de Brevitas y mide el tiempo por inferencia.
"""
import argparse, json, os, socket, struct, time
from pathlib import Path

import numpy as np
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
from finn.core.rtlsim_exec import rtlsim_exec

V_MIN, V_MAX, W_MIN, W_MAX = -0.6, 13.0, -np.pi, np.pi


class IPFinn:
    """Parte del modelo padre (Transpose, Mul, Add en la CPU) + hijo (IP) en rtlsim; el .so de Verilator se compila una vez."""
    def __init__(self, build, tabla):
        mod = Path(build) / "salida" / "intermediate_models"
        self.tabla = np.array(json.loads(Path(tabla).read_text())["tabla"], np.float32)
        self.padre = ModelWrapper(str(mod / "dataflow_parent.onnx"))
        self.hijo = ModelWrapper(str(mod / "step_create_stitched_ip.onnx"))
        self.forma = tuple(self.padre.get_tensor_shape(self.padre.graph.input[0].name))
        self.iname, self.oname = self.hijo.graph.input[0].name, self.hijo.graph.output[0].name
        self.ciclos = 0

    def inferir(self, imagen_u8):
        x = self.tabla[imagen_u8].reshape(self.forma).astype(np.float32)           # q = tabla[byte] (lo que hace el reductor)
        for n in self.padre.graph.node:
            if n.op_type == "Transpose":
                x = np.transpose(x, list(next(a.ints for a in n.attribute if a.name == "perm")))
            elif n.op_type == "StreamingDataflowPartition":
                ctx = {self.iname: np.ascontiguousarray(x.reshape(self.hijo.get_tensor_shape(self.iname)))}
                rtlsim_exec(self.hijo, ctx)
                self.ciclos = int(self.hijo.get_metadata_prop("cycles_rtlsim"))
                x = ctx[self.oname]
            elif n.op_type in ("Mul", "Add"):
                p = np.asarray(self.padre.get_initializer(n.input[1]), np.float32)
                x = x * p if n.op_type == "Mul" else x + p
        s = np.clip(x.reshape(-1), 0.0, 1.0)
        return float(s[0] * (V_MAX - V_MIN) + V_MIN), float(s[1] * (W_MAX - W_MIN) + W_MIN)


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--build", required=True); p.add_argument("--tabla", required=True); p.add_argument("--puerto", type=int, default=5020)
    p.add_argument("--entrada", type=int, default=2304); p.add_argument("--prueba", type=int, default=0); p.add_argument("--volcado", default="")
    a = p.parse_args(); os.environ["LIVENESS_THRESHOLD"] = "400000"
    ip = IPFinn(a.build, a.tabla)
    if a.prueba:
        d = np.load(a.volcado); idx = np.linspace(0, len(d["x"]) - 1, a.prueba).astype(int); dif = []
        for k, i in enumerate(idx):
            t = time.time(); v, w = ip.inferir(d["x"][i]); dt = time.time() - t
            dif.append((abs(v - d["y"][i][0]), abs(w - d["y"][i][1])))
            print(f"img {i}: v={v:.4f} w={w:.4f} (Brevitas {d['y'][i][0]:.4f} {d['y'][i][1]:.4f})  {ip.ciclos} ciclos  {dt:.2f} s", flush=True)
        dif = np.array(dif); print(f"PRUEBA dif máx v {dif[:, 0].max():.2g} w {dif[:, 1].max():.2g}", flush=True); return
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.bind(("0.0.0.0", a.puerto))
    print(f"servidor FINN (rtlsim) en UDP {a.puerto}, entrada {a.entrada} bytes", flush=True); n = 0
    while True:
        datos, dire = s.recvfrom(65535)
        if len(datos) != a.entrada:
            continue
        t = time.time(); v, w = ip.inferir(np.frombuffer(datos, np.uint8)); dt = time.time() - t; n += 1
        s.sendto(struct.pack("<2f", v, w), dire)
        print(f"[{n:5d}] IP FINN: {ip.ciclos} ciclos ({ip.ciclos / 100e6 * 1e3:.2f} ms a 100 MHz) | v={v:6.3f} m/s w={w:+6.3f} rad/s | rtlsim {dt:.2f} s", flush=True)


if __name__ == "__main__":
    main()
