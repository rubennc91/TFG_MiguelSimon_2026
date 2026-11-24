#!/usr/bin/env bash
# Compila el software de la ARM con Vitis 2022.2 a partir del .xsa del diseño.
#   compilar.sh <xsa> <cnn|mlp> <dir_salida>
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; XSA="$(readlink -f "$1")"; RED="$2"; OUT="$(readlink -m "$3")"
source /tools/Xilinx/Vitis/2022.2/settings64.sh
rm -rf "$OUT"; mkdir -p "$OUT"; cd "$OUT"
cat > crear.tcl <<T
setws $OUT/ws
platform create -name plat -hw $XSA -proc ps7_cortexa9_0 -os standalone -out $OUT/ws
platform generate
app create -name finn_app -platform plat -domain standalone_domain -template {Empty Application (C++)} -lang c++
importsources -name finn_app -path $AQUI -soft-link
file copy -force $AQUI/lscript.ld $OUT/ws/finn_app/src/lscript.ld
app config -name finn_app -add compiler-misc {-D$(echo RED_$RED | tr a-z A-Z)}
app build -name finn_app
T
xsct crear.tcl > xsct.log 2>&1 || { grep -v "lib/" xsct.log | tail -30; exit 1; }
grep -i " error\|undefined" xsct.log | head || true
ls -la "$OUT/ws/finn_app/Debug/finn_app.elf"
