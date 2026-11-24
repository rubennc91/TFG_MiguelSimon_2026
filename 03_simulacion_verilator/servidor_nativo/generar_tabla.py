#!/usr/bin/env python3
"""tabla_entrada.json (byte -> q del reductor) -> tabla_q.h.   uso: generar_tabla.py <tabla_entrada.json> > tabla_q.h"""
import json, sys
t = json.load(open(sys.argv[1]))["tabla"]; assert len(t) == 256
print("// generado por generar_tabla.py: q = TABLA_Q[byte] (lo que hace el reductor en la PL)")
print("static const unsigned char TABLA_Q[256] = {" + ",".join(str(int(v)) for v in t) + "};")
