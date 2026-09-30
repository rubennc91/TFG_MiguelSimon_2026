// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jul  8 10:44:20 2026
// Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/ip/finn_design_MatrixVectorActivation_1_0/finn_design_MatrixVectorActivation_1_0_stub.v
// Design      : finn_design_MatrixVectorActivation_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MatrixVectorActivation_1,Vivado 2022.2.2" *)
module finn_design_MatrixVectorActivation_1_0(ap_clk, ap_rst_n, in0_V_TVALID, in0_V_TREADY, 
  in0_V_TDATA, out_V_TVALID, out_V_TREADY, out_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in0_V_TVALID,in0_V_TREADY,in0_V_TDATA[7:0],out_V_TVALID,out_V_TREADY,out_V_TDATA[7:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in0_V_TVALID;
  output in0_V_TREADY;
  input [7:0]in0_V_TDATA;
  output out_V_TVALID;
  input out_V_TREADY;
  output [7:0]out_V_TDATA;
endmodule
