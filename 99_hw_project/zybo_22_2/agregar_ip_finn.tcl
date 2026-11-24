# Integra el IP de FINN (CNN o MLP) tras el reductor en el diseño de bloques abierto. Se llama desde crear_proyecto.tcl con RED=cnn|mlp.
#   reductor(8 b, 150 MHz) -> axis_switch_1 -+-> M00 -> axi_dma_0 (captura de la imagen reducida, depuración)
#                                            +-> M01 -> conversor de ancho (8 -> 24 CNN / 32 MLP b) -> conversor de reloj (150 -> 100 MHz) -> finn_design -> axi_dma_1 (2 salidas de 8 b)
# El IP de FINN no genera TLAST: el DMA de salida se arma con la longitud exacta (4 bytes: 2 x int8... ver m_axis_0_tdata, 16 bits).
proc copiar_conexion {origen destino pin_o pin_d} {   ;# conecta pin_d de 'destino' a la misma red que pin_o de 'origen'
  set n [get_bd_nets -of_objects [get_bd_pins $origen/$pin_o]]
  connect_bd_net -net $n [get_bd_pins $destino/$pin_d]
}
set bytes_ancho [expr {$red eq "cnn" ? 3 : 4}]
# --- bloques nuevos
set sw [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_1]
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.ROUTING_MODE {1} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TSTRB {0} CONFIG.DECODER_REG {1} CONFIG.COMMON_CLOCK {0}] $sw
set dw [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 dwidth_finn]
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {1} CONFIG.M_TDATA_NUM_BYTES $bytes_ancho CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {0} CONFIG.HAS_MI_TKEEP {0}] $dw
set cc [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 cdc_finn]
set_property -dict [list CONFIG.TDATA_NUM_BYTES $bytes_ancho CONFIG.HAS_TLAST {0}] $cc
set fi [create_bd_cell -type ip -vlnv xilinx_finn:finn:finn_design:1.0 finn_design_0]
set d1 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_1]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {0} CONFIG.c_include_s2mm {1} CONFIG.c_s_axis_s2mm_tdata_width {16} CONFIG.c_m_axi_s2mm_data_width {32} CONFIG.c_sg_length_width {14} CONFIG.c_s2mm_burst_size {16}] $d1
# --- flujo de datos: el reductor ya no va al DMA 0 sino al conmutador
set red_out [get_bd_intf_pins hls_image_reducer_0/stream_out]
delete_bd_objs [get_bd_intf_nets -of_objects $red_out]
connect_bd_intf_net $red_out [get_bd_intf_pins axis_switch_1/S00_AXIS]
connect_bd_intf_net [get_bd_intf_pins axis_switch_1/M00_AXIS] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
connect_bd_intf_net [get_bd_intf_pins axis_switch_1/M01_AXIS] [get_bd_intf_pins dwidth_finn/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins dwidth_finn/M_AXIS] [get_bd_intf_pins cdc_finn/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins cdc_finn/M_AXIS] [get_bd_intf_pins finn_design_0/s_axis_0]
connect_bd_intf_net [get_bd_intf_pins finn_design_0/m_axis_0] [get_bd_intf_pins axi_dma_1/S_AXIS_S2MM]
# --- relojes y resets. Dominio rápido (150 MHz, el del reductor): conmutador y conversor de ancho. Dominio de FINN (100 MHz, FCLK_CLK0).
copiar_conexion hls_image_reducer_0 axis_switch_1 ap_clk aclk
copiar_conexion hls_image_reducer_0 axis_switch_1 ap_rst_n aresetn
copiar_conexion axis_switch_0 axis_switch_1 s_axi_ctrl_aclk s_axi_ctrl_aclk
copiar_conexion axis_switch_0 axis_switch_1 s_axi_ctrl_aresetn s_axi_ctrl_aresetn
copiar_conexion hls_image_reducer_0 dwidth_finn ap_clk aclk
copiar_conexion hls_image_reducer_0 dwidth_finn ap_rst_n aresetn
copiar_conexion hls_image_reducer_0 cdc_finn ap_clk s_axis_aclk
copiar_conexion hls_image_reducer_0 cdc_finn ap_rst_n s_axis_aresetn
set clk100 [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net $clk100 [get_bd_pins cdc_finn/m_axis_aclk] [get_bd_pins finn_design_0/ap_clk] [get_bd_pins axi_dma_1/m_axi_s2mm_aclk]
copiar_conexion axi_dma_0 axi_dma_1 s_axi_lite_aclk s_axi_lite_aclk      ;# el AXI-Lite va a 50 MHz, como el del DMA 0
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins cdc_finn/m_axis_aresetn] [get_bd_pins finn_design_0/ap_rst_n]
copiar_conexion axi_dma_0 axi_dma_1 axi_resetn axi_resetn
# --- AXI-Lite: dos puertos maestros más en el interconnect de periféricos (conmutador 1 y DMA 1)
# Los puertos M01 y M02 del interconnect quedaron libres al quitar el HDMI (video_dynclk y vtg): se reutilizan.
# No se cambia NUM_MI: al hacerlo, el interconnect regenera sus acopladores y añade un convertidor de protocolo (~350 LUT) por puerto (+3.600 LUT medidos).
foreach {ii celda pin} {M01 axis_switch_1 S_AXI_CTRL M02 axi_dma_1 S_AXI_LITE} {
  catch {delete_bd_objs [get_bd_intf_nets -of_objects [get_bd_intf_pins ps7_0_axi_periph/${ii}_AXI]]}
  connect_bd_intf_net [get_bd_intf_pins ps7_0_axi_periph/${ii}_AXI] [get_bd_intf_pins $celda/$pin]
}
# --- memoria: el DMA 1 escribe en DDR por el mismo puerto HP que el DMA 0 (axi_mem_intercon_2 con una entrada más)
set_property CONFIG.NUM_SI {2} [get_bd_cells axi_mem_intercon_2]
connect_bd_intf_net [get_bd_intf_pins axi_dma_1/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon_2/S01_AXI]
connect_bd_net $clk100 [get_bd_pins axi_mem_intercon_2/S01_ACLK]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins axi_mem_intercon_2/S01_ARESETN]
# --- interrupciones (las entradas de las del vídeo quedaron libres)
set_property CONFIG.NUM_PORTS {5} [get_bd_cells xlconcat_0]
connect_bd_net [get_bd_pins axi_dma_1/s2mm_introut] [get_bd_pins xlconcat_0/In4]
assign_bd_address
