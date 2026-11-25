# vitis_hls -f run_hls.tcl   (Vitis HLS 2022.2)   Variables: PARTE (por defecto xc7z010clg400-1), SOLO_CSIM=1 para saltar la síntesis
set parte [expr {[info exists ::env(PARTE)] ? $::env(PARTE) : "xc7z010clg400-1"}]
open_project -reset proj
set_top hls_image_reducer
set cfl ""
if {[info exists ::env(SALIDA_HWC)]} { append cfl " -DSALIDA_HWC=$::env(SALIDA_HWC)" }
if {[info exists ::env(REDUCCION_LINEAL)]} { append cfl " -DREDUCCION_LINEAL=$::env(REDUCCION_LINEAL)" }
if {[info exists ::env(USAR_TABLA)]} { append cfl " -DUSAR_TABLA=$::env(USAR_TABLA)" }
add_files src/hls_image_reducer.cpp -cflags $cfl
add_files src/hls_image_reducer.h
add_files -tb tb/tb_reducer.cpp -cflags $cfl
open_solution -reset sol1 -flow_target vivado
set_part $parte
create_clock -period [expr {[info exists ::env(PERIODO)] ? $::env(PERIODO) : 10}] -name default
csim_design
if {[info exists ::env(COSIM)]} { csynth_design; cosim_design -rtl vhdl -tool xsim; exit }
if {![info exists ::env(SOLO_CSIM)]} {
  csynth_design
  export_design -rtl vhdl -format ip_catalog -output [expr {[info exists ::env(SALIDA_IP)] ? $::env(SALIDA_IP) : "[pwd]/ip"}]
}
exit
