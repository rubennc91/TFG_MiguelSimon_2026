"""Genera src/tabla_entrada.h (tabla byte -> q de la cuantización de entrada del modelo) desde tablas/<modelo>.json
(creado por 02_cuantizacion_finn/estimacion_recursos/verificar_entrada_reductor.py). Uso: python3 generar_tabla.py tablas/cnn_cq4_s6.json"""
import json, sys
d = json.load(open(sys.argv[1])); t = d["tabla"]
assert len(t) == 256 and min(t) >= 0 and max(t) < 256 and all(a <= b for a, b in zip(t, t[1:]))
filas = ",\n".join("  " + ", ".join(f"{v:3d}" for v in t[i:i + 16]) for i in range(0, 256, 16))
open("src/tabla_entrada.h", "w").write(f"// GENERADO por generar_tabla.py ({sys.argv[1]}). escala del modelo = {d['escala']:.8f}\n#pragma once\nstatic const unsigned char TABLA_Q[256] = {{\n{filas}\n}};\n")
print("tabla:", t[0], "..", t[-1], "| niveles", len(set(t)))
