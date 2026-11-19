#!/usr/bin/env python3
"""Genera all_verilog_srcs_verilator_clean.txt a partir de all_verilog_srcs.txt.

Reproduce las sustituciones que se hicieron a mano en el TFG para que Verilator
acepte el stitched IP de FINN:

1. Las rutas absolutas del FINN_BUILD_DIR temporal (/tmp/...) se reescriben
   relativas a stitched_ip/verilator_sim (prefijo ../), usando la copia del
   proyecto Vivado que FINN deja en stitched_ip/finn_vivado_stitch_proj.gen.
2. Se eliminan fuentes que Verilator no soporta o que no hacen falta:
   - XPM de Xilinx (xpm_fifo, xpm_memory, xpm_cdc): usan force/release.
   - axis_infrastructure / axis_data_fifo y los wrappers finn_design_fifo_N:
     la IP "AXI4-Stream Data FIFO" de Vivado (StreamingFIFO con
     impl_style=vivado). Se sustituyen por stubs.
   - Monitores hls_deadlock_* de Vitis HLS (.vh con 'assign' sueltos).
   - Cabeceras .vh (se resuelven por include, no se compilan sueltas).
3. Se anteponen los stubs de verilator_stubs/.

Uso (desde cualquier sitio):
    python3 03_simulacion_verilator/herramientas/make_verilator_srclist.py <ruta/a/stitched_ip>
"""
import re
import sys
from pathlib import Path

STUBS = [
    "../verilator_stubs/axis_data_fifo_stubs.v",
    "../verilator_stubs/xpm_fifo_axis_stub.v",
]
DROP = re.compile(
    r"(xpm_fifo|xpm_memory|xpm_cdc|hls_deadlock|axis_infrastructure|"
    r"axis_data_fifo_v|/finn_design_fifo_\d+/|verilator_stubs|\.vh$)",
    re.IGNORECASE,
)
TMP_PREFIX = re.compile(r"^/tmp/[^/]+/vivado_stitch_proj_[^/]+/")


def main(stitched: Path) -> None:
    src = stitched / "all_verilog_srcs.txt"
    dst = stitched / "all_verilog_srcs_verilator_clean.txt"
    out, seen = list(STUBS), set()
    for line in src.read_text().splitlines():
        line = line.strip()
        if not line or DROP.search(line):
            continue
        rel = TMP_PREFIX.sub("../", line)
        if not rel.startswith("../"):
            rel = "../" + rel
        if rel in seen:
            continue
        seen.add(rel)
        out.append(rel)
    dst.write_text("\n".join(out) + "\n")
    missing = [p for p in out if not (stitched / "verilator_sim" / p).exists()]
    print(f"Escrito {dst} ({len(out)} fuentes)")
    if missing:
        print(f"AVISO: {len(missing)} rutas no existen, p. ej. {missing[:3]}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    main(Path(sys.argv[1]).resolve())
