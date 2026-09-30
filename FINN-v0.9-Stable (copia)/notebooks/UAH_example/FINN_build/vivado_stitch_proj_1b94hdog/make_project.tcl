create_project finn_vivado_stitch_proj /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/vivado_stitch_proj_1b94hdog -part xc7z020clg400-1
set_property ip_repo_paths [list $::env(FINN_ROOT)/finn-rtllib/memstream /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_0_ob6x5c6z/project_StreamingFIFO_0/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_Thresholding_Batch_0_kj86thfm/project_Thresholding_Batch_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_1_x_30uz8x/project_StreamingFIFO_1/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_FMPadding_Batch_0_jgmvdhs3/project_FMPadding_Batch_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_2_qvclyo5i/project_StreamingFIFO_2/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_ConvolutionInputGenerator_0_ybk3e4qf/project_ConvolutionInputGenerator_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_3_447u_2f9/project_StreamingFIFO_3/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_0_my8k32vl/project_MatrixVectorActivation_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_4_csorq8ss/project_StreamingFIFO_4/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_0_w9mxyx3n/project_StreamingDataWidthConverter_Batch_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_5_4m97bqmb/project_StreamingFIFO_5/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingMaxPool_Batch_0_50hpwwyi/project_StreamingMaxPool_Batch_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_6_t_8gd6cb/project_StreamingFIFO_6/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_FMPadding_Batch_1_sg_uaekk/project_FMPadding_Batch_1/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_7_nw1hf7nn/project_StreamingFIFO_7/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_ConvolutionInputGenerator_1_25m4etj5/project_ConvolutionInputGenerator_1/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_8_m9ff6pdr/project_StreamingFIFO_8/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_1_mr281vv1/project_StreamingDataWidthConverter_Batch_1/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_9_70xx1a3o/project_StreamingFIFO_9/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_1_9dfiagcs/project_MatrixVectorActivation_1/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_10_5ps0edoh/project_StreamingFIFO_10/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_2_34c7hz6b/project_StreamingDataWidthConverter_Batch_2/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_11_e5fwjrje/project_StreamingFIFO_11/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingMaxPool_Batch_1_jd4u86vw/project_StreamingMaxPool_Batch_1/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_12_f9nubxkv/project_StreamingFIFO_12/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_FMPadding_Batch_2_og2pwo7r/project_FMPadding_Batch_2/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_13_vns51vxg/project_StreamingFIFO_13/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_ConvolutionInputGenerator_2_azcveuvq/project_ConvolutionInputGenerator_2/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_14_qjulzow2/project_StreamingFIFO_14/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_3__g1h2g60/project_StreamingDataWidthConverter_Batch_3/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_15_uwq4k9_z/project_StreamingFIFO_15/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_2_c5d6ytfm/project_MatrixVectorActivation_2/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_16_5va5b0qf/project_StreamingFIFO_16/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_4_byavc5lz/project_StreamingDataWidthConverter_Batch_4/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_17_rbc3xwyq/project_StreamingFIFO_17/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingMaxPool_Batch_2_uj7h1yue/project_StreamingMaxPool_Batch_2/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_18_5sx_vt1j/project_StreamingFIFO_18/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_5__mxg4mik /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_19_djij0jko/project_StreamingFIFO_19/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_3_uqaj8809/project_MatrixVectorActivation_3/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_20_z3x84mqr/project_StreamingFIFO_20/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingDataWidthConverter_Batch_6_m48wtaex/project_StreamingDataWidthConverter_Batch_6/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_21_kosko_jv/project_StreamingFIFO_21/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_4_2ay3ojwy/project_MatrixVectorActivation_4/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_22_l9ud_q6o/project_StreamingFIFO_22/sol1/impl/verilog /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_LabelSelect_Batch_0_mj0frppw/project_LabelSelect_Batch_0/sol1/impl/ip /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_StreamingFIFO_23_fep0wb5x/project_StreamingFIFO_23/sol1/impl/verilog] [current_project]
update_ip_catalog
create_bd_design "finn_design"
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_0:1.0 StreamingFIFO_0
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_0:1.0 Thresholding_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1:1.0 StreamingFIFO_1
create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_0:1.0 FMPadding_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_2:1.0 StreamingFIFO_2
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_0:1.0 ConvolutionInputGenerator_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_3:1.0 StreamingFIFO_3
create_bd_cell -type hier MatrixVectorActivation_0
create_bd_pin -dir I -type clk /MatrixVectorActivation_0/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_0:1.0 /MatrixVectorActivation_0/MatrixVectorActivation_0
create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 /MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm
set_property -dict [list CONFIG.NSTREAMS {1} CONFIG.MEM_DEPTH {144} CONFIG.MEM_WIDTH {8} CONFIG.MEM_INIT {/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_0_my8k32vl/} CONFIG.RAM_STYLE {distributed} CONFIG.STRM0_DEPTH {144} CONFIG.STRM0_WIDTH {8} CONFIG.STRM0_OFFSET {0} ] [get_bd_cells /MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_rst_n] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/aresetn]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_clk] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/aclk]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_rst_n] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_clk] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/in0_V] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/out_V] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/out_V]
save_bd_design
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_4:1.0 StreamingFIFO_4
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_0:1.0 StreamingDataWidthConverter_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_5:1.0 StreamingFIFO_5
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_0:1.0 StreamingMaxPool_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_6:1.0 StreamingFIFO_6
create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_1:1.0 FMPadding_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_7:1.0 StreamingFIFO_7
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_1:1.0 ConvolutionInputGenerator_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_8:1.0 StreamingFIFO_8
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_1:1.0 StreamingDataWidthConverter_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_9:1.0 StreamingFIFO_9
create_bd_cell -type hier MatrixVectorActivation_1
create_bd_pin -dir I -type clk /MatrixVectorActivation_1/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_1:1.0 /MatrixVectorActivation_1/MatrixVectorActivation_1
create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 /MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm
set_property -dict [list CONFIG.NSTREAMS {1} CONFIG.MEM_DEPTH {4608} CONFIG.MEM_WIDTH {8} CONFIG.MEM_INIT {/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_1_9dfiagcs/} CONFIG.RAM_STYLE {distributed} CONFIG.STRM0_DEPTH {4608} CONFIG.STRM0_WIDTH {8} CONFIG.STRM0_OFFSET {0} ] [get_bd_cells /MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_rst_n] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/aresetn]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_clk] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/aclk]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_rst_n] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_clk] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/in0_V] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/out_V] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/out_V]
save_bd_design
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_10:1.0 StreamingFIFO_10
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_2:1.0 StreamingDataWidthConverter_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_11:1.0 StreamingFIFO_11
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_1:1.0 StreamingMaxPool_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_12:1.0 StreamingFIFO_12
create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_2:1.0 FMPadding_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_13:1.0 StreamingFIFO_13
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_2:1.0 ConvolutionInputGenerator_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_14:1.0 StreamingFIFO_14
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_3:1.0 StreamingDataWidthConverter_Batch_3
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_15:1.0 StreamingFIFO_15
create_bd_cell -type hier MatrixVectorActivation_2
create_bd_pin -dir I -type clk /MatrixVectorActivation_2/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_2:1.0 /MatrixVectorActivation_2/MatrixVectorActivation_2
create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 /MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm
set_property -dict [list CONFIG.NSTREAMS {1} CONFIG.MEM_DEPTH {18432} CONFIG.MEM_WIDTH {8} CONFIG.MEM_INIT {/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_2_c5d6ytfm/} CONFIG.RAM_STYLE {distributed} CONFIG.STRM0_DEPTH {18432} CONFIG.STRM0_WIDTH {8} CONFIG.STRM0_OFFSET {0} ] [get_bd_cells /MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_rst_n] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/aresetn]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_clk] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/aclk]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_rst_n] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_clk] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/in0_V] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/out_V] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/out_V]
save_bd_design
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_16:1.0 StreamingFIFO_16
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_4:1.0 StreamingDataWidthConverter_Batch_4
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_17:1.0 StreamingFIFO_17
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_2:1.0 StreamingMaxPool_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_18:1.0 StreamingFIFO_18
create_bd_cell -type hier StreamingDataWidthConverter_Batch_5
create_bd_pin -dir I -type clk /StreamingDataWidthConverter_Batch_5/ap_clk
create_bd_pin -dir I -type rst /StreamingDataWidthConverter_Batch_5/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingDataWidthConverter_Batch_5/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingDataWidthConverter_Batch_5/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 /StreamingDataWidthConverter_Batch_5/dwc
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells /StreamingDataWidthConverter_Batch_5/dwc]
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {32}] [get_bd_cells /StreamingDataWidthConverter_Batch_5/dwc]
set_property -dict [list CONFIG.M_TDATA_NUM_BYTES {4}] [get_bd_cells /StreamingDataWidthConverter_Batch_5/dwc]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/dwc/M_AXIS] [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/dwc/S_AXIS] [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/in0_V]
connect_bd_net [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_5/dwc/aresetn]
connect_bd_net [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_5/dwc/aclk]
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_19:1.0 StreamingFIFO_19
create_bd_cell -type hier MatrixVectorActivation_3
create_bd_pin -dir I -type clk /MatrixVectorActivation_3/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_3:1.0 /MatrixVectorActivation_3/MatrixVectorActivation_3
create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 /MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm
set_property -dict [list CONFIG.NSTREAMS {1} CONFIG.MEM_DEPTH {8192} CONFIG.MEM_WIDTH {256} CONFIG.MEM_INIT {/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_3_uqaj8809/} CONFIG.RAM_STYLE {block} CONFIG.STRM0_DEPTH {8192} CONFIG.STRM0_WIDTH {256} CONFIG.STRM0_OFFSET {0} ] [get_bd_cells /MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_rst_n] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/aresetn]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_clk] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/aclk]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_rst_n] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_clk] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/in0_V] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/out_V] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/out_V]
save_bd_design
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_20:1.0 StreamingFIFO_20
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_6:1.0 StreamingDataWidthConverter_Batch_6
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_21:1.0 StreamingFIFO_21
create_bd_cell -type hier MatrixVectorActivation_4
create_bd_pin -dir I -type clk /MatrixVectorActivation_4/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_4/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_4/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_4/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_4:1.0 /MatrixVectorActivation_4/MatrixVectorActivation_4
create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 /MatrixVectorActivation_4/MatrixVectorActivation_4_wstrm
set_property -dict [list CONFIG.NSTREAMS {1} CONFIG.MEM_DEPTH {1792} CONFIG.MEM_WIDTH {8} CONFIG.MEM_INIT {/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_4_2ay3ojwy/} CONFIG.RAM_STYLE {distributed} CONFIG.STRM0_DEPTH {1792} CONFIG.STRM0_WIDTH {8} CONFIG.STRM0_OFFSET {0} ] [get_bd_cells /MatrixVectorActivation_4/MatrixVectorActivation_4_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_4/MatrixVectorActivation_4_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_4/MatrixVectorActivation_4/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_4/ap_rst_n] [get_bd_pins MatrixVectorActivation_4/MatrixVectorActivation_4_wstrm/aresetn]
connect_bd_net [get_bd_pins MatrixVectorActivation_4/ap_clk] [get_bd_pins MatrixVectorActivation_4/MatrixVectorActivation_4_wstrm/aclk]
connect_bd_net [get_bd_pins MatrixVectorActivation_4/ap_rst_n] [get_bd_pins MatrixVectorActivation_4/MatrixVectorActivation_4/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_4/ap_clk] [get_bd_pins MatrixVectorActivation_4/MatrixVectorActivation_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_4/in0_V] [get_bd_intf_pins MatrixVectorActivation_4/MatrixVectorActivation_4/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_4/out_V] [get_bd_intf_pins MatrixVectorActivation_4/MatrixVectorActivation_4/out_V]
save_bd_design
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_22:1.0 StreamingFIFO_22
create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_Batch_0:1.0 LabelSelect_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_23:1.0 StreamingFIFO_23
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_0/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0/out_V] [get_bd_intf_pins Thresholding_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_1/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/out_V] [get_bd_intf_pins FMPadding_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_2/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins FMPadding_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_2/out_V] [get_bd_intf_pins ConvolutionInputGenerator_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_3/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_3/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_0/out_V] [get_bd_intf_pins StreamingFIFO_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_3/out_V] [get_bd_intf_pins MatrixVectorActivation_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_4/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_4/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/out_V] [get_bd_intf_pins StreamingFIFO_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_4/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_5/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_5/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_6/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_6/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_6/out_V] [get_bd_intf_pins FMPadding_Batch_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_7/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_7/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins FMPadding_Batch_1/out_V] [get_bd_intf_pins StreamingFIFO_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_7/out_V] [get_bd_intf_pins ConvolutionInputGenerator_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_8/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_8/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_1/out_V] [get_bd_intf_pins StreamingFIFO_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_8/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_9/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_9/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/out_V] [get_bd_intf_pins StreamingFIFO_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_9/out_V] [get_bd_intf_pins MatrixVectorActivation_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_10/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_10/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/out_V] [get_bd_intf_pins StreamingFIFO_10/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_10/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_11/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_11/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_11/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_11/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_11/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_12/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_12/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_12/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_1/out_V] [get_bd_intf_pins StreamingFIFO_12/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins FMPadding_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins FMPadding_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_12/out_V] [get_bd_intf_pins FMPadding_Batch_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_13/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_13/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_13/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins FMPadding_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_13/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_13/out_V] [get_bd_intf_pins ConvolutionInputGenerator_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_14/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_14/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_14/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_2/out_V] [get_bd_intf_pins StreamingFIFO_14/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_14/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_15/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_15/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_15/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_3/out_V] [get_bd_intf_pins StreamingFIFO_15/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_15/out_V] [get_bd_intf_pins MatrixVectorActivation_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_16/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_16/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_16/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/out_V] [get_bd_intf_pins StreamingFIFO_16/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_16/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_17/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_17/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_17/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_4/out_V] [get_bd_intf_pins StreamingFIFO_17/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_17/out_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_18/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_18/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_18/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_18/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_18/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_19/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_19/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_19/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_5/out_V] [get_bd_intf_pins StreamingFIFO_19/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_19/out_V] [get_bd_intf_pins MatrixVectorActivation_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_20/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_20/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_20/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/out_V] [get_bd_intf_pins StreamingFIFO_20/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_20/out_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_21/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_21/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_21/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_6/out_V] [get_bd_intf_pins StreamingFIFO_21/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_21/out_V] [get_bd_intf_pins MatrixVectorActivation_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_22/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_22/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_22/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_4/out_V] [get_bd_intf_pins StreamingFIFO_22/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins LabelSelect_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins LabelSelect_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_22/out_V] [get_bd_intf_pins LabelSelect_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_23/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_23/ap_clk]
make_bd_pins_external [get_bd_pins StreamingFIFO_23/maxcount]
set_property name maxcount [get_bd_ports maxcount_0]
connect_bd_intf_net [get_bd_intf_pins LabelSelect_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_23/in0_V]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_0/in0_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_0]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_23/out_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_0]
set_property CONFIG.FREQ_HZ 100000000.000000 [get_bd_ports /ap_clk]
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/vivado_stitch_proj_1b94hdog/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/vivado_stitch_proj_1b94hdog/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
set_property top finn_design_wrapper [current_fileset]
ipx::package_project -root_dir /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/vivado_stitch_proj_1b94hdog/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
ipx::remove_segment -quiet m_axi_gmem0:APERTURE_0 [ipx::get_address_spaces m_axi_gmem0 -of_objects [ipx::current_core]]
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property value_resolve_type user [ipx::get_bus_parameters -of [ipx::get_bus_interfaces -of [ipx::current_core ]]]
file copy -force data ip/
ipx::add_file_group -type software_driver {} [ipx::current_core]
set_property type mdd [ipx::add_file data/finn_design.mdd [ipx::get_file_groups xilinx_softwaredriver -of_objects [ipx::current_core]]]
set_property type tclSource [ipx::add_file data/finn_design.tcl [ipx::get_file_groups xilinx_softwaredriver -of_objects [ipx::current_core]]]
ipx::update_checksums [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::save_core [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set all_v_files [get_files -filter {USED_IN_SYNTHESIS == 1 && (FILE_TYPE == Verilog || FILE_TYPE == SystemVerilog || FILE_TYPE =="Verilog Header")}]
set fp [open /home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/vivado_stitch_proj_1b94hdog/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
