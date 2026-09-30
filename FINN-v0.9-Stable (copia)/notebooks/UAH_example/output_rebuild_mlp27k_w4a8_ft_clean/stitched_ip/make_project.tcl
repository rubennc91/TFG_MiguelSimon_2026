create_project finn_vivado_stitch_proj /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2 -part xc7z020clg400-1
set_property ip_repo_paths [list $::env(FINN_ROOT)/finn-rtllib/memstream /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_0_0_mptvji3l/project_StreamingFIFO_0_0/sol1/impl/verilog /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_0_1_y03kxkv1/project_StreamingFIFO_0_1/sol1/impl/verilog /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_Thresholding_Batch_0_jcyptf8i/project_Thresholding_Batch_0/sol1/impl/ip /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_1_0_h2t5sgzy/project_StreamingFIFO_1_0/sol1/impl/verilog /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_1_1_2y6q_dbz/project_StreamingFIFO_1_1/sol1/impl/verilog /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_MatrixVectorActivation_0_bcm0pwkr/project_MatrixVectorActivation_0/sol1/impl/ip /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_StreamingFIFO_2_tnhtsv9p/project_StreamingFIFO_2/sol1/impl/verilog /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_MatrixVectorActivation_1_ymjdvd67/project_MatrixVectorActivation_1/sol1/impl/ip /tmp/FINN_build_mlp27k_w4a8_ft_clean/code_gen_ipgen_MatrixVectorActivation_2_xj0kii62/project_MatrixVectorActivation_2/sol1/impl/ip] [current_project]
update_ip_catalog
create_bd_design "finn_design"
create_bd_cell -type hier StreamingFIFO_0_0
create_bd_pin -dir I -type clk /StreamingFIFO_0_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_0_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_0_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_0_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_0_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {512}] [get_bd_cells /StreamingFIFO_0_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_0_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_0_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_0_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_0_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_0_0/ap_rst_n] [get_bd_pins StreamingFIFO_0_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_0_0/ap_clk] [get_bd_pins StreamingFIFO_0_0/fifo/s_axis_aclk]
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_0_1:1.0 StreamingFIFO_0_1
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_0:1.0 Thresholding_Batch_0
create_bd_cell -type hier StreamingFIFO_1_0
create_bd_pin -dir I -type clk /StreamingFIFO_1_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_1_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_1_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_1_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_1_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {512}] [get_bd_cells /StreamingFIFO_1_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_1_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_1_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_1_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_1_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_1_0/ap_rst_n] [get_bd_pins StreamingFIFO_1_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_1_0/ap_clk] [get_bd_pins StreamingFIFO_1_0/fifo/s_axis_aclk]
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1_1:1.0 StreamingFIFO_1_1
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_0:1.0 MatrixVectorActivation_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_2:1.0 StreamingFIFO_2
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_1:1.0 MatrixVectorActivation_1
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_2:1.0 MatrixVectorActivation_2
make_bd_pins_external [get_bd_pins StreamingFIFO_0_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_0_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_0_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_0_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0_0/out_V] [get_bd_intf_pins StreamingFIFO_0_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0_1/out_V] [get_bd_intf_pins Thresholding_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_1_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1_0/out_V] [get_bd_intf_pins StreamingFIFO_1_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1_1/out_V] [get_bd_intf_pins MatrixVectorActivation_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/out_V] [get_bd_intf_pins StreamingFIFO_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_2/out_V] [get_bd_intf_pins MatrixVectorActivation_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/out_V] [get_bd_intf_pins MatrixVectorActivation_2/in0_V]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_0_0/in0_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_0]
make_bd_intf_pins_external [get_bd_intf_pins MatrixVectorActivation_2/out_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_0]
set_property CONFIG.FREQ_HZ 100000000.000000 [get_bd_ports /ap_clk]
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
set_property top finn_design_wrapper [current_fileset]
set_property SYNTH_CHECKPOINT_MODE Hierarchical [ get_files /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd ]
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
launch_runs synth_1 -jobs 4
wait_on_run [get_runs synth_1]
open_run synth_1 -name synth_1
write_verilog -force -mode synth_stub finn_design.v
write_checkpoint finn_design.dcp
write_xdc finn_design.xdc
report_utilization -hierarchical -hierarchical_depth 5 -file finn_design_partition_util.rpt
ipx::package_project -root_dir /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
ipx::remove_segment -quiet m_axi_gmem0:APERTURE_0 [ipx::get_address_spaces m_axi_gmem0 -of_objects [ipx::current_core]]
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property value_resolve_type user [ipx::get_bus_parameters -of [ipx::get_bus_interfaces -of [ipx::current_core ]]]
set_property sdx_kernel true [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property sdx_kernel_type rtl [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property supported_families { } [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property auto_family_support_level level_2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::remove_all_file [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation]
ipx::remove_all_file [ipx::get_file_groups xilinx_anylanguagesynthesis]
ipx::remove_file_group xilinx_anylanguagebehavioralsimulation [ipx::current_core]
ipx::remove_file_group xilinx_anylanguagesynthesis [ipx::current_core]
file delete -force /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/sim
file delete -force /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/src
file mkdir /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/dcp
file mkdir /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/impl
file copy -force finn_design.dcp /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/dcp
file copy -force finn_design.xdc /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/ip/impl
ipx::add_file_group xilinx_implementation [ipx::current_core]
ipx::add_file impl/finn_design.xdc [ipx::get_file_groups xilinx_implementation]
set_property used_in [list implementation] [ipx::get_files impl/finn_design.xdc -of_objects [ipx::get_file_groups xilinx_implementation]]
ipx::add_file_group xilinx_synthesischeckpoint [ipx::current_core]
ipx::add_file dcp/finn_design.dcp [ipx::get_file_groups xilinx_synthesischeckpoint]
ipx::add_file_group xilinx_simulationcheckpoint [ipx::current_core]
ipx::add_file dcp/finn_design.dcp [ipx::get_file_groups xilinx_simulationcheckpoint]
file copy -force data ip/
ipx::add_file_group -type software_driver {} [ipx::current_core]
set_property type mdd [ipx::add_file data/finn_design.mdd [ipx::get_file_groups xilinx_softwaredriver -of_objects [ipx::current_core]]]
set_property type tclSource [ipx::add_file data/finn_design.tcl [ipx::get_file_groups xilinx_softwaredriver -of_objects [ipx::current_core]]]
ipx::update_checksums [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::save_core [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set all_v_files [get_files -filter {USED_IN_SYNTHESIS == 1 && (FILE_TYPE == Verilog || FILE_TYPE == SystemVerilog || FILE_TYPE =="Verilog Header")}]
set fp [open /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
