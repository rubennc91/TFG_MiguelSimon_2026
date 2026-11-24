#!/bin/bash
# Construye los dos IP del reductor (con la tabla de entrada de cada modelo), los instala en ../fuentes/ip_repo/reductor_{cnn,mlp}
# y los verifica en RTL (xsim) frente al modelo en C.   Uso: ./construir_reductores.sh      (Vitis HLS y Vivado 2022.2 instalados en /tools/Xilinx)
set -e
cd "$(dirname "$0")"; AQUI=$PWD
source /tools/Xilinx/Vitis_HLS/2022.2/settings64.sh >/dev/null 2>&1; source /tools/Xilinx/Vivado/2022.2/settings64.sh >/dev/null 2>&1
construir() {   # nombre  SALIDA_HWC  tabla.json
  local v=$1 hwc=$2 tabla=$3
  python3 generar_tabla.py $tabla
  PERIODO=${PERIODO:-5.5} SALIDA_HWC=$hwc USAR_TABLA=1 SALIDA_IP=$AQUI/ip_$v vitis_hls -f run_hls.tcl > /tmp/hls_red_$v.log 2>&1
  grep -E "Final II|II Violation|CSim done" /tmp/hls_red_$v.log | cut -c1-120
  rm -rf ../fuentes/ip_repo/reductor_$v; mkdir -p ../fuentes/ip_repo/reductor_$v
  (cd ../fuentes/ip_repo/reductor_$v && python3 -c "import zipfile;zipfile.ZipFile('$AQUI/ip_$v.zip').extractall('.')")
  local X=/tmp/xsim_$v; mkdir -p $X; (cd $X; xvhdl $AQUI/../fuentes/ip_repo/reductor_$v/hdl/vhdl/*.vhd >/dev/null; xvlog -sv $AQUI/tb/tb_rtl.sv >/dev/null; xelab -debug off tb_rtl -s sim_$v >/dev/null; xsim sim_$v -runall | grep -E "distintos|salieron|TUSER|TLAST")
}
echo "== CNN (salida intercalada, tabla cq4_s6)"; construir cnn 1 tablas/cnn_cq4_s6.json
echo "== MLP (salida planar, tabla q4_s0)";     construir mlp 0 tablas/mlp_q4_s0.json
