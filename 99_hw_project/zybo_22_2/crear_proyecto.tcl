# Reconstruye el proyecto de la cámara Pcam 5C (diseño system_v2 de Vivado 2023.1) en Vivado 2022.2 y lo implementa.
# Uso:  source /tools/Xilinx/Vivado/2022.2/settings64.sh
#       PLACA=z7-10 vivado -mode batch -source crear_proyecto.tcl -notrace      (o PLACA=z7-20; HASTA=bd|synth|impl, por defecto impl)
set aqui [file dirname [file normalize [info script]]]
set placa [expr {[info exists ::env(PLACA)] ? $::env(PLACA) : "z7-10"}]
set hasta [expr {[info exists ::env(HASTA)] ? $::env(HASTA) : "impl"}]
set parte [dict get {z7-10 xc7z010clg400-1 z7-20 xc7z020clg400-1} $placa]
set carpeta   [expr {[info exists ::env(DIR_PROYECTO)] ? $::env(DIR_PROYECTO) : "$aqui/proyecto_$placa"}]
set_param board.repoPaths [list $aqui/board_files]
create_project -force proy $carpeta -part $parte
if {$placa eq "z7-10"} { set_property board_part digilentinc.com:zybo-z7-10:part0:1.1 [current_project] }
set variante [expr {[info exists ::env(VARIANTE)] ? $::env(VARIANTE) : "completa"}]   ;# completa | sin_hdmi
set hil [expr {[info exists ::env(HIL)] ? $::env(HIL) : 0}]                          ;# 1: HIL, la imagen 1280x720 entra desde la DDR por un DMA (MM2S) en lugar de la cámara
set red [expr {[info exists ::env(RED)] ? $::env(RED) : "ninguna"}]                    ;# ninguna | cnn | mlp: IP de FINN que se integra tras el reductor (exige VARIANTE=sin_hdmi)
set reductor_repo [expr {[info exists ::env(REDUCTOR_REPO)] ? $::env(REDUCTOR_REPO) : ($red eq "ninguna" ? "reductor" : "reductor_$red")}]   ;# reductor (planar) | reductor_hwc (CNN, sin tabla) | reductor_cnn / reductor_mlp (con tabla de entrada)
if {$red ne "ninguna" && $variante ne "sin_hdmi"} { puts "ERROR: RED=$red exige VARIANTE=sin_hdmi"; exit 1 }
set_property ip_repo_paths [list $aqui/fuentes/ip_repo/local $aqui/fuentes/ip_repo/digilent_ip $aqui/fuentes/ip_repo/digilent_if $aqui/fuentes/ip_repo/$reductor_repo {*}[expr {$red eq "ninguna" ? {} : [list [expr {[info exists ::env(FINN_REPO)] ? $::env(FINN_REPO) : "$aqui/fuentes/ip_repo/finn_$red"}]]}]] [current_project]
update_ip_catalog
add_files -norecurse [concat [glob $aqui/fuentes/hdl/*.vhd] [glob -nocomplain $aqui/fuentes/hdl/*.v]]
if {$variante eq "sin_hdmi"} {
  # sin la salida de vídeo: se quitan del XDC las líneas del HDMI y de los relojes de píxel
  file mkdir $carpeta/constrs_filtrados
  foreach f [glob $aqui/fuentes/constrs/*.xdc] {
    set i [open $f]; set o [open $carpeta/constrs_filtrados/[file tail $f] w]
    foreach l [split [read $i] "\n"] { if {![regexp -nocase {hdmi|video_dynclk|pixel_dynclk|DVIClocking|TMDS} $l]} { puts $o $l } }
    close $i; close $o
  }
  add_files -fileset constrs_1 -norecurse [glob $carpeta/constrs_filtrados/*.xdc]
} else {
  add_files -fileset constrs_1 -norecurse [glob $aqui/fuentes/constrs/*.xdc]
}
set bd_trabajo $carpeta/proy.srcs/sources_1/bd/system_v2     ;# copia de trabajo en el sitio estándar de Vivado: save_bd_design no toca fuentes/
file mkdir $bd_trabajo
file copy -force $aqui/fuentes/bd/system_v2.bd $bd_trabajo/system_v2.bd
add_files -norecurse $bd_trabajo/system_v2.bd
open_bd_design [get_files system_v2.bd]
if {$variante eq "sin_hdmi"} {
  # Quitar la ruta de vídeo a HDMI (era solo para depurar). Se conserva la captura a DDR por el canal S2MM del VDMA.
  foreach c {vtg v_axi4s_vid_out_0 rgb2dvi_0 video_dynclk DVIClocking_1 rst_vid_clk_dyn axi_mem_intercon} { catch {delete_bd_objs [get_bd_cells $c]} }
  catch {delete_bd_objs [get_bd_intf_ports hdmi_tx]}
  set_property -dict [list CONFIG.c_include_mm2s {0}] [get_bd_cells axi_vdma_0]
}
if {$red ne "ninguna"} { source $aqui/agregar_ip_finn.tcl }
if {$hil} { source $aqui/agregar_hil.tcl }
upgrade_ip -quiet [get_ips -all]                       ;# IP creadas con 2023.1 / subnúcleos bloqueados; el reductor propio también
report_ip_status
validate_bd_design
save_bd_design
make_wrapper -files [get_files system_v2.bd] -top -import
set_property top system_v2_wrapper [current_fileset]
update_compile_order -fileset sources_1
if {$hasta eq "bd"} { exit }
launch_runs synth_1 -jobs [expr {[info exists ::env(JOBS)] ? $::env(JOBS) : 8}]; wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} { puts "ERROR: la síntesis falló"; exit 1 }
open_run synth_1; report_utilization -file $carpeta/utilizacion_synth.rpt
if {$hasta eq "synth"} { exit }
# Estrategia con más esfuerzo tras el rutado (el dominio de 150 MHz del diseño original solo tenía +0,019 ns de holgura)
set_property strategy [expr {[info exists ::env(ESTRATEGIA)] ? $::env(ESTRATEGIA) : "Performance_ExplorePostRoutePhysOpt"}] [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream -jobs [expr {[info exists ::env(JOBS)] ? $::env(JOBS) : 8}]; wait_on_run impl_1
open_run impl_1
report_utilization    -file $carpeta/utilizacion.rpt
report_timing_summary -file $carpeta/tiempos.rpt -max_paths 10
report_power          -file $carpeta/potencia.rpt
write_hw_platform -fixed -include_bit -force $carpeta/system_v2_wrapper.xsa
puts "FIN: $carpeta"
