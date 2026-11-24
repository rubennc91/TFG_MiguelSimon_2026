#!/usr/bin/env bash
# Carga en la Zybo Z7 (por JTAG-USB) el bitstream y el programa de la ARM y los pone en marcha. SIN PROBAR EN PLACA (preparado el 24/11/2026).
#   programar.sh <dir_resultados>        p. ej. ../resultados/z7-20_cnn_cq4s6   (contiene system_v2_wrapper.{bit,xsa} y finn_app.elf)
# Después, en otro terminal:  screen /dev/ttyUSB1 115200   (o minicom; en la Zybo la UART suele ser el segundo puerto FTDI) y pulsar 's', 'm', 'r', 'i'.
set -euo pipefail
D="$(readlink -f "$1")"; T="$(mktemp -d)"; source /tools/Xilinx/Vitis/2022.2/settings64.sh
( cd "$T" && unzip -q "$D/system_v2_wrapper.xsa" ps7_init.tcl )
cat > "$T/prog.tcl" <<T2
connect
targets -set -nocase -filter {name =~ "APU*"}
rst -system
after 2000
fpga -file $D/system_v2_wrapper.bit
targets -set -nocase -filter {name =~ "APU*"}
source $T/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0"}
dow $D/finn_app.elf
con
T2
xsct "$T/prog.tcl"; echo "cargado: abre la UART a 115200 8N1"
