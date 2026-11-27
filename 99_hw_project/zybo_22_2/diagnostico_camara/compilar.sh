#!/usr/bin/env bash
# Compila el software de la ARM con Vitis 2022.2 a partir del .xsa del diseño.
#   compilar.sh <xsa> <dir_salida> [main_diag.cc|main_diag2.cc]   (programa de diagnóstico de la cámara)
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; XSA="$(readlink -f "$1")"; OUT="$(readlink -m "$2")"; FUENTE="${3:-main_diag.cc}"
source /tools/Xilinx/Vitis/2022.2/settings64.sh
rm -rf "$OUT"; mkdir -p "$OUT"; cd "$OUT"; mkdir -p fuente; cp "$AQUI/$FUENTE" fuente/
cat > crear.tcl <<T
setws $OUT/ws
platform create -name plat -hw $XSA -proc ps7_cortexa9_0 -os standalone -out $OUT/ws
platform generate
app create -name finn_app -platform plat -domain standalone_domain -template {Empty Application (C++)} -lang c++
importsources -name finn_app -path $OUT/fuente -soft-link
app config -name finn_app -add include-path $AQUI/../software

app build -name finn_app
T
xsct crear.tcl > xsct.log 2>&1 || { grep -v "lib/" xsct.log | tail -30; exit 1; }
grep -i " error\|undefined" xsct.log | head || true
ls -la "$OUT/ws/finn_app/Debug/finn_app.elf"
