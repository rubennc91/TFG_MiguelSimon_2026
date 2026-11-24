#!/usr/bin/env python3
"""Mueve la cuantización de entrada (QuantIdentity 8 bits, escala aprendida != 1/255) del IP de FINN al reductor de imagen.

El reductor entrega q = TABLA[byte] (0..121) y el modelo de FINN empieza en Mul(escala): se quitan Div, MultiThreshold y Add.
La TABLA se calcula con el propio cuantizador de Brevitas. Este script (dentro de la imagen de FINN):
  1) calcula la tabla byte -> q y la guarda (tabla_entrada.json), comprobando que q es entero y q*escala = salida de quant_in;
  2) recorta el grafo de modelo_uint8.onnx y comprueba, con imágenes reales, que (grafo recortado)(TABLA[bytes]) == (grafo original)(bytes) == Brevitas.
  SCRIPT=verificar_entrada_reductor.py ./lanzar_estimacion.sh --modelo <dir> --arquitectura cnn|mlp --onnx <modelo_uint8.onnx> --salida <dir_salida>
"""
import argparse, json, sys
from pathlib import Path
import numpy as np
import torch

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "qat"))
import qonnx.core.onnx_exec as oxe
from qonnx.core.datatype import DataType
from qonnx.core.modelwrapper import ModelWrapper
from modelo_qat import CNNq, MLPq


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--modelo", required=True); p.add_argument("--arquitectura", choices=("cnn", "mlp"), required=True)
    p.add_argument("--onnx", required=True); p.add_argument("--salida", required=True)
    p.add_argument("--datos", default="/home/ruben/datasets/experto_f1/cache/experto_f1_v2+experto_f1_v3_entrenamiento_32x24.npz")
    p.add_argument("--n", type=int, default=100)
    a = p.parse_args()
    meta = json.loads((Path(a.modelo) / "meta.json").read_text())
    m = CNNq((32, 24), w_bits=meta["w_bits"], a_bits=meta["a_bits"]) if a.arquitectura == "cnn" else MLPq(2304, w_bits=meta["w_bits"], a_bits=meta["a_bits"])
    m.load_state_dict(torch.load(Path(a.modelo) / "modelo_q.pt", map_location="cpu")); m.eval()

    # 1) tabla byte -> q con el cuantizador real
    with torch.no_grad():
        qt = m.quant_in(torch.arange(256, dtype=torch.float32).reshape(1, 1, 1, 256) / 255.0 if a.arquitectura == "cnn" else torch.arange(256, dtype=torch.float32).reshape(1, 256) / 255.0)
    escala = float(qt.scale); val = qt.value.reshape(-1).numpy()
    q = val / escala
    assert np.allclose(q, np.round(q), atol=1e-4), "q no es entero"
    q = np.round(q).astype(int)
    print(f"escala {escala:.8f}  zero_point {float(qt.zero_point):g}  q: {q.min()}..{q.max()}  niveles distintos {len(set(q))}  monótona {bool(np.all(np.diff(q) >= 0))}", flush=True)
    Path(a.salida).mkdir(parents=True, exist_ok=True)
    (Path(a.salida) / "tabla_entrada.json").write_text(json.dumps(dict(escala=escala, tabla=q.tolist())))

    # 2) recorte del grafo
    g0 = ModelWrapper(a.onnx)
    nodos = [n.op_type for n in g0.graph.node]
    print("primeros nodos:", nodos[:5], flush=True)
    g = ModelWrapper(a.onnx)
    ent = g.graph.input[0].name
    div = g.find_consumer(ent); mt = g.find_consumer(div.output[0]); add = g.find_consumer(mt.output[0]); mul = g.find_consumer(add.output[0])
    assert (div.op_type, mt.op_type, add.op_type, mul.op_type) == ("Div", "MultiThreshold", "Add", "Mul"), (div.op_type, mt.op_type, add.op_type, mul.op_type)
    mul.input[0] = ent
    for n in (div, mt, add):
        g.graph.node.remove(n)
    g.set_tensor_datatype(ent, DataType["UINT8"])   # UINT8 y no UINT7: el IP recibe los bytes del reductor (dwidth 1->3 o 1->4 bytes); con UINT7 FINN empaqueta a 7 bits y no encaja
    g.save(str(Path(a.salida) / "modelo_uint8_q.onnx"))

    # 3) comprobación numérica
    try:
        d = np.load(a.datos); k = "x" if "x" in d else d.files[0]
        x = d[k][np.random.RandomState(1).choice(len(d[k]), a.n, replace=False)].astype(np.uint8)
    except Exception as e:
        print("sin datos reales:", e); x = np.random.RandomState(1).randint(0, 256, (a.n, 2304)).astype(np.uint8)
    with torch.no_grad():
        ref = m(torch.from_numpy(x.astype(np.float32) / 255.0)).numpy()
    def ejecutar(ruta, datos):
        g = ModelWrapper(ruta)
        for t in list(g.get_all_tensor_names()): g.set_tensor_datatype(t, DataType["FLOAT32"])
        nombre = g.graph.input[0].name; forma = tuple(g.get_tensor_shape(nombre))
        return np.stack([oxe.execute_onnx(g, {nombre: xi.astype(np.float32).reshape(forma)})[g.graph.output[0].name].reshape(-1) for xi in datos])
    orig = ejecutar(a.onnx, x)
    nuevo = ejecutar(str(Path(a.salida) / "modelo_uint8_q.onnx"), q[x])
    print(f"original vs Brevitas:       |dif| máx {np.abs(orig - ref).max():.3g}", flush=True)
    print(f"recortado(q) vs original:   |dif| máx {np.abs(nuevo - orig).max():.3g}   idénticos {np.mean(nuevo == orig) * 100:.1f} %", flush=True)
    print(f"recortado(q) vs Brevitas:   |dif| máx {np.abs(nuevo - ref).max():.3g}", flush=True)


if __name__ == "__main__":
    main()
