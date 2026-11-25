# HIL: la imagen de 1280x720 llega desde Gazebo a la DDR (la escribe la CPU) y un DMA simple (axi_dma_2, solo MM2S) la inyecta donde entra la cámara.
#   gamma --------------------------------------------------\
#                                                             axis_switch_hil (2 -> 1) -> axis_switch_0 -> reductor -> ...
#   DDR -> axi_dma_2 (8 b) -> dwidth_hil (8 -> 24 b) -> axis_sof_0 /
# Una orden de DMA = una trama (sin repetición ni sincronismo de vídeo). axis_sof pone TUSER en el primer píxel. Todo a 150 MHz (el reloj del reductor).
# La cámara no se inicializa (la CPU no configura el sensor), así que en el conmutador solo transmite este camino.
set g [get_bd_intf_pins AXI_GammaCorrection_1/m_axis_video]
delete_bd_objs [get_bd_intf_nets -of_objects $g]
set hs [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_hil]
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1} CONFIG.HAS_TLAST {1} CONFIG.TDATA_NUM_BYTES {3} CONFIG.TUSER_WIDTH {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TSTRB {0}] $hs
set d2 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_2]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_s2mm {0} CONFIG.c_include_mm2s {1} CONFIG.c_m_axi_mm2s_data_width {32} CONFIG.c_m_axis_mm2s_tdata_width {8} CONFIG.c_mm2s_burst_size {16} CONFIG.c_sg_length_width {26}] $d2
set dw [create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 dwidth_hil]
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {1} CONFIG.M_TDATA_NUM_BYTES {3} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {0} CONFIG.HAS_MI_TKEEP {0}] $dw
set sof [create_bd_cell -type module -reference axis_sof axis_sof_0]
connect_bd_intf_net [get_bd_intf_pins $d2/M_AXIS_MM2S] [get_bd_intf_pins $dw/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins $dw/M_AXIS] [get_bd_intf_pins $sof/s_axis]
connect_bd_intf_net $g [get_bd_intf_pins $hs/S00_AXIS]
connect_bd_intf_net [get_bd_intf_pins $sof/m_axis] [get_bd_intf_pins $hs/S01_AXIS]
connect_bd_intf_net [get_bd_intf_pins $hs/M00_AXIS] [get_bd_intf_pins axis_switch_0/S00_AXIS]
copiar_conexion hls_image_reducer_0 $hs ap_clk aclk
copiar_conexion hls_image_reducer_0 $hs ap_rst_n aresetn
copiar_conexion hls_image_reducer_0 $dw ap_clk aclk
copiar_conexion hls_image_reducer_0 $dw ap_rst_n aresetn
copiar_conexion hls_image_reducer_0 $sof ap_clk aclk
copiar_conexion hls_image_reducer_0 $sof ap_rst_n aresetn
copiar_conexion hls_image_reducer_0 $d2 ap_clk m_axi_mm2s_aclk
copiar_conexion axi_dma_0 $d2 s_axi_lite_aclk s_axi_lite_aclk
copiar_conexion axi_dma_0 $d2 axi_resetn axi_resetn
# AXI-Lite: un puerto maestro más en el interconnect de periféricos (no quedaba ninguno libre)
set_property CONFIG.NUM_MI {10} [get_bd_cells ps7_0_axi_periph]
connect_bd_intf_net [get_bd_intf_pins ps7_0_axi_periph/M09_AXI] [get_bd_intf_pins $d2/S_AXI_LITE]
copiar_conexion axi_dma_0 ps7_0_axi_periph s_axi_lite_aclk M09_ACLK
connect_bd_net [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn] [get_bd_pins ps7_0_axi_periph/M09_ARESETN]
# memoria: el DMA lee la DDR por el puerto HP1 (axi_mem_intercon_2, entrada nueva a 150 MHz como la de axi_dma_0)
set_property CONFIG.NUM_SI {3} [get_bd_cells axi_mem_intercon_2]
connect_bd_intf_net [get_bd_intf_pins $d2/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon_2/S02_AXI]
copiar_conexion hls_image_reducer_0 axi_mem_intercon_2 ap_clk S02_ACLK
connect_bd_net [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn] [get_bd_pins axi_mem_intercon_2/S02_ARESETN]
assign_bd_address
