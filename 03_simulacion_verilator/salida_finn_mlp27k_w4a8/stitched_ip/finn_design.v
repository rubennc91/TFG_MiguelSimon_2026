// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jul  8 10:45:29 2026
// Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub finn_design.v
// Design      : finn_design_wrapper
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module finn_design_wrapper(ap_clk, ap_rst_n, m_axis_0_tdata, 
  m_axis_0_tready, m_axis_0_tvalid, s_axis_0_tdata, s_axis_0_tready, s_axis_0_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,m_axis_0_tdata[23:0],m_axis_0_tready,m_axis_0_tvalid,s_axis_0_tdata[7:0],s_axis_0_tready,s_axis_0_tvalid" */;
  input ap_clk;
  input ap_rst_n;
  output [23:0]m_axis_0_tdata;
  input m_axis_0_tready;
  output m_axis_0_tvalid;
  input [7:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;
endmodule
