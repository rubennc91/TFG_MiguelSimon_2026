//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Fri Jun 12 09:19:56 2026
//Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target finn_design.bd
//Design      : finn_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MatrixVectorActivation_0_imp_MT0NP
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MatrixVectorActivation_0_out_V_TDATA;
  wire MatrixVectorActivation_0_out_V_TREADY;
  wire MatrixVectorActivation_0_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_0_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_0_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_0_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_0_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = MatrixVectorActivation_0_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_0_out_V_TVALID;
  finn_design_MatrixVectorActivation_0_0 MatrixVectorActivation_0
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_0_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_0_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_0_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_0_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_0_wstrm_0 MatrixVectorActivation_0_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_1_imp_16PJ27U
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MatrixVectorActivation_1_out_V_TDATA;
  wire MatrixVectorActivation_1_out_V_TREADY;
  wire MatrixVectorActivation_1_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_1_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_1_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_1_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_1_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = MatrixVectorActivation_1_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_1_out_V_TVALID;
  finn_design_MatrixVectorActivation_1_0 MatrixVectorActivation_1
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_1_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_1_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_1_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_1_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_1_wstrm_0 MatrixVectorActivation_1_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_1_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_2_imp_1U5U4NE
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MatrixVectorActivation_2_out_V_TDATA;
  wire MatrixVectorActivation_2_out_V_TREADY;
  wire MatrixVectorActivation_2_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_2_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_2_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_2_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_2_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = MatrixVectorActivation_2_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_2_out_V_TVALID;
  finn_design_MatrixVectorActivation_2_0 MatrixVectorActivation_2
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_2_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_2_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_2_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_2_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_2_wstrm_0 MatrixVectorActivation_2_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_2_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_3_imp_WP21D1
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [31:0]MatrixVectorActivation_3_out_V_TDATA;
  wire MatrixVectorActivation_3_out_V_TREADY;
  wire MatrixVectorActivation_3_out_V_TVALID;
  wire [255:0]MatrixVectorActivation_3_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_3_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_3_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_3_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = MatrixVectorActivation_3_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_3_out_V_TVALID;
  finn_design_MatrixVectorActivation_3_0 MatrixVectorActivation_3
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_3_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_3_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_3_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_3_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_3_wstrm_0 MatrixVectorActivation_3_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_3_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_4_imp_D1JHM
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [15:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [15:0]MatrixVectorActivation_4_out_V_TDATA;
  wire MatrixVectorActivation_4_out_V_TREADY;
  wire MatrixVectorActivation_4_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_4_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_4_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_4_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_4_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[15:0] = MatrixVectorActivation_4_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_4_out_V_TVALID;
  finn_design_MatrixVectorActivation_4_0 MatrixVectorActivation_4
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_4_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_4_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_4_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_4_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_4_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_4_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_4_wstrm_0 MatrixVectorActivation_4_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_4_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_4_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_4_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataWidthConverter_Batch_5_imp_1U3KISZ
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [255:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]dwc_M_AXIS_TDATA;
  wire dwc_M_AXIS_TREADY;
  wire dwc_M_AXIS_TVALID;
  wire [255:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign dwc_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[255:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = dwc_M_AXIS_TDATA;
  assign out_V_tvalid = dwc_M_AXIS_TVALID;
  finn_design_dwc_0 dwc
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(dwc_M_AXIS_TDATA),
        .m_axis_tready(dwc_M_AXIS_TREADY),
        .m_axis_tvalid(dwc_M_AXIS_TVALID),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

(* CORE_GENERATION_INFO = "finn_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=58,numReposBlks=52,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=22,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_design.hwdef" *) 
module finn_design
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) input s_axis_0_tvalid;

  wire [7:0]ConvolutionInputGenerator_0_out_V_TDATA;
  wire ConvolutionInputGenerator_0_out_V_TREADY;
  wire ConvolutionInputGenerator_0_out_V_TVALID;
  wire [63:0]ConvolutionInputGenerator_1_out_V_TDATA;
  wire ConvolutionInputGenerator_1_out_V_TREADY;
  wire ConvolutionInputGenerator_1_out_V_TVALID;
  wire [127:0]ConvolutionInputGenerator_2_out_V_TDATA;
  wire ConvolutionInputGenerator_2_out_V_TREADY;
  wire ConvolutionInputGenerator_2_out_V_TVALID;
  wire [7:0]FMPadding_Batch_0_out_V_TDATA;
  wire FMPadding_Batch_0_out_V_TREADY;
  wire FMPadding_Batch_0_out_V_TVALID;
  wire [63:0]FMPadding_Batch_1_out_V_TDATA;
  wire FMPadding_Batch_1_out_V_TREADY;
  wire FMPadding_Batch_1_out_V_TVALID;
  wire [127:0]FMPadding_Batch_2_out_V_TDATA;
  wire FMPadding_Batch_2_out_V_TREADY;
  wire FMPadding_Batch_2_out_V_TVALID;
  wire [7:0]LabelSelect_Batch_0_out_V_TDATA;
  wire LabelSelect_Batch_0_out_V_TREADY;
  wire LabelSelect_Batch_0_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_0_out_V_TDATA;
  wire MatrixVectorActivation_0_out_V_TREADY;
  wire MatrixVectorActivation_0_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_1_out_V_TDATA;
  wire MatrixVectorActivation_1_out_V_TREADY;
  wire MatrixVectorActivation_1_out_V_TVALID;
  wire [7:0]MatrixVectorActivation_2_out_V_TDATA;
  wire MatrixVectorActivation_2_out_V_TREADY;
  wire MatrixVectorActivation_2_out_V_TVALID;
  wire [31:0]MatrixVectorActivation_3_out_V_TDATA;
  wire MatrixVectorActivation_3_out_V_TREADY;
  wire MatrixVectorActivation_3_out_V_TVALID;
  wire [15:0]MatrixVectorActivation_4_out_V_TDATA;
  wire MatrixVectorActivation_4_out_V_TREADY;
  wire MatrixVectorActivation_4_out_V_TVALID;
  wire [63:0]StreamingDataWidthConverter_Batch_0_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_0_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_0_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_1_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_1_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_1_out_V_TVALID;
  wire [127:0]StreamingDataWidthConverter_Batch_2_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_2_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_2_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_3_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_3_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_3_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_4_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_4_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_4_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_5_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_5_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_5_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_6_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_6_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_6_out_V_TVALID;
  wire [11:0]StreamingFIFO_0_maxcount;
  wire [7:0]StreamingFIFO_0_out_V_TDATA;
  wire StreamingFIFO_0_out_V_TREADY;
  wire StreamingFIFO_0_out_V_TVALID;
  wire [14:0]StreamingFIFO_10_maxcount;
  wire [7:0]StreamingFIFO_10_out_V_TDATA;
  wire StreamingFIFO_10_out_V_TREADY;
  wire StreamingFIFO_10_out_V_TVALID;
  wire [9:0]StreamingFIFO_11_maxcount;
  wire [127:0]StreamingFIFO_11_out_V_TDATA;
  wire StreamingFIFO_11_out_V_TREADY;
  wire StreamingFIFO_11_out_V_TVALID;
  wire [7:0]StreamingFIFO_12_maxcount;
  wire [127:0]StreamingFIFO_12_out_V_TDATA;
  wire StreamingFIFO_12_out_V_TREADY;
  wire StreamingFIFO_12_out_V_TVALID;
  wire [8:0]StreamingFIFO_13_maxcount;
  wire [127:0]StreamingFIFO_13_out_V_TDATA;
  wire StreamingFIFO_13_out_V_TREADY;
  wire StreamingFIFO_13_out_V_TVALID;
  wire [11:0]StreamingFIFO_14_maxcount;
  wire [127:0]StreamingFIFO_14_out_V_TDATA;
  wire StreamingFIFO_14_out_V_TREADY;
  wire StreamingFIFO_14_out_V_TVALID;
  wire [16:0]StreamingFIFO_15_maxcount;
  wire [7:0]StreamingFIFO_15_out_V_TDATA;
  wire StreamingFIFO_15_out_V_TREADY;
  wire StreamingFIFO_15_out_V_TVALID;
  wire [13:0]StreamingFIFO_16_maxcount;
  wire [7:0]StreamingFIFO_16_out_V_TDATA;
  wire StreamingFIFO_16_out_V_TREADY;
  wire StreamingFIFO_16_out_V_TVALID;
  wire [7:0]StreamingFIFO_17_maxcount;
  wire [255:0]StreamingFIFO_17_out_V_TDATA;
  wire StreamingFIFO_17_out_V_TREADY;
  wire StreamingFIFO_17_out_V_TVALID;
  wire [5:0]StreamingFIFO_18_maxcount;
  wire [255:0]StreamingFIFO_18_out_V_TDATA;
  wire StreamingFIFO_18_out_V_TREADY;
  wire StreamingFIFO_18_out_V_TVALID;
  wire [8:0]StreamingFIFO_19_maxcount;
  wire [31:0]StreamingFIFO_19_out_V_TDATA;
  wire StreamingFIFO_19_out_V_TREADY;
  wire StreamingFIFO_19_out_V_TVALID;
  wire [11:0]StreamingFIFO_1_maxcount;
  wire [7:0]StreamingFIFO_1_out_V_TDATA;
  wire StreamingFIFO_1_out_V_TREADY;
  wire StreamingFIFO_1_out_V_TVALID;
  wire [3:0]StreamingFIFO_20_maxcount;
  wire [31:0]StreamingFIFO_20_out_V_TDATA;
  wire StreamingFIFO_20_out_V_TREADY;
  wire StreamingFIFO_20_out_V_TVALID;
  wire [6:0]StreamingFIFO_21_maxcount;
  wire [7:0]StreamingFIFO_21_out_V_TDATA;
  wire StreamingFIFO_21_out_V_TREADY;
  wire StreamingFIFO_21_out_V_TVALID;
  wire [3:0]StreamingFIFO_22_maxcount;
  wire [15:0]StreamingFIFO_22_out_V_TDATA;
  wire StreamingFIFO_22_out_V_TREADY;
  wire StreamingFIFO_22_out_V_TVALID;
  wire [0:0]StreamingFIFO_23_maxcount;
  wire [7:0]StreamingFIFO_23_out_V_TDATA;
  wire StreamingFIFO_23_out_V_TREADY;
  wire StreamingFIFO_23_out_V_TVALID;
  wire [12:0]StreamingFIFO_2_maxcount;
  wire [7:0]StreamingFIFO_2_out_V_TDATA;
  wire StreamingFIFO_2_out_V_TREADY;
  wire StreamingFIFO_2_out_V_TVALID;
  wire [15:0]StreamingFIFO_3_maxcount;
  wire [7:0]StreamingFIFO_3_out_V_TDATA;
  wire StreamingFIFO_3_out_V_TREADY;
  wire StreamingFIFO_3_out_V_TVALID;
  wire [15:0]StreamingFIFO_4_maxcount;
  wire [7:0]StreamingFIFO_4_out_V_TDATA;
  wire StreamingFIFO_4_out_V_TREADY;
  wire StreamingFIFO_4_out_V_TVALID;
  wire [11:0]StreamingFIFO_5_maxcount;
  wire [63:0]StreamingFIFO_5_out_V_TDATA;
  wire StreamingFIFO_5_out_V_TREADY;
  wire StreamingFIFO_5_out_V_TVALID;
  wire [9:0]StreamingFIFO_6_maxcount;
  wire [63:0]StreamingFIFO_6_out_V_TDATA;
  wire StreamingFIFO_6_out_V_TREADY;
  wire StreamingFIFO_6_out_V_TVALID;
  wire [10:0]StreamingFIFO_7_maxcount;
  wire [63:0]StreamingFIFO_7_out_V_TDATA;
  wire StreamingFIFO_7_out_V_TREADY;
  wire StreamingFIFO_7_out_V_TVALID;
  wire [13:0]StreamingFIFO_8_maxcount;
  wire [63:0]StreamingFIFO_8_out_V_TDATA;
  wire StreamingFIFO_8_out_V_TREADY;
  wire StreamingFIFO_8_out_V_TVALID;
  wire [17:0]StreamingFIFO_9_maxcount;
  wire [7:0]StreamingFIFO_9_out_V_TDATA;
  wire StreamingFIFO_9_out_V_TREADY;
  wire StreamingFIFO_9_out_V_TVALID;
  wire [63:0]StreamingMaxPool_Batch_0_out_V_TDATA;
  wire StreamingMaxPool_Batch_0_out_V_TREADY;
  wire StreamingMaxPool_Batch_0_out_V_TVALID;
  wire [127:0]StreamingMaxPool_Batch_1_out_V_TDATA;
  wire StreamingMaxPool_Batch_1_out_V_TREADY;
  wire StreamingMaxPool_Batch_1_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_2_out_V_TDATA;
  wire StreamingMaxPool_Batch_2_out_V_TREADY;
  wire StreamingMaxPool_Batch_2_out_V_TVALID;
  wire [7:0]Thresholding_Batch_0_out_V_TDATA;
  wire Thresholding_Batch_0_out_V_TREADY;
  wire Thresholding_Batch_0_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [7:0]in0_V_0_1_TDATA;
  wire in0_V_0_1_TREADY;
  wire in0_V_0_1_TVALID;

  assign StreamingFIFO_23_out_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_0_1_TDATA = s_axis_0_tdata[7:0];
  assign in0_V_0_1_TVALID = s_axis_0_tvalid;
  assign m_axis_0_tdata[7:0] = StreamingFIFO_23_out_V_TDATA;
  assign m_axis_0_tvalid = StreamingFIFO_23_out_V_TVALID;
  assign maxcount[11:0] = StreamingFIFO_0_maxcount;
  assign maxcount_1[11:0] = StreamingFIFO_1_maxcount;
  assign maxcount_10[14:0] = StreamingFIFO_10_maxcount;
  assign maxcount_11[9:0] = StreamingFIFO_11_maxcount;
  assign maxcount_12[7:0] = StreamingFIFO_12_maxcount;
  assign maxcount_13[8:0] = StreamingFIFO_13_maxcount;
  assign maxcount_14[11:0] = StreamingFIFO_14_maxcount;
  assign maxcount_15[16:0] = StreamingFIFO_15_maxcount;
  assign maxcount_16[13:0] = StreamingFIFO_16_maxcount;
  assign maxcount_17[7:0] = StreamingFIFO_17_maxcount;
  assign maxcount_18[5:0] = StreamingFIFO_18_maxcount;
  assign maxcount_19[8:0] = StreamingFIFO_19_maxcount;
  assign maxcount_2[12:0] = StreamingFIFO_2_maxcount;
  assign maxcount_20[3:0] = StreamingFIFO_20_maxcount;
  assign maxcount_21[6:0] = StreamingFIFO_21_maxcount;
  assign maxcount_22[3:0] = StreamingFIFO_22_maxcount;
  assign maxcount_23[0] = StreamingFIFO_23_maxcount;
  assign maxcount_3[15:0] = StreamingFIFO_3_maxcount;
  assign maxcount_4[15:0] = StreamingFIFO_4_maxcount;
  assign maxcount_5[11:0] = StreamingFIFO_5_maxcount;
  assign maxcount_6[9:0] = StreamingFIFO_6_maxcount;
  assign maxcount_7[10:0] = StreamingFIFO_7_maxcount;
  assign maxcount_8[13:0] = StreamingFIFO_8_maxcount;
  assign maxcount_9[17:0] = StreamingFIFO_9_maxcount;
  assign s_axis_0_tready = in0_V_0_1_TREADY;
  finn_design_ConvolutionInputGenerator_0_0 ConvolutionInputGenerator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_2_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_2_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_2_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_0_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_0_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_0_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_1_0 ConvolutionInputGenerator_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_7_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_2_0 ConvolutionInputGenerator_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_13_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_13_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_13_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID));
  finn_design_FMPadding_Batch_0_0 FMPadding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_1_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_0_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_0_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_0_out_V_TVALID));
  finn_design_FMPadding_Batch_1_0 FMPadding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_6_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_1_out_V_TVALID));
  finn_design_FMPadding_Batch_2_0 FMPadding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_12_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_12_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_12_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_2_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_2_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_2_out_V_TVALID));
  finn_design_LabelSelect_Batch_0_0 LabelSelect_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_22_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_22_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_22_out_V_TVALID),
        .out_V_TDATA(LabelSelect_Batch_0_out_V_TDATA),
        .out_V_TREADY(LabelSelect_Batch_0_out_V_TREADY),
        .out_V_TVALID(LabelSelect_Batch_0_out_V_TVALID));
  MatrixVectorActivation_0_imp_MT0NP MatrixVectorActivation_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_3_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_3_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_3_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_0_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_0_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_0_out_V_TVALID));
  MatrixVectorActivation_1_imp_16PJ27U MatrixVectorActivation_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_9_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_9_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_9_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_1_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_1_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_1_out_V_TVALID));
  MatrixVectorActivation_2_imp_1U5U4NE MatrixVectorActivation_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_15_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_15_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_15_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_2_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_2_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_2_out_V_TVALID));
  MatrixVectorActivation_3_imp_WP21D1 MatrixVectorActivation_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_19_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_19_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_19_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_3_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_3_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_3_out_V_TVALID));
  MatrixVectorActivation_4_imp_D1JHM MatrixVectorActivation_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_21_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_21_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_21_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_4_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_4_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_4_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_0_0 StreamingDataWidthConverter_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_1_0 StreamingDataWidthConverter_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_8_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_2_0 StreamingDataWidthConverter_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_10_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_10_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_10_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_3_0 StreamingDataWidthConverter_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_14_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_3_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_4_0 StreamingDataWidthConverter_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_16_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_16_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_16_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID));
  StreamingDataWidthConverter_Batch_5_imp_1U3KISZ StreamingDataWidthConverter_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_18_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_18_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_18_out_V_TVALID),
        .out_V_tdata(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .out_V_tready(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .out_V_tvalid(StreamingDataWidthConverter_Batch_5_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_6_0 StreamingDataWidthConverter_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_20_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_20_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_20_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_6_out_V_TVALID));
  finn_design_StreamingFIFO_0_0 StreamingFIFO_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(in0_V_0_1_TDATA),
        .in0_V_TREADY(in0_V_0_1_TREADY),
        .in0_V_TVALID(in0_V_0_1_TVALID),
        .maxcount(StreamingFIFO_0_maxcount),
        .out_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_0_out_V_TVALID));
  finn_design_StreamingFIFO_1_0 StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_0_out_V_TVALID),
        .maxcount(StreamingFIFO_1_maxcount),
        .out_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_1_out_V_TVALID));
  finn_design_StreamingFIFO_10_0 StreamingFIFO_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_1_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_1_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_1_out_V_TVALID),
        .maxcount(StreamingFIFO_10_maxcount),
        .out_V_TDATA(StreamingFIFO_10_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_10_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_10_out_V_TVALID));
  finn_design_StreamingFIFO_11_0 StreamingFIFO_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_TVALID),
        .maxcount(StreamingFIFO_11_maxcount),
        .out_V_TDATA(StreamingFIFO_11_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_11_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_11_out_V_TVALID));
  finn_design_StreamingFIFO_12_0 StreamingFIFO_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID),
        .maxcount(StreamingFIFO_12_maxcount),
        .out_V_TDATA(StreamingFIFO_12_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_12_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_12_out_V_TVALID));
  finn_design_StreamingFIFO_13_0 StreamingFIFO_13
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_2_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_2_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_2_out_V_TVALID),
        .maxcount(StreamingFIFO_13_maxcount),
        .out_V_TDATA(StreamingFIFO_13_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_13_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_13_out_V_TVALID));
  finn_design_StreamingFIFO_14_0 StreamingFIFO_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID),
        .maxcount(StreamingFIFO_14_maxcount),
        .out_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_14_out_V_TVALID));
  finn_design_StreamingFIFO_15_0 StreamingFIFO_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_3_out_V_TVALID),
        .maxcount(StreamingFIFO_15_maxcount),
        .out_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_15_out_V_TVALID));
  finn_design_StreamingFIFO_16_0 StreamingFIFO_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_2_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_2_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_2_out_V_TVALID),
        .maxcount(StreamingFIFO_16_maxcount),
        .out_V_TDATA(StreamingFIFO_16_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_16_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_16_out_V_TVALID));
  finn_design_StreamingFIFO_17_0 StreamingFIFO_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID),
        .maxcount(StreamingFIFO_17_maxcount),
        .out_V_TDATA(StreamingFIFO_17_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_17_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_17_out_V_TVALID));
  finn_design_StreamingFIFO_18_0 StreamingFIFO_18
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_2_out_V_TVALID),
        .maxcount(StreamingFIFO_18_maxcount),
        .out_V_TDATA(StreamingFIFO_18_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_18_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_18_out_V_TVALID));
  finn_design_StreamingFIFO_19_0 StreamingFIFO_19
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_5_out_V_TVALID),
        .maxcount(StreamingFIFO_19_maxcount),
        .out_V_TDATA(StreamingFIFO_19_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_19_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_19_out_V_TVALID));
  finn_design_StreamingFIFO_2_0 StreamingFIFO_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_0_out_V_TVALID),
        .maxcount(StreamingFIFO_2_maxcount),
        .out_V_TDATA(StreamingFIFO_2_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_2_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_2_out_V_TVALID));
  finn_design_StreamingFIFO_20_0 StreamingFIFO_20
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_3_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_3_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_3_out_V_TVALID),
        .maxcount(StreamingFIFO_20_maxcount),
        .out_V_TDATA(StreamingFIFO_20_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_20_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_20_out_V_TVALID));
  finn_design_StreamingFIFO_21_0 StreamingFIFO_21
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_6_out_V_TVALID),
        .maxcount(StreamingFIFO_21_maxcount),
        .out_V_TDATA(StreamingFIFO_21_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_21_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_21_out_V_TVALID));
  finn_design_StreamingFIFO_22_0 StreamingFIFO_22
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_4_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_4_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_4_out_V_TVALID),
        .maxcount(StreamingFIFO_22_maxcount),
        .out_V_TDATA(StreamingFIFO_22_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_22_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_22_out_V_TVALID));
  finn_design_StreamingFIFO_23_0 StreamingFIFO_23
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(LabelSelect_Batch_0_out_V_TDATA),
        .in0_V_TREADY(LabelSelect_Batch_0_out_V_TREADY),
        .in0_V_TVALID(LabelSelect_Batch_0_out_V_TVALID),
        .maxcount(StreamingFIFO_23_maxcount),
        .out_V_TDATA(StreamingFIFO_23_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_23_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_23_out_V_TVALID));
  finn_design_StreamingFIFO_3_0 StreamingFIFO_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_0_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_0_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_0_out_V_TVALID),
        .maxcount(StreamingFIFO_3_maxcount),
        .out_V_TDATA(StreamingFIFO_3_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_3_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_3_out_V_TVALID));
  finn_design_StreamingFIFO_4_0 StreamingFIFO_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_0_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_0_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_0_out_V_TVALID),
        .maxcount(StreamingFIFO_4_maxcount),
        .out_V_TDATA(StreamingFIFO_4_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_4_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_4_out_V_TVALID));
  finn_design_StreamingFIFO_5_0 StreamingFIFO_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_TVALID),
        .maxcount(StreamingFIFO_5_maxcount),
        .out_V_TDATA(StreamingFIFO_5_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_5_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_5_out_V_TVALID));
  finn_design_StreamingFIFO_6_0 StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID),
        .maxcount(StreamingFIFO_6_maxcount),
        .out_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_6_out_V_TVALID));
  finn_design_StreamingFIFO_7_0 StreamingFIFO_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_1_out_V_TVALID),
        .maxcount(StreamingFIFO_7_maxcount),
        .out_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_7_out_V_TVALID));
  finn_design_StreamingFIFO_8_0 StreamingFIFO_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID),
        .maxcount(StreamingFIFO_8_maxcount),
        .out_V_TDATA(StreamingFIFO_8_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_8_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_8_out_V_TVALID));
  finn_design_StreamingFIFO_9_0 StreamingFIFO_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_TVALID),
        .maxcount(StreamingFIFO_9_maxcount),
        .out_V_TDATA(StreamingFIFO_9_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_9_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_9_out_V_TVALID));
  finn_design_StreamingMaxPool_Batch_0_0 StreamingMaxPool_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_5_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_5_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_5_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID));
  finn_design_StreamingMaxPool_Batch_1_0 StreamingMaxPool_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_11_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_11_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_11_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID));
  finn_design_StreamingMaxPool_Batch_2_0 StreamingMaxPool_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_17_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_17_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_17_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_2_out_V_TVALID));
  finn_design_Thresholding_Batch_0_0 Thresholding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_0_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_0_out_V_TVALID));
endmodule
