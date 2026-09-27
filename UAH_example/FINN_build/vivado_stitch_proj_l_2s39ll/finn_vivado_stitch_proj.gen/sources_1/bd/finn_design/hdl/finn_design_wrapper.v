//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Tue Jun 16 08:31:33 2026
//Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target finn_design_wrapper.bd
//Design      : finn_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module finn_design_wrapper
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    maxcount,
    maxcount_1,
    maxcount_2,
    maxcount_3,
    maxcount_4,
    maxcount_5,
    maxcount_6,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  input ap_clk;
  input ap_rst_n;
  output [7:0]m_axis_0_tdata;
  input m_axis_0_tready;
  output m_axis_0_tvalid;
  output [6:0]maxcount;
  output [3:0]maxcount_1;
  output [4:0]maxcount_2;
  output [2:0]maxcount_3;
  output [3:0]maxcount_4;
  output [0:0]maxcount_5;
  output [0:0]maxcount_6;
  input [63:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]m_axis_0_tdata;
  wire m_axis_0_tready;
  wire m_axis_0_tvalid;
  wire [6:0]maxcount;
  wire [3:0]maxcount_1;
  wire [4:0]maxcount_2;
  wire [2:0]maxcount_3;
  wire [3:0]maxcount_4;
  wire [0:0]maxcount_5;
  wire [0:0]maxcount_6;
  wire [63:0]s_axis_0_tdata;
  wire s_axis_0_tready;
  wire s_axis_0_tvalid;

  finn_design finn_design_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_0_tdata(m_axis_0_tdata),
        .m_axis_0_tready(m_axis_0_tready),
        .m_axis_0_tvalid(m_axis_0_tvalid),
        .maxcount(maxcount),
        .maxcount_1(maxcount_1),
        .maxcount_2(maxcount_2),
        .maxcount_3(maxcount_3),
        .maxcount_4(maxcount_4),
        .maxcount_5(maxcount_5),
        .maxcount_6(maxcount_6),
        .s_axis_0_tdata(s_axis_0_tdata),
        .s_axis_0_tready(s_axis_0_tready),
        .s_axis_0_tvalid(s_axis_0_tvalid));
endmodule
