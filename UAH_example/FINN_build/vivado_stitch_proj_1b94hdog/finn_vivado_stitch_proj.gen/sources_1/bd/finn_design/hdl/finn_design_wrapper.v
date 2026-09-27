//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Fri Jun 12 09:19:56 2026
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
    maxcount_10,
    maxcount_11,
    maxcount_12,
    maxcount_13,
    maxcount_14,
    maxcount_15,
    maxcount_16,
    maxcount_17,
    maxcount_18,
    maxcount_19,
    maxcount_2,
    maxcount_20,
    maxcount_21,
    maxcount_22,
    maxcount_23,
    maxcount_3,
    maxcount_4,
    maxcount_5,
    maxcount_6,
    maxcount_7,
    maxcount_8,
    maxcount_9,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  input ap_clk;
  input ap_rst_n;
  output [7:0]m_axis_0_tdata;
  input m_axis_0_tready;
  output m_axis_0_tvalid;
  output [11:0]maxcount;
  output [11:0]maxcount_1;
  output [14:0]maxcount_10;
  output [9:0]maxcount_11;
  output [7:0]maxcount_12;
  output [8:0]maxcount_13;
  output [11:0]maxcount_14;
  output [16:0]maxcount_15;
  output [13:0]maxcount_16;
  output [7:0]maxcount_17;
  output [5:0]maxcount_18;
  output [8:0]maxcount_19;
  output [12:0]maxcount_2;
  output [3:0]maxcount_20;
  output [6:0]maxcount_21;
  output [3:0]maxcount_22;
  output [0:0]maxcount_23;
  output [15:0]maxcount_3;
  output [15:0]maxcount_4;
  output [11:0]maxcount_5;
  output [9:0]maxcount_6;
  output [10:0]maxcount_7;
  output [13:0]maxcount_8;
  output [17:0]maxcount_9;
  input [7:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]m_axis_0_tdata;
  wire m_axis_0_tready;
  wire m_axis_0_tvalid;
  wire [11:0]maxcount;
  wire [11:0]maxcount_1;
  wire [14:0]maxcount_10;
  wire [9:0]maxcount_11;
  wire [7:0]maxcount_12;
  wire [8:0]maxcount_13;
  wire [11:0]maxcount_14;
  wire [16:0]maxcount_15;
  wire [13:0]maxcount_16;
  wire [7:0]maxcount_17;
  wire [5:0]maxcount_18;
  wire [8:0]maxcount_19;
  wire [12:0]maxcount_2;
  wire [3:0]maxcount_20;
  wire [6:0]maxcount_21;
  wire [3:0]maxcount_22;
  wire [0:0]maxcount_23;
  wire [15:0]maxcount_3;
  wire [15:0]maxcount_4;
  wire [11:0]maxcount_5;
  wire [9:0]maxcount_6;
  wire [10:0]maxcount_7;
  wire [13:0]maxcount_8;
  wire [17:0]maxcount_9;
  wire [7:0]s_axis_0_tdata;
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
        .maxcount_10(maxcount_10),
        .maxcount_11(maxcount_11),
        .maxcount_12(maxcount_12),
        .maxcount_13(maxcount_13),
        .maxcount_14(maxcount_14),
        .maxcount_15(maxcount_15),
        .maxcount_16(maxcount_16),
        .maxcount_17(maxcount_17),
        .maxcount_18(maxcount_18),
        .maxcount_19(maxcount_19),
        .maxcount_2(maxcount_2),
        .maxcount_20(maxcount_20),
        .maxcount_21(maxcount_21),
        .maxcount_22(maxcount_22),
        .maxcount_23(maxcount_23),
        .maxcount_3(maxcount_3),
        .maxcount_4(maxcount_4),
        .maxcount_5(maxcount_5),
        .maxcount_6(maxcount_6),
        .maxcount_7(maxcount_7),
        .maxcount_8(maxcount_8),
        .maxcount_9(maxcount_9),
        .s_axis_0_tdata(s_axis_0_tdata),
        .s_axis_0_tready(s_axis_0_tready),
        .s_axis_0_tvalid(s_axis_0_tvalid));
endmodule
