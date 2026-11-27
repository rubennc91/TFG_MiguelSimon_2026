#!/usr/bin/env bash
# Compila la aplicación ORIGINAL de Digilent (cámara -> VDMA -> HDMI, hw_pcam_5c/sw_wspace/pcam_hdmi) para el diseño system_v2 con HDMI
# (VARIANTE=completa), cambiando solo el I2C: el diseño usa el AXI IIC en lugar del I2C de la PS. Sirve para comprobar si la cámara y el enlace MIPI funcionan.
#   compilar_hdmi.sh <xsa> <dir_salida>
set -euo pipefail
AQUI="$(cd "$(dirname "$0")" && pwd)"; XSA="$(readlink -f "$1")"; OUT="$(readlink -m "$2")"
ORIG="$AQUI/../../hw_pcam_5c/sw_wspace/pcam_hdmi/src"; SW="$AQUI/../software"
source /tools/Xilinx/Vitis/2022.2/settings64.sh
rm -rf "$OUT"; mkdir -p "$OUT/fuente"; cd "$OUT"
cp -r "$ORIG"/main.cc "$ORIG"/hdmi "$ORIG"/platform "$ORIG"/ov5640 "$ORIG"/lscript.ld fuente/
cp "$SW/ov5640/AXI_IIC.h" fuente/ov5640/
sed -i 's|#include "ov5640/PS_IIC.h"|#include "ov5640/AXI_IIC.h"|; s|PS_IIC<ScuGicInterruptController> iic_driver(.*|AXI_IIC iic_driver(XPAR_AXI_IIC_0_BASEADDR);|' fuente/main.cc
cat > crear.tcl <<T
setws $OUT/ws
platform create -name plat -hw $XSA -proc ps7_cortexa9_0 -os standalone -out $OUT/ws
platform generate
app create -name hdmi_app -platform plat -domain standalone_domain -template {Empty Application (C++)} -lang c++
importsources -name hdmi_app -path $OUT/fuente
app build -name hdmi_app
T
xsct crear.tcl > xsct.log 2>&1 || { grep -v "lib/" xsct.log | tail -30; exit 1; }
ls -la "$OUT/ws/hdmi_app/Debug/hdmi_app.elf"
