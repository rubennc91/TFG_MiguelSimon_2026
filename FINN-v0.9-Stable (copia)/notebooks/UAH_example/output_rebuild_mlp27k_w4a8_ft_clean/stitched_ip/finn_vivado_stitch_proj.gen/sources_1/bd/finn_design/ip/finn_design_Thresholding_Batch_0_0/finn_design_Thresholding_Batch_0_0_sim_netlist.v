// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jul  8 10:44:55 2026
// Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/ip/finn_design_Thresholding_Batch_0_0/finn_design_Thresholding_Batch_0_0_sim_netlist.v
// Design      : finn_design_Thresholding_Batch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "finn_design_Thresholding_Batch_0_0,Thresholding_Batch_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "Thresholding_Batch_0,Vivado 2022.2.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module finn_design_Thresholding_Batch_0_0
   (ap_clk,
    ap_rst_n,
    in0_V_TVALID,
    in0_V_TREADY,
    in0_V_TDATA,
    out_V_TVALID,
    out_V_TREADY,
    out_V_TDATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in0_V:out_V, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TVALID" *) input in0_V_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TREADY" *) output in0_V_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in0_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000.000000, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0" *) input [7:0]in0_V_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TVALID" *) output out_V_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TREADY" *) input out_V_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000.000000, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0" *) output [7:0]out_V_TDATA;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_TDATA;
  wire in0_V_TREADY;
  wire in0_V_TVALID;
  wire [6:0]\^out_V_TDATA ;
  wire out_V_TREADY;
  wire out_V_TVALID;
  wire [7:7]NLW_inst_out_V_TDATA_UNCONNECTED;

  assign out_V_TDATA[7] = \<const0> ;
  assign out_V_TDATA[6:0] = \^out_V_TDATA [6:0];
  GND GND
       (.G(\<const0> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_TDATA),
        .in0_V_TREADY(in0_V_TREADY),
        .in0_V_TVALID(in0_V_TVALID),
        .out_V_TDATA({NLW_inst_out_V_TDATA_UNCONNECTED[7],\^out_V_TDATA }),
        .out_V_TREADY(out_V_TREADY),
        .out_V_TVALID(out_V_TVALID));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0" *) (* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) 
(* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0
   (ap_clk,
    ap_rst_n,
    in0_V_TDATA,
    in0_V_TVALID,
    in0_V_TREADY,
    out_V_TDATA,
    out_V_TVALID,
    out_V_TREADY);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_TDATA;
  input in0_V_TVALID;
  output in0_V_TREADY;
  output [7:0]out_V_TDATA;
  output out_V_TVALID;
  input out_V_TREADY;

  wire \<const0> ;
  wire B_V_data_1_sel_wr;
  wire \ap_CS_fsm_reg_n_3_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_iter5_fsm_state6;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm10_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_Thresholding_Batch_fu_546_ap_start_reg;
  wire grp_Thresholding_Batch_fu_546_in0_V_TREADY;
  wire grp_Thresholding_Batch_fu_546_n_10;
  wire grp_Thresholding_Batch_fu_546_n_11;
  wire grp_Thresholding_Batch_fu_546_n_5;
  wire [6:0]grp_Thresholding_Batch_fu_546_out_V_TDATA;
  wire grp_Thresholding_Batch_fu_546_out_V_TVALID;
  wire [7:0]in0_V_TDATA;
  wire [7:0]in0_V_TDATA_int_regslice;
  wire in0_V_TREADY;
  wire in0_V_TVALID;
  wire in0_V_TVALID_int_regslice;
  wire [6:0]\^out_V_TDATA ;
  wire out_V_TREADY;
  wire out_V_TREADY_int_regslice;
  wire out_V_TVALID;
  wire regslice_both_out_V_U_n_6;

  assign out_V_TDATA[7] = \<const0> ;
  assign out_V_TDATA[6:0] = \^out_V_TDATA [6:0];
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h01)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state2),
        .I2(ap_CS_fsm_state4),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_3_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch grp_Thresholding_Batch_fu_546
       (.B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .D(ap_NS_fsm[3:2]),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_3_[0] }),
        .\ap_CS_fsm_reg[1] (grp_Thresholding_Batch_fu_546_n_10),
        .ap_CS_iter5_fsm_state6(ap_CS_iter5_fsm_state6),
        .ap_NS_fsm10_out(ap_NS_fsm10_out),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter5_reg_reg_0(regslice_both_out_V_U_n_6),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_Thresholding_Batch_fu_546_ap_start_reg(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .grp_Thresholding_Batch_fu_546_in0_V_TREADY(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .grp_Thresholding_Batch_fu_546_out_V_TVALID(grp_Thresholding_Batch_fu_546_out_V_TVALID),
        .\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 (grp_Thresholding_Batch_fu_546_n_5),
        .\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1 (grp_Thresholding_Batch_fu_546_n_11),
        .in0_V_TVALID_int_regslice(in0_V_TVALID_int_regslice),
        .\inElem_reg_5804_reg[7]_0 (in0_V_TDATA_int_regslice),
        .out_V_TREADY_int_regslice(out_V_TREADY_int_regslice),
        .result_V_2_fu_5775_p2(grp_Thresholding_Batch_fu_546_out_V_TDATA));
  FDRE #(
    .INIT(1'b0)) 
    grp_Thresholding_Batch_fu_546_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_Thresholding_Batch_fu_546_n_10),
        .Q(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .R(ap_rst_n_inv));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both regslice_both_in0_V_U
       (.\B_V_data_1_payload_B_reg[7]_0 (in0_V_TDATA_int_regslice),
        .\B_V_data_1_state_reg[1]_0 (in0_V_TREADY),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_Thresholding_Batch_fu_546_in0_V_TREADY(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .in0_V_TDATA(in0_V_TDATA),
        .in0_V_TVALID(in0_V_TVALID),
        .in0_V_TVALID_int_regslice(in0_V_TVALID_int_regslice));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0 regslice_both_out_V_U
       (.\B_V_data_1_payload_A_reg[6]_0 (grp_Thresholding_Batch_fu_546_out_V_TDATA),
        .B_V_data_1_sel_wr(B_V_data_1_sel_wr),
        .B_V_data_1_sel_wr_reg_0(grp_Thresholding_Batch_fu_546_n_11),
        .\B_V_data_1_state_reg[0]_0 (out_V_TVALID),
        .\B_V_data_1_state_reg[1]_0 (grp_Thresholding_Batch_fu_546_n_5),
        .D(ap_NS_fsm[0]),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .\ap_CS_fsm_reg[2] (regslice_both_out_V_U_n_6),
        .ap_CS_iter5_fsm_state6(ap_CS_iter5_fsm_state6),
        .ap_NS_fsm10_out(ap_NS_fsm10_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_Thresholding_Batch_fu_546_out_V_TVALID(grp_Thresholding_Batch_fu_546_out_V_TVALID),
        .out_V_TDATA(\^out_V_TDATA ),
        .out_V_TREADY(out_V_TREADY),
        .out_V_TREADY_int_regslice(out_V_TREADY_int_regslice));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_Thresholding_Batch" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch
   (ap_rst_n_inv,
    ap_CS_iter5_fsm_state6,
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ,
    grp_Thresholding_Batch_fu_546_in0_V_TREADY,
    grp_Thresholding_Batch_fu_546_out_V_TVALID,
    D,
    \ap_CS_fsm_reg[1] ,
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1 ,
    result_V_2_fu_5775_p2,
    ap_clk,
    ap_loop_exit_ready_pp0_iter5_reg_reg_0,
    out_V_TREADY_int_regslice,
    Q,
    in0_V_TVALID_int_regslice,
    grp_Thresholding_Batch_fu_546_ap_start_reg,
    ap_rst_n,
    ap_NS_fsm10_out,
    B_V_data_1_sel_wr,
    \inElem_reg_5804_reg[7]_0 );
  output ap_rst_n_inv;
  output ap_CS_iter5_fsm_state6;
  output \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ;
  output grp_Thresholding_Batch_fu_546_in0_V_TREADY;
  output grp_Thresholding_Batch_fu_546_out_V_TVALID;
  output [1:0]D;
  output \ap_CS_fsm_reg[1] ;
  output \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1 ;
  output [6:0]result_V_2_fu_5775_p2;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter5_reg_reg_0;
  input out_V_TREADY_int_regslice;
  input [2:0]Q;
  input in0_V_TVALID_int_regslice;
  input grp_Thresholding_Batch_fu_546_ap_start_reg;
  input ap_rst_n;
  input ap_NS_fsm10_out;
  input B_V_data_1_sel_wr;
  input [7:0]\inElem_reg_5804_reg[7]_0 ;

  wire \B_V_data_1_payload_A[3]_i_2_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_3_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_4_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_5_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_6_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_7_n_3 ;
  wire \B_V_data_1_payload_A[3]_i_8_n_3 ;
  wire \B_V_data_1_payload_A[6]_i_3_n_3 ;
  wire \B_V_data_1_payload_A[6]_i_4_n_3 ;
  wire \B_V_data_1_payload_A[6]_i_5_n_3 ;
  wire \B_V_data_1_payload_A[6]_i_6_n_3 ;
  wire \B_V_data_1_payload_A[6]_i_7_n_3 ;
  wire \B_V_data_1_payload_A_reg[3]_i_1_n_3 ;
  wire \B_V_data_1_payload_A_reg[3]_i_1_n_4 ;
  wire \B_V_data_1_payload_A_reg[3]_i_1_n_5 ;
  wire \B_V_data_1_payload_A_reg[3]_i_1_n_6 ;
  wire \B_V_data_1_payload_A_reg[6]_i_2_n_5 ;
  wire \B_V_data_1_payload_A_reg[6]_i_2_n_6 ;
  wire B_V_data_1_sel_wr;
  wire [1:0]D;
  wire [2:0]Q;
  wire [2:0]add_ln840_102_fu_5258_p2;
  wire [2:0]add_ln840_102_reg_6705;
  wire add_ln840_102_reg_67050;
  wire \add_ln840_102_reg_6705[2]_i_27_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_34_n_3 ;
  wire [2:0]add_ln840_105_fu_5284_p2;
  wire [2:0]add_ln840_105_reg_6710;
  wire [2:0]add_ln840_110_fu_5310_p2;
  wire [2:0]add_ln840_110_reg_6715;
  wire \add_ln840_110_reg_6715[2]_i_10_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_15_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_20_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_21_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_9_n_3 ;
  wire [2:0]add_ln840_113_fu_5336_p2;
  wire [2:0]add_ln840_113_reg_6720;
  wire \add_ln840_113_reg_6720[2]_i_10_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_17_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_23_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_29_n_3 ;
  wire [2:0]add_ln840_117_fu_5362_p2;
  wire [2:0]add_ln840_117_reg_6725;
  wire \add_ln840_117_reg_6725[2]_i_15_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_21_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_28_n_3 ;
  wire [2:0]add_ln840_11_fu_4660_p2;
  wire [2:0]add_ln840_11_reg_6590;
  wire \add_ln840_11_reg_6590[2]_i_14_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_21_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_27_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_8_n_3 ;
  wire [2:0]add_ln840_120_fu_5388_p2;
  wire [2:0]add_ln840_120_reg_6730;
  wire [5:0]add_ln840_123_fu_5711_p2;
  wire [5:0]add_ln840_123_reg_6765;
  wire add_ln840_123_reg_67650;
  wire \add_ln840_123_reg_6765[1]_i_1_n_3 ;
  wire \add_ln840_123_reg_6765[1]_i_2_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_2_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_3_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_4_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_5_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_6_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_7_n_3 ;
  wire \add_ln840_123_reg_6765[2]_i_8_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_2_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_3_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_4_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_5_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_6_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_7_n_3 ;
  wire \add_ln840_123_reg_6765[3]_i_8_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_10_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_11_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_12_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_2_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_3_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_4_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_5_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_6_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_7_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_8_n_3 ;
  wire \add_ln840_123_reg_6765[5]_i_9_n_3 ;
  wire [5:0]add_ln840_123_reg_6765_pp0_iter4_reg;
  wire [3:1]add_ln840_13_fu_5431_p2;
  wire [3:0]add_ln840_13_reg_6735;
  wire \add_ln840_13_reg_6735[0]_i_1_n_3 ;
  wire \add_ln840_13_reg_6735[1]_i_2_n_3 ;
  wire \add_ln840_13_reg_6735[3]_i_2_n_3 ;
  wire \add_ln840_13_reg_6735[3]_i_3_n_3 ;
  wire \add_ln840_13_reg_6735[3]_i_4_n_3 ;
  wire \add_ln840_13_reg_6735[3]_i_5_n_3 ;
  wire [2:0]add_ln840_16_fu_4686_p2;
  wire [2:0]add_ln840_16_reg_6595;
  wire \add_ln840_16_reg_6595[2]_i_14_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_19_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_26_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_9_n_3 ;
  wire [2:0]add_ln840_19_fu_4712_p2;
  wire [2:0]add_ln840_19_reg_6600;
  wire \add_ln840_19_reg_6600[2]_i_16_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_22_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_27_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_29_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_9_n_3 ;
  wire [1:0]add_ln840_1_fu_4596_p2;
  wire [1:0]add_ln840_1_reg_6570;
  wire \add_ln840_1_reg_6570[1]_i_3_n_3 ;
  wire [3:0]add_ln840_20_fu_5443_p2;
  wire [3:0]add_ln840_20_reg_6740;
  wire [2:0]add_ln840_23_fu_4738_p2;
  wire [2:0]add_ln840_23_reg_6605;
  wire \add_ln840_23_reg_6605[2]_i_14_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_21_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_28_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_8_n_3 ;
  wire [2:0]add_ln840_26_fu_4764_p2;
  wire [2:0]add_ln840_26_reg_6610;
  wire \add_ln840_26_reg_6610[2]_i_10_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_15_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_21_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_23_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_26_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_8_n_3 ;
  wire [3:0]add_ln840_27_fu_5455_p2;
  wire [3:0]add_ln840_27_reg_6745;
  wire [1:0]add_ln840_2_fu_4602_p2;
  wire [1:0]add_ln840_2_reg_6575;
  wire \add_ln840_2_reg_6575[1]_i_2_n_3 ;
  wire \add_ln840_2_reg_6575[1]_i_5_n_3 ;
  wire \add_ln840_2_reg_6575[1]_i_6_n_3 ;
  wire [2:0]add_ln840_32_fu_4790_p2;
  wire [2:0]add_ln840_32_reg_6615;
  wire \add_ln840_32_reg_6615[2]_i_15_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_20_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_26_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_9_n_3 ;
  wire [2:0]add_ln840_35_fu_4816_p2;
  wire [2:0]add_ln840_35_reg_6620;
  wire \add_ln840_35_reg_6620[2]_i_10_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_15_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_16_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_21_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_28_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_9_n_3 ;
  wire [2:0]add_ln840_39_fu_4842_p2;
  wire [2:0]add_ln840_39_reg_6625;
  wire \add_ln840_39_reg_6625[2]_i_15_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_22_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_28_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_9_n_3 ;
  wire [1:0]add_ln840_3_fu_4608_p2;
  wire [1:0]add_ln840_3_reg_6580;
  wire \add_ln840_3_reg_6580[1]_i_11_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_12_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_6_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_7_n_3 ;
  wire [2:0]add_ln840_42_fu_4868_p2;
  wire [2:0]add_ln840_42_reg_6630;
  wire \add_ln840_42_reg_6630[2]_i_10_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_21_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_28_n_3 ;
  wire [4:0]add_ln840_44_fu_5493_p2;
  wire [4:0]add_ln840_44_reg_6750;
  wire \add_ln840_44_reg_6750[1]_i_2_n_3 ;
  wire \add_ln840_44_reg_6750[2]_i_2_n_3 ;
  wire \add_ln840_44_reg_6750[2]_i_3_n_3 ;
  wire \add_ln840_44_reg_6750[4]_i_2_n_3 ;
  wire \add_ln840_44_reg_6750[4]_i_3_n_3 ;
  wire [2:0]add_ln840_47_fu_4894_p2;
  wire [2:0]add_ln840_47_reg_6635;
  wire \add_ln840_47_reg_6635[2]_i_27_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_34_n_3 ;
  wire [2:0]add_ln840_50_fu_4920_p2;
  wire [2:0]add_ln840_50_reg_6640;
  wire [2:0]add_ln840_54_fu_4946_p2;
  wire [2:0]add_ln840_54_reg_6645;
  wire \add_ln840_54_reg_6645[2]_i_11_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_26_n_3 ;
  wire [2:0]add_ln840_57_fu_4972_p2;
  wire [2:0]add_ln840_57_reg_6650;
  wire [4:0]add_ln840_59_fu_5531_p2;
  wire [4:0]add_ln840_59_reg_6755;
  wire \add_ln840_59_reg_6755[1]_i_2_n_3 ;
  wire \add_ln840_59_reg_6755[2]_i_2_n_3 ;
  wire \add_ln840_59_reg_6755[2]_i_3_n_3 ;
  wire \add_ln840_59_reg_6755[4]_i_2_n_3 ;
  wire \add_ln840_59_reg_6755[4]_i_3_n_3 ;
  wire [5:0]add_ln840_61_fu_5754_p2;
  wire [5:0]add_ln840_61_reg_6770;
  wire add_ln840_61_reg_67700;
  wire \add_ln840_61_reg_6770[2]_i_2_n_3 ;
  wire \add_ln840_61_reg_6770[2]_i_3_n_3 ;
  wire \add_ln840_61_reg_6770[3]_i_2_n_3 ;
  wire \add_ln840_61_reg_6770[3]_i_4_n_3 ;
  wire \add_ln840_61_reg_6770[3]_i_5_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_10_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_11_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_12_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_13_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_14_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_3_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_4_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_6_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_8_n_3 ;
  wire \add_ln840_61_reg_6770[5]_i_9_n_3 ;
  wire [2:0]add_ln840_64_fu_4998_p2;
  wire [2:0]add_ln840_64_reg_6655;
  wire \add_ln840_64_reg_6655[2]_i_12_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_19_n_3 ;
  wire [2:0]add_ln840_67_fu_5024_p2;
  wire [2:0]add_ln840_67_reg_6660;
  wire [2:0]add_ln840_71_fu_5050_p2;
  wire [2:0]add_ln840_71_reg_6665;
  wire [2:0]add_ln840_74_fu_5076_p2;
  wire [2:0]add_ln840_74_reg_6670;
  wire \add_ln840_74_reg_6670[2]_i_10_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_17_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_23_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_24_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_29_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_30_n_3 ;
  wire [2:0]add_ln840_79_fu_5102_p2;
  wire [2:0]add_ln840_79_reg_6675;
  wire \add_ln840_79_reg_6675[2]_i_15_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_22_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_29_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_9_n_3 ;
  wire [2:0]add_ln840_82_fu_5128_p2;
  wire [2:0]add_ln840_82_reg_6680;
  wire \add_ln840_82_reg_6680[2]_i_11_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_24_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_30_n_3 ;
  wire [2:0]add_ln840_86_fu_5154_p2;
  wire [2:0]add_ln840_86_reg_6685;
  wire [2:0]add_ln840_89_fu_5180_p2;
  wire [2:0]add_ln840_89_reg_6690;
  wire \add_ln840_89_reg_6690[2]_i_15_n_3 ;
  wire [2:0]add_ln840_8_fu_4634_p2;
  wire [2:0]add_ln840_8_reg_6585;
  wire \add_ln840_8_reg_6585[2]_i_10_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_14_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_16_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_20_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_21_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_26_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_27_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_8_n_3 ;
  wire [5:0]add_ln840_92_fu_5621_p2;
  wire [5:0]add_ln840_92_reg_6760;
  wire \add_ln840_92_reg_6760[1]_i_1_n_3 ;
  wire \add_ln840_92_reg_6760[1]_i_2_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_2_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_3_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_4_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_5_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_6_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_7_n_3 ;
  wire \add_ln840_92_reg_6760[2]_i_8_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_2_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_3_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_4_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_5_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_6_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_7_n_3 ;
  wire \add_ln840_92_reg_6760[3]_i_8_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_10_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_11_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_12_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_13_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_3_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_4_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_5_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_6_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_7_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_8_n_3 ;
  wire \add_ln840_92_reg_6760[5]_i_9_n_3 ;
  wire [5:0]add_ln840_92_reg_6760_pp0_iter4_reg;
  wire [2:0]add_ln840_95_fu_5206_p2;
  wire [2:0]add_ln840_95_reg_6695;
  wire [2:0]add_ln840_98_fu_5232_p2;
  wire [2:0]add_ln840_98_reg_6700;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_CS_iter1_fsm_state2;
  wire ap_CS_iter2_fsm_state3;
  wire ap_CS_iter3_fsm_state4;
  wire ap_CS_iter4_fsm_state5;
  wire ap_CS_iter5_fsm_state6;
  wire ap_NS_fsm10_out;
  wire [1:1]ap_NS_iter1_fsm;
  wire [1:1]ap_NS_iter2_fsm;
  wire [1:1]ap_NS_iter3_fsm;
  wire [1:1]ap_NS_iter4_fsm;
  wire [1:1]ap_NS_iter5_fsm;
  wire ap_NS_iter5_fsm1;
  wire ap_clk;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3;
  wire ap_loop_exit_ready_pp0_iter4_reg;
  wire ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3;
  wire ap_loop_exit_ready_pp0_iter5_reg;
  wire ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3;
  wire ap_loop_exit_ready_pp0_iter5_reg_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire grp_Thresholding_Batch_fu_546_ap_start_reg;
  wire grp_Thresholding_Batch_fu_546_in0_V_TREADY;
  wire grp_Thresholding_Batch_fu_546_out_V_TVALID;
  wire [9:1]i_2_fu_2007_p2;
  wire \i_fu_320[0]_i_5_n_3 ;
  wire \i_fu_320_reg_n_3_[0] ;
  wire \i_fu_320_reg_n_3_[1] ;
  wire \i_fu_320_reg_n_3_[2] ;
  wire \i_fu_320_reg_n_3_[3] ;
  wire \i_fu_320_reg_n_3_[4] ;
  wire \i_fu_320_reg_n_3_[5] ;
  wire \i_fu_320_reg_n_3_[6] ;
  wire \i_fu_320_reg_n_3_[7] ;
  wire \i_fu_320_reg_n_3_[8] ;
  wire \i_fu_320_reg_n_3_[9] ;
  wire icmp_ln1039_36_fu_2945_p2;
  wire icmp_ln1039_8_fu_2353_p2;
  wire icmp_ln295_reg_5800;
  wire icmp_ln295_reg_5800_pp0_iter1_reg;
  wire icmp_ln295_reg_5800_pp0_iter2_reg;
  wire \icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3 ;
  wire icmp_ln295_reg_5800_pp0_iter3_reg;
  wire \icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3 ;
  wire \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ;
  wire \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1 ;
  wire in0_V_TVALID_int_regslice;
  wire [7:0]inElem_reg_5804;
  wire [7:0]inElem_reg_5804_pp0_iter1_reg;
  wire \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ;
  wire \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ;
  wire \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3 ;
  wire \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3 ;
  wire [7:0]\inElem_reg_5804_reg[7]_0 ;
  wire [9:6]nf_1_fu_316;
  wire nf_1_fu_3160;
  wire [5:0]nf_1_fu_316_reg;
  wire \nf_1_fu_316_reg[0]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[0]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[12]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[16]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[20]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[24]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[28]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[4]_i_1_n_9 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_10 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_3 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_4 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_5 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_6 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_7 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_8 ;
  wire \nf_1_fu_316_reg[8]_i_1_n_9 ;
  wire [9:6]nf_1_fu_316_reg__0;
  wire [31:10]nf_1_fu_316_reg__1;
  wire \nf_1_fu_316_reg_rep[8]_i_1_n_3 ;
  wire \nf_1_fu_316_reg_rep[8]_i_1_n_4 ;
  wire \nf_1_fu_316_reg_rep[8]_i_1_n_5 ;
  wire \nf_1_fu_316_reg_rep[8]_i_1_n_6 ;
  wire \nf_1_fu_316_reg_rep[8]_i_2_n_3 ;
  wire \nf_1_fu_316_reg_rep[8]_i_2_n_4 ;
  wire \nf_1_fu_316_reg_rep[8]_i_2_n_5 ;
  wire \nf_1_fu_316_reg_rep[8]_i_2_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_11_n_3 ;
  wire \nf_1_fu_316_reg_rep[9]_i_11_n_4 ;
  wire \nf_1_fu_316_reg_rep[9]_i_11_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_11_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_12_n_3 ;
  wire \nf_1_fu_316_reg_rep[9]_i_12_n_4 ;
  wire \nf_1_fu_316_reg_rep[9]_i_12_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_12_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_13_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_13_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_14_n_3 ;
  wire \nf_1_fu_316_reg_rep[9]_i_14_n_4 ;
  wire \nf_1_fu_316_reg_rep[9]_i_14_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_14_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_15_n_3 ;
  wire \nf_1_fu_316_reg_rep[9]_i_15_n_4 ;
  wire \nf_1_fu_316_reg_rep[9]_i_15_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_15_n_6 ;
  wire \nf_1_fu_316_reg_rep[9]_i_3_n_3 ;
  wire \nf_1_fu_316_reg_rep[9]_i_3_n_4 ;
  wire \nf_1_fu_316_reg_rep[9]_i_3_n_5 ;
  wire \nf_1_fu_316_reg_rep[9]_i_3_n_6 ;
  wire \nf_1_fu_316_rep[9]_i_10_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_4_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_5_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_6_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_7_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_8_n_3 ;
  wire \nf_1_fu_316_rep[9]_i_9_n_3 ;
  wire [31:0]nf_fu_2152_p2;
  wire [9:6]nf_fu_2152_p2__0;
  wire out_V_TREADY_int_regslice;
  wire [0:0]p_0_in;
  wire \p_0_out/i__n_3 ;
  wire p_ZL7threshs_128_U_n_3;
  wire p_ZL7threshs_128_ce0;
  wire [6:0]result_V_2_fu_5775_p2;
  wire [4:0]zext_ln840_26_fu_5738_p1;
  wire [3:2]\NLW_B_V_data_1_payload_A_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_B_V_data_1_payload_A_reg[6]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_nf_1_fu_316_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_nf_1_fu_316_reg_rep[9]_i_13_CO_UNCONNECTED ;
  wire [3:3]\NLW_nf_1_fu_316_reg_rep[9]_i_13_O_UNCONNECTED ;

  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[3]_i_2 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[2]),
        .I1(add_ln840_61_reg_6770[2]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[2]),
        .O(\B_V_data_1_payload_A[3]_i_2_n_3 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[3]_i_3 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[1]),
        .I1(add_ln840_61_reg_6770[1]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[1]),
        .O(\B_V_data_1_payload_A[3]_i_3_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[3]_i_4 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[0]),
        .I1(add_ln840_61_reg_6770[0]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[0]),
        .O(\B_V_data_1_payload_A[3]_i_4_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \B_V_data_1_payload_A[3]_i_5 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[3]),
        .I1(add_ln840_61_reg_6770[3]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[3]),
        .I3(\B_V_data_1_payload_A[3]_i_2_n_3 ),
        .O(\B_V_data_1_payload_A[3]_i_5_n_3 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \B_V_data_1_payload_A[3]_i_6 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[2]),
        .I1(add_ln840_61_reg_6770[2]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[2]),
        .I3(\B_V_data_1_payload_A[3]_i_3_n_3 ),
        .O(\B_V_data_1_payload_A[3]_i_6_n_3 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \B_V_data_1_payload_A[3]_i_7 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[1]),
        .I1(add_ln840_61_reg_6770[1]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[1]),
        .I3(\B_V_data_1_payload_A[3]_i_4_n_3 ),
        .O(\B_V_data_1_payload_A[3]_i_7_n_3 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \B_V_data_1_payload_A[3]_i_8 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[0]),
        .I1(add_ln840_61_reg_6770[0]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[0]),
        .O(\B_V_data_1_payload_A[3]_i_8_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[6]_i_3 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[4]),
        .I1(add_ln840_61_reg_6770[4]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[4]),
        .O(\B_V_data_1_payload_A[6]_i_3_n_3 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[6]_i_4 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[3]),
        .I1(add_ln840_61_reg_6770[3]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[3]),
        .O(\B_V_data_1_payload_A[6]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \B_V_data_1_payload_A[6]_i_5 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[5]),
        .I1(add_ln840_61_reg_6770[5]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[5]),
        .O(\B_V_data_1_payload_A[6]_i_5_n_3 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \B_V_data_1_payload_A[6]_i_6 
       (.I0(\B_V_data_1_payload_A[6]_i_3_n_3 ),
        .I1(add_ln840_61_reg_6770[5]),
        .I2(add_ln840_92_reg_6760_pp0_iter4_reg[5]),
        .I3(add_ln840_123_reg_6765_pp0_iter4_reg[5]),
        .O(\B_V_data_1_payload_A[6]_i_6_n_3 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \B_V_data_1_payload_A[6]_i_7 
       (.I0(add_ln840_92_reg_6760_pp0_iter4_reg[4]),
        .I1(add_ln840_61_reg_6770[4]),
        .I2(add_ln840_123_reg_6765_pp0_iter4_reg[4]),
        .I3(\B_V_data_1_payload_A[6]_i_4_n_3 ),
        .O(\B_V_data_1_payload_A[6]_i_7_n_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \B_V_data_1_payload_A_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\B_V_data_1_payload_A_reg[3]_i_1_n_3 ,\B_V_data_1_payload_A_reg[3]_i_1_n_4 ,\B_V_data_1_payload_A_reg[3]_i_1_n_5 ,\B_V_data_1_payload_A_reg[3]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({\B_V_data_1_payload_A[3]_i_2_n_3 ,\B_V_data_1_payload_A[3]_i_3_n_3 ,\B_V_data_1_payload_A[3]_i_4_n_3 ,1'b0}),
        .O(result_V_2_fu_5775_p2[3:0]),
        .S({\B_V_data_1_payload_A[3]_i_5_n_3 ,\B_V_data_1_payload_A[3]_i_6_n_3 ,\B_V_data_1_payload_A[3]_i_7_n_3 ,\B_V_data_1_payload_A[3]_i_8_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \B_V_data_1_payload_A_reg[6]_i_2 
       (.CI(\B_V_data_1_payload_A_reg[3]_i_1_n_3 ),
        .CO({\NLW_B_V_data_1_payload_A_reg[6]_i_2_CO_UNCONNECTED [3:2],\B_V_data_1_payload_A_reg[6]_i_2_n_5 ,\B_V_data_1_payload_A_reg[6]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\B_V_data_1_payload_A[6]_i_3_n_3 ,\B_V_data_1_payload_A[6]_i_4_n_3 }),
        .O({\NLW_B_V_data_1_payload_A_reg[6]_i_2_O_UNCONNECTED [3],result_V_2_fu_5775_p2[6:4]}),
        .S({1'b0,\B_V_data_1_payload_A[6]_i_5_n_3 ,\B_V_data_1_payload_A[6]_i_6_n_3 ,\B_V_data_1_payload_A[6]_i_7_n_3 }));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    B_V_data_1_sel_wr_i_1
       (.I0(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I1(ap_CS_iter5_fsm_state6),
        .I2(Q[2]),
        .I3(out_V_TREADY_int_regslice),
        .I4(B_V_data_1_sel_wr),
        .O(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I1(ap_CS_iter5_fsm_state6),
        .I2(Q[2]),
        .I3(out_V_TREADY_int_regslice),
        .O(grp_Thresholding_Batch_fu_546_out_V_TVALID));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_102_reg_6705[2]_i_27 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_102_reg_6705[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_102_reg_6705[2]_i_34 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_102_reg_6705[2]_i_34_n_3 ));
  FDRE \add_ln840_102_reg_6705_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_102_fu_5258_p2[0]),
        .Q(add_ln840_102_reg_6705[0]),
        .R(1'b0));
  FDRE \add_ln840_102_reg_6705_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_102_fu_5258_p2[1]),
        .Q(add_ln840_102_reg_6705[1]),
        .R(1'b0));
  FDRE \add_ln840_102_reg_6705_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_102_fu_5258_p2[2]),
        .Q(add_ln840_102_reg_6705[2]),
        .R(1'b0));
  FDRE \add_ln840_105_reg_6710_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_105_fu_5284_p2[0]),
        .Q(add_ln840_105_reg_6710[0]),
        .R(1'b0));
  FDRE \add_ln840_105_reg_6710_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_105_fu_5284_p2[1]),
        .Q(add_ln840_105_reg_6710[1]),
        .R(1'b0));
  FDRE \add_ln840_105_reg_6710_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_105_fu_5284_p2[2]),
        .Q(add_ln840_105_reg_6710[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_110_reg_6715[2]_i_10 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_110_reg_6715[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_110_reg_6715[2]_i_15 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_110_reg_6715[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_110_reg_6715[2]_i_20 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_110_reg_6715[2]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_110_reg_6715[2]_i_21 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_110_reg_6715[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_110_reg_6715[2]_i_9 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_110_reg_6715[2]_i_9_n_3 ));
  FDRE \add_ln840_110_reg_6715_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_110_fu_5310_p2[0]),
        .Q(add_ln840_110_reg_6715[0]),
        .R(1'b0));
  FDRE \add_ln840_110_reg_6715_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_110_fu_5310_p2[1]),
        .Q(add_ln840_110_reg_6715[1]),
        .R(1'b0));
  FDRE \add_ln840_110_reg_6715_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_110_fu_5310_p2[2]),
        .Q(add_ln840_110_reg_6715[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_113_reg_6720[2]_i_10 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_113_reg_6720[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_113_reg_6720[2]_i_17 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_113_reg_6720[2]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_113_reg_6720[2]_i_23 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_113_reg_6720[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_113_reg_6720[2]_i_29 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_113_reg_6720[2]_i_29_n_3 ));
  FDRE \add_ln840_113_reg_6720_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_113_fu_5336_p2[0]),
        .Q(add_ln840_113_reg_6720[0]),
        .R(1'b0));
  FDRE \add_ln840_113_reg_6720_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_113_fu_5336_p2[1]),
        .Q(add_ln840_113_reg_6720[1]),
        .R(1'b0));
  FDRE \add_ln840_113_reg_6720_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_113_fu_5336_p2[2]),
        .Q(add_ln840_113_reg_6720[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_117_reg_6725[2]_i_15 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_117_reg_6725[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_117_reg_6725[2]_i_21 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_117_reg_6725[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_117_reg_6725[2]_i_28 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_117_reg_6725[2]_i_28_n_3 ));
  FDRE \add_ln840_117_reg_6725_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_117_fu_5362_p2[0]),
        .Q(add_ln840_117_reg_6725[0]),
        .R(1'b0));
  FDRE \add_ln840_117_reg_6725_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_117_fu_5362_p2[1]),
        .Q(add_ln840_117_reg_6725[1]),
        .R(1'b0));
  FDRE \add_ln840_117_reg_6725_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_117_fu_5362_p2[2]),
        .Q(add_ln840_117_reg_6725[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_11_reg_6590[2]_i_14 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_11_reg_6590[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_11_reg_6590[2]_i_21 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_11_reg_6590[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_11_reg_6590[2]_i_27 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_11_reg_6590[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_11_reg_6590[2]_i_8 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_11_reg_6590[2]_i_8_n_3 ));
  FDRE \add_ln840_11_reg_6590_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_11_fu_4660_p2[0]),
        .Q(add_ln840_11_reg_6590[0]),
        .R(1'b0));
  FDRE \add_ln840_11_reg_6590_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_11_fu_4660_p2[1]),
        .Q(add_ln840_11_reg_6590[1]),
        .R(1'b0));
  FDRE \add_ln840_11_reg_6590_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_11_fu_4660_p2[2]),
        .Q(add_ln840_11_reg_6590[2]),
        .R(1'b0));
  FDRE \add_ln840_120_reg_6730_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_120_fu_5388_p2[0]),
        .Q(add_ln840_120_reg_6730[0]),
        .R(1'b0));
  FDRE \add_ln840_120_reg_6730_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_120_fu_5388_p2[1]),
        .Q(add_ln840_120_reg_6730[1]),
        .R(1'b0));
  FDRE \add_ln840_120_reg_6730_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_120_fu_5388_p2[2]),
        .Q(add_ln840_120_reg_6730[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \add_ln840_123_reg_6765[0]_i_1 
       (.I0(\add_ln840_123_reg_6765[1]_i_2_n_3 ),
        .I1(add_ln840_120_reg_6730[0]),
        .I2(add_ln840_105_reg_6710[0]),
        .I3(add_ln840_98_reg_6700[0]),
        .I4(add_ln840_102_reg_6705[0]),
        .I5(add_ln840_95_reg_6695[0]),
        .O(add_ln840_123_fu_5711_p2[0]));
  LUT5 #(
    .INIT(32'h96996696)) 
    \add_ln840_123_reg_6765[1]_i_1 
       (.I0(\add_ln840_123_reg_6765[2]_i_3_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_4_n_3 ),
        .I2(add_ln840_120_reg_6730[0]),
        .I3(\add_ln840_123_reg_6765[1]_i_2_n_3 ),
        .I4(add_ln840_105_reg_6710[0]),
        .O(\add_ln840_123_reg_6765[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln840_123_reg_6765[1]_i_2 
       (.I0(add_ln840_110_reg_6715[0]),
        .I1(add_ln840_113_reg_6720[0]),
        .I2(add_ln840_117_reg_6725[0]),
        .O(\add_ln840_123_reg_6765[1]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \add_ln840_123_reg_6765[2]_i_1 
       (.I0(\add_ln840_123_reg_6765[2]_i_2_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_3_n_3 ),
        .I2(\add_ln840_123_reg_6765[2]_i_4_n_3 ),
        .I3(\add_ln840_123_reg_6765[2]_i_5_n_3 ),
        .I4(\add_ln840_123_reg_6765[2]_i_6_n_3 ),
        .O(add_ln840_123_fu_5711_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h14417DD7)) 
    \add_ln840_123_reg_6765[2]_i_2 
       (.I0(add_ln840_120_reg_6730[0]),
        .I1(add_ln840_117_reg_6725[0]),
        .I2(add_ln840_113_reg_6720[0]),
        .I3(add_ln840_110_reg_6715[0]),
        .I4(add_ln840_105_reg_6710[0]),
        .O(\add_ln840_123_reg_6765[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \add_ln840_123_reg_6765[2]_i_3 
       (.I0(add_ln840_105_reg_6710[0]),
        .I1(add_ln840_120_reg_6730[0]),
        .I2(\add_ln840_123_reg_6765[1]_i_2_n_3 ),
        .I3(add_ln840_95_reg_6695[0]),
        .I4(add_ln840_102_reg_6705[0]),
        .I5(add_ln840_98_reg_6700[0]),
        .O(\add_ln840_123_reg_6765[2]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_123_reg_6765[2]_i_4 
       (.I0(\add_ln840_123_reg_6765[2]_i_7_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_8_n_3 ),
        .I2(add_ln840_95_reg_6695[0]),
        .I3(add_ln840_102_reg_6705[0]),
        .I4(add_ln840_98_reg_6700[0]),
        .O(\add_ln840_123_reg_6765[2]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln840_123_reg_6765[2]_i_5 
       (.I0(\add_ln840_123_reg_6765[3]_i_4_n_3 ),
        .I1(\add_ln840_123_reg_6765[3]_i_2_n_3 ),
        .I2(\add_ln840_123_reg_6765[3]_i_3_n_3 ),
        .O(\add_ln840_123_reg_6765[2]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h11171777)) 
    \add_ln840_123_reg_6765[2]_i_6 
       (.I0(\add_ln840_123_reg_6765[2]_i_7_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_8_n_3 ),
        .I2(add_ln840_95_reg_6695[0]),
        .I3(add_ln840_102_reg_6705[0]),
        .I4(add_ln840_98_reg_6700[0]),
        .O(\add_ln840_123_reg_6765[2]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \add_ln840_123_reg_6765[2]_i_7 
       (.I0(add_ln840_120_reg_6730[1]),
        .I1(add_ln840_105_reg_6710[1]),
        .I2(\add_ln840_123_reg_6765[3]_i_8_n_3 ),
        .I3(add_ln840_110_reg_6715[1]),
        .I4(add_ln840_113_reg_6720[1]),
        .I5(add_ln840_117_reg_6725[1]),
        .O(\add_ln840_123_reg_6765[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_123_reg_6765[2]_i_8 
       (.I0(add_ln840_117_reg_6725[0]),
        .I1(add_ln840_113_reg_6720[0]),
        .I2(add_ln840_110_reg_6715[0]),
        .O(\add_ln840_123_reg_6765[2]_i_8_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \add_ln840_123_reg_6765[3]_i_1 
       (.I0(\add_ln840_123_reg_6765[3]_i_2_n_3 ),
        .I1(\add_ln840_123_reg_6765[3]_i_3_n_3 ),
        .I2(\add_ln840_123_reg_6765[3]_i_4_n_3 ),
        .I3(\add_ln840_123_reg_6765[3]_i_5_n_3 ),
        .I4(\add_ln840_123_reg_6765[3]_i_6_n_3 ),
        .O(add_ln840_123_fu_5711_p2[3]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \add_ln840_123_reg_6765[3]_i_2 
       (.I0(add_ln840_98_reg_6700[1]),
        .I1(add_ln840_102_reg_6705[1]),
        .I2(add_ln840_95_reg_6695[1]),
        .I3(add_ln840_113_reg_6720[1]),
        .I4(add_ln840_117_reg_6725[1]),
        .I5(add_ln840_110_reg_6715[1]),
        .O(\add_ln840_123_reg_6765[3]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \add_ln840_123_reg_6765[3]_i_3 
       (.I0(add_ln840_105_reg_6710[2]),
        .I1(add_ln840_120_reg_6730[2]),
        .I2(add_ln840_105_reg_6710[1]),
        .I3(add_ln840_120_reg_6730[1]),
        .I4(\add_ln840_123_reg_6765[3]_i_7_n_3 ),
        .O(\add_ln840_123_reg_6765[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h099F9F099F09099F)) 
    \add_ln840_123_reg_6765[3]_i_4 
       (.I0(add_ln840_105_reg_6710[1]),
        .I1(add_ln840_120_reg_6730[1]),
        .I2(\add_ln840_123_reg_6765[3]_i_8_n_3 ),
        .I3(add_ln840_110_reg_6715[1]),
        .I4(add_ln840_113_reg_6720[1]),
        .I5(add_ln840_117_reg_6725[1]),
        .O(\add_ln840_123_reg_6765[3]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h008E8EFF)) 
    \add_ln840_123_reg_6765[3]_i_5 
       (.I0(\add_ln840_123_reg_6765[2]_i_4_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_3_n_3 ),
        .I2(\add_ln840_123_reg_6765[2]_i_2_n_3 ),
        .I3(\add_ln840_123_reg_6765[2]_i_6_n_3 ),
        .I4(\add_ln840_123_reg_6765[2]_i_5_n_3 ),
        .O(\add_ln840_123_reg_6765[3]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hAA959555556A6AAA)) 
    \add_ln840_123_reg_6765[3]_i_6 
       (.I0(\add_ln840_123_reg_6765[5]_i_6_n_3 ),
        .I1(add_ln840_105_reg_6710[1]),
        .I2(add_ln840_120_reg_6730[1]),
        .I3(add_ln840_105_reg_6710[2]),
        .I4(add_ln840_120_reg_6730[2]),
        .I5(\add_ln840_123_reg_6765[5]_i_5_n_3 ),
        .O(\add_ln840_123_reg_6765[3]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \add_ln840_123_reg_6765[3]_i_7 
       (.I0(add_ln840_95_reg_6695[2]),
        .I1(add_ln840_98_reg_6700[2]),
        .I2(add_ln840_102_reg_6705[2]),
        .I3(add_ln840_110_reg_6715[2]),
        .I4(add_ln840_113_reg_6720[2]),
        .I5(add_ln840_117_reg_6725[2]),
        .O(\add_ln840_123_reg_6765[3]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_123_reg_6765[3]_i_8 
       (.I0(add_ln840_95_reg_6695[1]),
        .I1(add_ln840_98_reg_6700[1]),
        .I2(add_ln840_102_reg_6705[1]),
        .O(\add_ln840_123_reg_6765[3]_i_8_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_123_reg_6765[4]_i_1 
       (.I0(\add_ln840_123_reg_6765[5]_i_4_n_3 ),
        .I1(\add_ln840_123_reg_6765[5]_i_3_n_3 ),
        .I2(\add_ln840_123_reg_6765[5]_i_2_n_3 ),
        .O(add_ln840_123_fu_5711_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \add_ln840_123_reg_6765[5]_i_1 
       (.I0(\add_ln840_123_reg_6765[5]_i_2_n_3 ),
        .I1(\add_ln840_123_reg_6765[5]_i_3_n_3 ),
        .I2(\add_ln840_123_reg_6765[5]_i_4_n_3 ),
        .O(add_ln840_123_fu_5711_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \add_ln840_123_reg_6765[5]_i_10 
       (.I0(add_ln840_120_reg_6730[1]),
        .I1(add_ln840_105_reg_6710[1]),
        .I2(add_ln840_120_reg_6730[2]),
        .I3(add_ln840_105_reg_6710[2]),
        .O(\add_ln840_123_reg_6765[5]_i_10_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_123_reg_6765[5]_i_11 
       (.I0(add_ln840_95_reg_6695[2]),
        .I1(add_ln840_98_reg_6700[2]),
        .I2(add_ln840_102_reg_6705[2]),
        .O(\add_ln840_123_reg_6765[5]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_123_reg_6765[5]_i_12 
       (.I0(add_ln840_95_reg_6695[0]),
        .I1(add_ln840_102_reg_6705[0]),
        .I2(add_ln840_98_reg_6700[0]),
        .O(\add_ln840_123_reg_6765[5]_i_12_n_3 ));
  LUT6 #(
    .INIT(64'h077F0000FFFF077F)) 
    \add_ln840_123_reg_6765[5]_i_2 
       (.I0(add_ln840_105_reg_6710[1]),
        .I1(add_ln840_120_reg_6730[1]),
        .I2(add_ln840_105_reg_6710[2]),
        .I3(add_ln840_120_reg_6730[2]),
        .I4(\add_ln840_123_reg_6765[5]_i_5_n_3 ),
        .I5(\add_ln840_123_reg_6765[5]_i_6_n_3 ),
        .O(\add_ln840_123_reg_6765[5]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h022AABBF)) 
    \add_ln840_123_reg_6765[5]_i_3 
       (.I0(\add_ln840_123_reg_6765[5]_i_7_n_3 ),
        .I1(add_ln840_113_reg_6720[2]),
        .I2(add_ln840_117_reg_6725[2]),
        .I3(add_ln840_110_reg_6715[2]),
        .I4(\add_ln840_123_reg_6765[5]_i_8_n_3 ),
        .O(\add_ln840_123_reg_6765[5]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h571515017F575715)) 
    \add_ln840_123_reg_6765[5]_i_4 
       (.I0(\add_ln840_123_reg_6765[3]_i_6_n_3 ),
        .I1(\add_ln840_123_reg_6765[3]_i_4_n_3 ),
        .I2(\add_ln840_123_reg_6765[3]_i_3_n_3 ),
        .I3(\add_ln840_123_reg_6765[3]_i_2_n_3 ),
        .I4(\add_ln840_123_reg_6765[5]_i_9_n_3 ),
        .I5(\add_ln840_123_reg_6765[2]_i_6_n_3 ),
        .O(\add_ln840_123_reg_6765[5]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_123_reg_6765[5]_i_5 
       (.I0(\add_ln840_123_reg_6765[5]_i_7_n_3 ),
        .I1(\add_ln840_123_reg_6765[5]_i_8_n_3 ),
        .I2(add_ln840_110_reg_6715[2]),
        .I3(add_ln840_117_reg_6725[2]),
        .I4(add_ln840_113_reg_6720[2]),
        .O(\add_ln840_123_reg_6765[5]_i_5_n_3 ));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \add_ln840_123_reg_6765[5]_i_6 
       (.I0(\add_ln840_123_reg_6765[5]_i_10_n_3 ),
        .I1(add_ln840_117_reg_6725[2]),
        .I2(add_ln840_113_reg_6720[2]),
        .I3(add_ln840_110_reg_6715[2]),
        .I4(\add_ln840_123_reg_6765[5]_i_11_n_3 ),
        .O(\add_ln840_123_reg_6765[5]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \add_ln840_123_reg_6765[5]_i_7 
       (.I0(add_ln840_98_reg_6700[1]),
        .I1(add_ln840_102_reg_6705[1]),
        .I2(add_ln840_95_reg_6695[1]),
        .I3(add_ln840_113_reg_6720[1]),
        .I4(add_ln840_117_reg_6725[1]),
        .I5(add_ln840_110_reg_6715[1]),
        .O(\add_ln840_123_reg_6765[5]_i_7_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_123_reg_6765[5]_i_8 
       (.I0(add_ln840_95_reg_6695[2]),
        .I1(add_ln840_102_reg_6705[2]),
        .I2(add_ln840_98_reg_6700[2]),
        .O(\add_ln840_123_reg_6765[5]_i_8_n_3 ));
  LUT5 #(
    .INIT(32'h9600FF96)) 
    \add_ln840_123_reg_6765[5]_i_9 
       (.I0(\add_ln840_123_reg_6765[5]_i_12_n_3 ),
        .I1(\add_ln840_123_reg_6765[2]_i_8_n_3 ),
        .I2(\add_ln840_123_reg_6765[2]_i_7_n_3 ),
        .I3(\add_ln840_123_reg_6765[2]_i_3_n_3 ),
        .I4(\add_ln840_123_reg_6765[2]_i_2_n_3 ),
        .O(\add_ln840_123_reg_6765[5]_i_9_n_3 ));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[0]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[1]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[2]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[3]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[4]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_123_reg_6765[5]),
        .Q(add_ln840_123_reg_6765_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_123_fu_5711_p2[0]),
        .Q(add_ln840_123_reg_6765[0]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(\add_ln840_123_reg_6765[1]_i_1_n_3 ),
        .Q(add_ln840_123_reg_6765[1]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_123_fu_5711_p2[2]),
        .Q(add_ln840_123_reg_6765[2]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_123_fu_5711_p2[3]),
        .Q(add_ln840_123_reg_6765[3]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[4] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_123_fu_5711_p2[4]),
        .Q(add_ln840_123_reg_6765[4]),
        .R(1'b0));
  FDRE \add_ln840_123_reg_6765_reg[5] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_123_fu_5711_p2[5]),
        .Q(add_ln840_123_reg_6765[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_13_reg_6735[0]_i_1 
       (.I0(add_ln840_11_reg_6590[0]),
        .I1(add_ln840_3_reg_6580[0]),
        .I2(add_ln840_1_reg_6570[0]),
        .I3(add_ln840_2_reg_6575[0]),
        .I4(add_ln840_8_reg_6585[0]),
        .O(\add_ln840_13_reg_6735[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h566A6A566A56566A)) 
    \add_ln840_13_reg_6735[1]_i_1 
       (.I0(\add_ln840_13_reg_6735[1]_i_2_n_3 ),
        .I1(add_ln840_8_reg_6585[0]),
        .I2(add_ln840_11_reg_6590[0]),
        .I3(add_ln840_3_reg_6580[0]),
        .I4(add_ln840_1_reg_6570[0]),
        .I5(add_ln840_2_reg_6575[0]),
        .O(add_ln840_13_fu_5431_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_13_reg_6735[1]_i_2 
       (.I0(\add_ln840_13_reg_6735[3]_i_5_n_3 ),
        .I1(add_ln840_11_reg_6590[1]),
        .I2(add_ln840_8_reg_6585[1]),
        .O(\add_ln840_13_reg_6735[1]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_13_reg_6735[2]_i_1 
       (.I0(add_ln840_8_reg_6585[2]),
        .I1(\add_ln840_13_reg_6735[3]_i_4_n_3 ),
        .I2(add_ln840_11_reg_6590[2]),
        .I3(\add_ln840_13_reg_6735[3]_i_2_n_3 ),
        .I4(\add_ln840_13_reg_6735[3]_i_3_n_3 ),
        .O(add_ln840_13_fu_5431_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h8EE7E771)) 
    \add_ln840_13_reg_6735[3]_i_1 
       (.I0(\add_ln840_13_reg_6735[3]_i_2_n_3 ),
        .I1(\add_ln840_13_reg_6735[3]_i_3_n_3 ),
        .I2(add_ln840_8_reg_6585[2]),
        .I3(\add_ln840_13_reg_6735[3]_i_4_n_3 ),
        .I4(add_ln840_11_reg_6590[2]),
        .O(add_ln840_13_fu_5431_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \add_ln840_13_reg_6735[3]_i_2 
       (.I0(add_ln840_8_reg_6585[1]),
        .I1(add_ln840_11_reg_6590[1]),
        .I2(\add_ln840_13_reg_6735[3]_i_5_n_3 ),
        .O(\add_ln840_13_reg_6735[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h577F7F577F57577F)) 
    \add_ln840_13_reg_6735[3]_i_3 
       (.I0(\add_ln840_13_reg_6735[1]_i_2_n_3 ),
        .I1(add_ln840_8_reg_6585[0]),
        .I2(add_ln840_11_reg_6590[0]),
        .I3(add_ln840_3_reg_6580[0]),
        .I4(add_ln840_1_reg_6570[0]),
        .I5(add_ln840_2_reg_6575[0]),
        .O(\add_ln840_13_reg_6735[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h17FFFFE8FFE8E800)) 
    \add_ln840_13_reg_6735[3]_i_4 
       (.I0(add_ln840_2_reg_6575[0]),
        .I1(add_ln840_3_reg_6580[0]),
        .I2(add_ln840_1_reg_6570[0]),
        .I3(add_ln840_2_reg_6575[1]),
        .I4(add_ln840_3_reg_6580[1]),
        .I5(add_ln840_1_reg_6570[1]),
        .O(\add_ln840_13_reg_6735[3]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \add_ln840_13_reg_6735[3]_i_5 
       (.I0(add_ln840_3_reg_6580[1]),
        .I1(add_ln840_1_reg_6570[1]),
        .I2(add_ln840_2_reg_6575[1]),
        .I3(add_ln840_1_reg_6570[0]),
        .I4(add_ln840_3_reg_6580[0]),
        .I5(add_ln840_2_reg_6575[0]),
        .O(\add_ln840_13_reg_6735[3]_i_5_n_3 ));
  FDRE \add_ln840_13_reg_6735_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(\add_ln840_13_reg_6735[0]_i_1_n_3 ),
        .Q(add_ln840_13_reg_6735[0]),
        .R(1'b0));
  FDRE \add_ln840_13_reg_6735_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_13_fu_5431_p2[1]),
        .Q(add_ln840_13_reg_6735[1]),
        .R(1'b0));
  FDRE \add_ln840_13_reg_6735_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_13_fu_5431_p2[2]),
        .Q(add_ln840_13_reg_6735[2]),
        .R(1'b0));
  FDRE \add_ln840_13_reg_6735_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_13_fu_5431_p2[3]),
        .Q(add_ln840_13_reg_6735[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_16_reg_6595[2]_i_14 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_16_reg_6595[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_16_reg_6595[2]_i_19 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_16_reg_6595[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_16_reg_6595[2]_i_26 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_16_reg_6595[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_16_reg_6595[2]_i_9 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_16_reg_6595[2]_i_9_n_3 ));
  FDRE \add_ln840_16_reg_6595_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_16_fu_4686_p2[0]),
        .Q(add_ln840_16_reg_6595[0]),
        .R(1'b0));
  FDRE \add_ln840_16_reg_6595_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_16_fu_4686_p2[1]),
        .Q(add_ln840_16_reg_6595[1]),
        .R(1'b0));
  FDRE \add_ln840_16_reg_6595_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_16_fu_4686_p2[2]),
        .Q(add_ln840_16_reg_6595[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_19_reg_6600[2]_i_16 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_19_reg_6600[2]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_19_reg_6600[2]_i_22 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_19_reg_6600[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_19_reg_6600[2]_i_27 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_19_reg_6600[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_19_reg_6600[2]_i_29 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_19_reg_6600[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_19_reg_6600[2]_i_9 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_19_reg_6600[2]_i_9_n_3 ));
  FDRE \add_ln840_19_reg_6600_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_19_fu_4712_p2[0]),
        .Q(add_ln840_19_reg_6600[0]),
        .R(1'b0));
  FDRE \add_ln840_19_reg_6600_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_19_fu_4712_p2[1]),
        .Q(add_ln840_19_reg_6600[1]),
        .R(1'b0));
  FDRE \add_ln840_19_reg_6600_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_19_fu_4712_p2[2]),
        .Q(add_ln840_19_reg_6600[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \add_ln840_1_reg_6570[1]_i_3 
       (.I0(inElem_reg_5804_pp0_iter1_reg[7]),
        .I1(inElem_reg_5804_pp0_iter1_reg[6]),
        .I2(inElem_reg_5804_pp0_iter1_reg[4]),
        .I3(inElem_reg_5804_pp0_iter1_reg[5]),
        .I4(inElem_reg_5804_pp0_iter1_reg[3]),
        .I5(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_1_reg_6570[1]_i_3_n_3 ));
  FDRE \add_ln840_1_reg_6570_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_1_fu_4596_p2[0]),
        .Q(add_ln840_1_reg_6570[0]),
        .R(1'b0));
  FDRE \add_ln840_1_reg_6570_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_1_fu_4596_p2[1]),
        .Q(add_ln840_1_reg_6570[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln840_20_reg_6740[0]_i_1 
       (.I0(add_ln840_19_reg_6600[0]),
        .I1(add_ln840_16_reg_6595[0]),
        .O(add_ln840_20_fu_5443_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \add_ln840_20_reg_6740[1]_i_1 
       (.I0(add_ln840_19_reg_6600[0]),
        .I1(add_ln840_16_reg_6595[0]),
        .I2(add_ln840_16_reg_6595[1]),
        .I3(add_ln840_19_reg_6600[1]),
        .O(add_ln840_20_fu_5443_p2[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \add_ln840_20_reg_6740[2]_i_1 
       (.I0(add_ln840_16_reg_6595[0]),
        .I1(add_ln840_19_reg_6600[0]),
        .I2(add_ln840_19_reg_6600[1]),
        .I3(add_ln840_16_reg_6595[1]),
        .I4(add_ln840_16_reg_6595[2]),
        .I5(add_ln840_19_reg_6600[2]),
        .O(add_ln840_20_fu_5443_p2[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \add_ln840_20_reg_6740[3]_i_1 
       (.I0(add_ln840_16_reg_6595[2]),
        .I1(add_ln840_19_reg_6600[2]),
        .I2(add_ln840_16_reg_6595[0]),
        .I3(add_ln840_19_reg_6600[0]),
        .I4(add_ln840_19_reg_6600[1]),
        .I5(add_ln840_16_reg_6595[1]),
        .O(add_ln840_20_fu_5443_p2[3]));
  FDRE \add_ln840_20_reg_6740_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_20_fu_5443_p2[0]),
        .Q(add_ln840_20_reg_6740[0]),
        .R(1'b0));
  FDRE \add_ln840_20_reg_6740_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_20_fu_5443_p2[1]),
        .Q(add_ln840_20_reg_6740[1]),
        .R(1'b0));
  FDRE \add_ln840_20_reg_6740_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_20_fu_5443_p2[2]),
        .Q(add_ln840_20_reg_6740[2]),
        .R(1'b0));
  FDRE \add_ln840_20_reg_6740_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_20_fu_5443_p2[3]),
        .Q(add_ln840_20_reg_6740[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_23_reg_6605[2]_i_14 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_23_reg_6605[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_23_reg_6605[2]_i_21 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_23_reg_6605[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_23_reg_6605[2]_i_28 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_23_reg_6605[2]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_23_reg_6605[2]_i_8 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_23_reg_6605[2]_i_8_n_3 ));
  FDRE \add_ln840_23_reg_6605_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_23_fu_4738_p2[0]),
        .Q(add_ln840_23_reg_6605[0]),
        .R(1'b0));
  FDRE \add_ln840_23_reg_6605_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_23_fu_4738_p2[1]),
        .Q(add_ln840_23_reg_6605[1]),
        .R(1'b0));
  FDRE \add_ln840_23_reg_6605_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_23_fu_4738_p2[2]),
        .Q(add_ln840_23_reg_6605[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_10 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_26_reg_6610[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_15 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_26_reg_6610[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_21 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_26_reg_6610[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_23 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_26_reg_6610[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_26 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_26_reg_6610[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_26_reg_6610[2]_i_8 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_26_reg_6610[2]_i_8_n_3 ));
  FDRE \add_ln840_26_reg_6610_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_26_fu_4764_p2[0]),
        .Q(add_ln840_26_reg_6610[0]),
        .R(1'b0));
  FDRE \add_ln840_26_reg_6610_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_26_fu_4764_p2[1]),
        .Q(add_ln840_26_reg_6610[1]),
        .R(1'b0));
  FDRE \add_ln840_26_reg_6610_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_26_fu_4764_p2[2]),
        .Q(add_ln840_26_reg_6610[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln840_27_reg_6745[0]_i_1 
       (.I0(add_ln840_26_reg_6610[0]),
        .I1(add_ln840_23_reg_6605[0]),
        .O(add_ln840_27_fu_5455_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \add_ln840_27_reg_6745[1]_i_1 
       (.I0(add_ln840_26_reg_6610[0]),
        .I1(add_ln840_23_reg_6605[0]),
        .I2(add_ln840_23_reg_6605[1]),
        .I3(add_ln840_26_reg_6610[1]),
        .O(add_ln840_27_fu_5455_p2[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \add_ln840_27_reg_6745[2]_i_1 
       (.I0(add_ln840_23_reg_6605[0]),
        .I1(add_ln840_26_reg_6610[0]),
        .I2(add_ln840_26_reg_6610[1]),
        .I3(add_ln840_23_reg_6605[1]),
        .I4(add_ln840_23_reg_6605[2]),
        .I5(add_ln840_26_reg_6610[2]),
        .O(add_ln840_27_fu_5455_p2[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \add_ln840_27_reg_6745[3]_i_1 
       (.I0(add_ln840_23_reg_6605[2]),
        .I1(add_ln840_26_reg_6610[2]),
        .I2(add_ln840_23_reg_6605[0]),
        .I3(add_ln840_26_reg_6610[0]),
        .I4(add_ln840_26_reg_6610[1]),
        .I5(add_ln840_23_reg_6605[1]),
        .O(add_ln840_27_fu_5455_p2[3]));
  FDRE \add_ln840_27_reg_6745_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_27_fu_5455_p2[0]),
        .Q(add_ln840_27_reg_6745[0]),
        .R(1'b0));
  FDRE \add_ln840_27_reg_6745_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_27_fu_5455_p2[1]),
        .Q(add_ln840_27_reg_6745[1]),
        .R(1'b0));
  FDRE \add_ln840_27_reg_6745_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_27_fu_5455_p2[2]),
        .Q(add_ln840_27_reg_6745[2]),
        .R(1'b0));
  FDRE \add_ln840_27_reg_6745_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_27_fu_5455_p2[3]),
        .Q(add_ln840_27_reg_6745[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \add_ln840_2_reg_6575[1]_i_2 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .I2(inElem_reg_5804_pp0_iter1_reg[6]),
        .I3(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_2_reg_6575[1]_i_2_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_2_reg_6575[1]_i_5 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_2_reg_6575[1]_i_5_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_2_reg_6575[1]_i_6 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_2_reg_6575[1]_i_6_n_3 ));
  FDRE \add_ln840_2_reg_6575_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_2_fu_4602_p2[0]),
        .Q(add_ln840_2_reg_6575[0]),
        .R(1'b0));
  FDRE \add_ln840_2_reg_6575_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_2_fu_4602_p2[1]),
        .Q(add_ln840_2_reg_6575[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_32_reg_6615[2]_i_15 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_32_reg_6615[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_32_reg_6615[2]_i_20 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_32_reg_6615[2]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_32_reg_6615[2]_i_26 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_32_reg_6615[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_32_reg_6615[2]_i_9 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_32_reg_6615[2]_i_9_n_3 ));
  FDRE \add_ln840_32_reg_6615_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_32_fu_4790_p2[0]),
        .Q(add_ln840_32_reg_6615[0]),
        .R(1'b0));
  FDRE \add_ln840_32_reg_6615_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_32_fu_4790_p2[1]),
        .Q(add_ln840_32_reg_6615[1]),
        .R(1'b0));
  FDRE \add_ln840_32_reg_6615_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_32_fu_4790_p2[2]),
        .Q(add_ln840_32_reg_6615[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_10 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_35_reg_6620[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_15 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_35_reg_6620[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_16 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_35_reg_6620[2]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_21 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_35_reg_6620[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_28 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_35_reg_6620[2]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_35_reg_6620[2]_i_9 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_35_reg_6620[2]_i_9_n_3 ));
  FDRE \add_ln840_35_reg_6620_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_35_fu_4816_p2[0]),
        .Q(add_ln840_35_reg_6620[0]),
        .R(1'b0));
  FDRE \add_ln840_35_reg_6620_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_35_fu_4816_p2[1]),
        .Q(add_ln840_35_reg_6620[1]),
        .R(1'b0));
  FDRE \add_ln840_35_reg_6620_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_35_fu_4816_p2[2]),
        .Q(add_ln840_35_reg_6620[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_39_reg_6625[2]_i_15 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_39_reg_6625[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_39_reg_6625[2]_i_22 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_39_reg_6625[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_39_reg_6625[2]_i_28 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_39_reg_6625[2]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_39_reg_6625[2]_i_9 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_39_reg_6625[2]_i_9_n_3 ));
  FDRE \add_ln840_39_reg_6625_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_39_fu_4842_p2[0]),
        .Q(add_ln840_39_reg_6625[0]),
        .R(1'b0));
  FDRE \add_ln840_39_reg_6625_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_39_fu_4842_p2[1]),
        .Q(add_ln840_39_reg_6625[1]),
        .R(1'b0));
  FDRE \add_ln840_39_reg_6625_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_39_fu_4842_p2[2]),
        .Q(add_ln840_39_reg_6625[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_3_reg_6580[1]_i_11 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_3_reg_6580[1]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_3_reg_6580[1]_i_12 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_3_reg_6580[1]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_3_reg_6580[1]_i_6 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_3_reg_6580[1]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_3_reg_6580[1]_i_7 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_3_reg_6580[1]_i_7_n_3 ));
  FDRE \add_ln840_3_reg_6580_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_3_fu_4608_p2[0]),
        .Q(add_ln840_3_reg_6580[0]),
        .R(1'b0));
  FDRE \add_ln840_3_reg_6580_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_3_fu_4608_p2[1]),
        .Q(add_ln840_3_reg_6580[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_42_reg_6630[2]_i_10 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_42_reg_6630[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_42_reg_6630[2]_i_21 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_42_reg_6630[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_42_reg_6630[2]_i_28 
       (.I0(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_42_reg_6630[2]_i_28_n_3 ));
  FDRE \add_ln840_42_reg_6630_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_42_fu_4868_p2[0]),
        .Q(add_ln840_42_reg_6630[0]),
        .R(1'b0));
  FDRE \add_ln840_42_reg_6630_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_42_fu_4868_p2[1]),
        .Q(add_ln840_42_reg_6630[1]),
        .R(1'b0));
  FDRE \add_ln840_42_reg_6630_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_42_fu_4868_p2[2]),
        .Q(add_ln840_42_reg_6630[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_44_reg_6750[0]_i_1 
       (.I0(add_ln840_35_reg_6620[0]),
        .I1(add_ln840_39_reg_6625[0]),
        .I2(add_ln840_32_reg_6615[0]),
        .I3(add_ln840_42_reg_6630[0]),
        .O(add_ln840_44_fu_5493_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h81177EE8)) 
    \add_ln840_44_reg_6750[1]_i_1 
       (.I0(add_ln840_42_reg_6630[0]),
        .I1(add_ln840_35_reg_6620[0]),
        .I2(add_ln840_32_reg_6615[0]),
        .I3(add_ln840_39_reg_6625[0]),
        .I4(\add_ln840_44_reg_6750[1]_i_2_n_3 ),
        .O(add_ln840_44_fu_5493_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_44_reg_6750[1]_i_2 
       (.I0(add_ln840_35_reg_6620[1]),
        .I1(add_ln840_39_reg_6625[1]),
        .I2(add_ln840_32_reg_6615[1]),
        .I3(add_ln840_42_reg_6630[1]),
        .O(\add_ln840_44_reg_6750[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h9669699666666666)) 
    \add_ln840_44_reg_6750[2]_i_1 
       (.I0(\add_ln840_44_reg_6750[2]_i_2_n_3 ),
        .I1(\add_ln840_44_reg_6750[2]_i_3_n_3 ),
        .I2(add_ln840_35_reg_6620[1]),
        .I3(add_ln840_39_reg_6625[1]),
        .I4(add_ln840_32_reg_6615[1]),
        .I5(add_ln840_42_reg_6630[1]),
        .O(add_ln840_44_fu_5493_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFEE88000)) 
    \add_ln840_44_reg_6750[2]_i_2 
       (.I0(add_ln840_42_reg_6630[0]),
        .I1(add_ln840_35_reg_6620[0]),
        .I2(add_ln840_39_reg_6625[0]),
        .I3(add_ln840_32_reg_6615[0]),
        .I4(\add_ln840_44_reg_6750[1]_i_2_n_3 ),
        .O(\add_ln840_44_reg_6750[2]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_44_reg_6750[2]_i_3 
       (.I0(add_ln840_42_reg_6630[2]),
        .I1(add_ln840_32_reg_6615[2]),
        .I2(add_ln840_39_reg_6625[2]),
        .I3(add_ln840_35_reg_6620[2]),
        .I4(\add_ln840_44_reg_6750[4]_i_3_n_3 ),
        .O(\add_ln840_44_reg_6750[2]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA99595569556566A)) 
    \add_ln840_44_reg_6750[3]_i_1 
       (.I0(\add_ln840_44_reg_6750[4]_i_2_n_3 ),
        .I1(add_ln840_35_reg_6620[2]),
        .I2(add_ln840_39_reg_6625[2]),
        .I3(add_ln840_32_reg_6615[2]),
        .I4(add_ln840_42_reg_6630[2]),
        .I5(\add_ln840_44_reg_6750[4]_i_3_n_3 ),
        .O(add_ln840_44_fu_5493_p2[3]));
  LUT6 #(
    .INIT(64'hFEEAEAA8EAA8A880)) 
    \add_ln840_44_reg_6750[4]_i_1 
       (.I0(\add_ln840_44_reg_6750[4]_i_2_n_3 ),
        .I1(add_ln840_35_reg_6620[2]),
        .I2(add_ln840_32_reg_6615[2]),
        .I3(add_ln840_39_reg_6625[2]),
        .I4(\add_ln840_44_reg_6750[4]_i_3_n_3 ),
        .I5(add_ln840_42_reg_6630[2]),
        .O(add_ln840_44_fu_5493_p2[4]));
  LUT6 #(
    .INIT(64'hEBBEAAAA82280000)) 
    \add_ln840_44_reg_6750[4]_i_2 
       (.I0(\add_ln840_44_reg_6750[2]_i_2_n_3 ),
        .I1(add_ln840_35_reg_6620[1]),
        .I2(add_ln840_39_reg_6625[1]),
        .I3(add_ln840_32_reg_6615[1]),
        .I4(add_ln840_42_reg_6630[1]),
        .I5(\add_ln840_44_reg_6750[2]_i_3_n_3 ),
        .O(\add_ln840_44_reg_6750[4]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_44_reg_6750[4]_i_3 
       (.I0(add_ln840_35_reg_6620[1]),
        .I1(add_ln840_32_reg_6615[1]),
        .I2(add_ln840_39_reg_6625[1]),
        .O(\add_ln840_44_reg_6750[4]_i_3_n_3 ));
  FDRE \add_ln840_44_reg_6750_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_44_fu_5493_p2[0]),
        .Q(add_ln840_44_reg_6750[0]),
        .R(1'b0));
  FDRE \add_ln840_44_reg_6750_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_44_fu_5493_p2[1]),
        .Q(add_ln840_44_reg_6750[1]),
        .R(1'b0));
  FDRE \add_ln840_44_reg_6750_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_44_fu_5493_p2[2]),
        .Q(add_ln840_44_reg_6750[2]),
        .R(1'b0));
  FDRE \add_ln840_44_reg_6750_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_44_fu_5493_p2[3]),
        .Q(add_ln840_44_reg_6750[3]),
        .R(1'b0));
  FDRE \add_ln840_44_reg_6750_reg[4] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_44_fu_5493_p2[4]),
        .Q(add_ln840_44_reg_6750[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_47_reg_6635[2]_i_27 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_47_reg_6635[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_47_reg_6635[2]_i_34 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_47_reg_6635[2]_i_34_n_3 ));
  FDRE \add_ln840_47_reg_6635_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_47_fu_4894_p2[0]),
        .Q(add_ln840_47_reg_6635[0]),
        .R(1'b0));
  FDRE \add_ln840_47_reg_6635_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_47_fu_4894_p2[1]),
        .Q(add_ln840_47_reg_6635[1]),
        .R(1'b0));
  FDRE \add_ln840_47_reg_6635_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_47_fu_4894_p2[2]),
        .Q(add_ln840_47_reg_6635[2]),
        .R(1'b0));
  FDRE \add_ln840_50_reg_6640_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_50_fu_4920_p2[0]),
        .Q(add_ln840_50_reg_6640[0]),
        .R(1'b0));
  FDRE \add_ln840_50_reg_6640_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_50_fu_4920_p2[1]),
        .Q(add_ln840_50_reg_6640[1]),
        .R(1'b0));
  FDRE \add_ln840_50_reg_6640_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_50_fu_4920_p2[2]),
        .Q(add_ln840_50_reg_6640[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_54_reg_6645[2]_i_11 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_54_reg_6645[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_54_reg_6645[2]_i_26 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_54_reg_6645[2]_i_26_n_3 ));
  FDRE \add_ln840_54_reg_6645_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_54_fu_4946_p2[0]),
        .Q(add_ln840_54_reg_6645[0]),
        .R(1'b0));
  FDRE \add_ln840_54_reg_6645_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_54_fu_4946_p2[1]),
        .Q(add_ln840_54_reg_6645[1]),
        .R(1'b0));
  FDRE \add_ln840_54_reg_6645_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_54_fu_4946_p2[2]),
        .Q(add_ln840_54_reg_6645[2]),
        .R(1'b0));
  FDRE \add_ln840_57_reg_6650_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_57_fu_4972_p2[0]),
        .Q(add_ln840_57_reg_6650[0]),
        .R(1'b0));
  FDRE \add_ln840_57_reg_6650_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_57_fu_4972_p2[1]),
        .Q(add_ln840_57_reg_6650[1]),
        .R(1'b0));
  FDRE \add_ln840_57_reg_6650_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_57_fu_4972_p2[2]),
        .Q(add_ln840_57_reg_6650[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_59_reg_6755[0]_i_1 
       (.I0(add_ln840_50_reg_6640[0]),
        .I1(add_ln840_54_reg_6645[0]),
        .I2(add_ln840_47_reg_6635[0]),
        .I3(add_ln840_57_reg_6650[0]),
        .O(add_ln840_59_fu_5531_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h81177EE8)) 
    \add_ln840_59_reg_6755[1]_i_1 
       (.I0(add_ln840_57_reg_6650[0]),
        .I1(add_ln840_50_reg_6640[0]),
        .I2(add_ln840_47_reg_6635[0]),
        .I3(add_ln840_54_reg_6645[0]),
        .I4(\add_ln840_59_reg_6755[1]_i_2_n_3 ),
        .O(add_ln840_59_fu_5531_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_59_reg_6755[1]_i_2 
       (.I0(add_ln840_50_reg_6640[1]),
        .I1(add_ln840_54_reg_6645[1]),
        .I2(add_ln840_47_reg_6635[1]),
        .I3(add_ln840_57_reg_6650[1]),
        .O(\add_ln840_59_reg_6755[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h9669699666666666)) 
    \add_ln840_59_reg_6755[2]_i_1 
       (.I0(\add_ln840_59_reg_6755[2]_i_2_n_3 ),
        .I1(\add_ln840_59_reg_6755[2]_i_3_n_3 ),
        .I2(add_ln840_50_reg_6640[1]),
        .I3(add_ln840_54_reg_6645[1]),
        .I4(add_ln840_47_reg_6635[1]),
        .I5(add_ln840_57_reg_6650[1]),
        .O(add_ln840_59_fu_5531_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFEE88000)) 
    \add_ln840_59_reg_6755[2]_i_2 
       (.I0(add_ln840_57_reg_6650[0]),
        .I1(add_ln840_50_reg_6640[0]),
        .I2(add_ln840_54_reg_6645[0]),
        .I3(add_ln840_47_reg_6635[0]),
        .I4(\add_ln840_59_reg_6755[1]_i_2_n_3 ),
        .O(\add_ln840_59_reg_6755[2]_i_2_n_3 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_59_reg_6755[2]_i_3 
       (.I0(add_ln840_57_reg_6650[2]),
        .I1(add_ln840_47_reg_6635[2]),
        .I2(add_ln840_54_reg_6645[2]),
        .I3(add_ln840_50_reg_6640[2]),
        .I4(\add_ln840_59_reg_6755[4]_i_3_n_3 ),
        .O(\add_ln840_59_reg_6755[2]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'hA99595569556566A)) 
    \add_ln840_59_reg_6755[3]_i_1 
       (.I0(\add_ln840_59_reg_6755[4]_i_2_n_3 ),
        .I1(add_ln840_50_reg_6640[2]),
        .I2(add_ln840_54_reg_6645[2]),
        .I3(add_ln840_47_reg_6635[2]),
        .I4(add_ln840_57_reg_6650[2]),
        .I5(\add_ln840_59_reg_6755[4]_i_3_n_3 ),
        .O(add_ln840_59_fu_5531_p2[3]));
  LUT6 #(
    .INIT(64'hFEEAEAA8EAA8A880)) 
    \add_ln840_59_reg_6755[4]_i_1 
       (.I0(\add_ln840_59_reg_6755[4]_i_2_n_3 ),
        .I1(add_ln840_50_reg_6640[2]),
        .I2(add_ln840_47_reg_6635[2]),
        .I3(add_ln840_54_reg_6645[2]),
        .I4(\add_ln840_59_reg_6755[4]_i_3_n_3 ),
        .I5(add_ln840_57_reg_6650[2]),
        .O(add_ln840_59_fu_5531_p2[4]));
  LUT6 #(
    .INIT(64'hEBBEAAAA82280000)) 
    \add_ln840_59_reg_6755[4]_i_2 
       (.I0(\add_ln840_59_reg_6755[2]_i_2_n_3 ),
        .I1(add_ln840_50_reg_6640[1]),
        .I2(add_ln840_54_reg_6645[1]),
        .I3(add_ln840_47_reg_6635[1]),
        .I4(add_ln840_57_reg_6650[1]),
        .I5(\add_ln840_59_reg_6755[2]_i_3_n_3 ),
        .O(\add_ln840_59_reg_6755[4]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_59_reg_6755[4]_i_3 
       (.I0(add_ln840_50_reg_6640[1]),
        .I1(add_ln840_47_reg_6635[1]),
        .I2(add_ln840_54_reg_6645[1]),
        .O(\add_ln840_59_reg_6755[4]_i_3_n_3 ));
  FDRE \add_ln840_59_reg_6755_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_59_fu_5531_p2[0]),
        .Q(add_ln840_59_reg_6755[0]),
        .R(1'b0));
  FDRE \add_ln840_59_reg_6755_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_59_fu_5531_p2[1]),
        .Q(add_ln840_59_reg_6755[1]),
        .R(1'b0));
  FDRE \add_ln840_59_reg_6755_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_59_fu_5531_p2[2]),
        .Q(add_ln840_59_reg_6755[2]),
        .R(1'b0));
  FDRE \add_ln840_59_reg_6755_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_59_fu_5531_p2[3]),
        .Q(add_ln840_59_reg_6755[3]),
        .R(1'b0));
  FDRE \add_ln840_59_reg_6755_reg[4] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_59_fu_5531_p2[4]),
        .Q(add_ln840_59_reg_6755[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_61_reg_6770[0]_i_1 
       (.I0(add_ln840_59_reg_6755[0]),
        .I1(add_ln840_44_reg_6750[0]),
        .I2(add_ln840_27_reg_6745[0]),
        .I3(add_ln840_20_reg_6740[0]),
        .I4(add_ln840_13_reg_6735[0]),
        .O(add_ln840_61_fu_5754_p2[0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \add_ln840_61_reg_6770[1]_i_1 
       (.I0(add_ln840_59_reg_6755[0]),
        .I1(zext_ln840_26_fu_5738_p1[0]),
        .I2(add_ln840_44_reg_6750[0]),
        .I3(zext_ln840_26_fu_5738_p1[1]),
        .I4(add_ln840_44_reg_6750[1]),
        .I5(add_ln840_59_reg_6755[1]),
        .O(add_ln840_61_fu_5754_p2[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_61_reg_6770[1]_i_2 
       (.I0(add_ln840_27_reg_6745[0]),
        .I1(add_ln840_20_reg_6740[0]),
        .I2(add_ln840_13_reg_6735[0]),
        .O(zext_ln840_26_fu_5738_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h9336366C)) 
    \add_ln840_61_reg_6770[2]_i_1 
       (.I0(\add_ln840_61_reg_6770[2]_i_2_n_3 ),
        .I1(\add_ln840_61_reg_6770[2]_i_3_n_3 ),
        .I2(add_ln840_44_reg_6750[1]),
        .I3(zext_ln840_26_fu_5738_p1[1]),
        .I4(add_ln840_59_reg_6755[1]),
        .O(add_ln840_61_fu_5754_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \add_ln840_61_reg_6770[2]_i_2 
       (.I0(add_ln840_44_reg_6750[0]),
        .I1(add_ln840_13_reg_6735[0]),
        .I2(add_ln840_20_reg_6740[0]),
        .I3(add_ln840_27_reg_6745[0]),
        .I4(add_ln840_59_reg_6755[0]),
        .O(\add_ln840_61_reg_6770[2]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_61_reg_6770[2]_i_3 
       (.I0(add_ln840_59_reg_6755[2]),
        .I1(add_ln840_44_reg_6750[2]),
        .I2(zext_ln840_26_fu_5738_p1[2]),
        .O(\add_ln840_61_reg_6770[2]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \add_ln840_61_reg_6770[2]_i_4 
       (.I0(add_ln840_27_reg_6745[0]),
        .I1(add_ln840_13_reg_6735[0]),
        .I2(add_ln840_20_reg_6740[0]),
        .I3(add_ln840_13_reg_6735[1]),
        .I4(add_ln840_20_reg_6740[1]),
        .I5(add_ln840_27_reg_6745[1]),
        .O(zext_ln840_26_fu_5738_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_61_reg_6770[3]_i_1 
       (.I0(\add_ln840_61_reg_6770[3]_i_2_n_3 ),
        .I1(add_ln840_59_reg_6755[3]),
        .I2(add_ln840_44_reg_6750[3]),
        .I3(zext_ln840_26_fu_5738_p1[3]),
        .I4(\add_ln840_61_reg_6770[3]_i_4_n_3 ),
        .O(add_ln840_61_fu_5754_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \add_ln840_61_reg_6770[3]_i_2 
       (.I0(\add_ln840_61_reg_6770[2]_i_3_n_3 ),
        .I1(add_ln840_59_reg_6755[1]),
        .I2(zext_ln840_26_fu_5738_p1[1]),
        .I3(add_ln840_44_reg_6750[1]),
        .I4(\add_ln840_61_reg_6770[2]_i_2_n_3 ),
        .O(\add_ln840_61_reg_6770[3]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_61_reg_6770[3]_i_3 
       (.I0(\add_ln840_61_reg_6770[5]_i_10_n_3 ),
        .I1(\add_ln840_61_reg_6770[3]_i_5_n_3 ),
        .I2(add_ln840_20_reg_6740[2]),
        .I3(add_ln840_13_reg_6735[2]),
        .I4(add_ln840_27_reg_6745[2]),
        .O(zext_ln840_26_fu_5738_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_61_reg_6770[3]_i_4 
       (.I0(add_ln840_44_reg_6750[2]),
        .I1(zext_ln840_26_fu_5738_p1[2]),
        .I2(add_ln840_59_reg_6755[2]),
        .O(\add_ln840_61_reg_6770[3]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_61_reg_6770[3]_i_5 
       (.I0(add_ln840_27_reg_6745[3]),
        .I1(add_ln840_20_reg_6740[3]),
        .I2(add_ln840_13_reg_6735[3]),
        .O(\add_ln840_61_reg_6770[3]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_61_reg_6770[4]_i_1 
       (.I0(add_ln840_59_reg_6755[4]),
        .I1(add_ln840_44_reg_6750[4]),
        .I2(zext_ln840_26_fu_5738_p1[4]),
        .I3(\add_ln840_61_reg_6770[5]_i_3_n_3 ),
        .I4(\add_ln840_61_reg_6770[5]_i_4_n_3 ),
        .O(add_ln840_61_fu_5754_p2[4]));
  LUT6 #(
    .INIT(64'h4444444444040404)) 
    \add_ln840_61_reg_6770[5]_i_1 
       (.I0(icmp_ln295_reg_5800_pp0_iter3_reg),
        .I1(ap_CS_iter4_fsm_state5),
        .I2(ap_CS_iter5_fsm_state6),
        .I3(Q[2]),
        .I4(out_V_TREADY_int_regslice),
        .I5(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .O(add_ln840_61_reg_67700));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \add_ln840_61_reg_6770[5]_i_10 
       (.I0(add_ln840_13_reg_6735[2]),
        .I1(add_ln840_20_reg_6740[2]),
        .I2(add_ln840_27_reg_6745[2]),
        .I3(\add_ln840_61_reg_6770[5]_i_14_n_3 ),
        .I4(\add_ln840_61_reg_6770[5]_i_12_n_3 ),
        .O(\add_ln840_61_reg_6770[5]_i_10_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_61_reg_6770[5]_i_11 
       (.I0(add_ln840_20_reg_6740[2]),
        .I1(add_ln840_13_reg_6735[2]),
        .I2(add_ln840_27_reg_6745[2]),
        .O(\add_ln840_61_reg_6770[5]_i_11_n_3 ));
  LUT6 #(
    .INIT(64'h9696960096000000)) 
    \add_ln840_61_reg_6770[5]_i_12 
       (.I0(add_ln840_13_reg_6735[1]),
        .I1(add_ln840_20_reg_6740[1]),
        .I2(add_ln840_27_reg_6745[1]),
        .I3(add_ln840_27_reg_6745[0]),
        .I4(add_ln840_13_reg_6735[0]),
        .I5(add_ln840_20_reg_6740[0]),
        .O(\add_ln840_61_reg_6770[5]_i_12_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_61_reg_6770[5]_i_13 
       (.I0(add_ln840_27_reg_6745[2]),
        .I1(add_ln840_20_reg_6740[2]),
        .I2(add_ln840_13_reg_6735[2]),
        .O(\add_ln840_61_reg_6770[5]_i_13_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_61_reg_6770[5]_i_14 
       (.I0(add_ln840_20_reg_6740[1]),
        .I1(add_ln840_13_reg_6735[1]),
        .I2(add_ln840_27_reg_6745[1]),
        .O(\add_ln840_61_reg_6770[5]_i_14_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    \add_ln840_61_reg_6770[5]_i_2 
       (.I0(\add_ln840_61_reg_6770[5]_i_3_n_3 ),
        .I1(\add_ln840_61_reg_6770[5]_i_4_n_3 ),
        .I2(add_ln840_59_reg_6755[4]),
        .I3(zext_ln840_26_fu_5738_p1[4]),
        .I4(add_ln840_44_reg_6750[4]),
        .O(add_ln840_61_fu_5754_p2[5]));
  LUT6 #(
    .INIT(64'hFEEAEAA8EAA8A880)) 
    \add_ln840_61_reg_6770[5]_i_3 
       (.I0(\add_ln840_61_reg_6770[5]_i_6_n_3 ),
        .I1(add_ln840_59_reg_6755[2]),
        .I2(zext_ln840_26_fu_5738_p1[2]),
        .I3(add_ln840_44_reg_6750[2]),
        .I4(\add_ln840_61_reg_6770[5]_i_8_n_3 ),
        .I5(\add_ln840_61_reg_6770[5]_i_9_n_3 ),
        .O(\add_ln840_61_reg_6770[5]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_61_reg_6770[5]_i_4 
       (.I0(add_ln840_44_reg_6750[3]),
        .I1(zext_ln840_26_fu_5738_p1[3]),
        .I2(add_ln840_59_reg_6755[3]),
        .O(\add_ln840_61_reg_6770[5]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    \add_ln840_61_reg_6770[5]_i_5 
       (.I0(\add_ln840_61_reg_6770[5]_i_10_n_3 ),
        .I1(\add_ln840_61_reg_6770[5]_i_11_n_3 ),
        .I2(add_ln840_27_reg_6745[3]),
        .I3(add_ln840_13_reg_6735[3]),
        .I4(add_ln840_20_reg_6740[3]),
        .O(zext_ln840_26_fu_5738_p1[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \add_ln840_61_reg_6770[5]_i_6 
       (.I0(add_ln840_59_reg_6755[3]),
        .I1(add_ln840_44_reg_6750[3]),
        .I2(\add_ln840_61_reg_6770[5]_i_10_n_3 ),
        .I3(\add_ln840_61_reg_6770[3]_i_5_n_3 ),
        .I4(\add_ln840_61_reg_6770[5]_i_11_n_3 ),
        .O(\add_ln840_61_reg_6770[5]_i_6_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_61_reg_6770[5]_i_7 
       (.I0(\add_ln840_61_reg_6770[5]_i_12_n_3 ),
        .I1(\add_ln840_61_reg_6770[5]_i_13_n_3 ),
        .I2(add_ln840_20_reg_6740[1]),
        .I3(add_ln840_13_reg_6735[1]),
        .I4(add_ln840_27_reg_6745[1]),
        .O(zext_ln840_26_fu_5738_p1[2]));
  LUT6 #(
    .INIT(64'h9696960096000000)) 
    \add_ln840_61_reg_6770[5]_i_8 
       (.I0(zext_ln840_26_fu_5738_p1[1]),
        .I1(add_ln840_44_reg_6750[1]),
        .I2(add_ln840_59_reg_6755[1]),
        .I3(add_ln840_59_reg_6755[0]),
        .I4(zext_ln840_26_fu_5738_p1[0]),
        .I5(add_ln840_44_reg_6750[0]),
        .O(\add_ln840_61_reg_6770[5]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_61_reg_6770[5]_i_9 
       (.I0(add_ln840_44_reg_6750[1]),
        .I1(zext_ln840_26_fu_5738_p1[1]),
        .I2(add_ln840_59_reg_6755[1]),
        .O(\add_ln840_61_reg_6770[5]_i_9_n_3 ));
  FDRE \add_ln840_61_reg_6770_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[0]),
        .Q(add_ln840_61_reg_6770[0]),
        .R(1'b0));
  FDRE \add_ln840_61_reg_6770_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[1]),
        .Q(add_ln840_61_reg_6770[1]),
        .R(1'b0));
  FDRE \add_ln840_61_reg_6770_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[2]),
        .Q(add_ln840_61_reg_6770[2]),
        .R(1'b0));
  FDRE \add_ln840_61_reg_6770_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[3]),
        .Q(add_ln840_61_reg_6770[3]),
        .R(1'b0));
  FDRE \add_ln840_61_reg_6770_reg[4] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[4]),
        .Q(add_ln840_61_reg_6770[4]),
        .R(1'b0));
  FDRE \add_ln840_61_reg_6770_reg[5] 
       (.C(ap_clk),
        .CE(add_ln840_61_reg_67700),
        .D(add_ln840_61_fu_5754_p2[5]),
        .Q(add_ln840_61_reg_6770[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444040404)) 
    \add_ln840_64_reg_6655[2]_i_1 
       (.I0(icmp_ln295_reg_5800_pp0_iter1_reg),
        .I1(ap_CS_iter2_fsm_state3),
        .I2(ap_CS_iter5_fsm_state6),
        .I3(Q[2]),
        .I4(out_V_TREADY_int_regslice),
        .I5(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .O(add_ln840_102_reg_67050));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_64_reg_6655[2]_i_12 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_64_reg_6655[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_64_reg_6655[2]_i_19 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_64_reg_6655[2]_i_19_n_3 ));
  FDRE \add_ln840_64_reg_6655_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_64_fu_4998_p2[0]),
        .Q(add_ln840_64_reg_6655[0]),
        .R(1'b0));
  FDRE \add_ln840_64_reg_6655_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_64_fu_4998_p2[1]),
        .Q(add_ln840_64_reg_6655[1]),
        .R(1'b0));
  FDRE \add_ln840_64_reg_6655_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_64_fu_4998_p2[2]),
        .Q(add_ln840_64_reg_6655[2]),
        .R(1'b0));
  FDRE \add_ln840_67_reg_6660_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_67_fu_5024_p2[0]),
        .Q(add_ln840_67_reg_6660[0]),
        .R(1'b0));
  FDRE \add_ln840_67_reg_6660_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_67_fu_5024_p2[1]),
        .Q(add_ln840_67_reg_6660[1]),
        .R(1'b0));
  FDRE \add_ln840_67_reg_6660_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_67_fu_5024_p2[2]),
        .Q(add_ln840_67_reg_6660[2]),
        .R(1'b0));
  FDRE \add_ln840_71_reg_6665_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_71_fu_5050_p2[0]),
        .Q(add_ln840_71_reg_6665[0]),
        .R(1'b0));
  FDRE \add_ln840_71_reg_6665_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_71_fu_5050_p2[1]),
        .Q(add_ln840_71_reg_6665[1]),
        .R(1'b0));
  FDRE \add_ln840_71_reg_6665_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_71_fu_5050_p2[2]),
        .Q(add_ln840_71_reg_6665[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_10 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_74_reg_6670[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_17 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_74_reg_6670[2]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_23 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_74_reg_6670[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_24 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_74_reg_6670[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_29 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_74_reg_6670[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_74_reg_6670[2]_i_30 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_74_reg_6670[2]_i_30_n_3 ));
  FDRE \add_ln840_74_reg_6670_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_74_fu_5076_p2[0]),
        .Q(add_ln840_74_reg_6670[0]),
        .R(1'b0));
  FDRE \add_ln840_74_reg_6670_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_74_fu_5076_p2[1]),
        .Q(add_ln840_74_reg_6670[1]),
        .R(1'b0));
  FDRE \add_ln840_74_reg_6670_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_74_fu_5076_p2[2]),
        .Q(add_ln840_74_reg_6670[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_79_reg_6675[2]_i_15 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_79_reg_6675[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_79_reg_6675[2]_i_22 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_79_reg_6675[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_79_reg_6675[2]_i_29 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_79_reg_6675[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_79_reg_6675[2]_i_9 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_79_reg_6675[2]_i_9_n_3 ));
  FDRE \add_ln840_79_reg_6675_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_79_fu_5102_p2[0]),
        .Q(add_ln840_79_reg_6675[0]),
        .R(1'b0));
  FDRE \add_ln840_79_reg_6675_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_79_fu_5102_p2[1]),
        .Q(add_ln840_79_reg_6675[1]),
        .R(1'b0));
  FDRE \add_ln840_79_reg_6675_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_79_fu_5102_p2[2]),
        .Q(add_ln840_79_reg_6675[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_82_reg_6680[2]_i_11 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_82_reg_6680[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_82_reg_6680[2]_i_24 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_82_reg_6680[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_82_reg_6680[2]_i_30 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_82_reg_6680[2]_i_30_n_3 ));
  FDRE \add_ln840_82_reg_6680_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_82_fu_5128_p2[0]),
        .Q(add_ln840_82_reg_6680[0]),
        .R(1'b0));
  FDRE \add_ln840_82_reg_6680_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_82_fu_5128_p2[1]),
        .Q(add_ln840_82_reg_6680[1]),
        .R(1'b0));
  FDRE \add_ln840_82_reg_6680_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_82_fu_5128_p2[2]),
        .Q(add_ln840_82_reg_6680[2]),
        .R(1'b0));
  FDRE \add_ln840_86_reg_6685_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_86_fu_5154_p2[0]),
        .Q(add_ln840_86_reg_6685[0]),
        .R(1'b0));
  FDRE \add_ln840_86_reg_6685_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_86_fu_5154_p2[1]),
        .Q(add_ln840_86_reg_6685[1]),
        .R(1'b0));
  FDRE \add_ln840_86_reg_6685_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_86_fu_5154_p2[2]),
        .Q(add_ln840_86_reg_6685[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_89_reg_6690[2]_i_15 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_89_reg_6690[2]_i_15_n_3 ));
  FDRE \add_ln840_89_reg_6690_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_89_fu_5180_p2[0]),
        .Q(add_ln840_89_reg_6690[0]),
        .R(1'b0));
  FDRE \add_ln840_89_reg_6690_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_89_fu_5180_p2[1]),
        .Q(add_ln840_89_reg_6690[1]),
        .R(1'b0));
  FDRE \add_ln840_89_reg_6690_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_89_fu_5180_p2[2]),
        .Q(add_ln840_89_reg_6690[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_10 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_8_reg_6585[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_14 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_8_reg_6585[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_16 
       (.I0(inElem_reg_5804_pp0_iter1_reg[3]),
        .I1(inElem_reg_5804_pp0_iter1_reg[2]),
        .O(\add_ln840_8_reg_6585[2]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_20 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_8_reg_6585[2]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_21 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_8_reg_6585[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_26 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_8_reg_6585[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_27 
       (.I0(inElem_reg_5804_pp0_iter1_reg[5]),
        .I1(inElem_reg_5804_pp0_iter1_reg[4]),
        .O(\add_ln840_8_reg_6585[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_8_reg_6585[2]_i_8 
       (.I0(inElem_reg_5804_pp0_iter1_reg[6]),
        .I1(inElem_reg_5804_pp0_iter1_reg[7]),
        .O(\add_ln840_8_reg_6585[2]_i_8_n_3 ));
  FDRE \add_ln840_8_reg_6585_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_8_fu_4634_p2[0]),
        .Q(add_ln840_8_reg_6585[0]),
        .R(1'b0));
  FDRE \add_ln840_8_reg_6585_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_8_fu_4634_p2[1]),
        .Q(add_ln840_8_reg_6585[1]),
        .R(1'b0));
  FDRE \add_ln840_8_reg_6585_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_8_fu_4634_p2[2]),
        .Q(add_ln840_8_reg_6585[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \add_ln840_92_reg_6760[0]_i_1 
       (.I0(\add_ln840_92_reg_6760[1]_i_2_n_3 ),
        .I1(add_ln840_89_reg_6690[0]),
        .I2(add_ln840_74_reg_6670[0]),
        .I3(add_ln840_67_reg_6660[0]),
        .I4(add_ln840_71_reg_6665[0]),
        .I5(add_ln840_64_reg_6655[0]),
        .O(add_ln840_92_fu_5621_p2[0]));
  LUT5 #(
    .INIT(32'h96996696)) 
    \add_ln840_92_reg_6760[1]_i_1 
       (.I0(\add_ln840_92_reg_6760[2]_i_3_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_4_n_3 ),
        .I2(add_ln840_89_reg_6690[0]),
        .I3(\add_ln840_92_reg_6760[1]_i_2_n_3 ),
        .I4(add_ln840_74_reg_6670[0]),
        .O(\add_ln840_92_reg_6760[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln840_92_reg_6760[1]_i_2 
       (.I0(add_ln840_79_reg_6675[0]),
        .I1(add_ln840_82_reg_6680[0]),
        .I2(add_ln840_86_reg_6685[0]),
        .O(\add_ln840_92_reg_6760[1]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \add_ln840_92_reg_6760[2]_i_1 
       (.I0(\add_ln840_92_reg_6760[2]_i_2_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_3_n_3 ),
        .I2(\add_ln840_92_reg_6760[2]_i_4_n_3 ),
        .I3(\add_ln840_92_reg_6760[2]_i_5_n_3 ),
        .I4(\add_ln840_92_reg_6760[2]_i_6_n_3 ),
        .O(add_ln840_92_fu_5621_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h14417DD7)) 
    \add_ln840_92_reg_6760[2]_i_2 
       (.I0(add_ln840_89_reg_6690[0]),
        .I1(add_ln840_86_reg_6685[0]),
        .I2(add_ln840_82_reg_6680[0]),
        .I3(add_ln840_79_reg_6675[0]),
        .I4(add_ln840_74_reg_6670[0]),
        .O(\add_ln840_92_reg_6760[2]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \add_ln840_92_reg_6760[2]_i_3 
       (.I0(add_ln840_74_reg_6670[0]),
        .I1(add_ln840_89_reg_6690[0]),
        .I2(\add_ln840_92_reg_6760[1]_i_2_n_3 ),
        .I3(add_ln840_64_reg_6655[0]),
        .I4(add_ln840_71_reg_6665[0]),
        .I5(add_ln840_67_reg_6660[0]),
        .O(\add_ln840_92_reg_6760[2]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_92_reg_6760[2]_i_4 
       (.I0(\add_ln840_92_reg_6760[2]_i_7_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_8_n_3 ),
        .I2(add_ln840_64_reg_6655[0]),
        .I3(add_ln840_71_reg_6665[0]),
        .I4(add_ln840_67_reg_6660[0]),
        .O(\add_ln840_92_reg_6760[2]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \add_ln840_92_reg_6760[2]_i_5 
       (.I0(\add_ln840_92_reg_6760[3]_i_4_n_3 ),
        .I1(\add_ln840_92_reg_6760[3]_i_2_n_3 ),
        .I2(\add_ln840_92_reg_6760[3]_i_3_n_3 ),
        .O(\add_ln840_92_reg_6760[2]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h11171777)) 
    \add_ln840_92_reg_6760[2]_i_6 
       (.I0(\add_ln840_92_reg_6760[2]_i_7_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_8_n_3 ),
        .I2(add_ln840_64_reg_6655[0]),
        .I3(add_ln840_71_reg_6665[0]),
        .I4(add_ln840_67_reg_6660[0]),
        .O(\add_ln840_92_reg_6760[2]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \add_ln840_92_reg_6760[2]_i_7 
       (.I0(add_ln840_89_reg_6690[1]),
        .I1(add_ln840_74_reg_6670[1]),
        .I2(\add_ln840_92_reg_6760[3]_i_8_n_3 ),
        .I3(add_ln840_79_reg_6675[1]),
        .I4(add_ln840_82_reg_6680[1]),
        .I5(add_ln840_86_reg_6685[1]),
        .O(\add_ln840_92_reg_6760[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_92_reg_6760[2]_i_8 
       (.I0(add_ln840_86_reg_6685[0]),
        .I1(add_ln840_82_reg_6680[0]),
        .I2(add_ln840_79_reg_6675[0]),
        .O(\add_ln840_92_reg_6760[2]_i_8_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \add_ln840_92_reg_6760[3]_i_1 
       (.I0(\add_ln840_92_reg_6760[3]_i_2_n_3 ),
        .I1(\add_ln840_92_reg_6760[3]_i_3_n_3 ),
        .I2(\add_ln840_92_reg_6760[3]_i_4_n_3 ),
        .I3(\add_ln840_92_reg_6760[3]_i_5_n_3 ),
        .I4(\add_ln840_92_reg_6760[3]_i_6_n_3 ),
        .O(add_ln840_92_fu_5621_p2[3]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \add_ln840_92_reg_6760[3]_i_2 
       (.I0(add_ln840_67_reg_6660[1]),
        .I1(add_ln840_71_reg_6665[1]),
        .I2(add_ln840_64_reg_6655[1]),
        .I3(add_ln840_82_reg_6680[1]),
        .I4(add_ln840_86_reg_6685[1]),
        .I5(add_ln840_79_reg_6675[1]),
        .O(\add_ln840_92_reg_6760[3]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \add_ln840_92_reg_6760[3]_i_3 
       (.I0(add_ln840_74_reg_6670[2]),
        .I1(add_ln840_89_reg_6690[2]),
        .I2(add_ln840_74_reg_6670[1]),
        .I3(add_ln840_89_reg_6690[1]),
        .I4(\add_ln840_92_reg_6760[3]_i_7_n_3 ),
        .O(\add_ln840_92_reg_6760[3]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h099F9F099F09099F)) 
    \add_ln840_92_reg_6760[3]_i_4 
       (.I0(add_ln840_74_reg_6670[1]),
        .I1(add_ln840_89_reg_6690[1]),
        .I2(\add_ln840_92_reg_6760[3]_i_8_n_3 ),
        .I3(add_ln840_79_reg_6675[1]),
        .I4(add_ln840_82_reg_6680[1]),
        .I5(add_ln840_86_reg_6685[1]),
        .O(\add_ln840_92_reg_6760[3]_i_4_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h008E8EFF)) 
    \add_ln840_92_reg_6760[3]_i_5 
       (.I0(\add_ln840_92_reg_6760[2]_i_4_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_3_n_3 ),
        .I2(\add_ln840_92_reg_6760[2]_i_2_n_3 ),
        .I3(\add_ln840_92_reg_6760[2]_i_6_n_3 ),
        .I4(\add_ln840_92_reg_6760[2]_i_5_n_3 ),
        .O(\add_ln840_92_reg_6760[3]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hAA959555556A6AAA)) 
    \add_ln840_92_reg_6760[3]_i_6 
       (.I0(\add_ln840_92_reg_6760[5]_i_7_n_3 ),
        .I1(add_ln840_74_reg_6670[1]),
        .I2(add_ln840_89_reg_6690[1]),
        .I3(add_ln840_74_reg_6670[2]),
        .I4(add_ln840_89_reg_6690[2]),
        .I5(\add_ln840_92_reg_6760[5]_i_6_n_3 ),
        .O(\add_ln840_92_reg_6760[3]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \add_ln840_92_reg_6760[3]_i_7 
       (.I0(add_ln840_64_reg_6655[2]),
        .I1(add_ln840_67_reg_6660[2]),
        .I2(add_ln840_71_reg_6665[2]),
        .I3(add_ln840_79_reg_6675[2]),
        .I4(add_ln840_82_reg_6680[2]),
        .I5(add_ln840_86_reg_6685[2]),
        .O(\add_ln840_92_reg_6760[3]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_92_reg_6760[3]_i_8 
       (.I0(add_ln840_64_reg_6655[1]),
        .I1(add_ln840_67_reg_6660[1]),
        .I2(add_ln840_71_reg_6665[1]),
        .O(\add_ln840_92_reg_6760[3]_i_8_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_92_reg_6760[4]_i_1 
       (.I0(\add_ln840_92_reg_6760[5]_i_5_n_3 ),
        .I1(\add_ln840_92_reg_6760[5]_i_4_n_3 ),
        .I2(\add_ln840_92_reg_6760[5]_i_3_n_3 ),
        .O(add_ln840_92_fu_5621_p2[4]));
  LUT6 #(
    .INIT(64'h4444444444040404)) 
    \add_ln840_92_reg_6760[5]_i_1 
       (.I0(icmp_ln295_reg_5800_pp0_iter2_reg),
        .I1(ap_CS_iter3_fsm_state4),
        .I2(ap_CS_iter5_fsm_state6),
        .I3(Q[2]),
        .I4(out_V_TREADY_int_regslice),
        .I5(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .O(add_ln840_123_reg_67650));
  LUT5 #(
    .INIT(32'h9600FF96)) 
    \add_ln840_92_reg_6760[5]_i_10 
       (.I0(\add_ln840_92_reg_6760[5]_i_13_n_3 ),
        .I1(\add_ln840_92_reg_6760[2]_i_8_n_3 ),
        .I2(\add_ln840_92_reg_6760[2]_i_7_n_3 ),
        .I3(\add_ln840_92_reg_6760[2]_i_3_n_3 ),
        .I4(\add_ln840_92_reg_6760[2]_i_2_n_3 ),
        .O(\add_ln840_92_reg_6760[5]_i_10_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \add_ln840_92_reg_6760[5]_i_11 
       (.I0(add_ln840_89_reg_6690[1]),
        .I1(add_ln840_74_reg_6670[1]),
        .I2(add_ln840_89_reg_6690[2]),
        .I3(add_ln840_74_reg_6670[2]),
        .O(\add_ln840_92_reg_6760[5]_i_11_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \add_ln840_92_reg_6760[5]_i_12 
       (.I0(add_ln840_64_reg_6655[2]),
        .I1(add_ln840_67_reg_6660[2]),
        .I2(add_ln840_71_reg_6665[2]),
        .O(\add_ln840_92_reg_6760[5]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_92_reg_6760[5]_i_13 
       (.I0(add_ln840_64_reg_6655[0]),
        .I1(add_ln840_71_reg_6665[0]),
        .I2(add_ln840_67_reg_6660[0]),
        .O(\add_ln840_92_reg_6760[5]_i_13_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \add_ln840_92_reg_6760[5]_i_2 
       (.I0(\add_ln840_92_reg_6760[5]_i_3_n_3 ),
        .I1(\add_ln840_92_reg_6760[5]_i_4_n_3 ),
        .I2(\add_ln840_92_reg_6760[5]_i_5_n_3 ),
        .O(add_ln840_92_fu_5621_p2[5]));
  LUT6 #(
    .INIT(64'h077F0000FFFF077F)) 
    \add_ln840_92_reg_6760[5]_i_3 
       (.I0(add_ln840_74_reg_6670[1]),
        .I1(add_ln840_89_reg_6690[1]),
        .I2(add_ln840_74_reg_6670[2]),
        .I3(add_ln840_89_reg_6690[2]),
        .I4(\add_ln840_92_reg_6760[5]_i_6_n_3 ),
        .I5(\add_ln840_92_reg_6760[5]_i_7_n_3 ),
        .O(\add_ln840_92_reg_6760[5]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h022AABBF)) 
    \add_ln840_92_reg_6760[5]_i_4 
       (.I0(\add_ln840_92_reg_6760[5]_i_8_n_3 ),
        .I1(add_ln840_82_reg_6680[2]),
        .I2(add_ln840_86_reg_6685[2]),
        .I3(add_ln840_79_reg_6675[2]),
        .I4(\add_ln840_92_reg_6760[5]_i_9_n_3 ),
        .O(\add_ln840_92_reg_6760[5]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h571515017F575715)) 
    \add_ln840_92_reg_6760[5]_i_5 
       (.I0(\add_ln840_92_reg_6760[3]_i_6_n_3 ),
        .I1(\add_ln840_92_reg_6760[3]_i_4_n_3 ),
        .I2(\add_ln840_92_reg_6760[3]_i_3_n_3 ),
        .I3(\add_ln840_92_reg_6760[3]_i_2_n_3 ),
        .I4(\add_ln840_92_reg_6760[5]_i_10_n_3 ),
        .I5(\add_ln840_92_reg_6760[2]_i_6_n_3 ),
        .O(\add_ln840_92_reg_6760[5]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \add_ln840_92_reg_6760[5]_i_6 
       (.I0(\add_ln840_92_reg_6760[5]_i_8_n_3 ),
        .I1(\add_ln840_92_reg_6760[5]_i_9_n_3 ),
        .I2(add_ln840_79_reg_6675[2]),
        .I3(add_ln840_86_reg_6685[2]),
        .I4(add_ln840_82_reg_6680[2]),
        .O(\add_ln840_92_reg_6760[5]_i_6_n_3 ));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \add_ln840_92_reg_6760[5]_i_7 
       (.I0(\add_ln840_92_reg_6760[5]_i_11_n_3 ),
        .I1(add_ln840_86_reg_6685[2]),
        .I2(add_ln840_82_reg_6680[2]),
        .I3(add_ln840_79_reg_6675[2]),
        .I4(\add_ln840_92_reg_6760[5]_i_12_n_3 ),
        .O(\add_ln840_92_reg_6760[5]_i_7_n_3 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \add_ln840_92_reg_6760[5]_i_8 
       (.I0(add_ln840_67_reg_6660[1]),
        .I1(add_ln840_71_reg_6665[1]),
        .I2(add_ln840_64_reg_6655[1]),
        .I3(add_ln840_82_reg_6680[1]),
        .I4(add_ln840_86_reg_6685[1]),
        .I5(add_ln840_79_reg_6675[1]),
        .O(\add_ln840_92_reg_6760[5]_i_8_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \add_ln840_92_reg_6760[5]_i_9 
       (.I0(add_ln840_64_reg_6655[2]),
        .I1(add_ln840_71_reg_6665[2]),
        .I2(add_ln840_67_reg_6660[2]),
        .O(\add_ln840_92_reg_6760[5]_i_9_n_3 ));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[0]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[1]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[2]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[3]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[4]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_pp0_iter4_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(add_ln840_92_reg_6760[5]),
        .Q(add_ln840_92_reg_6760_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_92_fu_5621_p2[0]),
        .Q(add_ln840_92_reg_6760[0]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(\add_ln840_92_reg_6760[1]_i_1_n_3 ),
        .Q(add_ln840_92_reg_6760[1]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_92_fu_5621_p2[2]),
        .Q(add_ln840_92_reg_6760[2]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[3] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_92_fu_5621_p2[3]),
        .Q(add_ln840_92_reg_6760[3]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[4] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_92_fu_5621_p2[4]),
        .Q(add_ln840_92_reg_6760[4]),
        .R(1'b0));
  FDRE \add_ln840_92_reg_6760_reg[5] 
       (.C(ap_clk),
        .CE(add_ln840_123_reg_67650),
        .D(add_ln840_92_fu_5621_p2[5]),
        .Q(add_ln840_92_reg_6760[5]),
        .R(1'b0));
  FDRE \add_ln840_95_reg_6695_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_95_fu_5206_p2[0]),
        .Q(add_ln840_95_reg_6695[0]),
        .R(1'b0));
  FDRE \add_ln840_95_reg_6695_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_95_fu_5206_p2[1]),
        .Q(add_ln840_95_reg_6695[1]),
        .R(1'b0));
  FDRE \add_ln840_95_reg_6695_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_95_fu_5206_p2[2]),
        .Q(add_ln840_95_reg_6695[2]),
        .R(1'b0));
  FDRE \add_ln840_98_reg_6700_reg[0] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_98_fu_5232_p2[0]),
        .Q(add_ln840_98_reg_6700[0]),
        .R(1'b0));
  FDRE \add_ln840_98_reg_6700_reg[1] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_98_fu_5232_p2[1]),
        .Q(add_ln840_98_reg_6700[1]),
        .R(1'b0));
  FDRE \add_ln840_98_reg_6700_reg[2] 
       (.C(ap_clk),
        .CE(add_ln840_102_reg_67050),
        .D(add_ln840_98_fu_5232_p2[2]),
        .Q(add_ln840_98_reg_6700[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ap_ST_iter1_fsm_state0:01,ap_ST_iter1_fsm_state2:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_iter1_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_iter1_fsm),
        .Q(ap_CS_iter1_fsm_state2),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hCCCACACACCCCCCCC)) 
    \ap_CS_iter2_fsm[1]_i_1 
       (.I0(ap_CS_iter2_fsm_state3),
        .I1(ap_CS_iter1_fsm_state2),
        .I2(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I3(out_V_TREADY_int_regslice),
        .I4(Q[2]),
        .I5(ap_CS_iter5_fsm_state6),
        .O(ap_NS_iter2_fsm));
  (* FSM_ENCODED_STATES = "ap_ST_iter2_fsm_state0:01,ap_ST_iter2_fsm_state3:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_iter2_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_iter2_fsm),
        .Q(ap_CS_iter2_fsm_state3),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hABBBAAAAA888AAAA)) 
    \ap_CS_iter3_fsm[1]_i_1 
       (.I0(ap_CS_iter2_fsm_state3),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(Q[2]),
        .I4(ap_CS_iter5_fsm_state6),
        .I5(ap_CS_iter3_fsm_state4),
        .O(ap_NS_iter3_fsm));
  (* FSM_ENCODED_STATES = "ap_ST_iter3_fsm_state0:01,ap_ST_iter3_fsm_state4:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_iter3_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_iter3_fsm),
        .Q(ap_CS_iter3_fsm_state4),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hABBBAAAAA888AAAA)) 
    \ap_CS_iter4_fsm[1]_i_1 
       (.I0(ap_CS_iter3_fsm_state4),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(Q[2]),
        .I4(ap_CS_iter5_fsm_state6),
        .I5(ap_CS_iter4_fsm_state5),
        .O(ap_NS_iter4_fsm));
  (* FSM_ENCODED_STATES = "ap_ST_iter4_fsm_state0:01,ap_ST_iter4_fsm_state5:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_iter4_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_iter4_fsm),
        .Q(ap_CS_iter4_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hAAAAAEEE)) 
    \ap_CS_iter5_fsm[1]_i_1 
       (.I0(ap_CS_iter4_fsm_state5),
        .I1(ap_CS_iter5_fsm_state6),
        .I2(Q[2]),
        .I3(out_V_TREADY_int_regslice),
        .I4(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .O(ap_NS_iter5_fsm));
  (* FSM_ENCODED_STATES = "ap_ST_iter5_fsm_state0:01,ap_ST_iter5_fsm_state6:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_iter5_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_iter5_fsm),
        .Q(ap_CS_iter5_fsm_state6),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_19),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  FDRE ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(ap_loop_exit_ready_pp0_iter1_reg),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    ap_loop_exit_ready_pp0_iter3_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(flow_control_loop_pipe_sequential_init_U_n_6),
        .I2(ap_CS_iter2_fsm_state3),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .O(ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    ap_loop_exit_ready_pp0_iter4_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter3_reg),
        .I1(flow_control_loop_pipe_sequential_init_U_n_6),
        .I2(ap_CS_iter3_fsm_state4),
        .I3(ap_loop_exit_ready_pp0_iter4_reg),
        .O(ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3));
  FDRE ap_loop_exit_ready_pp0_iter4_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3),
        .Q(ap_loop_exit_ready_pp0_iter4_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEBFA200)) 
    ap_loop_exit_ready_pp0_iter5_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter4_reg),
        .I1(ap_CS_iter5_fsm_state6),
        .I2(ap_loop_exit_ready_pp0_iter5_reg_reg_0),
        .I3(ap_CS_iter4_fsm_state5),
        .I4(ap_loop_exit_ready_pp0_iter5_reg),
        .O(ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3));
  FDRE ap_loop_exit_ready_pp0_iter5_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3),
        .Q(ap_loop_exit_ready_pp0_iter5_reg),
        .R(1'b0));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(p_0_in),
        .E(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .Q(Q),
        .SR(flow_control_loop_pipe_sequential_init_U_n_5),
        .\ap_CS_fsm_reg[0] (D),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_iter1_fsm_reg[1] (\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .\ap_CS_iter1_fsm_reg[1]_0 (ap_CS_iter5_fsm_state6),
        .ap_CS_iter1_fsm_state2(ap_CS_iter1_fsm_state2),
        .ap_NS_fsm10_out(ap_NS_fsm10_out),
        .ap_NS_iter1_fsm(ap_NS_iter1_fsm),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter5_reg(ap_loop_exit_ready_pp0_iter5_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_inv),
        .grp_Thresholding_Batch_fu_546_ap_start_reg(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .grp_Thresholding_Batch_fu_546_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_19),
        .grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0(flow_control_loop_pipe_sequential_init_U_n_20),
        .i_2_fu_2007_p2(i_2_fu_2007_p2),
        .\i_fu_320_reg[0] (\i_fu_320[0]_i_5_n_3 ),
        .\i_fu_320_reg[1] (flow_control_loop_pipe_sequential_init_U_n_17),
        .\i_fu_320_reg[4] (\i_fu_320_reg_n_3_[3] ),
        .\i_fu_320_reg[4]_0 (\i_fu_320_reg_n_3_[1] ),
        .\i_fu_320_reg[4]_1 (\i_fu_320_reg_n_3_[0] ),
        .\i_fu_320_reg[4]_2 (\i_fu_320_reg_n_3_[2] ),
        .\i_fu_320_reg[4]_3 (\i_fu_320_reg_n_3_[4] ),
        .\i_fu_320_reg[5] (\i_fu_320_reg_n_3_[5] ),
        .\i_fu_320_reg[9] (\i_fu_320_reg_n_3_[8] ),
        .\i_fu_320_reg[9]_0 (\i_fu_320_reg_n_3_[7] ),
        .\i_fu_320_reg[9]_1 (\i_fu_320_reg_n_3_[6] ),
        .\i_fu_320_reg[9]_2 (\i_fu_320_reg_n_3_[9] ),
        .icmp_ln295_reg_5800(icmp_ln295_reg_5800),
        .\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] (flow_control_loop_pipe_sequential_init_U_n_6),
        .in0_V_TVALID_int_regslice(in0_V_TVALID_int_regslice),
        .\nf_1_fu_316_reg_rep[6] (\nf_1_fu_316_rep[9]_i_4_n_3 ),
        .out_V_TREADY_int_regslice(out_V_TREADY_int_regslice));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \i_fu_320[0]_i_5 
       (.I0(flow_control_loop_pipe_sequential_init_U_n_17),
        .I1(\i_fu_320_reg_n_3_[7] ),
        .I2(\i_fu_320_reg_n_3_[6] ),
        .I3(\i_fu_320_reg_n_3_[4] ),
        .I4(\i_fu_320_reg_n_3_[5] ),
        .O(\i_fu_320[0]_i_5_n_3 ));
  FDRE \i_fu_320_reg[0] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(p_0_in),
        .Q(\i_fu_320_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[1] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[1]),
        .Q(\i_fu_320_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[2] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[2]),
        .Q(\i_fu_320_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[3] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[3]),
        .Q(\i_fu_320_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[4] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[4]),
        .Q(\i_fu_320_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[5] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[5]),
        .Q(\i_fu_320_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[6] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[6]),
        .Q(\i_fu_320_reg_n_3_[6] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[7] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[7]),
        .Q(\i_fu_320_reg_n_3_[7] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[8] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[8]),
        .Q(\i_fu_320_reg_n_3_[8] ),
        .R(1'b0));
  FDRE \i_fu_320_reg[9] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(i_2_fu_2007_p2[9]),
        .Q(\i_fu_320_reg_n_3_[9] ),
        .R(1'b0));
  FDRE \icmp_ln295_reg_5800_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(icmp_ln295_reg_5800),
        .Q(icmp_ln295_reg_5800_pp0_iter1_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1 
       (.I0(icmp_ln295_reg_5800_pp0_iter1_reg),
        .I1(flow_control_loop_pipe_sequential_init_U_n_6),
        .I2(ap_CS_iter2_fsm_state3),
        .I3(icmp_ln295_reg_5800_pp0_iter2_reg),
        .O(\icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3 ));
  FDRE \icmp_ln295_reg_5800_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3 ),
        .Q(icmp_ln295_reg_5800_pp0_iter2_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1 
       (.I0(icmp_ln295_reg_5800_pp0_iter2_reg),
        .I1(flow_control_loop_pipe_sequential_init_U_n_6),
        .I2(ap_CS_iter3_fsm_state4),
        .I3(icmp_ln295_reg_5800_pp0_iter3_reg),
        .O(\icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3 ));
  FDRE \icmp_ln295_reg_5800_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3 ),
        .Q(icmp_ln295_reg_5800_pp0_iter3_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \icmp_ln295_reg_5800_pp0_iter4_reg[0]_i_1 
       (.I0(ap_CS_iter5_fsm_state6),
        .I1(Q[2]),
        .I2(out_V_TREADY_int_regslice),
        .I3(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I4(ap_CS_iter4_fsm_state5),
        .O(ap_NS_iter5_fsm1));
  FDRE \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_iter5_fsm1),
        .D(icmp_ln295_reg_5800_pp0_iter3_reg),
        .Q(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .R(1'b0));
  FDRE \icmp_ln295_reg_5800_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(icmp_ln295_reg_5800),
        .R(1'b0));
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[0]),
        .Q(inElem_reg_5804_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[1]),
        .Q(inElem_reg_5804_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[2]),
        .Q(inElem_reg_5804_pp0_iter1_reg[2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[3]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[3]),
        .Q(inElem_reg_5804_pp0_iter1_reg[3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[3]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[3]),
        .Q(\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .R(1'b0));
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[4]),
        .Q(inElem_reg_5804_pp0_iter1_reg[4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[5]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[5]),
        .Q(inElem_reg_5804_pp0_iter1_reg[5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[5]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[5]),
        .Q(\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .R(1'b0));
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[6]),
        .Q(inElem_reg_5804_pp0_iter1_reg[6]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[7]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[7]),
        .Q(inElem_reg_5804_pp0_iter1_reg[7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[7]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[7]),
        .Q(\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "inElem_reg_5804_pp0_iter1_reg_reg[7]" *) 
  FDRE \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(inElem_reg_5804[7]),
        .Q(\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3 ),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[0] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [0]),
        .Q(inElem_reg_5804[0]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[1] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [1]),
        .Q(inElem_reg_5804[1]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[2] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [2]),
        .Q(inElem_reg_5804[2]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[3] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [3]),
        .Q(inElem_reg_5804[3]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[4] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [4]),
        .Q(inElem_reg_5804[4]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[5] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [5]),
        .Q(inElem_reg_5804[5]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[6] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [6]),
        .Q(inElem_reg_5804[6]),
        .R(1'b0));
  FDRE \inElem_reg_5804_reg[7] 
       (.C(ap_clk),
        .CE(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .D(\inElem_reg_5804_reg[7]_0 [7]),
        .Q(inElem_reg_5804[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \nf_1_fu_316[0]_i_2 
       (.I0(nf_1_fu_316_reg[0]),
        .O(nf_fu_2152_p2[0]));
  FDRE \nf_1_fu_316_reg[0] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[0]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\nf_1_fu_316_reg[0]_i_1_n_3 ,\nf_1_fu_316_reg[0]_i_1_n_4 ,\nf_1_fu_316_reg[0]_i_1_n_5 ,\nf_1_fu_316_reg[0]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\nf_1_fu_316_reg[0]_i_1_n_7 ,\nf_1_fu_316_reg[0]_i_1_n_8 ,\nf_1_fu_316_reg[0]_i_1_n_9 ,\nf_1_fu_316_reg[0]_i_1_n_10 }),
        .S({nf_1_fu_316_reg[3:1],nf_fu_2152_p2[0]}));
  FDRE \nf_1_fu_316_reg[10] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[8]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[11] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[8]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[12] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[12]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__1[12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[12]_i_1 
       (.CI(\nf_1_fu_316_reg[8]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[12]_i_1_n_3 ,\nf_1_fu_316_reg[12]_i_1_n_4 ,\nf_1_fu_316_reg[12]_i_1_n_5 ,\nf_1_fu_316_reg[12]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[12]_i_1_n_7 ,\nf_1_fu_316_reg[12]_i_1_n_8 ,\nf_1_fu_316_reg[12]_i_1_n_9 ,\nf_1_fu_316_reg[12]_i_1_n_10 }),
        .S(nf_1_fu_316_reg__1[15:12]));
  FDRE \nf_1_fu_316_reg[13] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[12]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__1[13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[14] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[12]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[15] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[12]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[16] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[16]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__1[16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[16]_i_1 
       (.CI(\nf_1_fu_316_reg[12]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[16]_i_1_n_3 ,\nf_1_fu_316_reg[16]_i_1_n_4 ,\nf_1_fu_316_reg[16]_i_1_n_5 ,\nf_1_fu_316_reg[16]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[16]_i_1_n_7 ,\nf_1_fu_316_reg[16]_i_1_n_8 ,\nf_1_fu_316_reg[16]_i_1_n_9 ,\nf_1_fu_316_reg[16]_i_1_n_10 }),
        .S(nf_1_fu_316_reg__1[19:16]));
  FDRE \nf_1_fu_316_reg[17] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[16]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__1[17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[18] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[16]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[19] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[16]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[1] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[0]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[20] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[20]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__1[20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[20]_i_1 
       (.CI(\nf_1_fu_316_reg[16]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[20]_i_1_n_3 ,\nf_1_fu_316_reg[20]_i_1_n_4 ,\nf_1_fu_316_reg[20]_i_1_n_5 ,\nf_1_fu_316_reg[20]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[20]_i_1_n_7 ,\nf_1_fu_316_reg[20]_i_1_n_8 ,\nf_1_fu_316_reg[20]_i_1_n_9 ,\nf_1_fu_316_reg[20]_i_1_n_10 }),
        .S(nf_1_fu_316_reg__1[23:20]));
  FDRE \nf_1_fu_316_reg[21] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[20]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__1[21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[22] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[20]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[23] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[20]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[24] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[24]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__1[24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[24]_i_1 
       (.CI(\nf_1_fu_316_reg[20]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[24]_i_1_n_3 ,\nf_1_fu_316_reg[24]_i_1_n_4 ,\nf_1_fu_316_reg[24]_i_1_n_5 ,\nf_1_fu_316_reg[24]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[24]_i_1_n_7 ,\nf_1_fu_316_reg[24]_i_1_n_8 ,\nf_1_fu_316_reg[24]_i_1_n_9 ,\nf_1_fu_316_reg[24]_i_1_n_10 }),
        .S(nf_1_fu_316_reg__1[27:24]));
  FDRE \nf_1_fu_316_reg[25] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[24]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__1[25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[26] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[24]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[27] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[24]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[28] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[28]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__1[28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[28]_i_1 
       (.CI(\nf_1_fu_316_reg[24]_i_1_n_3 ),
        .CO({\NLW_nf_1_fu_316_reg[28]_i_1_CO_UNCONNECTED [3],\nf_1_fu_316_reg[28]_i_1_n_4 ,\nf_1_fu_316_reg[28]_i_1_n_5 ,\nf_1_fu_316_reg[28]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[28]_i_1_n_7 ,\nf_1_fu_316_reg[28]_i_1_n_8 ,\nf_1_fu_316_reg[28]_i_1_n_9 ,\nf_1_fu_316_reg[28]_i_1_n_10 }),
        .S(nf_1_fu_316_reg__1[31:28]));
  FDRE \nf_1_fu_316_reg[29] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[28]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__1[29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[2] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[0]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[30] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[28]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__1[30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[31] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[28]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__1[31]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[3] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[0]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[4] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[4]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[4]_i_1 
       (.CI(\nf_1_fu_316_reg[0]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[4]_i_1_n_3 ,\nf_1_fu_316_reg[4]_i_1_n_4 ,\nf_1_fu_316_reg[4]_i_1_n_5 ,\nf_1_fu_316_reg[4]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[4]_i_1_n_7 ,\nf_1_fu_316_reg[4]_i_1_n_8 ,\nf_1_fu_316_reg[4]_i_1_n_9 ,\nf_1_fu_316_reg[4]_i_1_n_10 }),
        .S({nf_1_fu_316_reg__0[7:6],nf_1_fu_316_reg[5:4]}));
  FDRE \nf_1_fu_316_reg[5] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[4]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[6] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[4]_i_1_n_8 ),
        .Q(nf_1_fu_316_reg__0[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[7] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[4]_i_1_n_7 ),
        .Q(nf_1_fu_316_reg__0[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg[8] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[8]_i_1_n_10 ),
        .Q(nf_1_fu_316_reg__0[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nf_1_fu_316_reg[8]_i_1 
       (.CI(\nf_1_fu_316_reg[4]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg[8]_i_1_n_3 ,\nf_1_fu_316_reg[8]_i_1_n_4 ,\nf_1_fu_316_reg[8]_i_1_n_5 ,\nf_1_fu_316_reg[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nf_1_fu_316_reg[8]_i_1_n_7 ,\nf_1_fu_316_reg[8]_i_1_n_8 ,\nf_1_fu_316_reg[8]_i_1_n_9 ,\nf_1_fu_316_reg[8]_i_1_n_10 }),
        .S({nf_1_fu_316_reg__1[11:10],nf_1_fu_316_reg__0[9:8]}));
  FDRE \nf_1_fu_316_reg[9] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(\nf_1_fu_316_reg[8]_i_1_n_9 ),
        .Q(nf_1_fu_316_reg__0[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg_rep[6] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(nf_fu_2152_p2__0[6]),
        .Q(nf_1_fu_316[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg_rep[7] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(nf_fu_2152_p2__0[7]),
        .Q(nf_1_fu_316[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \nf_1_fu_316_reg_rep[8] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(nf_fu_2152_p2__0[8]),
        .Q(nf_1_fu_316[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[8]_i_1 
       (.CI(\nf_1_fu_316_reg_rep[8]_i_2_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[8]_i_1_n_3 ,\nf_1_fu_316_reg_rep[8]_i_1_n_4 ,\nf_1_fu_316_reg_rep[8]_i_1_n_5 ,\nf_1_fu_316_reg_rep[8]_i_1_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nf_fu_2152_p2__0[8:6],nf_fu_2152_p2[5]}),
        .S({nf_1_fu_316_reg__0[8:6],nf_1_fu_316_reg[5]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[8]_i_2 
       (.CI(1'b0),
        .CO({\nf_1_fu_316_reg_rep[8]_i_2_n_3 ,\nf_1_fu_316_reg_rep[8]_i_2_n_4 ,\nf_1_fu_316_reg_rep[8]_i_2_n_5 ,\nf_1_fu_316_reg_rep[8]_i_2_n_6 }),
        .CYINIT(nf_1_fu_316_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nf_fu_2152_p2[4:1]),
        .S(nf_1_fu_316_reg[4:1]));
  FDRE \nf_1_fu_316_reg_rep[9] 
       (.C(ap_clk),
        .CE(nf_1_fu_3160),
        .D(nf_fu_2152_p2__0[9]),
        .Q(nf_1_fu_316[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_11 
       (.CI(\nf_1_fu_316_reg_rep[9]_i_14_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[9]_i_11_n_3 ,\nf_1_fu_316_reg_rep[9]_i_11_n_4 ,\nf_1_fu_316_reg_rep[9]_i_11_n_5 ,\nf_1_fu_316_reg_rep[9]_i_11_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nf_fu_2152_p2[24:21]),
        .S(nf_1_fu_316_reg__1[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_12 
       (.CI(\nf_1_fu_316_reg_rep[9]_i_11_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[9]_i_12_n_3 ,\nf_1_fu_316_reg_rep[9]_i_12_n_4 ,\nf_1_fu_316_reg_rep[9]_i_12_n_5 ,\nf_1_fu_316_reg_rep[9]_i_12_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nf_fu_2152_p2[28:25]),
        .S(nf_1_fu_316_reg__1[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_13 
       (.CI(\nf_1_fu_316_reg_rep[9]_i_12_n_3 ),
        .CO({\NLW_nf_1_fu_316_reg_rep[9]_i_13_CO_UNCONNECTED [3:2],\nf_1_fu_316_reg_rep[9]_i_13_n_5 ,\nf_1_fu_316_reg_rep[9]_i_13_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_nf_1_fu_316_reg_rep[9]_i_13_O_UNCONNECTED [3],nf_fu_2152_p2[31:29]}),
        .S({1'b0,nf_1_fu_316_reg__1[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_14 
       (.CI(\nf_1_fu_316_reg_rep[9]_i_15_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[9]_i_14_n_3 ,\nf_1_fu_316_reg_rep[9]_i_14_n_4 ,\nf_1_fu_316_reg_rep[9]_i_14_n_5 ,\nf_1_fu_316_reg_rep[9]_i_14_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nf_fu_2152_p2[20:17]),
        .S(nf_1_fu_316_reg__1[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_15 
       (.CI(\nf_1_fu_316_reg_rep[9]_i_3_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[9]_i_15_n_3 ,\nf_1_fu_316_reg_rep[9]_i_15_n_4 ,\nf_1_fu_316_reg_rep[9]_i_15_n_5 ,\nf_1_fu_316_reg_rep[9]_i_15_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nf_fu_2152_p2[16:13]),
        .S(nf_1_fu_316_reg__1[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nf_1_fu_316_reg_rep[9]_i_3 
       (.CI(\nf_1_fu_316_reg_rep[8]_i_1_n_3 ),
        .CO({\nf_1_fu_316_reg_rep[9]_i_3_n_3 ,\nf_1_fu_316_reg_rep[9]_i_3_n_4 ,\nf_1_fu_316_reg_rep[9]_i_3_n_5 ,\nf_1_fu_316_reg_rep[9]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nf_fu_2152_p2[12:10],nf_fu_2152_p2__0[9]}),
        .S({nf_1_fu_316_reg__1[12:10],nf_1_fu_316_reg__0[9]}));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \nf_1_fu_316_rep[9]_i_10 
       (.I0(nf_fu_2152_p2__0[6]),
        .I1(nf_fu_2152_p2__0[7]),
        .I2(nf_fu_2152_p2[4]),
        .I3(nf_fu_2152_p2[5]),
        .I4(nf_fu_2152_p2__0[8]),
        .I5(nf_fu_2152_p2__0[9]),
        .O(\nf_1_fu_316_rep[9]_i_10_n_3 ));
  LUT6 #(
    .INIT(64'h00000000A888AAAA)) 
    \nf_1_fu_316_rep[9]_i_2 
       (.I0(ap_CS_iter1_fsm_state2),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(Q[2]),
        .I4(ap_CS_iter5_fsm_state6),
        .I5(icmp_ln295_reg_5800),
        .O(nf_1_fu_3160));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \nf_1_fu_316_rep[9]_i_4 
       (.I0(\nf_1_fu_316_rep[9]_i_5_n_3 ),
        .I1(\nf_1_fu_316_rep[9]_i_6_n_3 ),
        .I2(\nf_1_fu_316_rep[9]_i_7_n_3 ),
        .I3(\nf_1_fu_316_rep[9]_i_8_n_3 ),
        .I4(\nf_1_fu_316_rep[9]_i_9_n_3 ),
        .I5(\nf_1_fu_316_rep[9]_i_10_n_3 ),
        .O(\nf_1_fu_316_rep[9]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nf_1_fu_316_rep[9]_i_5 
       (.I0(nf_fu_2152_p2[24]),
        .I1(nf_fu_2152_p2[25]),
        .I2(nf_fu_2152_p2[22]),
        .I3(nf_fu_2152_p2[23]),
        .I4(nf_fu_2152_p2[27]),
        .I5(nf_fu_2152_p2[26]),
        .O(\nf_1_fu_316_rep[9]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \nf_1_fu_316_rep[9]_i_6 
       (.I0(nf_fu_2152_p2[30]),
        .I1(nf_fu_2152_p2[31]),
        .I2(nf_fu_2152_p2[28]),
        .I3(nf_fu_2152_p2[29]),
        .I4(icmp_ln295_reg_5800),
        .I5(nf_1_fu_316_reg[0]),
        .O(\nf_1_fu_316_rep[9]_i_6_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nf_1_fu_316_rep[9]_i_7 
       (.I0(nf_fu_2152_p2[18]),
        .I1(nf_fu_2152_p2[19]),
        .I2(nf_fu_2152_p2[16]),
        .I3(nf_fu_2152_p2[17]),
        .I4(nf_fu_2152_p2[21]),
        .I5(nf_fu_2152_p2[20]),
        .O(\nf_1_fu_316_rep[9]_i_7_n_3 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \nf_1_fu_316_rep[9]_i_8 
       (.I0(nf_fu_2152_p2[1]),
        .I1(nf_fu_2152_p2[2]),
        .I2(nf_fu_2152_p2[3]),
        .I3(p_ZL7threshs_128_ce0),
        .O(\nf_1_fu_316_rep[9]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nf_1_fu_316_rep[9]_i_9 
       (.I0(nf_fu_2152_p2[12]),
        .I1(nf_fu_2152_p2[13]),
        .I2(nf_fu_2152_p2[10]),
        .I3(nf_fu_2152_p2[11]),
        .I4(nf_fu_2152_p2[15]),
        .I5(nf_fu_2152_p2[14]),
        .O(\nf_1_fu_316_rep[9]_i_9_n_3 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \p_0_out/i_ 
       (.I0(nf_1_fu_316[8]),
        .I1(nf_1_fu_316[6]),
        .I2(nf_1_fu_316[7]),
        .I3(nf_1_fu_316[9]),
        .O(\p_0_out/i__n_3 ));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R p_ZL7threshs_128_U
       (.CO(icmp_ln1039_8_fu_2353_p2),
        .Q(inElem_reg_5804_pp0_iter1_reg[4:0]),
        .S({\add_ln840_8_reg_6585[2]_i_20_n_3 ,\add_ln840_8_reg_6585[2]_i_21_n_3 }),
        .\add_ln840_35_reg_6620_reg[0] (\add_ln840_35_reg_6620[2]_i_21_n_3 ),
        .\add_ln840_35_reg_6620_reg[2]_i_4_0 (\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .\add_ln840_35_reg_6620_reg[2]_i_4_1 (\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .ap_clk(ap_clk),
        .\inElem_reg_5804_pp0_iter1_reg_reg[4] (icmp_ln1039_36_fu_2945_p2),
        .p_ZL7threshs_128_ce0(p_ZL7threshs_128_ce0),
        .\q0_reg[0]_0 (p_ZL7threshs_128_U_n_3),
        .\q0_reg[0]_1 (\p_0_out/i__n_3 ));
  finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R p_ZL7threshs_130_U
       (.CO(icmp_ln1039_8_fu_2353_p2),
        .D(add_ln840_1_fu_4596_p2),
        .Q(Q[2]),
        .S(\add_ln840_64_reg_6655[2]_i_19_n_3 ),
        .\add_ln840_102_reg_6705_reg[2] (\add_ln840_102_reg_6705[2]_i_27_n_3 ),
        .\add_ln840_102_reg_6705_reg[2]_0 (\add_ln840_102_reg_6705[2]_i_34_n_3 ),
        .\add_ln840_102_reg_6705_reg[2]_i_5_0 (add_ln840_102_fu_5258_p2),
        .\add_ln840_105_reg_6710_reg[2]_i_5_0 (add_ln840_105_fu_5284_p2),
        .\add_ln840_110_reg_6715_reg[2] ({\add_ln840_110_reg_6715[2]_i_20_n_3 ,\add_ln840_110_reg_6715[2]_i_21_n_3 }),
        .\add_ln840_110_reg_6715_reg[2]_0 (\add_ln840_110_reg_6715[2]_i_15_n_3 ),
        .\add_ln840_110_reg_6715_reg[2]_1 ({\add_ln840_110_reg_6715[2]_i_9_n_3 ,\add_ln840_110_reg_6715[2]_i_10_n_3 }),
        .\add_ln840_110_reg_6715_reg[2]_i_5_0 (add_ln840_110_fu_5310_p2),
        .\add_ln840_113_reg_6720_reg[2] (\add_ln840_113_reg_6720[2]_i_23_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_0 (\add_ln840_113_reg_6720[2]_i_17_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_1 (\add_ln840_113_reg_6720[2]_i_29_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_2 (\add_ln840_113_reg_6720[2]_i_10_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_i_2_0 (\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_i_2_1 (\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3 ),
        .\add_ln840_113_reg_6720_reg[2]_i_5_0 (add_ln840_113_fu_5336_p2),
        .\add_ln840_117_reg_6725_reg[2] (\add_ln840_117_reg_6725[2]_i_21_n_3 ),
        .\add_ln840_117_reg_6725_reg[2]_0 (\add_ln840_117_reg_6725[2]_i_15_n_3 ),
        .\add_ln840_117_reg_6725_reg[2]_1 (\add_ln840_117_reg_6725[2]_i_28_n_3 ),
        .\add_ln840_117_reg_6725_reg[2]_i_2_0 (\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3 ),
        .\add_ln840_117_reg_6725_reg[2]_i_5_0 (add_ln840_117_fu_5362_p2),
        .\add_ln840_11_reg_6590_reg[2] (\add_ln840_11_reg_6590[2]_i_21_n_3 ),
        .\add_ln840_11_reg_6590_reg[2]_0 (\add_ln840_11_reg_6590[2]_i_14_n_3 ),
        .\add_ln840_11_reg_6590_reg[2]_1 (\add_ln840_11_reg_6590[2]_i_27_n_3 ),
        .\add_ln840_11_reg_6590_reg[2]_2 (\add_ln840_11_reg_6590[2]_i_8_n_3 ),
        .\add_ln840_11_reg_6590_reg[2]_i_5_0 (add_ln840_11_fu_4660_p2),
        .\add_ln840_120_reg_6730_reg[2]_i_5_0 (add_ln840_120_fu_5388_p2),
        .\add_ln840_16_reg_6595_reg[2] (\add_ln840_16_reg_6595[2]_i_19_n_3 ),
        .\add_ln840_16_reg_6595_reg[2]_0 (\add_ln840_16_reg_6595[2]_i_14_n_3 ),
        .\add_ln840_16_reg_6595_reg[2]_1 (\add_ln840_16_reg_6595[2]_i_26_n_3 ),
        .\add_ln840_16_reg_6595_reg[2]_2 (\add_ln840_16_reg_6595[2]_i_9_n_3 ),
        .\add_ln840_16_reg_6595_reg[2]_i_5_0 (add_ln840_16_fu_4686_p2),
        .\add_ln840_19_reg_6600_reg[2] (\add_ln840_19_reg_6600[2]_i_22_n_3 ),
        .\add_ln840_19_reg_6600_reg[2]_0 (\add_ln840_19_reg_6600[2]_i_16_n_3 ),
        .\add_ln840_19_reg_6600_reg[2]_1 ({\add_ln840_19_reg_6600[2]_i_27_n_3 ,\add_ln840_19_reg_6600[2]_i_29_n_3 }),
        .\add_ln840_19_reg_6600_reg[2]_2 (\add_ln840_19_reg_6600[2]_i_9_n_3 ),
        .\add_ln840_19_reg_6600_reg[2]_i_5_0 (add_ln840_19_fu_4712_p2),
        .\add_ln840_1_reg_6570_reg[0] (\add_ln840_1_reg_6570[1]_i_3_n_3 ),
        .\add_ln840_1_reg_6570_reg[0]_0 (p_ZL7threshs_128_U_n_3),
        .\add_ln840_23_reg_6605_reg[2] (\add_ln840_23_reg_6605[2]_i_21_n_3 ),
        .\add_ln840_23_reg_6605_reg[2]_0 (\add_ln840_23_reg_6605[2]_i_14_n_3 ),
        .\add_ln840_23_reg_6605_reg[2]_1 (\add_ln840_23_reg_6605[2]_i_28_n_3 ),
        .\add_ln840_23_reg_6605_reg[2]_2 (\add_ln840_23_reg_6605[2]_i_8_n_3 ),
        .\add_ln840_23_reg_6605_reg[2]_i_5_0 (add_ln840_23_fu_4738_p2),
        .\add_ln840_26_reg_6610_reg[2] ({\add_ln840_26_reg_6610[2]_i_21_n_3 ,\add_ln840_26_reg_6610[2]_i_23_n_3 }),
        .\add_ln840_26_reg_6610_reg[2]_0 (\add_ln840_26_reg_6610[2]_i_15_n_3 ),
        .\add_ln840_26_reg_6610_reg[2]_1 (\add_ln840_26_reg_6610[2]_i_26_n_3 ),
        .\add_ln840_26_reg_6610_reg[2]_2 ({\add_ln840_26_reg_6610[2]_i_8_n_3 ,\add_ln840_26_reg_6610[2]_i_10_n_3 }),
        .\add_ln840_26_reg_6610_reg[2]_i_5_0 (add_ln840_26_fu_4764_p2),
        .\add_ln840_2_reg_6575_reg[0] (\add_ln840_2_reg_6575[1]_i_2_n_3 ),
        .\add_ln840_2_reg_6575_reg[1] ({\add_ln840_2_reg_6575[1]_i_5_n_3 ,\add_ln840_2_reg_6575[1]_i_6_n_3 }),
        .\add_ln840_32_reg_6615_reg[2] (\add_ln840_32_reg_6615[2]_i_20_n_3 ),
        .\add_ln840_32_reg_6615_reg[2]_0 (\add_ln840_32_reg_6615[2]_i_15_n_3 ),
        .\add_ln840_32_reg_6615_reg[2]_1 (\add_ln840_32_reg_6615[2]_i_26_n_3 ),
        .\add_ln840_32_reg_6615_reg[2]_2 (\add_ln840_32_reg_6615[2]_i_9_n_3 ),
        .\add_ln840_32_reg_6615_reg[2]_i_5_0 (add_ln840_32_fu_4790_p2),
        .\add_ln840_35_reg_6620_reg[0] (icmp_ln1039_36_fu_2945_p2),
        .\add_ln840_35_reg_6620_reg[2] ({\add_ln840_35_reg_6620[2]_i_15_n_3 ,\add_ln840_35_reg_6620[2]_i_16_n_3 }),
        .\add_ln840_35_reg_6620_reg[2]_0 (\add_ln840_35_reg_6620[2]_i_28_n_3 ),
        .\add_ln840_35_reg_6620_reg[2]_1 ({\add_ln840_35_reg_6620[2]_i_9_n_3 ,\add_ln840_35_reg_6620[2]_i_10_n_3 }),
        .\add_ln840_35_reg_6620_reg[2]_i_5_0 (add_ln840_35_fu_4816_p2),
        .\add_ln840_39_reg_6625_reg[2] (\add_ln840_39_reg_6625[2]_i_22_n_3 ),
        .\add_ln840_39_reg_6625_reg[2]_0 (\add_ln840_39_reg_6625[2]_i_15_n_3 ),
        .\add_ln840_39_reg_6625_reg[2]_1 (\add_ln840_39_reg_6625[2]_i_28_n_3 ),
        .\add_ln840_39_reg_6625_reg[2]_2 (\add_ln840_39_reg_6625[2]_i_9_n_3 ),
        .\add_ln840_39_reg_6625_reg[2]_i_5_0 (add_ln840_39_fu_4842_p2),
        .\add_ln840_3_reg_6580_reg[0] ({\add_ln840_3_reg_6580[1]_i_11_n_3 ,\add_ln840_3_reg_6580[1]_i_12_n_3 }),
        .\add_ln840_3_reg_6580_reg[0]_0 ({\add_ln840_3_reg_6580[1]_i_6_n_3 ,\add_ln840_3_reg_6580[1]_i_7_n_3 }),
        .\add_ln840_3_reg_6580_reg[1]_i_3_0 (add_ln840_3_fu_4608_p2),
        .\add_ln840_42_reg_6630_reg[2] (\add_ln840_42_reg_6630[2]_i_21_n_3 ),
        .\add_ln840_42_reg_6630_reg[2]_0 (\add_ln840_42_reg_6630[2]_i_28_n_3 ),
        .\add_ln840_42_reg_6630_reg[2]_1 (\add_ln840_42_reg_6630[2]_i_10_n_3 ),
        .\add_ln840_42_reg_6630_reg[2]_i_5_0 (add_ln840_42_fu_4868_p2),
        .\add_ln840_47_reg_6635_reg[2] (\add_ln840_47_reg_6635[2]_i_27_n_3 ),
        .\add_ln840_47_reg_6635_reg[2]_0 (\add_ln840_47_reg_6635[2]_i_34_n_3 ),
        .\add_ln840_47_reg_6635_reg[2]_i_5_0 (add_ln840_47_fu_4894_p2),
        .\add_ln840_50_reg_6640_reg[2]_i_5_0 (add_ln840_50_fu_4920_p2),
        .\add_ln840_54_reg_6645_reg[2] (\add_ln840_54_reg_6645[2]_i_26_n_3 ),
        .\add_ln840_54_reg_6645_reg[2]_0 (\add_ln840_54_reg_6645[2]_i_11_n_3 ),
        .\add_ln840_54_reg_6645_reg[2]_i_5_0 (add_ln840_54_fu_4946_p2),
        .\add_ln840_57_reg_6650_reg[2]_i_5_0 (add_ln840_57_fu_4972_p2),
        .\add_ln840_57_reg_6650_reg[2]_i_5_1 (inElem_reg_5804_pp0_iter1_reg),
        .\add_ln840_64_reg_6655_reg[2] (\add_ln840_64_reg_6655[2]_i_12_n_3 ),
        .\add_ln840_64_reg_6655_reg[2]_i_6_0 (add_ln840_64_fu_4998_p2),
        .\add_ln840_67_reg_6660_reg[2]_i_5_0 (add_ln840_67_fu_5024_p2),
        .\add_ln840_71_reg_6665_reg[0] (\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3 ),
        .\add_ln840_74_reg_6670_reg[2] ({\add_ln840_74_reg_6670[2]_i_23_n_3 ,\add_ln840_74_reg_6670[2]_i_24_n_3 }),
        .\add_ln840_74_reg_6670_reg[2]_0 (\add_ln840_74_reg_6670[2]_i_17_n_3 ),
        .\add_ln840_74_reg_6670_reg[2]_1 ({\add_ln840_74_reg_6670[2]_i_29_n_3 ,\add_ln840_74_reg_6670[2]_i_30_n_3 }),
        .\add_ln840_74_reg_6670_reg[2]_2 (\add_ln840_74_reg_6670[2]_i_10_n_3 ),
        .\add_ln840_74_reg_6670_reg[2]_i_5_0 (add_ln840_74_fu_5076_p2),
        .\add_ln840_79_reg_6675_reg[2] (\add_ln840_79_reg_6675[2]_i_22_n_3 ),
        .\add_ln840_79_reg_6675_reg[2]_0 (\add_ln840_79_reg_6675[2]_i_15_n_3 ),
        .\add_ln840_79_reg_6675_reg[2]_1 (\add_ln840_79_reg_6675[2]_i_29_n_3 ),
        .\add_ln840_79_reg_6675_reg[2]_2 (\add_ln840_79_reg_6675[2]_i_9_n_3 ),
        .\add_ln840_79_reg_6675_reg[2]_i_5_0 (add_ln840_79_fu_5102_p2),
        .\add_ln840_82_reg_6680_reg[2] (\add_ln840_82_reg_6680[2]_i_24_n_3 ),
        .\add_ln840_82_reg_6680_reg[2]_0 (\add_ln840_82_reg_6680[2]_i_30_n_3 ),
        .\add_ln840_82_reg_6680_reg[2]_1 (\add_ln840_82_reg_6680[2]_i_11_n_3 ),
        .\add_ln840_82_reg_6680_reg[2]_i_5_0 (add_ln840_82_fu_5128_p2),
        .\add_ln840_86_reg_6685_reg[2]_i_5_0 (add_ln840_86_fu_5154_p2),
        .\add_ln840_89_reg_6690_reg[2] (\add_ln840_89_reg_6690[2]_i_15_n_3 ),
        .\add_ln840_89_reg_6690_reg[2]_i_5_0 (add_ln840_89_fu_5180_p2),
        .\add_ln840_8_reg_6585_reg[2] ({\add_ln840_8_reg_6585[2]_i_14_n_3 ,\add_ln840_8_reg_6585[2]_i_16_n_3 }),
        .\add_ln840_8_reg_6585_reg[2]_0 ({\add_ln840_8_reg_6585[2]_i_26_n_3 ,\add_ln840_8_reg_6585[2]_i_27_n_3 }),
        .\add_ln840_8_reg_6585_reg[2]_1 ({\add_ln840_8_reg_6585[2]_i_8_n_3 ,\add_ln840_8_reg_6585[2]_i_10_n_3 }),
        .\add_ln840_8_reg_6585_reg[2]_i_5_0 (add_ln840_8_fu_4634_p2),
        .\add_ln840_95_reg_6695_reg[2]_i_5_0 (add_ln840_95_fu_5206_p2),
        .\add_ln840_98_reg_6700_reg[2]_i_5_0 (add_ln840_98_fu_5232_p2),
        .ap_CS_iter1_fsm_state2(ap_CS_iter1_fsm_state2),
        .ap_clk(ap_clk),
        .\inElem_reg_5804_pp0_iter1_reg_reg[1] (add_ln840_2_fu_4602_p2),
        .\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep (add_ln840_71_fu_5050_p2),
        .out(nf_1_fu_316_reg__0),
        .out_V_TREADY_int_regslice(out_V_TREADY_int_regslice),
        .p_ZL7threshs_128_ce0(p_ZL7threshs_128_ce0),
        .\q0_reg[0]_0 (ap_CS_iter5_fsm_state6),
        .\q0_reg[0]_1 (\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R
   (\q0_reg[0]_0 ,
    CO,
    \inElem_reg_5804_pp0_iter1_reg_reg[4] ,
    p_ZL7threshs_128_ce0,
    \q0_reg[0]_1 ,
    ap_clk,
    Q,
    \add_ln840_35_reg_6620_reg[2]_i_4_0 ,
    \add_ln840_35_reg_6620_reg[2]_i_4_1 ,
    S,
    \add_ln840_35_reg_6620_reg[0] );
  output \q0_reg[0]_0 ;
  output [0:0]CO;
  output [0:0]\inElem_reg_5804_pp0_iter1_reg_reg[4] ;
  input p_ZL7threshs_128_ce0;
  input \q0_reg[0]_1 ;
  input ap_clk;
  input [4:0]Q;
  input \add_ln840_35_reg_6620_reg[2]_i_4_0 ;
  input \add_ln840_35_reg_6620_reg[2]_i_4_1 ;
  input [1:0]S;
  input [0:0]\add_ln840_35_reg_6620_reg[0] ;

  wire [0:0]CO;
  wire [4:0]Q;
  wire [1:0]S;
  wire \add_ln840_35_reg_6620[2]_i_18_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_19_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_20_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_22_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_23_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_24_n_3 ;
  wire [0:0]\add_ln840_35_reg_6620_reg[0] ;
  wire \add_ln840_35_reg_6620_reg[2]_i_4_0 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_4_1 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_4_n_4 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_4_n_5 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_4_n_6 ;
  wire \add_ln840_8_reg_6585[2]_i_18_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_19_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_22_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_23_n_3 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_4_n_4 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_4_n_5 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_4_n_6 ;
  wire ap_clk;
  wire [0:0]\inElem_reg_5804_pp0_iter1_reg_reg[4] ;
  wire p_ZL7threshs_128_ce0;
  wire \q0_reg[0]_0 ;
  wire \q0_reg[0]_1 ;
  wire [3:0]\NLW_add_ln840_35_reg_6620_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_8_reg_6585_reg[2]_i_4_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_35_reg_6620[2]_i_18 
       (.I0(Q[4]),
        .I1(\add_ln840_35_reg_6620_reg[2]_i_4_0 ),
        .I2(\q0_reg[0]_0 ),
        .O(\add_ln840_35_reg_6620[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_35_reg_6620[2]_i_19 
       (.I0(Q[2]),
        .I1(\add_ln840_35_reg_6620_reg[2]_i_4_1 ),
        .I2(\q0_reg[0]_0 ),
        .O(\add_ln840_35_reg_6620[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_35_reg_6620[2]_i_20 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\q0_reg[0]_0 ),
        .O(\add_ln840_35_reg_6620[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_35_reg_6620[2]_i_22 
       (.I0(\add_ln840_35_reg_6620_reg[2]_i_4_0 ),
        .I1(\q0_reg[0]_0 ),
        .I2(Q[4]),
        .O(\add_ln840_35_reg_6620[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_35_reg_6620[2]_i_23 
       (.I0(\add_ln840_35_reg_6620_reg[2]_i_4_1 ),
        .I1(\q0_reg[0]_0 ),
        .I2(Q[2]),
        .O(\add_ln840_35_reg_6620[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_35_reg_6620[2]_i_24 
       (.I0(Q[1]),
        .I1(\q0_reg[0]_0 ),
        .I2(Q[0]),
        .O(\add_ln840_35_reg_6620[2]_i_24_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_35_reg_6620_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\inElem_reg_5804_pp0_iter1_reg_reg[4] ,\add_ln840_35_reg_6620_reg[2]_i_4_n_4 ,\add_ln840_35_reg_6620_reg[2]_i_4_n_5 ,\add_ln840_35_reg_6620_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_35_reg_6620[2]_i_18_n_3 ,\add_ln840_35_reg_6620[2]_i_19_n_3 ,\add_ln840_35_reg_6620[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_35_reg_6620_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_35_reg_6620_reg[0] ,\add_ln840_35_reg_6620[2]_i_22_n_3 ,\add_ln840_35_reg_6620[2]_i_23_n_3 ,\add_ln840_35_reg_6620[2]_i_24_n_3 }));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_8_reg_6585[2]_i_18 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\q0_reg[0]_0 ),
        .O(\add_ln840_8_reg_6585[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_8_reg_6585[2]_i_19 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\q0_reg[0]_0 ),
        .O(\add_ln840_8_reg_6585[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_8_reg_6585[2]_i_22 
       (.I0(Q[3]),
        .I1(\q0_reg[0]_0 ),
        .I2(Q[2]),
        .O(\add_ln840_8_reg_6585[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_8_reg_6585[2]_i_23 
       (.I0(Q[1]),
        .I1(\q0_reg[0]_0 ),
        .I2(Q[0]),
        .O(\add_ln840_8_reg_6585[2]_i_23_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_8_reg_6585_reg[2]_i_4 
       (.CI(1'b0),
        .CO({CO,\add_ln840_8_reg_6585_reg[2]_i_4_n_4 ,\add_ln840_8_reg_6585_reg[2]_i_4_n_5 ,\add_ln840_8_reg_6585_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_8_reg_6585[2]_i_18_n_3 ,\add_ln840_8_reg_6585[2]_i_19_n_3 }),
        .O(\NLW_add_ln840_8_reg_6585_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({S,\add_ln840_8_reg_6585[2]_i_22_n_3 ,\add_ln840_8_reg_6585[2]_i_23_n_3 }));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0_reg[0]_1 ),
        .Q(\q0_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R
   (p_ZL7threshs_128_ce0,
    D,
    \inElem_reg_5804_pp0_iter1_reg_reg[1] ,
    \add_ln840_64_reg_6655_reg[2]_i_6_0 ,
    \add_ln840_67_reg_6660_reg[2]_i_5_0 ,
    \add_ln840_79_reg_6675_reg[2]_i_5_0 ,
    \add_ln840_86_reg_6685_reg[2]_i_5_0 ,
    \add_ln840_82_reg_6680_reg[2]_i_5_0 ,
    \add_ln840_74_reg_6670_reg[2]_i_5_0 ,
    \add_ln840_89_reg_6690_reg[2]_i_5_0 ,
    \add_ln840_16_reg_6595_reg[2]_i_5_0 ,
    \add_ln840_19_reg_6600_reg[2]_i_5_0 ,
    \add_ln840_3_reg_6580_reg[1]_i_3_0 ,
    \add_ln840_8_reg_6585_reg[2]_i_5_0 ,
    \add_ln840_11_reg_6590_reg[2]_i_5_0 ,
    \add_ln840_23_reg_6605_reg[2]_i_5_0 ,
    \add_ln840_26_reg_6610_reg[2]_i_5_0 ,
    \add_ln840_32_reg_6615_reg[2]_i_5_0 ,
    \add_ln840_39_reg_6625_reg[2]_i_5_0 ,
    \add_ln840_35_reg_6620_reg[2]_i_5_0 ,
    \add_ln840_42_reg_6630_reg[2]_i_5_0 ,
    \add_ln840_47_reg_6635_reg[2]_i_5_0 ,
    \add_ln840_54_reg_6645_reg[2]_i_5_0 ,
    \add_ln840_50_reg_6640_reg[2]_i_5_0 ,
    \add_ln840_57_reg_6650_reg[2]_i_5_0 ,
    \add_ln840_95_reg_6695_reg[2]_i_5_0 ,
    \add_ln840_102_reg_6705_reg[2]_i_5_0 ,
    \add_ln840_98_reg_6700_reg[2]_i_5_0 ,
    \add_ln840_110_reg_6715_reg[2]_i_5_0 ,
    \add_ln840_117_reg_6725_reg[2]_i_5_0 ,
    \add_ln840_113_reg_6720_reg[2]_i_5_0 ,
    \add_ln840_105_reg_6710_reg[2]_i_5_0 ,
    \add_ln840_120_reg_6730_reg[2]_i_5_0 ,
    \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep ,
    ap_clk,
    \q0_reg[0]_0 ,
    Q,
    out_V_TREADY_int_regslice,
    \q0_reg[0]_1 ,
    ap_CS_iter1_fsm_state2,
    out,
    \add_ln840_1_reg_6570_reg[0] ,
    \add_ln840_1_reg_6570_reg[0]_0 ,
    \add_ln840_57_reg_6650_reg[2]_i_5_1 ,
    \add_ln840_2_reg_6575_reg[0] ,
    \add_ln840_117_reg_6725_reg[2]_i_2_0 ,
    \add_ln840_113_reg_6720_reg[2]_i_2_0 ,
    \add_ln840_113_reg_6720_reg[2]_i_2_1 ,
    CO,
    \add_ln840_35_reg_6620_reg[0] ,
    \add_ln840_71_reg_6665_reg[0] ,
    S,
    \add_ln840_64_reg_6655_reg[2] ,
    \add_ln840_79_reg_6675_reg[2] ,
    \add_ln840_79_reg_6675_reg[2]_0 ,
    \add_ln840_79_reg_6675_reg[2]_1 ,
    \add_ln840_79_reg_6675_reg[2]_2 ,
    \add_ln840_82_reg_6680_reg[2] ,
    \add_ln840_82_reg_6680_reg[2]_0 ,
    \add_ln840_82_reg_6680_reg[2]_1 ,
    \add_ln840_74_reg_6670_reg[2] ,
    \add_ln840_74_reg_6670_reg[2]_0 ,
    \add_ln840_74_reg_6670_reg[2]_1 ,
    \add_ln840_74_reg_6670_reg[2]_2 ,
    \add_ln840_89_reg_6690_reg[2] ,
    \add_ln840_16_reg_6595_reg[2] ,
    \add_ln840_16_reg_6595_reg[2]_0 ,
    \add_ln840_16_reg_6595_reg[2]_1 ,
    \add_ln840_16_reg_6595_reg[2]_2 ,
    \add_ln840_19_reg_6600_reg[2] ,
    \add_ln840_19_reg_6600_reg[2]_0 ,
    \add_ln840_19_reg_6600_reg[2]_1 ,
    \add_ln840_19_reg_6600_reg[2]_2 ,
    \add_ln840_2_reg_6575_reg[1] ,
    \add_ln840_3_reg_6580_reg[0] ,
    \add_ln840_3_reg_6580_reg[0]_0 ,
    \add_ln840_8_reg_6585_reg[2] ,
    \add_ln840_8_reg_6585_reg[2]_0 ,
    \add_ln840_8_reg_6585_reg[2]_1 ,
    \add_ln840_11_reg_6590_reg[2] ,
    \add_ln840_11_reg_6590_reg[2]_0 ,
    \add_ln840_11_reg_6590_reg[2]_1 ,
    \add_ln840_11_reg_6590_reg[2]_2 ,
    \add_ln840_23_reg_6605_reg[2] ,
    \add_ln840_23_reg_6605_reg[2]_0 ,
    \add_ln840_23_reg_6605_reg[2]_1 ,
    \add_ln840_23_reg_6605_reg[2]_2 ,
    \add_ln840_26_reg_6610_reg[2] ,
    \add_ln840_26_reg_6610_reg[2]_0 ,
    \add_ln840_26_reg_6610_reg[2]_1 ,
    \add_ln840_26_reg_6610_reg[2]_2 ,
    \add_ln840_32_reg_6615_reg[2] ,
    \add_ln840_32_reg_6615_reg[2]_0 ,
    \add_ln840_32_reg_6615_reg[2]_1 ,
    \add_ln840_32_reg_6615_reg[2]_2 ,
    \add_ln840_39_reg_6625_reg[2] ,
    \add_ln840_39_reg_6625_reg[2]_0 ,
    \add_ln840_39_reg_6625_reg[2]_1 ,
    \add_ln840_39_reg_6625_reg[2]_2 ,
    \add_ln840_35_reg_6620_reg[2] ,
    \add_ln840_35_reg_6620_reg[2]_0 ,
    \add_ln840_35_reg_6620_reg[2]_1 ,
    \add_ln840_42_reg_6630_reg[2] ,
    \add_ln840_42_reg_6630_reg[2]_0 ,
    \add_ln840_42_reg_6630_reg[2]_1 ,
    \add_ln840_47_reg_6635_reg[2] ,
    \add_ln840_47_reg_6635_reg[2]_0 ,
    \add_ln840_54_reg_6645_reg[2] ,
    \add_ln840_54_reg_6645_reg[2]_0 ,
    \add_ln840_102_reg_6705_reg[2] ,
    \add_ln840_102_reg_6705_reg[2]_0 ,
    \add_ln840_110_reg_6715_reg[2] ,
    \add_ln840_110_reg_6715_reg[2]_0 ,
    \add_ln840_110_reg_6715_reg[2]_1 ,
    \add_ln840_117_reg_6725_reg[2] ,
    \add_ln840_117_reg_6725_reg[2]_0 ,
    \add_ln840_117_reg_6725_reg[2]_1 ,
    \add_ln840_113_reg_6720_reg[2] ,
    \add_ln840_113_reg_6720_reg[2]_0 ,
    \add_ln840_113_reg_6720_reg[2]_1 ,
    \add_ln840_113_reg_6720_reg[2]_2 );
  output p_ZL7threshs_128_ce0;
  output [1:0]D;
  output [1:0]\inElem_reg_5804_pp0_iter1_reg_reg[1] ;
  output [2:0]\add_ln840_64_reg_6655_reg[2]_i_6_0 ;
  output [2:0]\add_ln840_67_reg_6660_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_79_reg_6675_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_86_reg_6685_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_82_reg_6680_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_74_reg_6670_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_89_reg_6690_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_16_reg_6595_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_19_reg_6600_reg[2]_i_5_0 ;
  output [1:0]\add_ln840_3_reg_6580_reg[1]_i_3_0 ;
  output [2:0]\add_ln840_8_reg_6585_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_11_reg_6590_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_23_reg_6605_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_26_reg_6610_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_32_reg_6615_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_39_reg_6625_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_35_reg_6620_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_42_reg_6630_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_47_reg_6635_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_54_reg_6645_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_50_reg_6640_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_57_reg_6650_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_95_reg_6695_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_102_reg_6705_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_98_reg_6700_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_110_reg_6715_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_117_reg_6725_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_113_reg_6720_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_105_reg_6710_reg[2]_i_5_0 ;
  output [2:0]\add_ln840_120_reg_6730_reg[2]_i_5_0 ;
  output [2:0]\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep ;
  input ap_clk;
  input \q0_reg[0]_0 ;
  input [0:0]Q;
  input out_V_TREADY_int_regslice;
  input \q0_reg[0]_1 ;
  input ap_CS_iter1_fsm_state2;
  input [3:0]out;
  input \add_ln840_1_reg_6570_reg[0] ;
  input \add_ln840_1_reg_6570_reg[0]_0 ;
  input [7:0]\add_ln840_57_reg_6650_reg[2]_i_5_1 ;
  input \add_ln840_2_reg_6575_reg[0] ;
  input \add_ln840_117_reg_6725_reg[2]_i_2_0 ;
  input \add_ln840_113_reg_6720_reg[2]_i_2_0 ;
  input \add_ln840_113_reg_6720_reg[2]_i_2_1 ;
  input [0:0]CO;
  input [0:0]\add_ln840_35_reg_6620_reg[0] ;
  input \add_ln840_71_reg_6665_reg[0] ;
  input [0:0]S;
  input [0:0]\add_ln840_64_reg_6655_reg[2] ;
  input [0:0]\add_ln840_79_reg_6675_reg[2] ;
  input [0:0]\add_ln840_79_reg_6675_reg[2]_0 ;
  input [0:0]\add_ln840_79_reg_6675_reg[2]_1 ;
  input [0:0]\add_ln840_79_reg_6675_reg[2]_2 ;
  input [0:0]\add_ln840_82_reg_6680_reg[2] ;
  input [0:0]\add_ln840_82_reg_6680_reg[2]_0 ;
  input [0:0]\add_ln840_82_reg_6680_reg[2]_1 ;
  input [1:0]\add_ln840_74_reg_6670_reg[2] ;
  input [0:0]\add_ln840_74_reg_6670_reg[2]_0 ;
  input [1:0]\add_ln840_74_reg_6670_reg[2]_1 ;
  input [0:0]\add_ln840_74_reg_6670_reg[2]_2 ;
  input [0:0]\add_ln840_89_reg_6690_reg[2] ;
  input [0:0]\add_ln840_16_reg_6595_reg[2] ;
  input [0:0]\add_ln840_16_reg_6595_reg[2]_0 ;
  input [0:0]\add_ln840_16_reg_6595_reg[2]_1 ;
  input [0:0]\add_ln840_16_reg_6595_reg[2]_2 ;
  input [0:0]\add_ln840_19_reg_6600_reg[2] ;
  input [0:0]\add_ln840_19_reg_6600_reg[2]_0 ;
  input [1:0]\add_ln840_19_reg_6600_reg[2]_1 ;
  input [0:0]\add_ln840_19_reg_6600_reg[2]_2 ;
  input [1:0]\add_ln840_2_reg_6575_reg[1] ;
  input [1:0]\add_ln840_3_reg_6580_reg[0] ;
  input [1:0]\add_ln840_3_reg_6580_reg[0]_0 ;
  input [1:0]\add_ln840_8_reg_6585_reg[2] ;
  input [1:0]\add_ln840_8_reg_6585_reg[2]_0 ;
  input [1:0]\add_ln840_8_reg_6585_reg[2]_1 ;
  input [0:0]\add_ln840_11_reg_6590_reg[2] ;
  input [0:0]\add_ln840_11_reg_6590_reg[2]_0 ;
  input [0:0]\add_ln840_11_reg_6590_reg[2]_1 ;
  input [0:0]\add_ln840_11_reg_6590_reg[2]_2 ;
  input [0:0]\add_ln840_23_reg_6605_reg[2] ;
  input [0:0]\add_ln840_23_reg_6605_reg[2]_0 ;
  input [0:0]\add_ln840_23_reg_6605_reg[2]_1 ;
  input [0:0]\add_ln840_23_reg_6605_reg[2]_2 ;
  input [1:0]\add_ln840_26_reg_6610_reg[2] ;
  input [0:0]\add_ln840_26_reg_6610_reg[2]_0 ;
  input [0:0]\add_ln840_26_reg_6610_reg[2]_1 ;
  input [1:0]\add_ln840_26_reg_6610_reg[2]_2 ;
  input [0:0]\add_ln840_32_reg_6615_reg[2] ;
  input [0:0]\add_ln840_32_reg_6615_reg[2]_0 ;
  input [0:0]\add_ln840_32_reg_6615_reg[2]_1 ;
  input [0:0]\add_ln840_32_reg_6615_reg[2]_2 ;
  input [0:0]\add_ln840_39_reg_6625_reg[2] ;
  input [0:0]\add_ln840_39_reg_6625_reg[2]_0 ;
  input [0:0]\add_ln840_39_reg_6625_reg[2]_1 ;
  input [0:0]\add_ln840_39_reg_6625_reg[2]_2 ;
  input [1:0]\add_ln840_35_reg_6620_reg[2] ;
  input [0:0]\add_ln840_35_reg_6620_reg[2]_0 ;
  input [1:0]\add_ln840_35_reg_6620_reg[2]_1 ;
  input [0:0]\add_ln840_42_reg_6630_reg[2] ;
  input [0:0]\add_ln840_42_reg_6630_reg[2]_0 ;
  input [0:0]\add_ln840_42_reg_6630_reg[2]_1 ;
  input [0:0]\add_ln840_47_reg_6635_reg[2] ;
  input [0:0]\add_ln840_47_reg_6635_reg[2]_0 ;
  input [0:0]\add_ln840_54_reg_6645_reg[2] ;
  input [0:0]\add_ln840_54_reg_6645_reg[2]_0 ;
  input [0:0]\add_ln840_102_reg_6705_reg[2] ;
  input [0:0]\add_ln840_102_reg_6705_reg[2]_0 ;
  input [1:0]\add_ln840_110_reg_6715_reg[2] ;
  input [0:0]\add_ln840_110_reg_6715_reg[2]_0 ;
  input [1:0]\add_ln840_110_reg_6715_reg[2]_1 ;
  input [0:0]\add_ln840_117_reg_6725_reg[2] ;
  input [0:0]\add_ln840_117_reg_6725_reg[2]_0 ;
  input [0:0]\add_ln840_117_reg_6725_reg[2]_1 ;
  input [0:0]\add_ln840_113_reg_6720_reg[2] ;
  input [0:0]\add_ln840_113_reg_6720_reg[2]_0 ;
  input [0:0]\add_ln840_113_reg_6720_reg[2]_1 ;
  input [0:0]\add_ln840_113_reg_6720_reg[2]_2 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire \add_ln840_102_reg_6705[2]_i_10_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_11_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_12_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_13_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_14_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_15_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_16_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_17_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_18_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_19_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_20_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_21_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_22_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_23_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_24_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_25_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_26_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_28_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_29_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_30_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_31_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_32_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_33_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_35_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_6_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_7_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_8_n_3 ;
  wire \add_ln840_102_reg_6705[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_102_reg_6705_reg[2] ;
  wire [0:0]\add_ln840_102_reg_6705_reg[2]_0 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_2_n_4 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_2_n_5 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_2_n_6 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_3_n_4 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_3_n_5 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_3_n_6 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_4_n_4 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_4_n_5 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_102_reg_6705_reg[2]_i_5_0 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_5_n_4 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_5_n_5 ;
  wire \add_ln840_102_reg_6705_reg[2]_i_5_n_6 ;
  wire \add_ln840_105_reg_6710[2]_i_10_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_11_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_12_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_13_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_14_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_15_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_16_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_17_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_18_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_19_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_20_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_21_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_22_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_23_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_24_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_25_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_26_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_27_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_28_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_29_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_30_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_31_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_32_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_33_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_6_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_7_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_8_n_3 ;
  wire \add_ln840_105_reg_6710[2]_i_9_n_3 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_2_n_5 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_2_n_6 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_3_n_4 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_3_n_5 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_3_n_6 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_4_n_4 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_4_n_5 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_105_reg_6710_reg[2]_i_5_0 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_5_n_5 ;
  wire \add_ln840_105_reg_6710_reg[2]_i_5_n_6 ;
  wire \add_ln840_110_reg_6715[2]_i_11_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_12_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_13_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_14_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_16_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_17_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_18_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_19_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_22_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_23_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_24_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_25_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_26_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_27_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_28_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_29_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_30_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_6_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_7_n_3 ;
  wire \add_ln840_110_reg_6715[2]_i_8_n_3 ;
  wire [1:0]\add_ln840_110_reg_6715_reg[2] ;
  wire [0:0]\add_ln840_110_reg_6715_reg[2]_0 ;
  wire [1:0]\add_ln840_110_reg_6715_reg[2]_1 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_2_n_4 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_2_n_5 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_2_n_6 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_3_n_5 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_3_n_6 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_4_n_4 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_4_n_5 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_110_reg_6715_reg[2]_i_5_0 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_5_n_4 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_5_n_5 ;
  wire \add_ln840_110_reg_6715_reg[2]_i_5_n_6 ;
  wire \add_ln840_113_reg_6720[2]_i_11_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_12_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_13_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_14_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_15_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_16_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_18_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_19_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_20_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_21_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_22_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_24_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_25_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_26_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_27_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_28_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_30_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_31_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_6_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_7_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_8_n_3 ;
  wire \add_ln840_113_reg_6720[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_113_reg_6720_reg[2] ;
  wire [0:0]\add_ln840_113_reg_6720_reg[2]_0 ;
  wire [0:0]\add_ln840_113_reg_6720_reg[2]_1 ;
  wire [0:0]\add_ln840_113_reg_6720_reg[2]_2 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_2_0 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_2_1 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_2_n_4 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_2_n_5 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_2_n_6 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_3_n_4 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_3_n_5 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_3_n_6 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_4_n_5 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_113_reg_6720_reg[2]_i_5_0 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_5_n_4 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_5_n_5 ;
  wire \add_ln840_113_reg_6720_reg[2]_i_5_n_6 ;
  wire \add_ln840_117_reg_6725[2]_i_10_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_11_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_12_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_13_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_14_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_16_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_17_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_18_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_19_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_20_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_22_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_23_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_24_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_25_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_26_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_27_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_29_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_30_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_6_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_7_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_8_n_3 ;
  wire \add_ln840_117_reg_6725[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_117_reg_6725_reg[2] ;
  wire [0:0]\add_ln840_117_reg_6725_reg[2]_0 ;
  wire [0:0]\add_ln840_117_reg_6725_reg[2]_1 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_2_0 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_2_n_6 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_3_n_4 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_3_n_5 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_3_n_6 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_4_n_4 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_4_n_5 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_117_reg_6725_reg[2]_i_5_0 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_5_n_4 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_5_n_5 ;
  wire \add_ln840_117_reg_6725_reg[2]_i_5_n_6 ;
  wire \add_ln840_11_reg_6590[2]_i_10_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_11_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_12_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_13_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_15_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_16_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_17_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_18_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_19_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_20_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_22_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_23_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_24_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_25_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_26_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_28_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_29_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_6_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_7_n_3 ;
  wire \add_ln840_11_reg_6590[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_11_reg_6590_reg[2] ;
  wire [0:0]\add_ln840_11_reg_6590_reg[2]_0 ;
  wire [0:0]\add_ln840_11_reg_6590_reg[2]_1 ;
  wire [0:0]\add_ln840_11_reg_6590_reg[2]_2 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_2_n_5 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_2_n_6 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_3_n_4 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_3_n_5 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_3_n_6 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_4_n_4 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_4_n_5 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_11_reg_6590_reg[2]_i_5_0 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_5_n_5 ;
  wire \add_ln840_11_reg_6590_reg[2]_i_5_n_6 ;
  wire \add_ln840_120_reg_6730[2]_i_10_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_11_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_12_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_13_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_14_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_15_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_16_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_17_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_18_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_19_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_20_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_21_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_22_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_23_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_24_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_25_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_26_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_27_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_28_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_29_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_30_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_31_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_32_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_33_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_34_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_35_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_6_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_7_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_8_n_3 ;
  wire \add_ln840_120_reg_6730[2]_i_9_n_3 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_2_n_4 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_2_n_5 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_2_n_6 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_3_n_4 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_3_n_5 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_3_n_6 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_4_n_4 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_4_n_5 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_120_reg_6730_reg[2]_i_5_0 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_5_n_5 ;
  wire \add_ln840_120_reg_6730_reg[2]_i_5_n_6 ;
  wire \add_ln840_16_reg_6595[2]_i_10_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_11_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_12_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_13_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_15_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_16_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_17_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_18_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_20_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_21_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_22_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_23_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_24_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_25_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_27_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_28_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_29_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_6_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_7_n_3 ;
  wire \add_ln840_16_reg_6595[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_16_reg_6595_reg[2] ;
  wire [0:0]\add_ln840_16_reg_6595_reg[2]_0 ;
  wire [0:0]\add_ln840_16_reg_6595_reg[2]_1 ;
  wire [0:0]\add_ln840_16_reg_6595_reg[2]_2 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_2_n_4 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_2_n_5 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_2_n_6 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_3_n_6 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_4_n_4 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_4_n_5 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_16_reg_6595_reg[2]_i_5_0 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_5_n_4 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_5_n_5 ;
  wire \add_ln840_16_reg_6595_reg[2]_i_5_n_6 ;
  wire \add_ln840_19_reg_6600[2]_i_10_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_11_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_12_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_13_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_14_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_15_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_17_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_18_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_19_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_20_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_21_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_23_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_24_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_25_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_26_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_28_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_30_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_6_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_7_n_3 ;
  wire \add_ln840_19_reg_6600[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_19_reg_6600_reg[2] ;
  wire [0:0]\add_ln840_19_reg_6600_reg[2]_0 ;
  wire [1:0]\add_ln840_19_reg_6600_reg[2]_1 ;
  wire [0:0]\add_ln840_19_reg_6600_reg[2]_2 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_2_n_4 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_2_n_5 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_2_n_6 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_3_n_4 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_3_n_5 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_3_n_6 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_4_n_5 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_19_reg_6600_reg[2]_i_5_0 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_5_n_4 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_5_n_5 ;
  wire \add_ln840_19_reg_6600_reg[2]_i_5_n_6 ;
  wire \add_ln840_1_reg_6570_reg[0] ;
  wire \add_ln840_1_reg_6570_reg[0]_0 ;
  wire \add_ln840_23_reg_6605[2]_i_10_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_11_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_12_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_13_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_15_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_16_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_17_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_18_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_19_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_20_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_22_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_23_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_24_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_25_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_26_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_27_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_29_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_30_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_31_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_6_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_7_n_3 ;
  wire \add_ln840_23_reg_6605[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_23_reg_6605_reg[2] ;
  wire [0:0]\add_ln840_23_reg_6605_reg[2]_0 ;
  wire [0:0]\add_ln840_23_reg_6605_reg[2]_1 ;
  wire [0:0]\add_ln840_23_reg_6605_reg[2]_2 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_2_n_5 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_2_n_6 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_3_n_4 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_3_n_5 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_3_n_6 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_4_n_4 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_4_n_5 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_23_reg_6605_reg[2]_i_5_0 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_5_n_4 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_5_n_5 ;
  wire \add_ln840_23_reg_6605_reg[2]_i_5_n_6 ;
  wire \add_ln840_26_reg_6610[2]_i_11_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_12_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_13_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_14_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_16_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_17_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_18_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_19_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_20_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_22_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_24_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_25_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_27_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_6_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_7_n_3 ;
  wire \add_ln840_26_reg_6610[2]_i_9_n_3 ;
  wire [1:0]\add_ln840_26_reg_6610_reg[2] ;
  wire [0:0]\add_ln840_26_reg_6610_reg[2]_0 ;
  wire [0:0]\add_ln840_26_reg_6610_reg[2]_1 ;
  wire [1:0]\add_ln840_26_reg_6610_reg[2]_2 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_2_n_4 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_2_n_5 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_2_n_6 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_3_n_4 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_3_n_5 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_3_n_6 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_4_n_4 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_4_n_5 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_26_reg_6610_reg[2]_i_5_0 ;
  wire \add_ln840_26_reg_6610_reg[2]_i_5_n_6 ;
  wire \add_ln840_2_reg_6575[1]_i_4_n_3 ;
  wire \add_ln840_2_reg_6575[1]_i_7_n_3 ;
  wire \add_ln840_2_reg_6575_reg[0] ;
  wire [1:0]\add_ln840_2_reg_6575_reg[1] ;
  wire \add_ln840_2_reg_6575_reg[1]_i_3_n_5 ;
  wire \add_ln840_2_reg_6575_reg[1]_i_3_n_6 ;
  wire \add_ln840_32_reg_6615[2]_i_10_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_11_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_12_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_13_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_14_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_16_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_17_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_18_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_19_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_21_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_22_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_23_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_24_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_25_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_27_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_28_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_29_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_6_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_7_n_3 ;
  wire \add_ln840_32_reg_6615[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_32_reg_6615_reg[2] ;
  wire [0:0]\add_ln840_32_reg_6615_reg[2]_0 ;
  wire [0:0]\add_ln840_32_reg_6615_reg[2]_1 ;
  wire [0:0]\add_ln840_32_reg_6615_reg[2]_2 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_2_n_4 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_2_n_5 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_2_n_6 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_3_n_5 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_3_n_6 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_4_n_5 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_32_reg_6615_reg[2]_i_5_0 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_5_n_4 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_5_n_5 ;
  wire \add_ln840_32_reg_6615_reg[2]_i_5_n_6 ;
  wire \add_ln840_35_reg_6620[2]_i_11_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_12_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_13_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_14_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_17_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_25_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_26_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_27_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_29_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_30_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_31_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_6_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_7_n_3 ;
  wire \add_ln840_35_reg_6620[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_35_reg_6620_reg[0] ;
  wire [1:0]\add_ln840_35_reg_6620_reg[2] ;
  wire [0:0]\add_ln840_35_reg_6620_reg[2]_0 ;
  wire [1:0]\add_ln840_35_reg_6620_reg[2]_1 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_2_n_4 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_2_n_5 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_2_n_6 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_3_n_4 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_3_n_5 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_3_n_6 ;
  wire [2:0]\add_ln840_35_reg_6620_reg[2]_i_5_0 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_5_n_4 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_5_n_5 ;
  wire \add_ln840_35_reg_6620_reg[2]_i_5_n_6 ;
  wire \add_ln840_39_reg_6625[2]_i_10_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_11_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_12_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_13_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_14_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_16_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_17_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_18_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_19_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_20_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_21_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_23_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_24_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_25_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_26_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_27_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_29_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_6_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_7_n_3 ;
  wire \add_ln840_39_reg_6625[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_39_reg_6625_reg[2] ;
  wire [0:0]\add_ln840_39_reg_6625_reg[2]_0 ;
  wire [0:0]\add_ln840_39_reg_6625_reg[2]_1 ;
  wire [0:0]\add_ln840_39_reg_6625_reg[2]_2 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_2_n_5 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_2_n_6 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_3_n_4 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_3_n_5 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_3_n_6 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_4_n_4 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_4_n_5 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_39_reg_6625_reg[2]_i_5_0 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_5_n_5 ;
  wire \add_ln840_39_reg_6625_reg[2]_i_5_n_6 ;
  wire \add_ln840_3_reg_6580[1]_i_10_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_13_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_4_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_5_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_8_n_3 ;
  wire \add_ln840_3_reg_6580[1]_i_9_n_3 ;
  wire [1:0]\add_ln840_3_reg_6580_reg[0] ;
  wire [1:0]\add_ln840_3_reg_6580_reg[0]_0 ;
  wire \add_ln840_3_reg_6580_reg[1]_i_2_n_4 ;
  wire \add_ln840_3_reg_6580_reg[1]_i_2_n_5 ;
  wire \add_ln840_3_reg_6580_reg[1]_i_2_n_6 ;
  wire [1:0]\add_ln840_3_reg_6580_reg[1]_i_3_0 ;
  wire \add_ln840_3_reg_6580_reg[1]_i_3_n_5 ;
  wire \add_ln840_3_reg_6580_reg[1]_i_3_n_6 ;
  wire \add_ln840_42_reg_6630[2]_i_11_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_12_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_13_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_14_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_15_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_16_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_17_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_18_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_19_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_20_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_22_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_23_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_24_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_25_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_26_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_27_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_29_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_30_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_6_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_7_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_8_n_3 ;
  wire \add_ln840_42_reg_6630[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_42_reg_6630_reg[2] ;
  wire [0:0]\add_ln840_42_reg_6630_reg[2]_0 ;
  wire [0:0]\add_ln840_42_reg_6630_reg[2]_1 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_2_n_4 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_2_n_5 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_2_n_6 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_3_n_6 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_4_n_4 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_4_n_5 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_42_reg_6630_reg[2]_i_5_0 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_5_n_4 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_5_n_5 ;
  wire \add_ln840_42_reg_6630_reg[2]_i_5_n_6 ;
  wire \add_ln840_47_reg_6635[2]_i_10_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_11_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_12_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_13_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_14_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_15_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_16_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_17_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_18_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_19_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_20_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_21_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_22_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_23_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_24_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_25_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_26_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_28_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_29_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_30_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_31_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_32_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_33_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_35_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_6_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_7_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_8_n_3 ;
  wire \add_ln840_47_reg_6635[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_47_reg_6635_reg[2] ;
  wire [0:0]\add_ln840_47_reg_6635_reg[2]_0 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_2_n_4 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_2_n_5 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_2_n_6 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_3_n_4 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_3_n_5 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_3_n_6 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_4_n_4 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_4_n_5 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_47_reg_6635_reg[2]_i_5_0 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_5_n_4 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_5_n_5 ;
  wire \add_ln840_47_reg_6635_reg[2]_i_5_n_6 ;
  wire \add_ln840_50_reg_6640[2]_i_10_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_11_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_12_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_13_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_14_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_15_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_16_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_17_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_18_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_19_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_20_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_21_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_22_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_23_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_24_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_25_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_26_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_27_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_28_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_29_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_30_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_31_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_32_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_33_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_34_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_35_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_6_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_7_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_8_n_3 ;
  wire \add_ln840_50_reg_6640[2]_i_9_n_3 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_2_n_5 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_2_n_6 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_3_n_4 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_3_n_5 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_3_n_6 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_4_n_4 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_4_n_5 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_50_reg_6640_reg[2]_i_5_0 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_5_n_4 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_5_n_5 ;
  wire \add_ln840_50_reg_6640_reg[2]_i_5_n_6 ;
  wire \add_ln840_54_reg_6645[2]_i_10_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_12_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_13_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_14_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_15_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_16_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_17_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_18_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_19_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_20_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_21_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_22_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_23_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_24_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_25_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_27_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_28_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_29_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_30_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_31_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_32_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_33_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_34_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_35_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_6_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_7_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_8_n_3 ;
  wire \add_ln840_54_reg_6645[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_54_reg_6645_reg[2] ;
  wire [0:0]\add_ln840_54_reg_6645_reg[2]_0 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_2_n_4 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_2_n_5 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_2_n_6 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_3_n_4 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_3_n_5 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_3_n_6 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_4_n_4 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_4_n_5 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_54_reg_6645_reg[2]_i_5_0 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_5_n_4 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_5_n_5 ;
  wire \add_ln840_54_reg_6645_reg[2]_i_5_n_6 ;
  wire \add_ln840_57_reg_6650[2]_i_10_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_11_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_12_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_13_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_14_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_15_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_16_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_17_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_18_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_19_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_20_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_21_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_22_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_23_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_24_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_25_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_26_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_27_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_28_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_29_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_30_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_31_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_32_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_33_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_34_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_35_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_6_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_7_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_8_n_3 ;
  wire \add_ln840_57_reg_6650[2]_i_9_n_3 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_2_n_4 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_2_n_5 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_2_n_6 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_3_n_4 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_3_n_5 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_3_n_6 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_4_n_5 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_57_reg_6650_reg[2]_i_5_0 ;
  wire [7:0]\add_ln840_57_reg_6650_reg[2]_i_5_1 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_5_n_4 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_5_n_5 ;
  wire \add_ln840_57_reg_6650_reg[2]_i_5_n_6 ;
  wire \add_ln840_64_reg_6655[2]_i_10_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_11_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_13_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_14_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_15_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_16_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_17_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_18_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_20_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_21_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_22_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_23_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_24_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_25_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_26_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_27_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_28_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_29_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_30_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_31_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_32_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_33_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_34_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_35_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_36_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_7_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_8_n_3 ;
  wire \add_ln840_64_reg_6655[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_64_reg_6655_reg[2] ;
  wire \add_ln840_64_reg_6655_reg[2]_i_3_n_4 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_3_n_5 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_3_n_6 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_4_n_4 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_4_n_5 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_4_n_6 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_5_n_4 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_5_n_5 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_5_n_6 ;
  wire [2:0]\add_ln840_64_reg_6655_reg[2]_i_6_0 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_6_n_4 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_6_n_5 ;
  wire \add_ln840_64_reg_6655_reg[2]_i_6_n_6 ;
  wire \add_ln840_67_reg_6660[2]_i_10_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_11_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_12_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_13_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_14_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_15_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_16_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_17_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_18_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_19_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_20_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_21_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_22_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_23_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_24_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_25_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_26_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_27_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_28_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_29_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_30_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_31_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_32_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_33_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_34_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_35_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_6_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_7_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_8_n_3 ;
  wire \add_ln840_67_reg_6660[2]_i_9_n_3 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_2_n_4 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_2_n_5 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_2_n_6 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_3_n_4 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_3_n_5 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_3_n_6 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_4_n_4 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_4_n_5 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_67_reg_6660_reg[2]_i_5_0 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_5_n_5 ;
  wire \add_ln840_67_reg_6660_reg[2]_i_5_n_6 ;
  wire \add_ln840_71_reg_6665[2]_i_10_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_11_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_12_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_13_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_14_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_15_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_16_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_17_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_18_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_19_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_20_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_21_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_22_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_23_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_24_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_25_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_26_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_27_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_28_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_5_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_6_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_7_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_8_n_3 ;
  wire \add_ln840_71_reg_6665[2]_i_9_n_3 ;
  wire \add_ln840_71_reg_6665_reg[0] ;
  wire \add_ln840_71_reg_6665_reg[2]_i_2_n_4 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_2_n_5 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_2_n_6 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_3_n_4 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_3_n_5 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_3_n_6 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_4_n_4 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_4_n_5 ;
  wire \add_ln840_71_reg_6665_reg[2]_i_4_n_6 ;
  wire \add_ln840_74_reg_6670[2]_i_11_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_12_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_13_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_14_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_15_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_16_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_18_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_19_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_20_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_21_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_22_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_25_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_26_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_27_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_28_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_31_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_6_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_7_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_8_n_3 ;
  wire \add_ln840_74_reg_6670[2]_i_9_n_3 ;
  wire [1:0]\add_ln840_74_reg_6670_reg[2] ;
  wire [0:0]\add_ln840_74_reg_6670_reg[2]_0 ;
  wire [1:0]\add_ln840_74_reg_6670_reg[2]_1 ;
  wire [0:0]\add_ln840_74_reg_6670_reg[2]_2 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_2_n_4 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_2_n_5 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_2_n_6 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_3_n_4 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_3_n_5 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_3_n_6 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_4_n_4 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_4_n_5 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_74_reg_6670_reg[2]_i_5_0 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_5_n_4 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_5_n_5 ;
  wire \add_ln840_74_reg_6670_reg[2]_i_5_n_6 ;
  wire \add_ln840_79_reg_6675[2]_i_10_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_11_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_12_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_13_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_14_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_16_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_17_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_18_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_19_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_20_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_21_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_23_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_24_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_25_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_26_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_27_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_28_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_30_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_31_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_6_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_7_n_3 ;
  wire \add_ln840_79_reg_6675[2]_i_8_n_3 ;
  wire [0:0]\add_ln840_79_reg_6675_reg[2] ;
  wire [0:0]\add_ln840_79_reg_6675_reg[2]_0 ;
  wire [0:0]\add_ln840_79_reg_6675_reg[2]_1 ;
  wire [0:0]\add_ln840_79_reg_6675_reg[2]_2 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_2_n_5 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_2_n_6 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_3_n_4 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_3_n_5 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_3_n_6 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_4_n_4 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_4_n_5 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_79_reg_6675_reg[2]_i_5_0 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_5_n_4 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_5_n_5 ;
  wire \add_ln840_79_reg_6675_reg[2]_i_5_n_6 ;
  wire \add_ln840_82_reg_6680[2]_i_10_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_12_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_13_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_14_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_15_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_16_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_17_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_18_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_19_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_20_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_21_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_22_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_23_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_25_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_26_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_27_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_28_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_29_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_31_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_32_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_6_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_7_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_8_n_3 ;
  wire \add_ln840_82_reg_6680[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_82_reg_6680_reg[2] ;
  wire [0:0]\add_ln840_82_reg_6680_reg[2]_0 ;
  wire [0:0]\add_ln840_82_reg_6680_reg[2]_1 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_2_n_4 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_2_n_5 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_2_n_6 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_3_n_5 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_3_n_6 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_4_n_4 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_4_n_5 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_82_reg_6680_reg[2]_i_5_0 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_5_n_4 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_5_n_5 ;
  wire \add_ln840_82_reg_6680_reg[2]_i_5_n_6 ;
  wire \add_ln840_86_reg_6685[2]_i_10_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_11_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_12_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_13_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_14_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_15_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_16_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_17_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_18_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_19_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_20_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_21_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_22_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_23_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_24_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_25_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_26_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_27_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_28_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_29_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_30_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_31_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_32_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_33_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_34_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_35_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_6_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_7_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_8_n_3 ;
  wire \add_ln840_86_reg_6685[2]_i_9_n_3 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_2_n_4 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_2_n_5 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_2_n_6 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_3_n_4 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_3_n_5 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_3_n_6 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_4_n_5 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_86_reg_6685_reg[2]_i_5_0 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_5_n_4 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_5_n_5 ;
  wire \add_ln840_86_reg_6685_reg[2]_i_5_n_6 ;
  wire \add_ln840_89_reg_6690[2]_i_10_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_11_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_12_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_13_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_14_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_16_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_17_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_18_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_19_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_20_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_21_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_22_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_23_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_24_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_25_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_26_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_27_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_28_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_29_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_30_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_31_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_32_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_6_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_7_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_8_n_3 ;
  wire \add_ln840_89_reg_6690[2]_i_9_n_3 ;
  wire [0:0]\add_ln840_89_reg_6690_reg[2] ;
  wire \add_ln840_89_reg_6690_reg[2]_i_2_n_6 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_3_n_4 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_3_n_5 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_3_n_6 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_4_n_4 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_4_n_5 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_89_reg_6690_reg[2]_i_5_0 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_5_n_4 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_5_n_5 ;
  wire \add_ln840_89_reg_6690_reg[2]_i_5_n_6 ;
  wire \add_ln840_8_reg_6585[2]_i_11_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_12_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_13_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_15_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_17_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_24_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_25_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_28_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_29_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_6_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_7_n_3 ;
  wire \add_ln840_8_reg_6585[2]_i_9_n_3 ;
  wire [1:0]\add_ln840_8_reg_6585_reg[2] ;
  wire [1:0]\add_ln840_8_reg_6585_reg[2]_0 ;
  wire [1:0]\add_ln840_8_reg_6585_reg[2]_1 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_2_n_4 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_2_n_5 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_2_n_6 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_3_n_4 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_3_n_5 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_3_n_6 ;
  wire [2:0]\add_ln840_8_reg_6585_reg[2]_i_5_0 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_5_n_4 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_5_n_5 ;
  wire \add_ln840_8_reg_6585_reg[2]_i_5_n_6 ;
  wire \add_ln840_95_reg_6695[2]_i_10_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_11_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_12_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_13_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_14_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_15_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_16_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_17_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_18_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_19_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_20_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_21_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_22_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_23_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_24_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_25_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_26_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_27_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_28_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_29_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_30_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_31_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_32_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_33_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_34_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_35_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_6_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_7_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_8_n_3 ;
  wire \add_ln840_95_reg_6695[2]_i_9_n_3 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_2_n_4 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_2_n_5 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_2_n_6 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_3_n_4 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_3_n_5 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_3_n_6 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_4_n_4 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_4_n_5 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_95_reg_6695_reg[2]_i_5_0 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_5_n_5 ;
  wire \add_ln840_95_reg_6695_reg[2]_i_5_n_6 ;
  wire \add_ln840_98_reg_6700[2]_i_10_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_11_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_12_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_13_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_14_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_15_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_16_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_17_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_18_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_19_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_20_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_21_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_22_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_23_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_24_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_25_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_26_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_27_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_28_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_29_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_30_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_31_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_6_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_7_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_8_n_3 ;
  wire \add_ln840_98_reg_6700[2]_i_9_n_3 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_2_n_4 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_2_n_5 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_2_n_6 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_3_n_6 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_4_n_5 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_4_n_6 ;
  wire [2:0]\add_ln840_98_reg_6700_reg[2]_i_5_0 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_5_n_4 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_5_n_5 ;
  wire \add_ln840_98_reg_6700_reg[2]_i_5_n_6 ;
  wire ap_CS_iter1_fsm_state2;
  wire ap_clk;
  wire icmp_ln1039_100_fu_4125_p2;
  wire icmp_ln1039_101_fu_4140_p2;
  wire icmp_ln1039_102_fu_4155_p2;
  wire icmp_ln1039_103_fu_4170_p2;
  wire icmp_ln1039_104_fu_4185_p2;
  wire icmp_ln1039_105_fu_4200_p2;
  wire icmp_ln1039_106_fu_4215_p2;
  wire icmp_ln1039_107_fu_4230_p2;
  wire icmp_ln1039_108_fu_4245_p2;
  wire icmp_ln1039_109_fu_4260_p2;
  wire icmp_ln1039_10_fu_2391_p2;
  wire icmp_ln1039_110_fu_4275_p2;
  wire icmp_ln1039_111_fu_4290_p2;
  wire icmp_ln1039_112_fu_4309_p2;
  wire icmp_ln1039_113_fu_4328_p2;
  wire icmp_ln1039_114_fu_4347_p2;
  wire icmp_ln1039_115_fu_4366_p2;
  wire icmp_ln1039_116_fu_4385_p2;
  wire icmp_ln1039_117_fu_4404_p2;
  wire icmp_ln1039_118_fu_4423_p2;
  wire icmp_ln1039_119_fu_4442_p2;
  wire icmp_ln1039_11_fu_2410_p2;
  wire icmp_ln1039_120_fu_4461_p2;
  wire icmp_ln1039_121_fu_4480_p2;
  wire icmp_ln1039_122_fu_4499_p2;
  wire icmp_ln1039_123_fu_4518_p2;
  wire icmp_ln1039_124_fu_4537_p2;
  wire icmp_ln1039_125_fu_4556_p2;
  wire icmp_ln1039_126_fu_4575_p2;
  wire icmp_ln1039_12_fu_2429_p2;
  wire icmp_ln1039_13_fu_2452_p2;
  wire icmp_ln1039_14_fu_2475_p2;
  wire icmp_ln1039_15_fu_2498_p2;
  wire icmp_ln1039_16_fu_2521_p2;
  wire icmp_ln1039_17_fu_2544_p2;
  wire icmp_ln1039_18_fu_2563_p2;
  wire icmp_ln1039_19_fu_2582_p2;
  wire icmp_ln1039_20_fu_2601_p2;
  wire icmp_ln1039_21_fu_2620_p2;
  wire icmp_ln1039_22_fu_2639_p2;
  wire icmp_ln1039_23_fu_2658_p2;
  wire icmp_ln1039_24_fu_2677_p2;
  wire icmp_ln1039_25_fu_2696_p2;
  wire icmp_ln1039_26_fu_2715_p2;
  wire icmp_ln1039_27_fu_2738_p2;
  wire icmp_ln1039_28_fu_2761_p2;
  wire icmp_ln1039_29_fu_2784_p2;
  wire icmp_ln1039_30_fu_2807_p2;
  wire icmp_ln1039_31_fu_2830_p2;
  wire icmp_ln1039_32_fu_2853_p2;
  wire icmp_ln1039_33_fu_2876_p2;
  wire icmp_ln1039_34_fu_2899_p2;
  wire icmp_ln1039_35_fu_2922_p2;
  wire icmp_ln1039_37_fu_2964_p2;
  wire icmp_ln1039_38_fu_2983_p2;
  wire icmp_ln1039_39_fu_3002_p2;
  wire icmp_ln1039_40_fu_3021_p2;
  wire icmp_ln1039_41_fu_3040_p2;
  wire icmp_ln1039_42_fu_3059_p2;
  wire icmp_ln1039_43_fu_3078_p2;
  wire icmp_ln1039_44_fu_3097_p2;
  wire icmp_ln1039_45_fu_3116_p2;
  wire icmp_ln1039_46_fu_3135_p2;
  wire icmp_ln1039_47_fu_3154_p2;
  wire icmp_ln1039_48_fu_3173_p2;
  wire icmp_ln1039_49_fu_3192_p2;
  wire icmp_ln1039_4_fu_2265_p2;
  wire icmp_ln1039_50_fu_3211_p2;
  wire icmp_ln1039_51_fu_3230_p2;
  wire icmp_ln1039_52_fu_3249_p2;
  wire icmp_ln1039_53_fu_3268_p2;
  wire icmp_ln1039_54_fu_3287_p2;
  wire icmp_ln1039_55_fu_3306_p2;
  wire icmp_ln1039_56_fu_3329_p2;
  wire icmp_ln1039_57_fu_3352_p2;
  wire icmp_ln1039_58_fu_3375_p2;
  wire icmp_ln1039_59_fu_3398_p2;
  wire icmp_ln1039_5_fu_2284_p2;
  wire icmp_ln1039_60_fu_3421_p2;
  wire icmp_ln1039_61_fu_3444_p2;
  wire icmp_ln1039_62_fu_3467_p2;
  wire icmp_ln1039_63_fu_3490_p2;
  wire icmp_ln1039_64_fu_3513_p2;
  wire icmp_ln1039_65_fu_3536_p2;
  wire icmp_ln1039_66_fu_3559_p2;
  wire icmp_ln1039_67_fu_3582_p2;
  wire icmp_ln1039_68_fu_3605_p2;
  wire icmp_ln1039_69_fu_3628_p2;
  wire icmp_ln1039_6_fu_2307_p2;
  wire icmp_ln1039_70_fu_3651_p2;
  wire icmp_ln1039_71_fu_3674_p2;
  wire icmp_ln1039_72_fu_3697_p2;
  wire icmp_ln1039_73_fu_3720_p2;
  wire icmp_ln1039_75_fu_3750_p2;
  wire icmp_ln1039_76_fu_3765_p2;
  wire icmp_ln1039_77_fu_3780_p2;
  wire icmp_ln1039_78_fu_3795_p2;
  wire icmp_ln1039_79_fu_3810_p2;
  wire icmp_ln1039_7_fu_2330_p2;
  wire icmp_ln1039_80_fu_3825_p2;
  wire icmp_ln1039_81_fu_3840_p2;
  wire icmp_ln1039_82_fu_3855_p2;
  wire icmp_ln1039_83_fu_3870_p2;
  wire icmp_ln1039_84_fu_3885_p2;
  wire icmp_ln1039_85_fu_3900_p2;
  wire icmp_ln1039_86_fu_3915_p2;
  wire icmp_ln1039_87_fu_3930_p2;
  wire icmp_ln1039_88_fu_3945_p2;
  wire icmp_ln1039_89_fu_3960_p2;
  wire icmp_ln1039_90_fu_3975_p2;
  wire icmp_ln1039_91_fu_3990_p2;
  wire icmp_ln1039_92_fu_4005_p2;
  wire icmp_ln1039_93_fu_4020_p2;
  wire icmp_ln1039_94_fu_4035_p2;
  wire icmp_ln1039_95_fu_4050_p2;
  wire icmp_ln1039_96_fu_4065_p2;
  wire icmp_ln1039_97_fu_4080_p2;
  wire icmp_ln1039_98_fu_4095_p2;
  wire icmp_ln1039_99_fu_4110_p2;
  wire icmp_ln1039_9_fu_2372_p2;
  wire [1:0]\inElem_reg_5804_pp0_iter1_reg_reg[1] ;
  wire [2:0]\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep ;
  wire [3:0]out;
  wire out_V_TREADY_int_regslice;
  wire p_ZL7threshs_128_ce0;
  wire [0:0]p_ZL7threshs_130_q0;
  wire \q0[0]_i_1_n_3 ;
  wire \q0[0]_i_2_n_3 ;
  wire \q0[0]_rep_i_1__0_n_3 ;
  wire \q0[0]_rep_i_1__1_n_3 ;
  wire \q0[0]_rep_i_1__2_n_3 ;
  wire \q0[0]_rep_i_1__3_n_3 ;
  wire \q0[0]_rep_i_1__4_n_3 ;
  wire \q0[0]_rep_i_1_n_3 ;
  wire \q0_reg[0]_0 ;
  wire \q0_reg[0]_1 ;
  wire \q0_reg[0]_rep__0_n_3 ;
  wire \q0_reg[0]_rep__1_n_3 ;
  wire \q0_reg[0]_rep__2_n_3 ;
  wire \q0_reg[0]_rep__3_n_3 ;
  wire \q0_reg[0]_rep__4_n_3 ;
  wire \q0_reg[0]_rep_n_3 ;
  wire zext_ln218_1_fu_2234_p1;
  wire [3:0]\NLW_add_ln840_102_reg_6705_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_102_reg_6705_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_102_reg_6705_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_102_reg_6705_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_105_reg_6710_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_105_reg_6710_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_105_reg_6710_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_105_reg_6710_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_105_reg_6710_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_105_reg_6710_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_110_reg_6715_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_110_reg_6715_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_110_reg_6715_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_110_reg_6715_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_110_reg_6715_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_113_reg_6720_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_113_reg_6720_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_113_reg_6720_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_113_reg_6720_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_113_reg_6720_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_117_reg_6725_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_117_reg_6725_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_117_reg_6725_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_117_reg_6725_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_117_reg_6725_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_11_reg_6590_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_11_reg_6590_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_11_reg_6590_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_11_reg_6590_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_11_reg_6590_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_11_reg_6590_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_120_reg_6730_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_120_reg_6730_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_120_reg_6730_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_120_reg_6730_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_120_reg_6730_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_16_reg_6595_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_16_reg_6595_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_16_reg_6595_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_16_reg_6595_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_16_reg_6595_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_19_reg_6600_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_19_reg_6600_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_19_reg_6600_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_19_reg_6600_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_19_reg_6600_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_23_reg_6605_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_23_reg_6605_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_23_reg_6605_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_23_reg_6605_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_23_reg_6605_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_26_reg_6610_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_26_reg_6610_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_26_reg_6610_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_26_reg_6610_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_26_reg_6610_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_2_reg_6575_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_2_reg_6575_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_32_reg_6615_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_32_reg_6615_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_32_reg_6615_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_32_reg_6615_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_32_reg_6615_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_32_reg_6615_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_35_reg_6620_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_35_reg_6620_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_35_reg_6620_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_39_reg_6625_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_39_reg_6625_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_39_reg_6625_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_39_reg_6625_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_39_reg_6625_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_39_reg_6625_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_3_reg_6580_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_3_reg_6580_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_3_reg_6580_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_42_reg_6630_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_42_reg_6630_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_42_reg_6630_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_42_reg_6630_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_42_reg_6630_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_47_reg_6635_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_47_reg_6635_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_47_reg_6635_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_47_reg_6635_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_50_reg_6640_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_50_reg_6640_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_50_reg_6640_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_50_reg_6640_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_50_reg_6640_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_54_reg_6645_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_54_reg_6645_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_54_reg_6645_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_54_reg_6645_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_57_reg_6650_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_57_reg_6650_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_57_reg_6650_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_57_reg_6650_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_57_reg_6650_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_64_reg_6655_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_64_reg_6655_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_64_reg_6655_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_64_reg_6655_reg[2]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_67_reg_6660_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_67_reg_6660_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_67_reg_6660_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_67_reg_6660_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_67_reg_6660_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_71_reg_6665_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_71_reg_6665_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_71_reg_6665_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_74_reg_6670_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_74_reg_6670_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_74_reg_6670_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_74_reg_6670_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_79_reg_6675_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_79_reg_6675_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_79_reg_6675_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_79_reg_6675_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_79_reg_6675_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_82_reg_6680_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_82_reg_6680_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_82_reg_6680_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_82_reg_6680_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_82_reg_6680_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_86_reg_6685_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_86_reg_6685_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_86_reg_6685_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_86_reg_6685_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_86_reg_6685_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_89_reg_6690_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_89_reg_6690_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_89_reg_6690_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_89_reg_6690_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_89_reg_6690_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_8_reg_6585_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_8_reg_6585_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_8_reg_6585_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_95_reg_6695_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_95_reg_6695_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_95_reg_6695_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_95_reg_6695_reg[2]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_95_reg_6695_reg[2]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_98_reg_6700_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln840_98_reg_6700_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_98_reg_6700_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_add_ln840_98_reg_6700_reg[2]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_98_reg_6700_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln840_98_reg_6700_reg[2]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_102_reg_6705[0]_i_1 
       (.I0(icmp_ln1039_103_fu_4170_p2),
        .I1(icmp_ln1039_104_fu_4185_p2),
        .I2(icmp_ln1039_106_fu_4215_p2),
        .I3(icmp_ln1039_105_fu_4200_p2),
        .O(\add_ln840_102_reg_6705_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_102_reg_6705[1]_i_1 
       (.I0(icmp_ln1039_105_fu_4200_p2),
        .I1(icmp_ln1039_106_fu_4215_p2),
        .I2(icmp_ln1039_104_fu_4185_p2),
        .I3(icmp_ln1039_103_fu_4170_p2),
        .O(\add_ln840_102_reg_6705_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_102_reg_6705[2]_i_1 
       (.I0(icmp_ln1039_105_fu_4200_p2),
        .I1(icmp_ln1039_106_fu_4215_p2),
        .I2(icmp_ln1039_104_fu_4185_p2),
        .I3(icmp_ln1039_103_fu_4170_p2),
        .O(\add_ln840_102_reg_6705_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_10 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_11 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_102_reg_6705[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_12 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_102_reg_6705[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_13 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_102_reg_6705[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_102_reg_6705[2]_i_14 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_102_reg_6705[2]_i_16 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_102_reg_6705[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_18 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_19 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_102_reg_6705[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_20 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_102_reg_6705[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_102_reg_6705[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_102_reg_6705[2]_i_22 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_25 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_26 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_102_reg_6705[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_102_reg_6705[2]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_102_reg_6705[2]_i_29 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_102_reg_6705[2]_i_31 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_102_reg_6705[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_102_reg_6705[2]_i_32 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_102_reg_6705[2]_i_33 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_102_reg_6705[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_102_reg_6705[2]_i_35 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_102_reg_6705[2]_i_35_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_102_reg_6705[2]_i_6 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_102_reg_6705[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_102_reg_6705[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_102_reg_6705[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_102_reg_6705[2]_i_8 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_102_reg_6705[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_102_reg_6705[2]_i_9 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_102_reg_6705[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_102_reg_6705_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_105_fu_4200_p2,\add_ln840_102_reg_6705_reg[2]_i_2_n_4 ,\add_ln840_102_reg_6705_reg[2]_i_2_n_5 ,\add_ln840_102_reg_6705_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_102_reg_6705[2]_i_6_n_3 ,\add_ln840_102_reg_6705[2]_i_7_n_3 ,\add_ln840_102_reg_6705[2]_i_8_n_3 ,\add_ln840_102_reg_6705[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_102_reg_6705_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_102_reg_6705[2]_i_10_n_3 ,\add_ln840_102_reg_6705[2]_i_11_n_3 ,\add_ln840_102_reg_6705[2]_i_12_n_3 ,\add_ln840_102_reg_6705[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_102_reg_6705_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_106_fu_4215_p2,\add_ln840_102_reg_6705_reg[2]_i_3_n_4 ,\add_ln840_102_reg_6705_reg[2]_i_3_n_5 ,\add_ln840_102_reg_6705_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_102_reg_6705[2]_i_14_n_3 ,\add_ln840_102_reg_6705[2]_i_15_n_3 ,\add_ln840_102_reg_6705[2]_i_16_n_3 ,\add_ln840_102_reg_6705[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_102_reg_6705_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_102_reg_6705[2]_i_18_n_3 ,\add_ln840_102_reg_6705[2]_i_19_n_3 ,\add_ln840_102_reg_6705[2]_i_20_n_3 ,\add_ln840_102_reg_6705[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_102_reg_6705_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_104_fu_4185_p2,\add_ln840_102_reg_6705_reg[2]_i_4_n_4 ,\add_ln840_102_reg_6705_reg[2]_i_4_n_5 ,\add_ln840_102_reg_6705_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_102_reg_6705[2]_i_22_n_3 ,\add_ln840_102_reg_6705[2]_i_23_n_3 ,1'b0,\add_ln840_102_reg_6705[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_102_reg_6705_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_102_reg_6705[2]_i_25_n_3 ,\add_ln840_102_reg_6705[2]_i_26_n_3 ,\add_ln840_102_reg_6705_reg[2] ,\add_ln840_102_reg_6705[2]_i_28_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_102_reg_6705_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_103_fu_4170_p2,\add_ln840_102_reg_6705_reg[2]_i_5_n_4 ,\add_ln840_102_reg_6705_reg[2]_i_5_n_5 ,\add_ln840_102_reg_6705_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_102_reg_6705[2]_i_29_n_3 ,\add_ln840_102_reg_6705[2]_i_30_n_3 ,1'b0,\add_ln840_102_reg_6705[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_102_reg_6705_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_102_reg_6705[2]_i_32_n_3 ,\add_ln840_102_reg_6705[2]_i_33_n_3 ,\add_ln840_102_reg_6705_reg[2]_0 ,\add_ln840_102_reg_6705[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_105_reg_6710[0]_i_1 
       (.I0(icmp_ln1039_107_fu_4230_p2),
        .I1(icmp_ln1039_108_fu_4245_p2),
        .I2(icmp_ln1039_110_fu_4275_p2),
        .I3(icmp_ln1039_109_fu_4260_p2),
        .O(\add_ln840_105_reg_6710_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_105_reg_6710[1]_i_1 
       (.I0(icmp_ln1039_109_fu_4260_p2),
        .I1(icmp_ln1039_110_fu_4275_p2),
        .I2(icmp_ln1039_108_fu_4245_p2),
        .I3(icmp_ln1039_107_fu_4230_p2),
        .O(\add_ln840_105_reg_6710_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_105_reg_6710[2]_i_1 
       (.I0(icmp_ln1039_109_fu_4260_p2),
        .I1(icmp_ln1039_110_fu_4275_p2),
        .I2(icmp_ln1039_108_fu_4245_p2),
        .I3(icmp_ln1039_107_fu_4230_p2),
        .O(\add_ln840_105_reg_6710_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_10 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_105_reg_6710[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_11 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_105_reg_6710[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_12 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_15 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_105_reg_6710[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_105_reg_6710[2]_i_16 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_17 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_105_reg_6710[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_18 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_105_reg_6710[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_105_reg_6710[2]_i_19 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_105_reg_6710[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_20 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_22 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_105_reg_6710[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_23 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_105_reg_6710[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_105_reg_6710[2]_i_24 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_25 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_105_reg_6710[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_105_reg_6710[2]_i_26 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_105_reg_6710[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_105_reg_6710[2]_i_27 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_105_reg_6710[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_28 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_29 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_30 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_105_reg_6710[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_105_reg_6710[2]_i_31 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_105_reg_6710[2]_i_32 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_105_reg_6710[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_105_reg_6710[2]_i_33 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_105_reg_6710[2]_i_33_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_105_reg_6710[2]_i_6 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_105_reg_6710[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_105_reg_6710[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_105_reg_6710[2]_i_9 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_105_reg_6710[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_105_reg_6710_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_105_reg_6710_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_109_fu_4260_p2,\add_ln840_105_reg_6710_reg[2]_i_2_n_5 ,\add_ln840_105_reg_6710_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_105_reg_6710[2]_i_6_n_3 ,\add_ln840_105_reg_6710[2]_i_7_n_3 ,\add_ln840_105_reg_6710[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_105_reg_6710_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_105_reg_6710[2]_i_9_n_3 ,\add_ln840_105_reg_6710[2]_i_10_n_3 ,\add_ln840_105_reg_6710[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_105_reg_6710_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_110_fu_4275_p2,\add_ln840_105_reg_6710_reg[2]_i_3_n_4 ,\add_ln840_105_reg_6710_reg[2]_i_3_n_5 ,\add_ln840_105_reg_6710_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_105_reg_6710[2]_i_12_n_3 ,\add_ln840_105_reg_6710[2]_i_13_n_3 ,\add_ln840_105_reg_6710[2]_i_14_n_3 ,\add_ln840_105_reg_6710[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_105_reg_6710_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_105_reg_6710[2]_i_16_n_3 ,\add_ln840_105_reg_6710[2]_i_17_n_3 ,\add_ln840_105_reg_6710[2]_i_18_n_3 ,\add_ln840_105_reg_6710[2]_i_19_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_105_reg_6710_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_108_fu_4245_p2,\add_ln840_105_reg_6710_reg[2]_i_4_n_4 ,\add_ln840_105_reg_6710_reg[2]_i_4_n_5 ,\add_ln840_105_reg_6710_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_105_reg_6710[2]_i_20_n_3 ,\add_ln840_105_reg_6710[2]_i_21_n_3 ,\add_ln840_105_reg_6710[2]_i_22_n_3 ,\add_ln840_105_reg_6710[2]_i_23_n_3 }),
        .O(\NLW_add_ln840_105_reg_6710_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_105_reg_6710[2]_i_24_n_3 ,\add_ln840_105_reg_6710[2]_i_25_n_3 ,\add_ln840_105_reg_6710[2]_i_26_n_3 ,\add_ln840_105_reg_6710[2]_i_27_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_105_reg_6710_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_105_reg_6710_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_107_fu_4230_p2,\add_ln840_105_reg_6710_reg[2]_i_5_n_5 ,\add_ln840_105_reg_6710_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_105_reg_6710[2]_i_28_n_3 ,\add_ln840_105_reg_6710[2]_i_29_n_3 ,\add_ln840_105_reg_6710[2]_i_30_n_3 }),
        .O(\NLW_add_ln840_105_reg_6710_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_105_reg_6710[2]_i_31_n_3 ,\add_ln840_105_reg_6710[2]_i_32_n_3 ,\add_ln840_105_reg_6710[2]_i_33_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_110_reg_6715[0]_i_1 
       (.I0(icmp_ln1039_111_fu_4290_p2),
        .I1(icmp_ln1039_112_fu_4309_p2),
        .I2(icmp_ln1039_114_fu_4347_p2),
        .I3(icmp_ln1039_113_fu_4328_p2),
        .O(\add_ln840_110_reg_6715_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_110_reg_6715[1]_i_1 
       (.I0(icmp_ln1039_113_fu_4328_p2),
        .I1(icmp_ln1039_114_fu_4347_p2),
        .I2(icmp_ln1039_112_fu_4309_p2),
        .I3(icmp_ln1039_111_fu_4290_p2),
        .O(\add_ln840_110_reg_6715_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_110_reg_6715[2]_i_1 
       (.I0(icmp_ln1039_113_fu_4328_p2),
        .I1(icmp_ln1039_114_fu_4347_p2),
        .I2(icmp_ln1039_112_fu_4309_p2),
        .I3(icmp_ln1039_111_fu_4290_p2),
        .O(\add_ln840_110_reg_6715_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_110_reg_6715[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_110_reg_6715[2]_i_13 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_110_reg_6715[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_110_reg_6715[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_110_reg_6715[2]_i_16 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_110_reg_6715[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_110_reg_6715[2]_i_18 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_110_reg_6715[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_110_reg_6715[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_110_reg_6715[2]_i_22 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_110_reg_6715[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_110_reg_6715[2]_i_23 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_110_reg_6715[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_26 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_110_reg_6715[2]_i_27 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_110_reg_6715[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_28 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_110_reg_6715[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_29 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_110_reg_6715[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_110_reg_6715[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_110_reg_6715[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_110_reg_6715[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_110_reg_6715[2]_i_8 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .O(\add_ln840_110_reg_6715[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_110_reg_6715_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_113_fu_4328_p2,\add_ln840_110_reg_6715_reg[2]_i_2_n_4 ,\add_ln840_110_reg_6715_reg[2]_i_2_n_5 ,\add_ln840_110_reg_6715_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_110_reg_6715[2]_i_6_n_3 ,1'b0,1'b0,\add_ln840_110_reg_6715[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_110_reg_6715_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_110_reg_6715[2]_i_8_n_3 ,\add_ln840_110_reg_6715_reg[2]_1 ,\add_ln840_110_reg_6715[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_110_reg_6715_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_110_reg_6715_reg[2]_i_3_CO_UNCONNECTED [3],icmp_ln1039_114_fu_4347_p2,\add_ln840_110_reg_6715_reg[2]_i_3_n_5 ,\add_ln840_110_reg_6715_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_110_reg_6715[2]_i_12_n_3 ,1'b0,\add_ln840_110_reg_6715[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_110_reg_6715_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_110_reg_6715[2]_i_14_n_3 ,\add_ln840_110_reg_6715_reg[2]_0 ,\add_ln840_110_reg_6715[2]_i_16_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_110_reg_6715_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_112_fu_4309_p2,\add_ln840_110_reg_6715_reg[2]_i_4_n_4 ,\add_ln840_110_reg_6715_reg[2]_i_4_n_5 ,\add_ln840_110_reg_6715_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_110_reg_6715[2]_i_17_n_3 ,1'b0,1'b0,\add_ln840_110_reg_6715[2]_i_18_n_3 }),
        .O(\NLW_add_ln840_110_reg_6715_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_110_reg_6715[2]_i_19_n_3 ,\add_ln840_110_reg_6715_reg[2] ,\add_ln840_110_reg_6715[2]_i_22_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_110_reg_6715_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_111_fu_4290_p2,\add_ln840_110_reg_6715_reg[2]_i_5_n_4 ,\add_ln840_110_reg_6715_reg[2]_i_5_n_5 ,\add_ln840_110_reg_6715_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_110_reg_6715[2]_i_23_n_3 ,\add_ln840_110_reg_6715[2]_i_24_n_3 ,\add_ln840_110_reg_6715[2]_i_25_n_3 ,\add_ln840_110_reg_6715[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_110_reg_6715_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_110_reg_6715[2]_i_27_n_3 ,\add_ln840_110_reg_6715[2]_i_28_n_3 ,\add_ln840_110_reg_6715[2]_i_29_n_3 ,\add_ln840_110_reg_6715[2]_i_30_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_113_reg_6720[0]_i_1 
       (.I0(icmp_ln1039_115_fu_4366_p2),
        .I1(icmp_ln1039_116_fu_4385_p2),
        .I2(icmp_ln1039_118_fu_4423_p2),
        .I3(icmp_ln1039_117_fu_4404_p2),
        .O(\add_ln840_113_reg_6720_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_113_reg_6720[1]_i_1 
       (.I0(icmp_ln1039_117_fu_4404_p2),
        .I1(icmp_ln1039_118_fu_4423_p2),
        .I2(icmp_ln1039_116_fu_4385_p2),
        .I3(icmp_ln1039_115_fu_4366_p2),
        .O(\add_ln840_113_reg_6720_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_113_reg_6720[2]_i_1 
       (.I0(icmp_ln1039_117_fu_4404_p2),
        .I1(icmp_ln1039_118_fu_4423_p2),
        .I2(icmp_ln1039_116_fu_4385_p2),
        .I3(icmp_ln1039_115_fu_4366_p2),
        .O(\add_ln840_113_reg_6720_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_113_reg_6720[2]_i_11 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_113_reg_6720[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_113_reg_6720[2]_i_12 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_113_reg_6720[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_113_reg_6720[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_113_reg_6720[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_113_reg_6720[2]_i_14 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_113_reg_6720[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_113_reg_6720[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_113_reg_6720[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_113_reg_6720[2]_i_16 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_113_reg_6720[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_113_reg_6720[2]_i_18 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_113_reg_6720[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_113_reg_6720[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_113_reg_6720[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_113_reg_6720[2]_i_20 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_113_reg_6720[2]_i_20_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_113_reg_6720[2]_i_21 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_113_reg_6720[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_113_reg_6720[2]_i_22 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_113_reg_6720[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_113_reg_6720[2]_i_24 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_113_reg_6720[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_113_reg_6720[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_113_reg_6720[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_113_reg_6720[2]_i_26 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_113_reg_6720[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_113_reg_6720[2]_i_27 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_113_reg_6720[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_113_reg_6720[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_113_reg_6720[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_113_reg_6720[2]_i_30 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_113_reg_6720[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_113_reg_6720[2]_i_31 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_113_reg_6720[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_113_reg_6720[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_113_reg_6720[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_113_reg_6720[2]_i_7 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_113_reg_6720[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_113_reg_6720[2]_i_8 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_113_reg_6720[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_113_reg_6720[2]_i_9 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .O(\add_ln840_113_reg_6720[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_113_reg_6720_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_117_fu_4404_p2,\add_ln840_113_reg_6720_reg[2]_i_2_n_4 ,\add_ln840_113_reg_6720_reg[2]_i_2_n_5 ,\add_ln840_113_reg_6720_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_113_reg_6720[2]_i_6_n_3 ,1'b0,\add_ln840_113_reg_6720[2]_i_7_n_3 ,\add_ln840_113_reg_6720[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_113_reg_6720_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_113_reg_6720[2]_i_9_n_3 ,\add_ln840_113_reg_6720_reg[2]_2 ,\add_ln840_113_reg_6720[2]_i_11_n_3 ,\add_ln840_113_reg_6720[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_113_reg_6720_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_118_fu_4423_p2,\add_ln840_113_reg_6720_reg[2]_i_3_n_4 ,\add_ln840_113_reg_6720_reg[2]_i_3_n_5 ,\add_ln840_113_reg_6720_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_113_reg_6720[2]_i_13_n_3 ,1'b0,\add_ln840_113_reg_6720[2]_i_14_n_3 ,\add_ln840_113_reg_6720[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_113_reg_6720_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_113_reg_6720[2]_i_16_n_3 ,\add_ln840_113_reg_6720_reg[2]_0 ,\add_ln840_113_reg_6720[2]_i_18_n_3 ,\add_ln840_113_reg_6720[2]_i_19_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_113_reg_6720_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_113_reg_6720_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_116_fu_4385_p2,\add_ln840_113_reg_6720_reg[2]_i_4_n_5 ,\add_ln840_113_reg_6720_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_113_reg_6720[2]_i_20_n_3 ,1'b0,\add_ln840_113_reg_6720[2]_i_21_n_3 }),
        .O(\NLW_add_ln840_113_reg_6720_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_113_reg_6720[2]_i_22_n_3 ,\add_ln840_113_reg_6720_reg[2] ,\add_ln840_113_reg_6720[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_113_reg_6720_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_115_fu_4366_p2,\add_ln840_113_reg_6720_reg[2]_i_5_n_4 ,\add_ln840_113_reg_6720_reg[2]_i_5_n_5 ,\add_ln840_113_reg_6720_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_113_reg_6720[2]_i_25_n_3 ,1'b0,\add_ln840_113_reg_6720[2]_i_26_n_3 ,\add_ln840_113_reg_6720[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_113_reg_6720_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_113_reg_6720[2]_i_28_n_3 ,\add_ln840_113_reg_6720_reg[2]_1 ,\add_ln840_113_reg_6720[2]_i_30_n_3 ,\add_ln840_113_reg_6720[2]_i_31_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_117_reg_6725[0]_i_1 
       (.I0(icmp_ln1039_119_fu_4442_p2),
        .I1(icmp_ln1039_120_fu_4461_p2),
        .I2(icmp_ln1039_122_fu_4499_p2),
        .I3(icmp_ln1039_121_fu_4480_p2),
        .O(\add_ln840_117_reg_6725_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_117_reg_6725[1]_i_1 
       (.I0(icmp_ln1039_121_fu_4480_p2),
        .I1(icmp_ln1039_122_fu_4499_p2),
        .I2(icmp_ln1039_120_fu_4461_p2),
        .I3(icmp_ln1039_119_fu_4442_p2),
        .O(\add_ln840_117_reg_6725_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_117_reg_6725[2]_i_1 
       (.I0(icmp_ln1039_121_fu_4480_p2),
        .I1(icmp_ln1039_122_fu_4499_p2),
        .I2(icmp_ln1039_120_fu_4461_p2),
        .I3(icmp_ln1039_119_fu_4442_p2),
        .O(\add_ln840_117_reg_6725_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_117_reg_6725[2]_i_11 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_117_reg_6725[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_117_reg_6725[2]_i_12 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_117_reg_6725[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_117_reg_6725[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_117_reg_6725[2]_i_14 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_117_reg_6725[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_117_reg_6725[2]_i_16 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_117_reg_6725[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_20 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .O(\add_ln840_117_reg_6725[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_22 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_117_reg_6725[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_117_reg_6725[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_117_reg_6725[2]_i_26 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_117_reg_6725[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_117_reg_6725[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_29 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_117_reg_6725[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_117_reg_6725[2]_i_30 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_117_reg_6725[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_117_reg_6725[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_117_reg_6725[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_117_reg_6725[2]_i_7 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_117_reg_6725[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_117_reg_6725[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_117_reg_6725[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_117_reg_6725[2]_i_9 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_117_reg_6725[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_117_reg_6725_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_117_reg_6725_reg[2]_i_2_CO_UNCONNECTED [3:2],icmp_ln1039_121_fu_4480_p2,\add_ln840_117_reg_6725_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_117_reg_6725[2]_i_6_n_3 ,\add_ln840_117_reg_6725[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_117_reg_6725_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_117_reg_6725[2]_i_8_n_3 ,\add_ln840_117_reg_6725[2]_i_9_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_117_reg_6725_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_122_fu_4499_p2,\add_ln840_117_reg_6725_reg[2]_i_3_n_4 ,\add_ln840_117_reg_6725_reg[2]_i_3_n_5 ,\add_ln840_117_reg_6725_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_117_reg_6725[2]_i_10_n_3 ,\add_ln840_117_reg_6725[2]_i_11_n_3 ,1'b0,\add_ln840_117_reg_6725[2]_i_12_n_3 }),
        .O(\NLW_add_ln840_117_reg_6725_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_117_reg_6725[2]_i_13_n_3 ,\add_ln840_117_reg_6725[2]_i_14_n_3 ,\add_ln840_117_reg_6725_reg[2]_0 ,\add_ln840_117_reg_6725[2]_i_16_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_117_reg_6725_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_120_fu_4461_p2,\add_ln840_117_reg_6725_reg[2]_i_4_n_4 ,\add_ln840_117_reg_6725_reg[2]_i_4_n_5 ,\add_ln840_117_reg_6725_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_117_reg_6725[2]_i_17_n_3 ,1'b0,\add_ln840_117_reg_6725[2]_i_18_n_3 ,\add_ln840_117_reg_6725[2]_i_19_n_3 }),
        .O(\NLW_add_ln840_117_reg_6725_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_117_reg_6725[2]_i_20_n_3 ,\add_ln840_117_reg_6725_reg[2] ,\add_ln840_117_reg_6725[2]_i_22_n_3 ,\add_ln840_117_reg_6725[2]_i_23_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_117_reg_6725_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_119_fu_4442_p2,\add_ln840_117_reg_6725_reg[2]_i_5_n_4 ,\add_ln840_117_reg_6725_reg[2]_i_5_n_5 ,\add_ln840_117_reg_6725_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_117_reg_6725[2]_i_24_n_3 ,1'b0,\add_ln840_117_reg_6725[2]_i_25_n_3 ,\add_ln840_117_reg_6725[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_117_reg_6725_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_117_reg_6725[2]_i_27_n_3 ,\add_ln840_117_reg_6725_reg[2]_1 ,\add_ln840_117_reg_6725[2]_i_29_n_3 ,\add_ln840_117_reg_6725[2]_i_30_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_11_reg_6590[0]_i_1 
       (.I0(icmp_ln1039_11_fu_2410_p2),
        .I1(icmp_ln1039_12_fu_2429_p2),
        .I2(icmp_ln1039_14_fu_2475_p2),
        .I3(icmp_ln1039_13_fu_2452_p2),
        .O(\add_ln840_11_reg_6590_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_11_reg_6590[1]_i_1 
       (.I0(icmp_ln1039_13_fu_2452_p2),
        .I1(icmp_ln1039_14_fu_2475_p2),
        .I2(icmp_ln1039_12_fu_2429_p2),
        .I3(icmp_ln1039_11_fu_2410_p2),
        .O(\add_ln840_11_reg_6590_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_11_reg_6590[2]_i_1 
       (.I0(icmp_ln1039_13_fu_2452_p2),
        .I1(icmp_ln1039_14_fu_2475_p2),
        .I2(icmp_ln1039_12_fu_2429_p2),
        .I3(icmp_ln1039_11_fu_2410_p2),
        .O(\add_ln840_11_reg_6590_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_10 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_11 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_11_reg_6590[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_11_reg_6590[2]_i_12 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_11_reg_6590[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_11_reg_6590[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_15 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_11_reg_6590[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_16 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_11_reg_6590[2]_i_17 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_11_reg_6590[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_18 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_11_reg_6590[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_19 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_11_reg_6590[2]_i_20 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_11_reg_6590[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_22 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_11_reg_6590[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_11_reg_6590[2]_i_23 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_24 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_11_reg_6590[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_25 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_11_reg_6590[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_26 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_28 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_11_reg_6590[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_11_reg_6590[2]_i_29 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_11_reg_6590[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_11_reg_6590[2]_i_6 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_11_reg_6590[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_11_reg_6590[2]_i_7 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_11_reg_6590[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_11_reg_6590[2]_i_9 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_11_reg_6590[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_11_reg_6590_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_11_reg_6590_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_13_fu_2452_p2,\add_ln840_11_reg_6590_reg[2]_i_2_n_5 ,\add_ln840_11_reg_6590_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_11_reg_6590[2]_i_6_n_3 ,\add_ln840_11_reg_6590[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_11_reg_6590_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_11_reg_6590_reg[2]_2 ,\add_ln840_11_reg_6590[2]_i_9_n_3 ,\add_ln840_11_reg_6590[2]_i_10_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_11_reg_6590_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_14_fu_2475_p2,\add_ln840_11_reg_6590_reg[2]_i_3_n_4 ,\add_ln840_11_reg_6590_reg[2]_i_3_n_5 ,\add_ln840_11_reg_6590_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_11_reg_6590[2]_i_11_n_3 ,\add_ln840_11_reg_6590[2]_i_12_n_3 ,\add_ln840_11_reg_6590[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_11_reg_6590_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_11_reg_6590_reg[2]_0 ,\add_ln840_11_reg_6590[2]_i_15_n_3 ,\add_ln840_11_reg_6590[2]_i_16_n_3 ,\add_ln840_11_reg_6590[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_11_reg_6590_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_12_fu_2429_p2,\add_ln840_11_reg_6590_reg[2]_i_4_n_4 ,\add_ln840_11_reg_6590_reg[2]_i_4_n_5 ,\add_ln840_11_reg_6590_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_11_reg_6590[2]_i_18_n_3 ,\add_ln840_11_reg_6590[2]_i_19_n_3 ,\add_ln840_11_reg_6590[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_11_reg_6590_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_11_reg_6590_reg[2] ,\add_ln840_11_reg_6590[2]_i_22_n_3 ,\add_ln840_11_reg_6590[2]_i_23_n_3 ,\add_ln840_11_reg_6590[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_11_reg_6590_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_11_reg_6590_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_11_fu_2410_p2,\add_ln840_11_reg_6590_reg[2]_i_5_n_5 ,\add_ln840_11_reg_6590_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_11_reg_6590[2]_i_25_n_3 ,\add_ln840_11_reg_6590[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_11_reg_6590_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_11_reg_6590_reg[2]_1 ,\add_ln840_11_reg_6590[2]_i_28_n_3 ,\add_ln840_11_reg_6590[2]_i_29_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_120_reg_6730[0]_i_1 
       (.I0(icmp_ln1039_123_fu_4518_p2),
        .I1(icmp_ln1039_124_fu_4537_p2),
        .I2(icmp_ln1039_126_fu_4575_p2),
        .I3(icmp_ln1039_125_fu_4556_p2),
        .O(\add_ln840_120_reg_6730_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_120_reg_6730[1]_i_1 
       (.I0(icmp_ln1039_125_fu_4556_p2),
        .I1(icmp_ln1039_126_fu_4575_p2),
        .I2(icmp_ln1039_124_fu_4537_p2),
        .I3(icmp_ln1039_123_fu_4518_p2),
        .O(\add_ln840_120_reg_6730_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_120_reg_6730[2]_i_1 
       (.I0(icmp_ln1039_125_fu_4556_p2),
        .I1(icmp_ln1039_126_fu_4575_p2),
        .I2(icmp_ln1039_124_fu_4537_p2),
        .I3(icmp_ln1039_123_fu_4518_p2),
        .O(\add_ln840_120_reg_6730_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_120_reg_6730[2]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_120_reg_6730[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_11 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_12 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_120_reg_6730[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_120_reg_6730[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_120_reg_6730[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_120_reg_6730[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_15 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_120_reg_6730[2]_i_16 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_120_reg_6730[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_17 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_120_reg_6730[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_120_reg_6730[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_120_reg_6730[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_19 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_120_reg_6730[2]_i_20 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_21 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_120_reg_6730[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_120_reg_6730[2]_i_22 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_120_reg_6730[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_23 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_24 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_120_reg_6730[2]_i_25 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_120_reg_6730[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_120_reg_6730[2]_i_26 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .O(\add_ln840_120_reg_6730[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_27 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_28 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_120_reg_6730[2]_i_29 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_120_reg_6730[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_120_reg_6730[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_120_reg_6730[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_31 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_32 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_120_reg_6730[2]_i_33 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .O(\add_ln840_120_reg_6730[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_34 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_120_reg_6730[2]_i_35 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_120_reg_6730[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_120_reg_6730[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_7 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_120_reg_6730[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_120_reg_6730[2]_i_8 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_120_reg_6730[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_120_reg_6730[2]_i_9 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_120_reg_6730[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_120_reg_6730_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_125_fu_4556_p2,\add_ln840_120_reg_6730_reg[2]_i_2_n_4 ,\add_ln840_120_reg_6730_reg[2]_i_2_n_5 ,\add_ln840_120_reg_6730_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_120_reg_6730[2]_i_6_n_3 ,\add_ln840_120_reg_6730[2]_i_7_n_3 ,\add_ln840_120_reg_6730[2]_i_8_n_3 ,\add_ln840_120_reg_6730[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_120_reg_6730_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_120_reg_6730[2]_i_10_n_3 ,\add_ln840_120_reg_6730[2]_i_11_n_3 ,\add_ln840_120_reg_6730[2]_i_12_n_3 ,\add_ln840_120_reg_6730[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_120_reg_6730_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_126_fu_4575_p2,\add_ln840_120_reg_6730_reg[2]_i_3_n_4 ,\add_ln840_120_reg_6730_reg[2]_i_3_n_5 ,\add_ln840_120_reg_6730_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_120_reg_6730[2]_i_14_n_3 ,\add_ln840_120_reg_6730[2]_i_15_n_3 ,\add_ln840_120_reg_6730[2]_i_16_n_3 ,\add_ln840_120_reg_6730[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_120_reg_6730_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_120_reg_6730[2]_i_18_n_3 ,\add_ln840_120_reg_6730[2]_i_19_n_3 ,\add_ln840_120_reg_6730[2]_i_20_n_3 ,\add_ln840_120_reg_6730[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_120_reg_6730_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_124_fu_4537_p2,\add_ln840_120_reg_6730_reg[2]_i_4_n_4 ,\add_ln840_120_reg_6730_reg[2]_i_4_n_5 ,\add_ln840_120_reg_6730_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_120_reg_6730[2]_i_22_n_3 ,\add_ln840_120_reg_6730[2]_i_23_n_3 ,\add_ln840_120_reg_6730[2]_i_24_n_3 ,\add_ln840_120_reg_6730[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_120_reg_6730_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_120_reg_6730[2]_i_26_n_3 ,\add_ln840_120_reg_6730[2]_i_27_n_3 ,\add_ln840_120_reg_6730[2]_i_28_n_3 ,\add_ln840_120_reg_6730[2]_i_29_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_120_reg_6730_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_120_reg_6730_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_123_fu_4518_p2,\add_ln840_120_reg_6730_reg[2]_i_5_n_5 ,\add_ln840_120_reg_6730_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_120_reg_6730[2]_i_30_n_3 ,\add_ln840_120_reg_6730[2]_i_31_n_3 ,\add_ln840_120_reg_6730[2]_i_32_n_3 }),
        .O(\NLW_add_ln840_120_reg_6730_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_120_reg_6730[2]_i_33_n_3 ,\add_ln840_120_reg_6730[2]_i_34_n_3 ,\add_ln840_120_reg_6730[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_16_reg_6595[0]_i_1 
       (.I0(icmp_ln1039_15_fu_2498_p2),
        .I1(icmp_ln1039_16_fu_2521_p2),
        .I2(icmp_ln1039_18_fu_2563_p2),
        .I3(icmp_ln1039_17_fu_2544_p2),
        .O(\add_ln840_16_reg_6595_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_16_reg_6595[1]_i_1 
       (.I0(icmp_ln1039_17_fu_2544_p2),
        .I1(icmp_ln1039_18_fu_2563_p2),
        .I2(icmp_ln1039_16_fu_2521_p2),
        .I3(icmp_ln1039_15_fu_2498_p2),
        .O(\add_ln840_16_reg_6595_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_16_reg_6595[2]_i_1 
       (.I0(icmp_ln1039_17_fu_2544_p2),
        .I1(icmp_ln1039_18_fu_2563_p2),
        .I2(icmp_ln1039_16_fu_2521_p2),
        .I3(icmp_ln1039_15_fu_2498_p2),
        .O(\add_ln840_16_reg_6595_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_10 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_16_reg_6595[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_16_reg_6595[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_16_reg_6595[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_12 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_16_reg_6595[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_16_reg_6595[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_16_reg_6595[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_15 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_16_reg_6595[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_16_reg_6595[2]_i_16 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_16_reg_6595[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_16_reg_6595[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_16_reg_6595[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_16_reg_6595[2]_i_18 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_16_reg_6595[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_20 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_16_reg_6595[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_16_reg_6595[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_16_reg_6595[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_16_reg_6595[2]_i_22 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_16_reg_6595[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_16_reg_6595[2]_i_23 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_16_reg_6595[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_16_reg_6595[2]_i_24 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_16_reg_6595[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_16_reg_6595[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_16_reg_6595[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_27 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_16_reg_6595[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_16_reg_6595[2]_i_28 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_16_reg_6595[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_16_reg_6595[2]_i_29 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_16_reg_6595[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_16_reg_6595[2]_i_6 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_16_reg_6595[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_16_reg_6595[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_16_reg_6595[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_16_reg_6595[2]_i_8 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_16_reg_6595[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_16_reg_6595_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_17_fu_2544_p2,\add_ln840_16_reg_6595_reg[2]_i_2_n_4 ,\add_ln840_16_reg_6595_reg[2]_i_2_n_5 ,\add_ln840_16_reg_6595_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_16_reg_6595[2]_i_6_n_3 ,\add_ln840_16_reg_6595[2]_i_7_n_3 ,\add_ln840_16_reg_6595[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_16_reg_6595_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_16_reg_6595_reg[2]_2 ,\add_ln840_16_reg_6595[2]_i_10_n_3 ,\add_ln840_16_reg_6595[2]_i_11_n_3 ,\add_ln840_16_reg_6595[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_16_reg_6595_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_16_reg_6595_reg[2]_i_3_CO_UNCONNECTED [3:2],icmp_ln1039_18_fu_2563_p2,\add_ln840_16_reg_6595_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln840_16_reg_6595[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_16_reg_6595_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_16_reg_6595_reg[2]_0 ,\add_ln840_16_reg_6595[2]_i_15_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_16_reg_6595_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_16_fu_2521_p2,\add_ln840_16_reg_6595_reg[2]_i_4_n_4 ,\add_ln840_16_reg_6595_reg[2]_i_4_n_5 ,\add_ln840_16_reg_6595_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_16_reg_6595[2]_i_16_n_3 ,\add_ln840_16_reg_6595[2]_i_17_n_3 ,\add_ln840_16_reg_6595[2]_i_18_n_3 }),
        .O(\NLW_add_ln840_16_reg_6595_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_16_reg_6595_reg[2] ,\add_ln840_16_reg_6595[2]_i_20_n_3 ,\add_ln840_16_reg_6595[2]_i_21_n_3 ,\add_ln840_16_reg_6595[2]_i_22_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_16_reg_6595_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_15_fu_2498_p2,\add_ln840_16_reg_6595_reg[2]_i_5_n_4 ,\add_ln840_16_reg_6595_reg[2]_i_5_n_5 ,\add_ln840_16_reg_6595_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_16_reg_6595[2]_i_23_n_3 ,\add_ln840_16_reg_6595[2]_i_24_n_3 ,\add_ln840_16_reg_6595[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_16_reg_6595_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_16_reg_6595_reg[2]_1 ,\add_ln840_16_reg_6595[2]_i_27_n_3 ,\add_ln840_16_reg_6595[2]_i_28_n_3 ,\add_ln840_16_reg_6595[2]_i_29_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_19_reg_6600[0]_i_1 
       (.I0(icmp_ln1039_19_fu_2582_p2),
        .I1(icmp_ln1039_20_fu_2601_p2),
        .I2(icmp_ln1039_22_fu_2639_p2),
        .I3(icmp_ln1039_21_fu_2620_p2),
        .O(\add_ln840_19_reg_6600_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_19_reg_6600[1]_i_1 
       (.I0(icmp_ln1039_21_fu_2620_p2),
        .I1(icmp_ln1039_22_fu_2639_p2),
        .I2(icmp_ln1039_20_fu_2601_p2),
        .I3(icmp_ln1039_19_fu_2582_p2),
        .O(\add_ln840_19_reg_6600_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_19_reg_6600[2]_i_1 
       (.I0(icmp_ln1039_21_fu_2620_p2),
        .I1(icmp_ln1039_22_fu_2639_p2),
        .I2(icmp_ln1039_20_fu_2601_p2),
        .I3(icmp_ln1039_19_fu_2582_p2),
        .O(\add_ln840_19_reg_6600_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_19_reg_6600[2]_i_10 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_19_reg_6600[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_19_reg_6600[2]_i_11 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_19_reg_6600[2]_i_12 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_19_reg_6600[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_19_reg_6600[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_19_reg_6600[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_19_reg_6600[2]_i_14 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_19_reg_6600[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_19_reg_6600[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_19_reg_6600[2]_i_17 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_19_reg_6600[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_19_reg_6600[2]_i_18 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_19_reg_6600[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_19_reg_6600[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_19_reg_6600[2]_i_20 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_19_reg_6600[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_19_reg_6600[2]_i_21 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_19_reg_6600[2]_i_23 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_19_reg_6600[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_19_reg_6600[2]_i_24 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_19_reg_6600[2]_i_25 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_19_reg_6600[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_19_reg_6600[2]_i_26 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_19_reg_6600[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_19_reg_6600[2]_i_28 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_19_reg_6600[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_19_reg_6600[2]_i_30 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_19_reg_6600[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_19_reg_6600[2]_i_6 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_19_reg_6600[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_19_reg_6600[2]_i_7 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_19_reg_6600[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_19_reg_6600[2]_i_8 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_19_reg_6600[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_19_reg_6600_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_21_fu_2620_p2,\add_ln840_19_reg_6600_reg[2]_i_2_n_4 ,\add_ln840_19_reg_6600_reg[2]_i_2_n_5 ,\add_ln840_19_reg_6600_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_19_reg_6600[2]_i_6_n_3 ,\add_ln840_19_reg_6600[2]_i_7_n_3 ,\add_ln840_19_reg_6600[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_19_reg_6600_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_19_reg_6600_reg[2]_2 ,\add_ln840_19_reg_6600[2]_i_10_n_3 ,\add_ln840_19_reg_6600[2]_i_11_n_3 ,\add_ln840_19_reg_6600[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_19_reg_6600_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_22_fu_2639_p2,\add_ln840_19_reg_6600_reg[2]_i_3_n_4 ,\add_ln840_19_reg_6600_reg[2]_i_3_n_5 ,\add_ln840_19_reg_6600_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_19_reg_6600[2]_i_13_n_3 ,\add_ln840_19_reg_6600[2]_i_14_n_3 ,\add_ln840_19_reg_6600[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_19_reg_6600_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_19_reg_6600_reg[2]_0 ,\add_ln840_19_reg_6600[2]_i_17_n_3 ,\add_ln840_19_reg_6600[2]_i_18_n_3 ,\add_ln840_19_reg_6600[2]_i_19_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_19_reg_6600_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_19_reg_6600_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_20_fu_2601_p2,\add_ln840_19_reg_6600_reg[2]_i_4_n_5 ,\add_ln840_19_reg_6600_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_19_reg_6600[2]_i_20_n_3 ,\add_ln840_19_reg_6600[2]_i_21_n_3 }),
        .O(\NLW_add_ln840_19_reg_6600_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_19_reg_6600_reg[2] ,\add_ln840_19_reg_6600[2]_i_23_n_3 ,\add_ln840_19_reg_6600[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_19_reg_6600_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_19_fu_2582_p2,\add_ln840_19_reg_6600_reg[2]_i_5_n_4 ,\add_ln840_19_reg_6600_reg[2]_i_5_n_5 ,\add_ln840_19_reg_6600_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_19_reg_6600[2]_i_25_n_3 ,1'b0,\add_ln840_19_reg_6600[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_19_reg_6600_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_19_reg_6600_reg[2]_1 [1],\add_ln840_19_reg_6600[2]_i_28_n_3 ,\add_ln840_19_reg_6600_reg[2]_1 [0],\add_ln840_19_reg_6600[2]_i_30_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAA9A9AAA)) 
    \add_ln840_1_reg_6570[0]_i_1 
       (.I0(zext_ln218_1_fu_2234_p1),
        .I1(\add_ln840_1_reg_6570_reg[0] ),
        .I2(\add_ln840_1_reg_6570_reg[0]_0 ),
        .I3(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I4(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFEFEFCF)) 
    \add_ln840_1_reg_6570[1]_i_1 
       (.I0(zext_ln218_1_fu_2234_p1),
        .I1(\add_ln840_1_reg_6570_reg[0] ),
        .I2(\add_ln840_1_reg_6570_reg[0]_0 ),
        .I3(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I4(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDD5)) 
    \add_ln840_1_reg_6570[1]_i_2 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I3(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I4(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I5(\add_ln840_2_reg_6575_reg[0] ),
        .O(zext_ln218_1_fu_2234_p1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_23_reg_6605[0]_i_1 
       (.I0(icmp_ln1039_23_fu_2658_p2),
        .I1(icmp_ln1039_24_fu_2677_p2),
        .I2(icmp_ln1039_26_fu_2715_p2),
        .I3(icmp_ln1039_25_fu_2696_p2),
        .O(\add_ln840_23_reg_6605_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_23_reg_6605[1]_i_1 
       (.I0(icmp_ln1039_25_fu_2696_p2),
        .I1(icmp_ln1039_26_fu_2715_p2),
        .I2(icmp_ln1039_24_fu_2677_p2),
        .I3(icmp_ln1039_23_fu_2658_p2),
        .O(\add_ln840_23_reg_6605_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_23_reg_6605[2]_i_1 
       (.I0(icmp_ln1039_25_fu_2696_p2),
        .I1(icmp_ln1039_26_fu_2715_p2),
        .I2(icmp_ln1039_24_fu_2677_p2),
        .I3(icmp_ln1039_23_fu_2658_p2),
        .O(\add_ln840_23_reg_6605_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_23_reg_6605[2]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_23_reg_6605[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_11 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_23_reg_6605[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_23_reg_6605[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_23_reg_6605[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_23_reg_6605[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_15 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_23_reg_6605[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_23_reg_6605[2]_i_16 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_23_reg_6605[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_17 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_23_reg_6605[2]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_18 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_23_reg_6605[2]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_19 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_23_reg_6605[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_20 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_23_reg_6605[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_22 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_23_reg_6605[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_23 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_23_reg_6605[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_24 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_23_reg_6605[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_25 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_23_reg_6605[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_26 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_23_reg_6605[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_23_reg_6605[2]_i_27 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_23_reg_6605[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_29 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_23_reg_6605[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_30 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_23_reg_6605[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_23_reg_6605[2]_i_31 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_23_reg_6605[2]_i_31_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_23_reg_6605[2]_i_6 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_23_reg_6605[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_23_reg_6605[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_23_reg_6605[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_23_reg_6605[2]_i_9 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_23_reg_6605[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_23_reg_6605_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_23_reg_6605_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_25_fu_2696_p2,\add_ln840_23_reg_6605_reg[2]_i_2_n_5 ,\add_ln840_23_reg_6605_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_23_reg_6605[2]_i_6_n_3 ,\add_ln840_23_reg_6605[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_23_reg_6605_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_23_reg_6605_reg[2]_2 ,\add_ln840_23_reg_6605[2]_i_9_n_3 ,\add_ln840_23_reg_6605[2]_i_10_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_23_reg_6605_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_26_fu_2715_p2,\add_ln840_23_reg_6605_reg[2]_i_3_n_4 ,\add_ln840_23_reg_6605_reg[2]_i_3_n_5 ,\add_ln840_23_reg_6605_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_23_reg_6605[2]_i_11_n_3 ,\add_ln840_23_reg_6605[2]_i_12_n_3 ,\add_ln840_23_reg_6605[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_23_reg_6605_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_23_reg_6605_reg[2]_0 ,\add_ln840_23_reg_6605[2]_i_15_n_3 ,\add_ln840_23_reg_6605[2]_i_16_n_3 ,\add_ln840_23_reg_6605[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_23_reg_6605_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_24_fu_2677_p2,\add_ln840_23_reg_6605_reg[2]_i_4_n_4 ,\add_ln840_23_reg_6605_reg[2]_i_4_n_5 ,\add_ln840_23_reg_6605_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_23_reg_6605[2]_i_18_n_3 ,\add_ln840_23_reg_6605[2]_i_19_n_3 ,\add_ln840_23_reg_6605[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_23_reg_6605_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_23_reg_6605_reg[2] ,\add_ln840_23_reg_6605[2]_i_22_n_3 ,\add_ln840_23_reg_6605[2]_i_23_n_3 ,\add_ln840_23_reg_6605[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_23_reg_6605_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_23_fu_2658_p2,\add_ln840_23_reg_6605_reg[2]_i_5_n_4 ,\add_ln840_23_reg_6605_reg[2]_i_5_n_5 ,\add_ln840_23_reg_6605_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_23_reg_6605[2]_i_25_n_3 ,\add_ln840_23_reg_6605[2]_i_26_n_3 ,\add_ln840_23_reg_6605[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_23_reg_6605_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_23_reg_6605_reg[2]_1 ,\add_ln840_23_reg_6605[2]_i_29_n_3 ,\add_ln840_23_reg_6605[2]_i_30_n_3 ,\add_ln840_23_reg_6605[2]_i_31_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_26_reg_6610[0]_i_1 
       (.I0(icmp_ln1039_27_fu_2738_p2),
        .I1(icmp_ln1039_28_fu_2761_p2),
        .I2(icmp_ln1039_30_fu_2807_p2),
        .I3(icmp_ln1039_29_fu_2784_p2),
        .O(\add_ln840_26_reg_6610_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_26_reg_6610[1]_i_1 
       (.I0(icmp_ln1039_29_fu_2784_p2),
        .I1(icmp_ln1039_30_fu_2807_p2),
        .I2(icmp_ln1039_28_fu_2761_p2),
        .I3(icmp_ln1039_27_fu_2738_p2),
        .O(\add_ln840_26_reg_6610_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_26_reg_6610[2]_i_1 
       (.I0(icmp_ln1039_29_fu_2784_p2),
        .I1(icmp_ln1039_30_fu_2807_p2),
        .I2(icmp_ln1039_28_fu_2761_p2),
        .I3(icmp_ln1039_27_fu_2738_p2),
        .O(\add_ln840_26_reg_6610_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_26_reg_6610[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_26_reg_6610[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_26_reg_6610[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_26_reg_6610[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_26_reg_6610[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_26_reg_6610[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_26_reg_6610[2]_i_14 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_26_reg_6610[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_26_reg_6610[2]_i_16 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_26_reg_6610[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_26_reg_6610[2]_i_17 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_26_reg_6610[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_26_reg_6610[2]_i_18 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_26_reg_6610[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_26_reg_6610[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_26_reg_6610[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_26_reg_6610[2]_i_20 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_26_reg_6610[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_26_reg_6610[2]_i_22 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_26_reg_6610[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_26_reg_6610[2]_i_24 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_26_reg_6610[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_26_reg_6610[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_26_reg_6610[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_26_reg_6610[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_26_reg_6610[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_26_reg_6610[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_26_reg_6610[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_26_reg_6610[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_26_reg_6610[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_26_reg_6610[2]_i_9 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_26_reg_6610[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_26_reg_6610_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_29_fu_2784_p2,\add_ln840_26_reg_6610_reg[2]_i_2_n_4 ,\add_ln840_26_reg_6610_reg[2]_i_2_n_5 ,\add_ln840_26_reg_6610_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_26_reg_6610[2]_i_6_n_3 ,1'b0,\add_ln840_26_reg_6610[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_26_reg_6610_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_26_reg_6610_reg[2]_2 [1],\add_ln840_26_reg_6610[2]_i_9_n_3 ,\add_ln840_26_reg_6610_reg[2]_2 [0],\add_ln840_26_reg_6610[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_26_reg_6610_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_30_fu_2807_p2,\add_ln840_26_reg_6610_reg[2]_i_3_n_4 ,\add_ln840_26_reg_6610_reg[2]_i_3_n_5 ,\add_ln840_26_reg_6610_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_26_reg_6610[2]_i_12_n_3 ,\add_ln840_26_reg_6610[2]_i_13_n_3 ,\add_ln840_26_reg_6610[2]_i_14_n_3 }),
        .O(\NLW_add_ln840_26_reg_6610_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_26_reg_6610_reg[2]_0 ,\add_ln840_26_reg_6610[2]_i_16_n_3 ,\add_ln840_26_reg_6610[2]_i_17_n_3 ,\add_ln840_26_reg_6610[2]_i_18_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_26_reg_6610_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_28_fu_2761_p2,\add_ln840_26_reg_6610_reg[2]_i_4_n_4 ,\add_ln840_26_reg_6610_reg[2]_i_4_n_5 ,\add_ln840_26_reg_6610_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_26_reg_6610[2]_i_19_n_3 ,1'b0,\add_ln840_26_reg_6610[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_26_reg_6610_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_26_reg_6610_reg[2] [1],\add_ln840_26_reg_6610[2]_i_22_n_3 ,\add_ln840_26_reg_6610_reg[2] [0],\add_ln840_26_reg_6610[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_26_reg_6610_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_26_reg_6610_reg[2]_i_5_CO_UNCONNECTED [3:2],icmp_ln1039_27_fu_2738_p2,\add_ln840_26_reg_6610_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln840_26_reg_6610[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_26_reg_6610_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_26_reg_6610_reg[2]_1 ,\add_ln840_26_reg_6610[2]_i_27_n_3 }));
  LUT6 #(
    .INIT(64'hFFF8FFFF00070000)) 
    \add_ln840_2_reg_6575[0]_i_1 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I2(\add_ln840_2_reg_6575_reg[0] ),
        .I3(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I4(p_ZL7threshs_130_q0),
        .I5(icmp_ln1039_4_fu_2265_p2),
        .O(\inElem_reg_5804_pp0_iter1_reg_reg[1] [0]));
  LUT6 #(
    .INIT(64'h00000000FFF8FFFF)) 
    \add_ln840_2_reg_6575[1]_i_1 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I2(\add_ln840_2_reg_6575_reg[0] ),
        .I3(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I4(p_ZL7threshs_130_q0),
        .I5(icmp_ln1039_4_fu_2265_p2),
        .O(\inElem_reg_5804_pp0_iter1_reg_reg[1] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_2_reg_6575[1]_i_4 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_2_reg_6575[1]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_2_reg_6575[1]_i_7 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_2_reg_6575[1]_i_7_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_2_reg_6575_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_2_reg_6575_reg[1]_i_3_CO_UNCONNECTED [3],icmp_ln1039_4_fu_2265_p2,\add_ln840_2_reg_6575_reg[1]_i_3_n_5 ,\add_ln840_2_reg_6575_reg[1]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln840_2_reg_6575[1]_i_4_n_3 }),
        .O(\NLW_add_ln840_2_reg_6575_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_2_reg_6575_reg[1] ,\add_ln840_2_reg_6575[1]_i_7_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_32_reg_6615[0]_i_1 
       (.I0(icmp_ln1039_31_fu_2830_p2),
        .I1(icmp_ln1039_32_fu_2853_p2),
        .I2(icmp_ln1039_34_fu_2899_p2),
        .I3(icmp_ln1039_33_fu_2876_p2),
        .O(\add_ln840_32_reg_6615_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_32_reg_6615[1]_i_1 
       (.I0(icmp_ln1039_33_fu_2876_p2),
        .I1(icmp_ln1039_34_fu_2899_p2),
        .I2(icmp_ln1039_32_fu_2853_p2),
        .I3(icmp_ln1039_31_fu_2830_p2),
        .O(\add_ln840_32_reg_6615_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_32_reg_6615[2]_i_1 
       (.I0(icmp_ln1039_33_fu_2876_p2),
        .I1(icmp_ln1039_34_fu_2899_p2),
        .I2(icmp_ln1039_32_fu_2853_p2),
        .I3(icmp_ln1039_31_fu_2830_p2),
        .O(\add_ln840_32_reg_6615_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_32_reg_6615[2]_i_10 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_32_reg_6615[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_32_reg_6615[2]_i_11 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_32_reg_6615[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_32_reg_6615[2]_i_12 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_32_reg_6615[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_32_reg_6615[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_32_reg_6615[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_32_reg_6615[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_32_reg_6615[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_32_reg_6615[2]_i_16 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_32_reg_6615[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_32_reg_6615[2]_i_17 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_32_reg_6615[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_32_reg_6615[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_32_reg_6615[2]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_32_reg_6615[2]_i_19 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_32_reg_6615[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_32_reg_6615[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_32_reg_6615[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_32_reg_6615[2]_i_22 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_32_reg_6615[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_32_reg_6615[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_32_reg_6615[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_32_reg_6615[2]_i_24 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_32_reg_6615[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_32_reg_6615[2]_i_25 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_32_reg_6615[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_32_reg_6615[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_32_reg_6615[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_32_reg_6615[2]_i_28 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_32_reg_6615[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_32_reg_6615[2]_i_29 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_32_reg_6615[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_32_reg_6615[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_32_reg_6615[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_32_reg_6615[2]_i_7 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_32_reg_6615[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_32_reg_6615[2]_i_8 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_32_reg_6615[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_32_reg_6615_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_33_fu_2876_p2,\add_ln840_32_reg_6615_reg[2]_i_2_n_4 ,\add_ln840_32_reg_6615_reg[2]_i_2_n_5 ,\add_ln840_32_reg_6615_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_32_reg_6615[2]_i_6_n_3 ,\add_ln840_32_reg_6615[2]_i_7_n_3 ,\add_ln840_32_reg_6615[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_32_reg_6615_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_32_reg_6615_reg[2]_2 ,\add_ln840_32_reg_6615[2]_i_10_n_3 ,\add_ln840_32_reg_6615[2]_i_11_n_3 ,\add_ln840_32_reg_6615[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_32_reg_6615_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_32_reg_6615_reg[2]_i_3_CO_UNCONNECTED [3],icmp_ln1039_34_fu_2899_p2,\add_ln840_32_reg_6615_reg[2]_i_3_n_5 ,\add_ln840_32_reg_6615_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_32_reg_6615[2]_i_13_n_3 ,\add_ln840_32_reg_6615[2]_i_14_n_3 }),
        .O(\NLW_add_ln840_32_reg_6615_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_32_reg_6615_reg[2]_0 ,\add_ln840_32_reg_6615[2]_i_16_n_3 ,\add_ln840_32_reg_6615[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_32_reg_6615_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_32_reg_6615_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_32_fu_2853_p2,\add_ln840_32_reg_6615_reg[2]_i_4_n_5 ,\add_ln840_32_reg_6615_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_32_reg_6615[2]_i_18_n_3 ,\add_ln840_32_reg_6615[2]_i_19_n_3 }),
        .O(\NLW_add_ln840_32_reg_6615_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_32_reg_6615_reg[2] ,\add_ln840_32_reg_6615[2]_i_21_n_3 ,\add_ln840_32_reg_6615[2]_i_22_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_32_reg_6615_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_31_fu_2830_p2,\add_ln840_32_reg_6615_reg[2]_i_5_n_4 ,\add_ln840_32_reg_6615_reg[2]_i_5_n_5 ,\add_ln840_32_reg_6615_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_32_reg_6615[2]_i_23_n_3 ,\add_ln840_32_reg_6615[2]_i_24_n_3 ,\add_ln840_32_reg_6615[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_32_reg_6615_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_32_reg_6615_reg[2]_1 ,\add_ln840_32_reg_6615[2]_i_27_n_3 ,\add_ln840_32_reg_6615[2]_i_28_n_3 ,\add_ln840_32_reg_6615[2]_i_29_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_35_reg_6620[0]_i_1 
       (.I0(icmp_ln1039_35_fu_2922_p2),
        .I1(\add_ln840_35_reg_6620_reg[0] ),
        .I2(icmp_ln1039_38_fu_2983_p2),
        .I3(icmp_ln1039_37_fu_2964_p2),
        .O(\add_ln840_35_reg_6620_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_35_reg_6620[1]_i_1 
       (.I0(icmp_ln1039_37_fu_2964_p2),
        .I1(icmp_ln1039_38_fu_2983_p2),
        .I2(\add_ln840_35_reg_6620_reg[0] ),
        .I3(icmp_ln1039_35_fu_2922_p2),
        .O(\add_ln840_35_reg_6620_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_35_reg_6620[2]_i_1 
       (.I0(icmp_ln1039_37_fu_2964_p2),
        .I1(icmp_ln1039_38_fu_2983_p2),
        .I2(\add_ln840_35_reg_6620_reg[0] ),
        .I3(icmp_ln1039_35_fu_2922_p2),
        .O(\add_ln840_35_reg_6620_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_35_reg_6620[2]_i_11 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_35_reg_6620[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_35_reg_6620[2]_i_12 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_35_reg_6620[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_35_reg_6620[2]_i_13 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_35_reg_6620[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_35_reg_6620[2]_i_14 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_35_reg_6620[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_35_reg_6620[2]_i_17 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_35_reg_6620[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_35_reg_6620[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_35_reg_6620[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_35_reg_6620[2]_i_26 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_35_reg_6620[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_35_reg_6620[2]_i_27 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_35_reg_6620[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_35_reg_6620[2]_i_29 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_35_reg_6620[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_35_reg_6620[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_35_reg_6620[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_35_reg_6620[2]_i_31 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_35_reg_6620[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_35_reg_6620[2]_i_6 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_35_reg_6620[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_35_reg_6620[2]_i_7 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_35_reg_6620[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_35_reg_6620[2]_i_8 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_35_reg_6620[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_35_reg_6620_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_37_fu_2964_p2,\add_ln840_35_reg_6620_reg[2]_i_2_n_4 ,\add_ln840_35_reg_6620_reg[2]_i_2_n_5 ,\add_ln840_35_reg_6620_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_35_reg_6620[2]_i_6_n_3 ,1'b0,1'b0,\add_ln840_35_reg_6620[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_35_reg_6620_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_35_reg_6620[2]_i_8_n_3 ,\add_ln840_35_reg_6620_reg[2]_1 ,\add_ln840_35_reg_6620[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_35_reg_6620_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_38_fu_2983_p2,\add_ln840_35_reg_6620_reg[2]_i_3_n_4 ,\add_ln840_35_reg_6620_reg[2]_i_3_n_5 ,\add_ln840_35_reg_6620_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_35_reg_6620[2]_i_12_n_3 ,1'b0,1'b0,\add_ln840_35_reg_6620[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_35_reg_6620_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_35_reg_6620[2]_i_14_n_3 ,\add_ln840_35_reg_6620_reg[2] ,\add_ln840_35_reg_6620[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_35_reg_6620_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_35_fu_2922_p2,\add_ln840_35_reg_6620_reg[2]_i_5_n_4 ,\add_ln840_35_reg_6620_reg[2]_i_5_n_5 ,\add_ln840_35_reg_6620_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_35_reg_6620[2]_i_25_n_3 ,\add_ln840_35_reg_6620[2]_i_26_n_3 ,\add_ln840_35_reg_6620[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_35_reg_6620_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_35_reg_6620_reg[2]_0 ,\add_ln840_35_reg_6620[2]_i_29_n_3 ,\add_ln840_35_reg_6620[2]_i_30_n_3 ,\add_ln840_35_reg_6620[2]_i_31_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_39_reg_6625[0]_i_1 
       (.I0(icmp_ln1039_39_fu_3002_p2),
        .I1(icmp_ln1039_40_fu_3021_p2),
        .I2(icmp_ln1039_42_fu_3059_p2),
        .I3(icmp_ln1039_41_fu_3040_p2),
        .O(\add_ln840_39_reg_6625_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_39_reg_6625[1]_i_1 
       (.I0(icmp_ln1039_41_fu_3040_p2),
        .I1(icmp_ln1039_42_fu_3059_p2),
        .I2(icmp_ln1039_40_fu_3021_p2),
        .I3(icmp_ln1039_39_fu_3002_p2),
        .O(\add_ln840_39_reg_6625_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_39_reg_6625[2]_i_1 
       (.I0(icmp_ln1039_41_fu_3040_p2),
        .I1(icmp_ln1039_42_fu_3059_p2),
        .I2(icmp_ln1039_40_fu_3021_p2),
        .I3(icmp_ln1039_39_fu_3002_p2),
        .O(\add_ln840_39_reg_6625_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_10 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_11 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_39_reg_6625[2]_i_12 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_39_reg_6625[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_13 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_39_reg_6625[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_14 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_16 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_39_reg_6625[2]_i_17 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_39_reg_6625[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_18 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_19 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_39_reg_6625[2]_i_20 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_39_reg_6625[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_21 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_39_reg_6625[2]_i_23 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_24 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_39_reg_6625[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_25 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_26 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_27 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_39_reg_6625[2]_i_29 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_39_reg_6625[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_39_reg_6625[2]_i_6 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_39_reg_6625[2]_i_7 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_39_reg_6625[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_39_reg_6625[2]_i_8 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_39_reg_6625[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_39_reg_6625_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_39_reg_6625_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_41_fu_3040_p2,\add_ln840_39_reg_6625_reg[2]_i_2_n_5 ,\add_ln840_39_reg_6625_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_39_reg_6625[2]_i_6_n_3 ,1'b0,\add_ln840_39_reg_6625[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_39_reg_6625_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_39_reg_6625[2]_i_8_n_3 ,\add_ln840_39_reg_6625_reg[2]_2 ,\add_ln840_39_reg_6625[2]_i_10_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_39_reg_6625_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_42_fu_3059_p2,\add_ln840_39_reg_6625_reg[2]_i_3_n_4 ,\add_ln840_39_reg_6625_reg[2]_i_3_n_5 ,\add_ln840_39_reg_6625_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_39_reg_6625[2]_i_11_n_3 ,1'b0,\add_ln840_39_reg_6625[2]_i_12_n_3 ,\add_ln840_39_reg_6625[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_39_reg_6625_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_39_reg_6625[2]_i_14_n_3 ,\add_ln840_39_reg_6625_reg[2]_0 ,\add_ln840_39_reg_6625[2]_i_16_n_3 ,\add_ln840_39_reg_6625[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_39_reg_6625_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_40_fu_3021_p2,\add_ln840_39_reg_6625_reg[2]_i_4_n_4 ,\add_ln840_39_reg_6625_reg[2]_i_4_n_5 ,\add_ln840_39_reg_6625_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_39_reg_6625[2]_i_18_n_3 ,1'b0,\add_ln840_39_reg_6625[2]_i_19_n_3 ,\add_ln840_39_reg_6625[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_39_reg_6625_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_39_reg_6625[2]_i_21_n_3 ,\add_ln840_39_reg_6625_reg[2] ,\add_ln840_39_reg_6625[2]_i_23_n_3 ,\add_ln840_39_reg_6625[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_39_reg_6625_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_39_reg_6625_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_39_fu_3002_p2,\add_ln840_39_reg_6625_reg[2]_i_5_n_5 ,\add_ln840_39_reg_6625_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_39_reg_6625[2]_i_25_n_3 ,1'b0,\add_ln840_39_reg_6625[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_39_reg_6625_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_39_reg_6625[2]_i_27_n_3 ,\add_ln840_39_reg_6625_reg[2]_1 ,\add_ln840_39_reg_6625[2]_i_29_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln840_3_reg_6580[0]_i_1 
       (.I0(icmp_ln1039_5_fu_2284_p2),
        .I1(icmp_ln1039_6_fu_2307_p2),
        .O(\add_ln840_3_reg_6580_reg[1]_i_3_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \add_ln840_3_reg_6580[1]_i_1 
       (.I0(icmp_ln1039_5_fu_2284_p2),
        .I1(icmp_ln1039_6_fu_2307_p2),
        .O(\add_ln840_3_reg_6580_reg[1]_i_3_0 [1]));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_3_reg_6580[1]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_3_reg_6580[1]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_3_reg_6580[1]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_3_reg_6580[1]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_3_reg_6580[1]_i_4 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_3_reg_6580[1]_i_4_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_3_reg_6580[1]_i_5 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_3_reg_6580[1]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_3_reg_6580[1]_i_8 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_3_reg_6580[1]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_3_reg_6580[1]_i_9 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_3_reg_6580[1]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_3_reg_6580_reg[1]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_5_fu_2284_p2,\add_ln840_3_reg_6580_reg[1]_i_2_n_4 ,\add_ln840_3_reg_6580_reg[1]_i_2_n_5 ,\add_ln840_3_reg_6580_reg[1]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_3_reg_6580[1]_i_4_n_3 ,\add_ln840_3_reg_6580[1]_i_5_n_3 }),
        .O(\NLW_add_ln840_3_reg_6580_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_3_reg_6580_reg[0]_0 ,\add_ln840_3_reg_6580[1]_i_8_n_3 ,\add_ln840_3_reg_6580[1]_i_9_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_3_reg_6580_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_3_reg_6580_reg[1]_i_3_CO_UNCONNECTED [3],icmp_ln1039_6_fu_2307_p2,\add_ln840_3_reg_6580_reg[1]_i_3_n_5 ,\add_ln840_3_reg_6580_reg[1]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln840_3_reg_6580[1]_i_10_n_3 }),
        .O(\NLW_add_ln840_3_reg_6580_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_3_reg_6580_reg[0] ,\add_ln840_3_reg_6580[1]_i_13_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_42_reg_6630[0]_i_1 
       (.I0(icmp_ln1039_43_fu_3078_p2),
        .I1(icmp_ln1039_44_fu_3097_p2),
        .I2(icmp_ln1039_46_fu_3135_p2),
        .I3(icmp_ln1039_45_fu_3116_p2),
        .O(\add_ln840_42_reg_6630_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_42_reg_6630[1]_i_1 
       (.I0(icmp_ln1039_45_fu_3116_p2),
        .I1(icmp_ln1039_46_fu_3135_p2),
        .I2(icmp_ln1039_44_fu_3097_p2),
        .I3(icmp_ln1039_43_fu_3078_p2),
        .O(\add_ln840_42_reg_6630_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_42_reg_6630[2]_i_1 
       (.I0(icmp_ln1039_45_fu_3116_p2),
        .I1(icmp_ln1039_46_fu_3135_p2),
        .I2(icmp_ln1039_44_fu_3097_p2),
        .I3(icmp_ln1039_43_fu_3078_p2),
        .O(\add_ln840_42_reg_6630_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_42_reg_6630[2]_i_11 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_42_reg_6630[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_12 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_42_reg_6630[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_13 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_14 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_42_reg_6630[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_15 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_42_reg_6630[2]_i_16 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_42_reg_6630[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_17 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_42_reg_6630[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_42_reg_6630[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_19 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_42_reg_6630[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_20 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_42_reg_6630[2]_i_22 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_42_reg_6630[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_42_reg_6630[2]_i_23 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_42_reg_6630[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_24 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_42_reg_6630[2]_i_25 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_42_reg_6630[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_42_reg_6630[2]_i_26 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_42_reg_6630[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_27 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_29 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_42_reg_6630[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_42_reg_6630[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_42_reg_6630[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_42_reg_6630[2]_i_6 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_42_reg_6630[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep_n_3 ),
        .O(\add_ln840_42_reg_6630[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_42_reg_6630[2]_i_8 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_42_reg_6630[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_42_reg_6630[2]_i_9 
       (.I0(\q0_reg[0]_rep_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_42_reg_6630[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_42_reg_6630_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_45_fu_3116_p2,\add_ln840_42_reg_6630_reg[2]_i_2_n_4 ,\add_ln840_42_reg_6630_reg[2]_i_2_n_5 ,\add_ln840_42_reg_6630_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_42_reg_6630[2]_i_6_n_3 ,1'b0,\add_ln840_42_reg_6630[2]_i_7_n_3 ,\add_ln840_42_reg_6630[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_42_reg_6630_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_42_reg_6630[2]_i_9_n_3 ,\add_ln840_42_reg_6630_reg[2]_1 ,\add_ln840_42_reg_6630[2]_i_11_n_3 ,\add_ln840_42_reg_6630[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_42_reg_6630_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_42_reg_6630_reg[2]_i_3_CO_UNCONNECTED [3:2],icmp_ln1039_46_fu_3135_p2,\add_ln840_42_reg_6630_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_42_reg_6630[2]_i_13_n_3 ,\add_ln840_42_reg_6630[2]_i_14_n_3 }),
        .O(\NLW_add_ln840_42_reg_6630_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_42_reg_6630[2]_i_15_n_3 ,\add_ln840_42_reg_6630[2]_i_16_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_42_reg_6630_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_44_fu_3097_p2,\add_ln840_42_reg_6630_reg[2]_i_4_n_4 ,\add_ln840_42_reg_6630_reg[2]_i_4_n_5 ,\add_ln840_42_reg_6630_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_42_reg_6630[2]_i_17_n_3 ,1'b0,\add_ln840_42_reg_6630[2]_i_18_n_3 ,\add_ln840_42_reg_6630[2]_i_19_n_3 }),
        .O(\NLW_add_ln840_42_reg_6630_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_42_reg_6630[2]_i_20_n_3 ,\add_ln840_42_reg_6630_reg[2] ,\add_ln840_42_reg_6630[2]_i_22_n_3 ,\add_ln840_42_reg_6630[2]_i_23_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_42_reg_6630_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_43_fu_3078_p2,\add_ln840_42_reg_6630_reg[2]_i_5_n_4 ,\add_ln840_42_reg_6630_reg[2]_i_5_n_5 ,\add_ln840_42_reg_6630_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_42_reg_6630[2]_i_24_n_3 ,1'b0,\add_ln840_42_reg_6630[2]_i_25_n_3 ,\add_ln840_42_reg_6630[2]_i_26_n_3 }),
        .O(\NLW_add_ln840_42_reg_6630_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_42_reg_6630[2]_i_27_n_3 ,\add_ln840_42_reg_6630_reg[2]_0 ,\add_ln840_42_reg_6630[2]_i_29_n_3 ,\add_ln840_42_reg_6630[2]_i_30_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_47_reg_6635[0]_i_1 
       (.I0(icmp_ln1039_47_fu_3154_p2),
        .I1(icmp_ln1039_48_fu_3173_p2),
        .I2(icmp_ln1039_50_fu_3211_p2),
        .I3(icmp_ln1039_49_fu_3192_p2),
        .O(\add_ln840_47_reg_6635_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_47_reg_6635[1]_i_1 
       (.I0(icmp_ln1039_49_fu_3192_p2),
        .I1(icmp_ln1039_50_fu_3211_p2),
        .I2(icmp_ln1039_48_fu_3173_p2),
        .I3(icmp_ln1039_47_fu_3154_p2),
        .O(\add_ln840_47_reg_6635_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_47_reg_6635[2]_i_1 
       (.I0(icmp_ln1039_49_fu_3192_p2),
        .I1(icmp_ln1039_50_fu_3211_p2),
        .I2(icmp_ln1039_48_fu_3173_p2),
        .I3(icmp_ln1039_47_fu_3154_p2),
        .O(\add_ln840_47_reg_6635_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_47_reg_6635[2]_i_10 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_11 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_12 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_47_reg_6635[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_13 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_47_reg_6635[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_14 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_15 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_16 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_47_reg_6635[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_47_reg_6635[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_47_reg_6635[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_47_reg_6635[2]_i_18 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_19 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_20 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_47_reg_6635[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_47_reg_6635[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_47_reg_6635[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_22 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_23 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_47_reg_6635[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_47_reg_6635[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_47_reg_6635[2]_i_25 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_26 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_47_reg_6635[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_47_reg_6635[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_29 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_30 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_47_reg_6635[2]_i_31 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_47_reg_6635[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_47_reg_6635[2]_i_32 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_47_reg_6635[2]_i_33 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_47_reg_6635[2]_i_35 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_47_reg_6635[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_6 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_47_reg_6635[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_7 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_47_reg_6635[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_8 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_47_reg_6635[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_47_reg_6635[2]_i_9 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_47_reg_6635[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_47_reg_6635_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_49_fu_3192_p2,\add_ln840_47_reg_6635_reg[2]_i_2_n_4 ,\add_ln840_47_reg_6635_reg[2]_i_2_n_5 ,\add_ln840_47_reg_6635_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_47_reg_6635[2]_i_6_n_3 ,\add_ln840_47_reg_6635[2]_i_7_n_3 ,\add_ln840_47_reg_6635[2]_i_8_n_3 ,\add_ln840_47_reg_6635[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_47_reg_6635_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_47_reg_6635[2]_i_10_n_3 ,\add_ln840_47_reg_6635[2]_i_11_n_3 ,\add_ln840_47_reg_6635[2]_i_12_n_3 ,\add_ln840_47_reg_6635[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_47_reg_6635_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_50_fu_3211_p2,\add_ln840_47_reg_6635_reg[2]_i_3_n_4 ,\add_ln840_47_reg_6635_reg[2]_i_3_n_5 ,\add_ln840_47_reg_6635_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_47_reg_6635[2]_i_14_n_3 ,\add_ln840_47_reg_6635[2]_i_15_n_3 ,\add_ln840_47_reg_6635[2]_i_16_n_3 ,\add_ln840_47_reg_6635[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_47_reg_6635_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_47_reg_6635[2]_i_18_n_3 ,\add_ln840_47_reg_6635[2]_i_19_n_3 ,\add_ln840_47_reg_6635[2]_i_20_n_3 ,\add_ln840_47_reg_6635[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_47_reg_6635_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_48_fu_3173_p2,\add_ln840_47_reg_6635_reg[2]_i_4_n_4 ,\add_ln840_47_reg_6635_reg[2]_i_4_n_5 ,\add_ln840_47_reg_6635_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_47_reg_6635[2]_i_22_n_3 ,\add_ln840_47_reg_6635[2]_i_23_n_3 ,1'b0,\add_ln840_47_reg_6635[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_47_reg_6635_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_47_reg_6635[2]_i_25_n_3 ,\add_ln840_47_reg_6635[2]_i_26_n_3 ,\add_ln840_47_reg_6635_reg[2] ,\add_ln840_47_reg_6635[2]_i_28_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_47_reg_6635_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_47_fu_3154_p2,\add_ln840_47_reg_6635_reg[2]_i_5_n_4 ,\add_ln840_47_reg_6635_reg[2]_i_5_n_5 ,\add_ln840_47_reg_6635_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_47_reg_6635[2]_i_29_n_3 ,\add_ln840_47_reg_6635[2]_i_30_n_3 ,1'b0,\add_ln840_47_reg_6635[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_47_reg_6635_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_47_reg_6635[2]_i_32_n_3 ,\add_ln840_47_reg_6635[2]_i_33_n_3 ,\add_ln840_47_reg_6635_reg[2]_0 ,\add_ln840_47_reg_6635[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_50_reg_6640[0]_i_1 
       (.I0(icmp_ln1039_51_fu_3230_p2),
        .I1(icmp_ln1039_52_fu_3249_p2),
        .I2(icmp_ln1039_54_fu_3287_p2),
        .I3(icmp_ln1039_53_fu_3268_p2),
        .O(\add_ln840_50_reg_6640_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_50_reg_6640[1]_i_1 
       (.I0(icmp_ln1039_53_fu_3268_p2),
        .I1(icmp_ln1039_54_fu_3287_p2),
        .I2(icmp_ln1039_52_fu_3249_p2),
        .I3(icmp_ln1039_51_fu_3230_p2),
        .O(\add_ln840_50_reg_6640_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_50_reg_6640[2]_i_1 
       (.I0(icmp_ln1039_53_fu_3268_p2),
        .I1(icmp_ln1039_54_fu_3287_p2),
        .I2(icmp_ln1039_52_fu_3249_p2),
        .I3(icmp_ln1039_51_fu_3230_p2),
        .O(\add_ln840_50_reg_6640_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_50_reg_6640[2]_i_10 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_50_reg_6640[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_50_reg_6640[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_12 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_13 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_50_reg_6640[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_50_reg_6640[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_50_reg_6640[2]_i_15 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_50_reg_6640[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_16 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_50_reg_6640[2]_i_17 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_50_reg_6640[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_50_reg_6640[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_19 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_50_reg_6640[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_20 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_21 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_50_reg_6640[2]_i_22 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_50_reg_6640[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_50_reg_6640[2]_i_23 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_50_reg_6640[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_24 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_50_reg_6640[2]_i_25 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_26 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_50_reg_6640[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_27 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_50_reg_6640[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_28 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_29 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_50_reg_6640[2]_i_30 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_50_reg_6640[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_31 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_50_reg_6640[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_32 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_50_reg_6640[2]_i_33 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_34 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_50_reg_6640[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_50_reg_6640[2]_i_35 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_50_reg_6640[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_6 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_50_reg_6640[2]_i_7 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_50_reg_6640[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_50_reg_6640[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_50_reg_6640[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_50_reg_6640[2]_i_9 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_50_reg_6640[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_50_reg_6640_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_50_reg_6640_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_53_fu_3268_p2,\add_ln840_50_reg_6640_reg[2]_i_2_n_5 ,\add_ln840_50_reg_6640_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_50_reg_6640[2]_i_6_n_3 ,\add_ln840_50_reg_6640[2]_i_7_n_3 ,\add_ln840_50_reg_6640[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_50_reg_6640_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_50_reg_6640[2]_i_9_n_3 ,\add_ln840_50_reg_6640[2]_i_10_n_3 ,\add_ln840_50_reg_6640[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_50_reg_6640_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_54_fu_3287_p2,\add_ln840_50_reg_6640_reg[2]_i_3_n_4 ,\add_ln840_50_reg_6640_reg[2]_i_3_n_5 ,\add_ln840_50_reg_6640_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_50_reg_6640[2]_i_12_n_3 ,\add_ln840_50_reg_6640[2]_i_13_n_3 ,\add_ln840_50_reg_6640[2]_i_14_n_3 ,\add_ln840_50_reg_6640[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_50_reg_6640_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_50_reg_6640[2]_i_16_n_3 ,\add_ln840_50_reg_6640[2]_i_17_n_3 ,\add_ln840_50_reg_6640[2]_i_18_n_3 ,\add_ln840_50_reg_6640[2]_i_19_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_50_reg_6640_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_52_fu_3249_p2,\add_ln840_50_reg_6640_reg[2]_i_4_n_4 ,\add_ln840_50_reg_6640_reg[2]_i_4_n_5 ,\add_ln840_50_reg_6640_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_50_reg_6640[2]_i_20_n_3 ,\add_ln840_50_reg_6640[2]_i_21_n_3 ,\add_ln840_50_reg_6640[2]_i_22_n_3 ,\add_ln840_50_reg_6640[2]_i_23_n_3 }),
        .O(\NLW_add_ln840_50_reg_6640_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_50_reg_6640[2]_i_24_n_3 ,\add_ln840_50_reg_6640[2]_i_25_n_3 ,\add_ln840_50_reg_6640[2]_i_26_n_3 ,\add_ln840_50_reg_6640[2]_i_27_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_50_reg_6640_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_51_fu_3230_p2,\add_ln840_50_reg_6640_reg[2]_i_5_n_4 ,\add_ln840_50_reg_6640_reg[2]_i_5_n_5 ,\add_ln840_50_reg_6640_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_50_reg_6640[2]_i_28_n_3 ,\add_ln840_50_reg_6640[2]_i_29_n_3 ,\add_ln840_50_reg_6640[2]_i_30_n_3 ,\add_ln840_50_reg_6640[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_50_reg_6640_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_50_reg_6640[2]_i_32_n_3 ,\add_ln840_50_reg_6640[2]_i_33_n_3 ,\add_ln840_50_reg_6640[2]_i_34_n_3 ,\add_ln840_50_reg_6640[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_54_reg_6645[0]_i_1 
       (.I0(icmp_ln1039_55_fu_3306_p2),
        .I1(icmp_ln1039_56_fu_3329_p2),
        .I2(icmp_ln1039_58_fu_3375_p2),
        .I3(icmp_ln1039_57_fu_3352_p2),
        .O(\add_ln840_54_reg_6645_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_54_reg_6645[1]_i_1 
       (.I0(icmp_ln1039_57_fu_3352_p2),
        .I1(icmp_ln1039_58_fu_3375_p2),
        .I2(icmp_ln1039_56_fu_3329_p2),
        .I3(icmp_ln1039_55_fu_3306_p2),
        .O(\add_ln840_54_reg_6645_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_54_reg_6645[2]_i_1 
       (.I0(icmp_ln1039_57_fu_3352_p2),
        .I1(icmp_ln1039_58_fu_3375_p2),
        .I2(icmp_ln1039_56_fu_3329_p2),
        .I3(icmp_ln1039_55_fu_3306_p2),
        .O(\add_ln840_54_reg_6645_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_10 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_54_reg_6645[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_54_reg_6645[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_13 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_54_reg_6645[2]_i_14 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_54_reg_6645[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_15 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_54_reg_6645[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_16 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_17 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_18 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_54_reg_6645[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_54_reg_6645[2]_i_19 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_54_reg_6645[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_54_reg_6645[2]_i_20 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_21 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_54_reg_6645[2]_i_22 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_54_reg_6645[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_23 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_24 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_25 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_54_reg_6645[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_54_reg_6645[2]_i_27 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_28 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_29 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_54_reg_6645[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_54_reg_6645[2]_i_30 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_54_reg_6645[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_54_reg_6645[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_54_reg_6645[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_32 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_54_reg_6645[2]_i_33 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_54_reg_6645[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_54_reg_6645[2]_i_34 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_54_reg_6645[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_54_reg_6645[2]_i_35 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_54_reg_6645[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_54_reg_6645[2]_i_6 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_54_reg_6645[2]_i_7 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_54_reg_6645[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_54_reg_6645[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_54_reg_6645[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_54_reg_6645[2]_i_9 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_54_reg_6645[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_54_reg_6645_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_57_fu_3352_p2,\add_ln840_54_reg_6645_reg[2]_i_2_n_4 ,\add_ln840_54_reg_6645_reg[2]_i_2_n_5 ,\add_ln840_54_reg_6645_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_54_reg_6645[2]_i_6_n_3 ,\add_ln840_54_reg_6645[2]_i_7_n_3 ,1'b0,\add_ln840_54_reg_6645[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_54_reg_6645_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_54_reg_6645[2]_i_9_n_3 ,\add_ln840_54_reg_6645[2]_i_10_n_3 ,\add_ln840_54_reg_6645_reg[2]_0 ,\add_ln840_54_reg_6645[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_54_reg_6645_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_58_fu_3375_p2,\add_ln840_54_reg_6645_reg[2]_i_3_n_4 ,\add_ln840_54_reg_6645_reg[2]_i_3_n_5 ,\add_ln840_54_reg_6645_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_54_reg_6645[2]_i_13_n_3 ,\add_ln840_54_reg_6645[2]_i_14_n_3 ,\add_ln840_54_reg_6645[2]_i_15_n_3 ,\add_ln840_54_reg_6645[2]_i_16_n_3 }),
        .O(\NLW_add_ln840_54_reg_6645_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_54_reg_6645[2]_i_17_n_3 ,\add_ln840_54_reg_6645[2]_i_18_n_3 ,\add_ln840_54_reg_6645[2]_i_19_n_3 ,\add_ln840_54_reg_6645[2]_i_20_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_54_reg_6645_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_56_fu_3329_p2,\add_ln840_54_reg_6645_reg[2]_i_4_n_4 ,\add_ln840_54_reg_6645_reg[2]_i_4_n_5 ,\add_ln840_54_reg_6645_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_54_reg_6645[2]_i_21_n_3 ,\add_ln840_54_reg_6645[2]_i_22_n_3 ,1'b0,\add_ln840_54_reg_6645[2]_i_23_n_3 }),
        .O(\NLW_add_ln840_54_reg_6645_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_54_reg_6645[2]_i_24_n_3 ,\add_ln840_54_reg_6645[2]_i_25_n_3 ,\add_ln840_54_reg_6645_reg[2] ,\add_ln840_54_reg_6645[2]_i_27_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_54_reg_6645_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_55_fu_3306_p2,\add_ln840_54_reg_6645_reg[2]_i_5_n_4 ,\add_ln840_54_reg_6645_reg[2]_i_5_n_5 ,\add_ln840_54_reg_6645_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_54_reg_6645[2]_i_28_n_3 ,\add_ln840_54_reg_6645[2]_i_29_n_3 ,\add_ln840_54_reg_6645[2]_i_30_n_3 ,\add_ln840_54_reg_6645[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_54_reg_6645_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_54_reg_6645[2]_i_32_n_3 ,\add_ln840_54_reg_6645[2]_i_33_n_3 ,\add_ln840_54_reg_6645[2]_i_34_n_3 ,\add_ln840_54_reg_6645[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_57_reg_6650[0]_i_1 
       (.I0(icmp_ln1039_59_fu_3398_p2),
        .I1(icmp_ln1039_60_fu_3421_p2),
        .I2(icmp_ln1039_62_fu_3467_p2),
        .I3(icmp_ln1039_61_fu_3444_p2),
        .O(\add_ln840_57_reg_6650_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_57_reg_6650[1]_i_1 
       (.I0(icmp_ln1039_61_fu_3444_p2),
        .I1(icmp_ln1039_62_fu_3467_p2),
        .I2(icmp_ln1039_60_fu_3421_p2),
        .I3(icmp_ln1039_59_fu_3398_p2),
        .O(\add_ln840_57_reg_6650_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_57_reg_6650[2]_i_1 
       (.I0(icmp_ln1039_61_fu_3444_p2),
        .I1(icmp_ln1039_62_fu_3467_p2),
        .I2(icmp_ln1039_60_fu_3421_p2),
        .I3(icmp_ln1039_59_fu_3398_p2),
        .O(\add_ln840_57_reg_6650_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_10 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_11 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_57_reg_6650[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_12 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_57_reg_6650[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_13 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_57_reg_6650[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_57_reg_6650[2]_i_14 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_15 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_57_reg_6650[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_16 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_57_reg_6650[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_57_reg_6650[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__0_n_3 ),
        .O(\add_ln840_57_reg_6650[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_18 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_19 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_57_reg_6650[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_20 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_57_reg_6650[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_57_reg_6650[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__0_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_57_reg_6650[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_57_reg_6650[2]_i_22 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_23 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_57_reg_6650[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_24 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_57_reg_6650[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_25 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_26 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_57_reg_6650[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_27 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_57_reg_6650[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_57_reg_6650[2]_i_28 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_28_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_29 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_57_reg_6650[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_57_reg_6650[2]_i_30 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_57_reg_6650[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_31 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_57_reg_6650[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_32 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_33 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_57_reg_6650[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_57_reg_6650[2]_i_34 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_57_reg_6650[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_57_reg_6650[2]_i_35 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_57_reg_6650[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_57_reg_6650[2]_i_6 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [7]),
        .O(\add_ln840_57_reg_6650[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_7 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_57_reg_6650[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_8 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_57_reg_6650[2]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_57_reg_6650[2]_i_9 
       (.I0(\q0_reg[0]_rep__0_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_57_reg_6650[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_57_reg_6650_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_61_fu_3444_p2,\add_ln840_57_reg_6650_reg[2]_i_2_n_4 ,\add_ln840_57_reg_6650_reg[2]_i_2_n_5 ,\add_ln840_57_reg_6650_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_57_reg_6650[2]_i_6_n_3 ,\add_ln840_57_reg_6650[2]_i_7_n_3 ,\add_ln840_57_reg_6650[2]_i_8_n_3 ,\add_ln840_57_reg_6650[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_57_reg_6650_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_57_reg_6650[2]_i_10_n_3 ,\add_ln840_57_reg_6650[2]_i_11_n_3 ,\add_ln840_57_reg_6650[2]_i_12_n_3 ,\add_ln840_57_reg_6650[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_57_reg_6650_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_62_fu_3467_p2,\add_ln840_57_reg_6650_reg[2]_i_3_n_4 ,\add_ln840_57_reg_6650_reg[2]_i_3_n_5 ,\add_ln840_57_reg_6650_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_57_reg_6650[2]_i_14_n_3 ,\add_ln840_57_reg_6650[2]_i_15_n_3 ,\add_ln840_57_reg_6650[2]_i_16_n_3 ,\add_ln840_57_reg_6650[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_57_reg_6650_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_57_reg_6650[2]_i_18_n_3 ,\add_ln840_57_reg_6650[2]_i_19_n_3 ,\add_ln840_57_reg_6650[2]_i_20_n_3 ,\add_ln840_57_reg_6650[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_57_reg_6650_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_57_reg_6650_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_60_fu_3421_p2,\add_ln840_57_reg_6650_reg[2]_i_4_n_5 ,\add_ln840_57_reg_6650_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_57_reg_6650[2]_i_22_n_3 ,\add_ln840_57_reg_6650[2]_i_23_n_3 ,\add_ln840_57_reg_6650[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_57_reg_6650_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_57_reg_6650[2]_i_25_n_3 ,\add_ln840_57_reg_6650[2]_i_26_n_3 ,\add_ln840_57_reg_6650[2]_i_27_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_57_reg_6650_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_59_fu_3398_p2,\add_ln840_57_reg_6650_reg[2]_i_5_n_4 ,\add_ln840_57_reg_6650_reg[2]_i_5_n_5 ,\add_ln840_57_reg_6650_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_57_reg_6650[2]_i_28_n_3 ,\add_ln840_57_reg_6650[2]_i_29_n_3 ,\add_ln840_57_reg_6650[2]_i_30_n_3 ,\add_ln840_57_reg_6650[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_57_reg_6650_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_57_reg_6650[2]_i_32_n_3 ,\add_ln840_57_reg_6650[2]_i_33_n_3 ,\add_ln840_57_reg_6650[2]_i_34_n_3 ,\add_ln840_57_reg_6650[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_64_reg_6655[0]_i_1 
       (.I0(icmp_ln1039_63_fu_3490_p2),
        .I1(icmp_ln1039_64_fu_3513_p2),
        .I2(icmp_ln1039_66_fu_3559_p2),
        .I3(icmp_ln1039_65_fu_3536_p2),
        .O(\add_ln840_64_reg_6655_reg[2]_i_6_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_64_reg_6655[1]_i_1 
       (.I0(icmp_ln1039_65_fu_3536_p2),
        .I1(icmp_ln1039_66_fu_3559_p2),
        .I2(icmp_ln1039_64_fu_3513_p2),
        .I3(icmp_ln1039_63_fu_3490_p2),
        .O(\add_ln840_64_reg_6655_reg[2]_i_6_0 [1]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_10 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_64_reg_6655[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_64_reg_6655[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_64_reg_6655[2]_i_13 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_14 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_64_reg_6655[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_64_reg_6655[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_64_reg_6655[2]_i_16 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_64_reg_6655[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_17 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_64_reg_6655[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_64_reg_6655[2]_i_18_n_3 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_64_reg_6655[2]_i_2 
       (.I0(icmp_ln1039_65_fu_3536_p2),
        .I1(icmp_ln1039_66_fu_3559_p2),
        .I2(icmp_ln1039_64_fu_3513_p2),
        .I3(icmp_ln1039_63_fu_3490_p2),
        .O(\add_ln840_64_reg_6655_reg[2]_i_6_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_20 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_21 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_64_reg_6655[2]_i_22 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_64_reg_6655[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_64_reg_6655[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_64_reg_6655[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_64_reg_6655[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_64_reg_6655[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_25 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_26 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_64_reg_6655[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_64_reg_6655[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_64_reg_6655[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_64_reg_6655[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_29 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_64_reg_6655[2]_i_30 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_64_reg_6655[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_64_reg_6655[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_64_reg_6655[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_32 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_33 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_64_reg_6655[2]_i_34 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_64_reg_6655[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_64_reg_6655[2]_i_35 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_64_reg_6655[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_64_reg_6655[2]_i_36 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_36_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_7 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_64_reg_6655[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_64_reg_6655[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_64_reg_6655[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_64_reg_6655[2]_i_9 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_64_reg_6655[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_64_reg_6655_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_65_fu_3536_p2,\add_ln840_64_reg_6655_reg[2]_i_3_n_4 ,\add_ln840_64_reg_6655_reg[2]_i_3_n_5 ,\add_ln840_64_reg_6655_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_64_reg_6655[2]_i_7_n_3 ,\add_ln840_64_reg_6655[2]_i_8_n_3 ,1'b0,\add_ln840_64_reg_6655[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_64_reg_6655_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_64_reg_6655[2]_i_10_n_3 ,\add_ln840_64_reg_6655[2]_i_11_n_3 ,\add_ln840_64_reg_6655_reg[2] ,\add_ln840_64_reg_6655[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_64_reg_6655_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_66_fu_3559_p2,\add_ln840_64_reg_6655_reg[2]_i_4_n_4 ,\add_ln840_64_reg_6655_reg[2]_i_4_n_5 ,\add_ln840_64_reg_6655_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_64_reg_6655[2]_i_14_n_3 ,\add_ln840_64_reg_6655[2]_i_15_n_3 ,1'b0,\add_ln840_64_reg_6655[2]_i_16_n_3 }),
        .O(\NLW_add_ln840_64_reg_6655_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_64_reg_6655[2]_i_17_n_3 ,\add_ln840_64_reg_6655[2]_i_18_n_3 ,S,\add_ln840_64_reg_6655[2]_i_20_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_64_reg_6655_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_64_fu_3513_p2,\add_ln840_64_reg_6655_reg[2]_i_5_n_4 ,\add_ln840_64_reg_6655_reg[2]_i_5_n_5 ,\add_ln840_64_reg_6655_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_64_reg_6655[2]_i_21_n_3 ,\add_ln840_64_reg_6655[2]_i_22_n_3 ,\add_ln840_64_reg_6655[2]_i_23_n_3 ,\add_ln840_64_reg_6655[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_64_reg_6655_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_64_reg_6655[2]_i_25_n_3 ,\add_ln840_64_reg_6655[2]_i_26_n_3 ,\add_ln840_64_reg_6655[2]_i_27_n_3 ,\add_ln840_64_reg_6655[2]_i_28_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_64_reg_6655_reg[2]_i_6 
       (.CI(1'b0),
        .CO({icmp_ln1039_63_fu_3490_p2,\add_ln840_64_reg_6655_reg[2]_i_6_n_4 ,\add_ln840_64_reg_6655_reg[2]_i_6_n_5 ,\add_ln840_64_reg_6655_reg[2]_i_6_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_64_reg_6655[2]_i_29_n_3 ,\add_ln840_64_reg_6655[2]_i_30_n_3 ,\add_ln840_64_reg_6655[2]_i_31_n_3 ,\add_ln840_64_reg_6655[2]_i_32_n_3 }),
        .O(\NLW_add_ln840_64_reg_6655_reg[2]_i_6_O_UNCONNECTED [3:0]),
        .S({\add_ln840_64_reg_6655[2]_i_33_n_3 ,\add_ln840_64_reg_6655[2]_i_34_n_3 ,\add_ln840_64_reg_6655[2]_i_35_n_3 ,\add_ln840_64_reg_6655[2]_i_36_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_67_reg_6660[0]_i_1 
       (.I0(icmp_ln1039_67_fu_3582_p2),
        .I1(icmp_ln1039_68_fu_3605_p2),
        .I2(icmp_ln1039_70_fu_3651_p2),
        .I3(icmp_ln1039_69_fu_3628_p2),
        .O(\add_ln840_67_reg_6660_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_67_reg_6660[1]_i_1 
       (.I0(icmp_ln1039_69_fu_3628_p2),
        .I1(icmp_ln1039_70_fu_3651_p2),
        .I2(icmp_ln1039_68_fu_3605_p2),
        .I3(icmp_ln1039_67_fu_3582_p2),
        .O(\add_ln840_67_reg_6660_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_67_reg_6660[2]_i_1 
       (.I0(icmp_ln1039_69_fu_3628_p2),
        .I1(icmp_ln1039_70_fu_3651_p2),
        .I2(icmp_ln1039_68_fu_3605_p2),
        .I3(icmp_ln1039_67_fu_3582_p2),
        .O(\add_ln840_67_reg_6660_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_10 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_67_reg_6660[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_67_reg_6660[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_67_reg_6660[2]_i_12 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_67_reg_6660[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_67_reg_6660[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_14 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_67_reg_6660[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_67_reg_6660[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_67_reg_6660[2]_i_16 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_67_reg_6660[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_17 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_67_reg_6660[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_18 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_67_reg_6660[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_67_reg_6660[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_20 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_67_reg_6660[2]_i_21 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_67_reg_6660[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_22 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_67_reg_6660[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_67_reg_6660[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_24 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_67_reg_6660[2]_i_25 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_67_reg_6660[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_26 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_67_reg_6660[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_67_reg_6660[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_67_reg_6660[2]_i_28 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_29 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_67_reg_6660[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_30 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_67_reg_6660[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_67_reg_6660[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_32 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_67_reg_6660[2]_i_33 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_67_reg_6660[2]_i_34 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_67_reg_6660[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_67_reg_6660[2]_i_35 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_35_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_6 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_67_reg_6660[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_67_reg_6660[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_67_reg_6660[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_67_reg_6660[2]_i_8 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_67_reg_6660[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_67_reg_6660[2]_i_9 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_67_reg_6660[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_67_reg_6660_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_69_fu_3628_p2,\add_ln840_67_reg_6660_reg[2]_i_2_n_4 ,\add_ln840_67_reg_6660_reg[2]_i_2_n_5 ,\add_ln840_67_reg_6660_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_67_reg_6660[2]_i_6_n_3 ,\add_ln840_67_reg_6660[2]_i_7_n_3 ,\add_ln840_67_reg_6660[2]_i_8_n_3 ,\add_ln840_67_reg_6660[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_67_reg_6660_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_67_reg_6660[2]_i_10_n_3 ,\add_ln840_67_reg_6660[2]_i_11_n_3 ,\add_ln840_67_reg_6660[2]_i_12_n_3 ,\add_ln840_67_reg_6660[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_67_reg_6660_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_70_fu_3651_p2,\add_ln840_67_reg_6660_reg[2]_i_3_n_4 ,\add_ln840_67_reg_6660_reg[2]_i_3_n_5 ,\add_ln840_67_reg_6660_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_67_reg_6660[2]_i_14_n_3 ,\add_ln840_67_reg_6660[2]_i_15_n_3 ,\add_ln840_67_reg_6660[2]_i_16_n_3 ,\add_ln840_67_reg_6660[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_67_reg_6660_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_67_reg_6660[2]_i_18_n_3 ,\add_ln840_67_reg_6660[2]_i_19_n_3 ,\add_ln840_67_reg_6660[2]_i_20_n_3 ,\add_ln840_67_reg_6660[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_67_reg_6660_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_68_fu_3605_p2,\add_ln840_67_reg_6660_reg[2]_i_4_n_4 ,\add_ln840_67_reg_6660_reg[2]_i_4_n_5 ,\add_ln840_67_reg_6660_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_67_reg_6660[2]_i_22_n_3 ,\add_ln840_67_reg_6660[2]_i_23_n_3 ,\add_ln840_67_reg_6660[2]_i_24_n_3 ,\add_ln840_67_reg_6660[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_67_reg_6660_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_67_reg_6660[2]_i_26_n_3 ,\add_ln840_67_reg_6660[2]_i_27_n_3 ,\add_ln840_67_reg_6660[2]_i_28_n_3 ,\add_ln840_67_reg_6660[2]_i_29_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_67_reg_6660_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_67_reg_6660_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_67_fu_3582_p2,\add_ln840_67_reg_6660_reg[2]_i_5_n_5 ,\add_ln840_67_reg_6660_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_67_reg_6660[2]_i_30_n_3 ,\add_ln840_67_reg_6660[2]_i_31_n_3 ,\add_ln840_67_reg_6660[2]_i_32_n_3 }),
        .O(\NLW_add_ln840_67_reg_6660_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_67_reg_6660[2]_i_33_n_3 ,\add_ln840_67_reg_6660[2]_i_34_n_3 ,\add_ln840_67_reg_6660[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \add_ln840_71_reg_6665[0]_i_1 
       (.I0(icmp_ln1039_71_fu_3674_p2),
        .I1(icmp_ln1039_72_fu_3697_p2),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .I3(\add_ln840_71_reg_6665_reg[0] ),
        .I4(icmp_ln1039_73_fu_3720_p2),
        .O(\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep [0]));
  LUT5 #(
    .INIT(32'h51F7F7AE)) 
    \add_ln840_71_reg_6665[1]_i_1 
       (.I0(icmp_ln1039_73_fu_3720_p2),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .I3(icmp_ln1039_72_fu_3697_p2),
        .I4(icmp_ln1039_71_fu_3674_p2),
        .O(\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000045)) 
    \add_ln840_71_reg_6665[2]_i_1 
       (.I0(icmp_ln1039_73_fu_3720_p2),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .I3(icmp_ln1039_72_fu_3697_p2),
        .I4(icmp_ln1039_71_fu_3674_p2),
        .O(\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_71_reg_6665[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_11 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_71_reg_6665[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_71_reg_6665[2]_i_12 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_71_reg_6665[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_71_reg_6665[2]_i_13 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_14 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_71_reg_6665[2]_i_16 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_71_reg_6665[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_71_reg_6665[2]_i_17 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_18 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_71_reg_6665[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_71_reg_6665[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_71_reg_6665[2]_i_20 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_71_reg_6665[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_71_reg_6665[2]_i_21 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_22 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_71_reg_6665[2]_i_23 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_71_reg_6665[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_71_reg_6665[2]_i_25 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_26 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_71_reg_6665[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_71_reg_6665[2]_i_27 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_71_reg_6665[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_71_reg_6665[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_71_reg_6665[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_71_reg_6665[2]_i_5 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_5_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_6 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_71_reg_6665[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_71_reg_6665[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_71_reg_6665[2]_i_8 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_71_reg_6665[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_71_reg_6665[2]_i_9 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_71_reg_6665[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_71_reg_6665_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_73_fu_3720_p2,\add_ln840_71_reg_6665_reg[2]_i_2_n_4 ,\add_ln840_71_reg_6665_reg[2]_i_2_n_5 ,\add_ln840_71_reg_6665_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_71_reg_6665[2]_i_5_n_3 ,\add_ln840_71_reg_6665[2]_i_6_n_3 ,\add_ln840_71_reg_6665[2]_i_7_n_3 ,\add_ln840_71_reg_6665[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_71_reg_6665_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_71_reg_6665[2]_i_9_n_3 ,\add_ln840_71_reg_6665[2]_i_10_n_3 ,\add_ln840_71_reg_6665[2]_i_11_n_3 ,\add_ln840_71_reg_6665[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_71_reg_6665_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_72_fu_3697_p2,\add_ln840_71_reg_6665_reg[2]_i_3_n_4 ,\add_ln840_71_reg_6665_reg[2]_i_3_n_5 ,\add_ln840_71_reg_6665_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_71_reg_6665[2]_i_13_n_3 ,\add_ln840_71_reg_6665[2]_i_14_n_3 ,\add_ln840_71_reg_6665[2]_i_15_n_3 ,\add_ln840_71_reg_6665[2]_i_16_n_3 }),
        .O(\NLW_add_ln840_71_reg_6665_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_71_reg_6665[2]_i_17_n_3 ,\add_ln840_71_reg_6665[2]_i_18_n_3 ,\add_ln840_71_reg_6665[2]_i_19_n_3 ,\add_ln840_71_reg_6665[2]_i_20_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_71_reg_6665_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_71_fu_3674_p2,\add_ln840_71_reg_6665_reg[2]_i_4_n_4 ,\add_ln840_71_reg_6665_reg[2]_i_4_n_5 ,\add_ln840_71_reg_6665_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_71_reg_6665[2]_i_21_n_3 ,\add_ln840_71_reg_6665[2]_i_22_n_3 ,\add_ln840_71_reg_6665[2]_i_23_n_3 ,\add_ln840_71_reg_6665[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_71_reg_6665_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_71_reg_6665[2]_i_25_n_3 ,\add_ln840_71_reg_6665[2]_i_26_n_3 ,\add_ln840_71_reg_6665[2]_i_27_n_3 ,\add_ln840_71_reg_6665[2]_i_28_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_74_reg_6670[0]_i_1 
       (.I0(icmp_ln1039_75_fu_3750_p2),
        .I1(icmp_ln1039_76_fu_3765_p2),
        .I2(icmp_ln1039_78_fu_3795_p2),
        .I3(icmp_ln1039_77_fu_3780_p2),
        .O(\add_ln840_74_reg_6670_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_74_reg_6670[1]_i_1 
       (.I0(icmp_ln1039_77_fu_3780_p2),
        .I1(icmp_ln1039_78_fu_3795_p2),
        .I2(icmp_ln1039_76_fu_3765_p2),
        .I3(icmp_ln1039_75_fu_3750_p2),
        .O(\add_ln840_74_reg_6670_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_74_reg_6670[2]_i_1 
       (.I0(icmp_ln1039_77_fu_3780_p2),
        .I1(icmp_ln1039_78_fu_3795_p2),
        .I2(icmp_ln1039_76_fu_3765_p2),
        .I3(icmp_ln1039_75_fu_3750_p2),
        .O(\add_ln840_74_reg_6670_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_11 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_74_reg_6670[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_12 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_74_reg_6670[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_74_reg_6670[2]_i_13 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_74_reg_6670[2]_i_14 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_74_reg_6670[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_74_reg_6670[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_74_reg_6670[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_16 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_18 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_74_reg_6670[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_74_reg_6670[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_74_reg_6670[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_74_reg_6670[2]_i_20 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_74_reg_6670[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_74_reg_6670[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_22 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_74_reg_6670[2]_i_25 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_74_reg_6670[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_74_reg_6670[2]_i_26 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_26_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_74_reg_6670[2]_i_27 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_74_reg_6670[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_28 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_74_reg_6670[2]_i_31 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_74_reg_6670[2]_i_31_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_74_reg_6670[2]_i_6 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_74_reg_6670[2]_i_7 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_74_reg_6670[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_74_reg_6670[2]_i_8 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_74_reg_6670[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_74_reg_6670[2]_i_9 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_74_reg_6670[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_74_reg_6670_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_77_fu_3780_p2,\add_ln840_74_reg_6670_reg[2]_i_2_n_4 ,\add_ln840_74_reg_6670_reg[2]_i_2_n_5 ,\add_ln840_74_reg_6670_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_74_reg_6670[2]_i_6_n_3 ,1'b0,\add_ln840_74_reg_6670[2]_i_7_n_3 ,\add_ln840_74_reg_6670[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_74_reg_6670_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_74_reg_6670[2]_i_9_n_3 ,\add_ln840_74_reg_6670_reg[2]_2 ,\add_ln840_74_reg_6670[2]_i_11_n_3 ,\add_ln840_74_reg_6670[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_74_reg_6670_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_78_fu_3795_p2,\add_ln840_74_reg_6670_reg[2]_i_3_n_4 ,\add_ln840_74_reg_6670_reg[2]_i_3_n_5 ,\add_ln840_74_reg_6670_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_74_reg_6670[2]_i_13_n_3 ,1'b0,\add_ln840_74_reg_6670[2]_i_14_n_3 ,\add_ln840_74_reg_6670[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_74_reg_6670_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_74_reg_6670[2]_i_16_n_3 ,\add_ln840_74_reg_6670_reg[2]_0 ,\add_ln840_74_reg_6670[2]_i_18_n_3 ,\add_ln840_74_reg_6670[2]_i_19_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_74_reg_6670_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_76_fu_3765_p2,\add_ln840_74_reg_6670_reg[2]_i_4_n_4 ,\add_ln840_74_reg_6670_reg[2]_i_4_n_5 ,\add_ln840_74_reg_6670_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_74_reg_6670[2]_i_20_n_3 ,1'b0,1'b0,\add_ln840_74_reg_6670[2]_i_21_n_3 }),
        .O(\NLW_add_ln840_74_reg_6670_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_74_reg_6670[2]_i_22_n_3 ,\add_ln840_74_reg_6670_reg[2] ,\add_ln840_74_reg_6670[2]_i_25_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_74_reg_6670_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_75_fu_3750_p2,\add_ln840_74_reg_6670_reg[2]_i_5_n_4 ,\add_ln840_74_reg_6670_reg[2]_i_5_n_5 ,\add_ln840_74_reg_6670_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_74_reg_6670[2]_i_26_n_3 ,1'b0,1'b0,\add_ln840_74_reg_6670[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_74_reg_6670_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_74_reg_6670[2]_i_28_n_3 ,\add_ln840_74_reg_6670_reg[2]_1 ,\add_ln840_74_reg_6670[2]_i_31_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_79_reg_6675[0]_i_1 
       (.I0(icmp_ln1039_79_fu_3810_p2),
        .I1(icmp_ln1039_80_fu_3825_p2),
        .I2(icmp_ln1039_82_fu_3855_p2),
        .I3(icmp_ln1039_81_fu_3840_p2),
        .O(\add_ln840_79_reg_6675_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_79_reg_6675[1]_i_1 
       (.I0(icmp_ln1039_81_fu_3840_p2),
        .I1(icmp_ln1039_82_fu_3855_p2),
        .I2(icmp_ln1039_80_fu_3825_p2),
        .I3(icmp_ln1039_79_fu_3810_p2),
        .O(\add_ln840_79_reg_6675_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_79_reg_6675[2]_i_1 
       (.I0(icmp_ln1039_81_fu_3840_p2),
        .I1(icmp_ln1039_82_fu_3855_p2),
        .I2(icmp_ln1039_80_fu_3825_p2),
        .I3(icmp_ln1039_79_fu_3810_p2),
        .O(\add_ln840_79_reg_6675_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_79_reg_6675[2]_i_10 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_79_reg_6675[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_11 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_79_reg_6675[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_79_reg_6675[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_13 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_79_reg_6675[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_79_reg_6675[2]_i_14 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_79_reg_6675[2]_i_16 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_79_reg_6675[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_79_reg_6675[2]_i_17 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_79_reg_6675[2]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_18 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_19 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_79_reg_6675[2]_i_19_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_20 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_79_reg_6675[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_79_reg_6675[2]_i_21 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_79_reg_6675[2]_i_23 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_79_reg_6675[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_79_reg_6675[2]_i_24 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_79_reg_6675[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_25 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_26 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_79_reg_6675[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_79_reg_6675[2]_i_27 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_79_reg_6675[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_79_reg_6675[2]_i_28 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_79_reg_6675[2]_i_30 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_79_reg_6675[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_79_reg_6675[2]_i_31 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_79_reg_6675[2]_i_31_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_79_reg_6675[2]_i_6 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_79_reg_6675[2]_i_7 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_79_reg_6675[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_79_reg_6675[2]_i_8 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_79_reg_6675[2]_i_8_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_79_reg_6675_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_79_reg_6675_reg[2]_i_2_CO_UNCONNECTED [3],icmp_ln1039_81_fu_3840_p2,\add_ln840_79_reg_6675_reg[2]_i_2_n_5 ,\add_ln840_79_reg_6675_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_79_reg_6675[2]_i_6_n_3 ,1'b0,\add_ln840_79_reg_6675[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_79_reg_6675_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_79_reg_6675[2]_i_8_n_3 ,\add_ln840_79_reg_6675_reg[2]_2 ,\add_ln840_79_reg_6675[2]_i_10_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_79_reg_6675_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_82_fu_3855_p2,\add_ln840_79_reg_6675_reg[2]_i_3_n_4 ,\add_ln840_79_reg_6675_reg[2]_i_3_n_5 ,\add_ln840_79_reg_6675_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_79_reg_6675[2]_i_11_n_3 ,1'b0,\add_ln840_79_reg_6675[2]_i_12_n_3 ,\add_ln840_79_reg_6675[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_79_reg_6675_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_79_reg_6675[2]_i_14_n_3 ,\add_ln840_79_reg_6675_reg[2]_0 ,\add_ln840_79_reg_6675[2]_i_16_n_3 ,\add_ln840_79_reg_6675[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_79_reg_6675_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_80_fu_3825_p2,\add_ln840_79_reg_6675_reg[2]_i_4_n_4 ,\add_ln840_79_reg_6675_reg[2]_i_4_n_5 ,\add_ln840_79_reg_6675_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_79_reg_6675[2]_i_18_n_3 ,1'b0,\add_ln840_79_reg_6675[2]_i_19_n_3 ,\add_ln840_79_reg_6675[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_79_reg_6675_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_79_reg_6675[2]_i_21_n_3 ,\add_ln840_79_reg_6675_reg[2] ,\add_ln840_79_reg_6675[2]_i_23_n_3 ,\add_ln840_79_reg_6675[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_79_reg_6675_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_79_fu_3810_p2,\add_ln840_79_reg_6675_reg[2]_i_5_n_4 ,\add_ln840_79_reg_6675_reg[2]_i_5_n_5 ,\add_ln840_79_reg_6675_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_79_reg_6675[2]_i_25_n_3 ,1'b0,\add_ln840_79_reg_6675[2]_i_26_n_3 ,\add_ln840_79_reg_6675[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_79_reg_6675_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_79_reg_6675[2]_i_28_n_3 ,\add_ln840_79_reg_6675_reg[2]_1 ,\add_ln840_79_reg_6675[2]_i_30_n_3 ,\add_ln840_79_reg_6675[2]_i_31_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_82_reg_6680[0]_i_1 
       (.I0(icmp_ln1039_83_fu_3870_p2),
        .I1(icmp_ln1039_84_fu_3885_p2),
        .I2(icmp_ln1039_86_fu_3915_p2),
        .I3(icmp_ln1039_85_fu_3900_p2),
        .O(\add_ln840_82_reg_6680_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_82_reg_6680[1]_i_1 
       (.I0(icmp_ln1039_85_fu_3900_p2),
        .I1(icmp_ln1039_86_fu_3915_p2),
        .I2(icmp_ln1039_84_fu_3885_p2),
        .I3(icmp_ln1039_83_fu_3870_p2),
        .O(\add_ln840_82_reg_6680_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_82_reg_6680[2]_i_1 
       (.I0(icmp_ln1039_85_fu_3900_p2),
        .I1(icmp_ln1039_86_fu_3915_p2),
        .I2(icmp_ln1039_84_fu_3885_p2),
        .I3(icmp_ln1039_83_fu_3870_p2),
        .O(\add_ln840_82_reg_6680_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_10 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_82_reg_6680[2]_i_12 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_82_reg_6680[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_82_reg_6680[2]_i_13 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_82_reg_6680[2]_i_14 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_82_reg_6680[2]_i_15 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_82_reg_6680[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_16 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_17 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_18 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_82_reg_6680[2]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_82_reg_6680[2]_i_19 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_82_reg_6680[2]_i_20 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_82_reg_6680[2]_i_21 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_82_reg_6680[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_22 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_23 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_25 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_82_reg_6680[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_82_reg_6680[2]_i_26 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_82_reg_6680[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_82_reg_6680[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_82_reg_6680[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_82_reg_6680[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_29 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_82_reg_6680[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_82_reg_6680[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_82_reg_6680[2]_i_32 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_82_reg_6680[2]_i_32_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_82_reg_6680[2]_i_6 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_82_reg_6680[2]_i_7 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_82_reg_6680[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_82_reg_6680[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_82_reg_6680[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_82_reg_6680[2]_i_9 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_82_reg_6680[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_82_reg_6680_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_85_fu_3900_p2,\add_ln840_82_reg_6680_reg[2]_i_2_n_4 ,\add_ln840_82_reg_6680_reg[2]_i_2_n_5 ,\add_ln840_82_reg_6680_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_82_reg_6680[2]_i_6_n_3 ,\add_ln840_82_reg_6680[2]_i_7_n_3 ,1'b0,\add_ln840_82_reg_6680[2]_i_8_n_3 }),
        .O(\NLW_add_ln840_82_reg_6680_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_82_reg_6680[2]_i_9_n_3 ,\add_ln840_82_reg_6680[2]_i_10_n_3 ,\add_ln840_82_reg_6680_reg[2]_1 ,\add_ln840_82_reg_6680[2]_i_12_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_82_reg_6680_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_82_reg_6680_reg[2]_i_3_CO_UNCONNECTED [3],icmp_ln1039_86_fu_3915_p2,\add_ln840_82_reg_6680_reg[2]_i_3_n_5 ,\add_ln840_82_reg_6680_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_82_reg_6680[2]_i_13_n_3 ,\add_ln840_82_reg_6680[2]_i_14_n_3 ,\add_ln840_82_reg_6680[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_82_reg_6680_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_82_reg_6680[2]_i_16_n_3 ,\add_ln840_82_reg_6680[2]_i_17_n_3 ,\add_ln840_82_reg_6680[2]_i_18_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_82_reg_6680_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_84_fu_3885_p2,\add_ln840_82_reg_6680_reg[2]_i_4_n_4 ,\add_ln840_82_reg_6680_reg[2]_i_4_n_5 ,\add_ln840_82_reg_6680_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_82_reg_6680[2]_i_19_n_3 ,\add_ln840_82_reg_6680[2]_i_20_n_3 ,1'b0,\add_ln840_82_reg_6680[2]_i_21_n_3 }),
        .O(\NLW_add_ln840_82_reg_6680_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_82_reg_6680[2]_i_22_n_3 ,\add_ln840_82_reg_6680[2]_i_23_n_3 ,\add_ln840_82_reg_6680_reg[2] ,\add_ln840_82_reg_6680[2]_i_25_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_82_reg_6680_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_83_fu_3870_p2,\add_ln840_82_reg_6680_reg[2]_i_5_n_4 ,\add_ln840_82_reg_6680_reg[2]_i_5_n_5 ,\add_ln840_82_reg_6680_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_82_reg_6680[2]_i_26_n_3 ,1'b0,\add_ln840_82_reg_6680[2]_i_27_n_3 ,\add_ln840_82_reg_6680[2]_i_28_n_3 }),
        .O(\NLW_add_ln840_82_reg_6680_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_82_reg_6680[2]_i_29_n_3 ,\add_ln840_82_reg_6680_reg[2]_0 ,\add_ln840_82_reg_6680[2]_i_31_n_3 ,\add_ln840_82_reg_6680[2]_i_32_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_86_reg_6685[0]_i_1 
       (.I0(icmp_ln1039_87_fu_3930_p2),
        .I1(icmp_ln1039_88_fu_3945_p2),
        .I2(icmp_ln1039_90_fu_3975_p2),
        .I3(icmp_ln1039_89_fu_3960_p2),
        .O(\add_ln840_86_reg_6685_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_86_reg_6685[1]_i_1 
       (.I0(icmp_ln1039_89_fu_3960_p2),
        .I1(icmp_ln1039_90_fu_3975_p2),
        .I2(icmp_ln1039_88_fu_3945_p2),
        .I3(icmp_ln1039_87_fu_3930_p2),
        .O(\add_ln840_86_reg_6685_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_86_reg_6685[2]_i_1 
       (.I0(icmp_ln1039_89_fu_3960_p2),
        .I1(icmp_ln1039_90_fu_3975_p2),
        .I2(icmp_ln1039_88_fu_3945_p2),
        .I3(icmp_ln1039_87_fu_3930_p2),
        .O(\add_ln840_86_reg_6685_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_10 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_11 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_86_reg_6685[2]_i_12 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_86_reg_6685[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_86_reg_6685[2]_i_13 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_86_reg_6685[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_14 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_86_reg_6685[2]_i_15 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_16 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_86_reg_6685[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_86_reg_6685[2]_i_17 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__1_n_3 ),
        .O(\add_ln840_86_reg_6685[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_18 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_19 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_86_reg_6685[2]_i_20 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_86_reg_6685[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_86_reg_6685[2]_i_21 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__1_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_86_reg_6685[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_22 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_86_reg_6685[2]_i_23 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_24 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_86_reg_6685[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_25 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_26 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_86_reg_6685[2]_i_27 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_86_reg_6685[2]_i_27_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_28 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_86_reg_6685[2]_i_29 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_86_reg_6685[2]_i_30 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_86_reg_6685[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_31 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_86_reg_6685[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_32 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_33 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_86_reg_6685[2]_i_34 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_86_reg_6685[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_86_reg_6685[2]_i_35 
       (.I0(\q0_reg[0]_rep__1_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_86_reg_6685[2]_i_35_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_6 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_86_reg_6685[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_86_reg_6685[2]_i_7 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_86_reg_6685[2]_i_7_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_8 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_86_reg_6685[2]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_86_reg_6685[2]_i_9 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_86_reg_6685[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_86_reg_6685_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_89_fu_3960_p2,\add_ln840_86_reg_6685_reg[2]_i_2_n_4 ,\add_ln840_86_reg_6685_reg[2]_i_2_n_5 ,\add_ln840_86_reg_6685_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_86_reg_6685[2]_i_6_n_3 ,\add_ln840_86_reg_6685[2]_i_7_n_3 ,\add_ln840_86_reg_6685[2]_i_8_n_3 ,\add_ln840_86_reg_6685[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_86_reg_6685_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_86_reg_6685[2]_i_10_n_3 ,\add_ln840_86_reg_6685[2]_i_11_n_3 ,\add_ln840_86_reg_6685[2]_i_12_n_3 ,\add_ln840_86_reg_6685[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_86_reg_6685_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_90_fu_3975_p2,\add_ln840_86_reg_6685_reg[2]_i_3_n_4 ,\add_ln840_86_reg_6685_reg[2]_i_3_n_5 ,\add_ln840_86_reg_6685_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_86_reg_6685[2]_i_14_n_3 ,\add_ln840_86_reg_6685[2]_i_15_n_3 ,\add_ln840_86_reg_6685[2]_i_16_n_3 ,\add_ln840_86_reg_6685[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_86_reg_6685_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_86_reg_6685[2]_i_18_n_3 ,\add_ln840_86_reg_6685[2]_i_19_n_3 ,\add_ln840_86_reg_6685[2]_i_20_n_3 ,\add_ln840_86_reg_6685[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_86_reg_6685_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_86_reg_6685_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_88_fu_3945_p2,\add_ln840_86_reg_6685_reg[2]_i_4_n_5 ,\add_ln840_86_reg_6685_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_86_reg_6685[2]_i_22_n_3 ,\add_ln840_86_reg_6685[2]_i_23_n_3 ,\add_ln840_86_reg_6685[2]_i_24_n_3 }),
        .O(\NLW_add_ln840_86_reg_6685_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_86_reg_6685[2]_i_25_n_3 ,\add_ln840_86_reg_6685[2]_i_26_n_3 ,\add_ln840_86_reg_6685[2]_i_27_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_86_reg_6685_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_87_fu_3930_p2,\add_ln840_86_reg_6685_reg[2]_i_5_n_4 ,\add_ln840_86_reg_6685_reg[2]_i_5_n_5 ,\add_ln840_86_reg_6685_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_86_reg_6685[2]_i_28_n_3 ,\add_ln840_86_reg_6685[2]_i_29_n_3 ,\add_ln840_86_reg_6685[2]_i_30_n_3 ,\add_ln840_86_reg_6685[2]_i_31_n_3 }),
        .O(\NLW_add_ln840_86_reg_6685_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_86_reg_6685[2]_i_32_n_3 ,\add_ln840_86_reg_6685[2]_i_33_n_3 ,\add_ln840_86_reg_6685[2]_i_34_n_3 ,\add_ln840_86_reg_6685[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_89_reg_6690[0]_i_1 
       (.I0(icmp_ln1039_91_fu_3990_p2),
        .I1(icmp_ln1039_92_fu_4005_p2),
        .I2(icmp_ln1039_94_fu_4035_p2),
        .I3(icmp_ln1039_93_fu_4020_p2),
        .O(\add_ln840_89_reg_6690_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_89_reg_6690[1]_i_1 
       (.I0(icmp_ln1039_93_fu_4020_p2),
        .I1(icmp_ln1039_94_fu_4035_p2),
        .I2(icmp_ln1039_92_fu_4005_p2),
        .I3(icmp_ln1039_91_fu_3990_p2),
        .O(\add_ln840_89_reg_6690_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_89_reg_6690[2]_i_1 
       (.I0(icmp_ln1039_93_fu_4020_p2),
        .I1(icmp_ln1039_94_fu_4035_p2),
        .I2(icmp_ln1039_92_fu_4005_p2),
        .I3(icmp_ln1039_91_fu_3990_p2),
        .O(\add_ln840_89_reg_6690_reg[2]_i_5_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_10 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_10_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_11 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_89_reg_6690[2]_i_11_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_12 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_89_reg_6690[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_13 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_89_reg_6690[2]_i_14 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_89_reg_6690[2]_i_16 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_89_reg_6690[2]_i_16_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_17 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_89_reg_6690[2]_i_18 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_89_reg_6690[2]_i_19 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_89_reg_6690[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_89_reg_6690[2]_i_20 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_89_reg_6690[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_21 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_22 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_89_reg_6690[2]_i_23 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_89_reg_6690[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_89_reg_6690[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_89_reg_6690[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_25 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_89_reg_6690[2]_i_26 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_89_reg_6690[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(\q0_reg[0]_rep__2_n_3 ),
        .O(\add_ln840_89_reg_6690[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_89_reg_6690[2]_i_28 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_89_reg_6690[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_29 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_30 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_89_reg_6690[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I1(\q0_reg[0]_rep__2_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_89_reg_6690[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_32 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_89_reg_6690[2]_i_32_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_6 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_89_reg_6690[2]_i_7 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_89_reg_6690[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_89_reg_6690[2]_i_8 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_71_reg_6665_reg[0] ),
        .O(\add_ln840_89_reg_6690[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_89_reg_6690[2]_i_9 
       (.I0(\q0_reg[0]_rep__2_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_89_reg_6690[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_89_reg_6690_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_89_reg_6690_reg[2]_i_2_CO_UNCONNECTED [3:2],icmp_ln1039_93_fu_4020_p2,\add_ln840_89_reg_6690_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_89_reg_6690[2]_i_6_n_3 ,\add_ln840_89_reg_6690[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_89_reg_6690_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_89_reg_6690[2]_i_8_n_3 ,\add_ln840_89_reg_6690[2]_i_9_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_89_reg_6690_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_94_fu_4035_p2,\add_ln840_89_reg_6690_reg[2]_i_3_n_4 ,\add_ln840_89_reg_6690_reg[2]_i_3_n_5 ,\add_ln840_89_reg_6690_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_89_reg_6690[2]_i_10_n_3 ,\add_ln840_89_reg_6690[2]_i_11_n_3 ,1'b0,\add_ln840_89_reg_6690[2]_i_12_n_3 }),
        .O(\NLW_add_ln840_89_reg_6690_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_89_reg_6690[2]_i_13_n_3 ,\add_ln840_89_reg_6690[2]_i_14_n_3 ,\add_ln840_89_reg_6690_reg[2] ,\add_ln840_89_reg_6690[2]_i_16_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_89_reg_6690_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_92_fu_4005_p2,\add_ln840_89_reg_6690_reg[2]_i_4_n_4 ,\add_ln840_89_reg_6690_reg[2]_i_4_n_5 ,\add_ln840_89_reg_6690_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_89_reg_6690[2]_i_17_n_3 ,\add_ln840_89_reg_6690[2]_i_18_n_3 ,\add_ln840_89_reg_6690[2]_i_19_n_3 ,\add_ln840_89_reg_6690[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_89_reg_6690_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_89_reg_6690[2]_i_21_n_3 ,\add_ln840_89_reg_6690[2]_i_22_n_3 ,\add_ln840_89_reg_6690[2]_i_23_n_3 ,\add_ln840_89_reg_6690[2]_i_24_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_89_reg_6690_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_91_fu_3990_p2,\add_ln840_89_reg_6690_reg[2]_i_5_n_4 ,\add_ln840_89_reg_6690_reg[2]_i_5_n_5 ,\add_ln840_89_reg_6690_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_89_reg_6690[2]_i_25_n_3 ,\add_ln840_89_reg_6690[2]_i_26_n_3 ,\add_ln840_89_reg_6690[2]_i_27_n_3 ,\add_ln840_89_reg_6690[2]_i_28_n_3 }),
        .O(\NLW_add_ln840_89_reg_6690_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_89_reg_6690[2]_i_29_n_3 ,\add_ln840_89_reg_6690[2]_i_30_n_3 ,\add_ln840_89_reg_6690[2]_i_31_n_3 ,\add_ln840_89_reg_6690[2]_i_32_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_8_reg_6585[0]_i_1 
       (.I0(icmp_ln1039_7_fu_2330_p2),
        .I1(CO),
        .I2(icmp_ln1039_10_fu_2391_p2),
        .I3(icmp_ln1039_9_fu_2372_p2),
        .O(\add_ln840_8_reg_6585_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_8_reg_6585[1]_i_1 
       (.I0(icmp_ln1039_9_fu_2372_p2),
        .I1(icmp_ln1039_10_fu_2391_p2),
        .I2(CO),
        .I3(icmp_ln1039_7_fu_2330_p2),
        .O(\add_ln840_8_reg_6585_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_8_reg_6585[2]_i_1 
       (.I0(icmp_ln1039_9_fu_2372_p2),
        .I1(icmp_ln1039_10_fu_2391_p2),
        .I2(CO),
        .I3(icmp_ln1039_7_fu_2330_p2),
        .O(\add_ln840_8_reg_6585_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_8_reg_6585[2]_i_11 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_8_reg_6585[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_8_reg_6585[2]_i_12 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_8_reg_6585[2]_i_12_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_8_reg_6585[2]_i_13 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_8_reg_6585[2]_i_13_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_8_reg_6585[2]_i_15 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_8_reg_6585[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_8_reg_6585[2]_i_17 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_8_reg_6585[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_8_reg_6585[2]_i_24 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .I2(p_ZL7threshs_130_q0),
        .O(\add_ln840_8_reg_6585[2]_i_24_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_8_reg_6585[2]_i_25 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_8_reg_6585[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_8_reg_6585[2]_i_28 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(p_ZL7threshs_130_q0),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [3]),
        .O(\add_ln840_8_reg_6585[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_8_reg_6585[2]_i_29 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_8_reg_6585[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_8_reg_6585[2]_i_6 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_8_reg_6585[2]_i_6_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_8_reg_6585[2]_i_7 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_8_reg_6585[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_8_reg_6585[2]_i_9 
       (.I0(p_ZL7threshs_130_q0),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [5]),
        .O(\add_ln840_8_reg_6585[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_8_reg_6585_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_9_fu_2372_p2,\add_ln840_8_reg_6585_reg[2]_i_2_n_4 ,\add_ln840_8_reg_6585_reg[2]_i_2_n_5 ,\add_ln840_8_reg_6585_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_8_reg_6585[2]_i_6_n_3 ,1'b0,\add_ln840_8_reg_6585[2]_i_7_n_3 }),
        .O(\NLW_add_ln840_8_reg_6585_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_8_reg_6585_reg[2]_1 [1],\add_ln840_8_reg_6585[2]_i_9_n_3 ,\add_ln840_8_reg_6585_reg[2]_1 [0],\add_ln840_8_reg_6585[2]_i_11_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_8_reg_6585_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_10_fu_2391_p2,\add_ln840_8_reg_6585_reg[2]_i_3_n_4 ,\add_ln840_8_reg_6585_reg[2]_i_3_n_5 ,\add_ln840_8_reg_6585_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_8_reg_6585[2]_i_12_n_3 ,1'b0,\add_ln840_8_reg_6585[2]_i_13_n_3 }),
        .O(\NLW_add_ln840_8_reg_6585_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_8_reg_6585_reg[2] [1],\add_ln840_8_reg_6585[2]_i_15_n_3 ,\add_ln840_8_reg_6585_reg[2] [0],\add_ln840_8_reg_6585[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_8_reg_6585_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_7_fu_2330_p2,\add_ln840_8_reg_6585_reg[2]_i_5_n_4 ,\add_ln840_8_reg_6585_reg[2]_i_5_n_5 ,\add_ln840_8_reg_6585_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_8_reg_6585[2]_i_24_n_3 ,\add_ln840_8_reg_6585[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_8_reg_6585_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_8_reg_6585_reg[2]_0 ,\add_ln840_8_reg_6585[2]_i_28_n_3 ,\add_ln840_8_reg_6585[2]_i_29_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_95_reg_6695[0]_i_1 
       (.I0(icmp_ln1039_95_fu_4050_p2),
        .I1(icmp_ln1039_96_fu_4065_p2),
        .I2(icmp_ln1039_98_fu_4095_p2),
        .I3(icmp_ln1039_97_fu_4080_p2),
        .O(\add_ln840_95_reg_6695_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_95_reg_6695[1]_i_1 
       (.I0(icmp_ln1039_97_fu_4080_p2),
        .I1(icmp_ln1039_98_fu_4095_p2),
        .I2(icmp_ln1039_96_fu_4065_p2),
        .I3(icmp_ln1039_95_fu_4050_p2),
        .O(\add_ln840_95_reg_6695_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_95_reg_6695[2]_i_1 
       (.I0(icmp_ln1039_97_fu_4080_p2),
        .I1(icmp_ln1039_98_fu_4095_p2),
        .I2(icmp_ln1039_96_fu_4065_p2),
        .I3(icmp_ln1039_95_fu_4050_p2),
        .O(\add_ln840_95_reg_6695_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_10 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_11 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_95_reg_6695[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_12 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_95_reg_6695[2]_i_13 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__4_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_95_reg_6695[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_14 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_14_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_15 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_15_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_16 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_95_reg_6695[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_95_reg_6695[2]_i_17 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_95_reg_6695[2]_i_17_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_18 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_18_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_19 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_95_reg_6695[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_20 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_21 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_95_reg_6695[2]_i_21_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_22 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_22_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_23 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_23_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_95_reg_6695[2]_i_24 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_25 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_95_reg_6695[2]_i_25_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_26 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_27 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_95_reg_6695[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_28 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_29 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_95_reg_6695[2]_i_29_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_30 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_30_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_31 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_31_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_95_reg_6695[2]_i_32 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_32_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_33 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_33_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_95_reg_6695[2]_i_34 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_95_reg_6695[2]_i_34_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_95_reg_6695[2]_i_35 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_35_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_6 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_95_reg_6695[2]_i_7 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_95_reg_6695[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h02)) 
    \add_ln840_95_reg_6695[2]_i_8 
       (.I0(\q0_reg[0]_rep__4_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_95_reg_6695[2]_i_8_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_95_reg_6695[2]_i_9 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__4_n_3 ),
        .O(\add_ln840_95_reg_6695[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_95_reg_6695_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_97_fu_4080_p2,\add_ln840_95_reg_6695_reg[2]_i_2_n_4 ,\add_ln840_95_reg_6695_reg[2]_i_2_n_5 ,\add_ln840_95_reg_6695_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_95_reg_6695[2]_i_6_n_3 ,\add_ln840_95_reg_6695[2]_i_7_n_3 ,\add_ln840_95_reg_6695[2]_i_8_n_3 ,\add_ln840_95_reg_6695[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_95_reg_6695_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_95_reg_6695[2]_i_10_n_3 ,\add_ln840_95_reg_6695[2]_i_11_n_3 ,\add_ln840_95_reg_6695[2]_i_12_n_3 ,\add_ln840_95_reg_6695[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_95_reg_6695_reg[2]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln1039_98_fu_4095_p2,\add_ln840_95_reg_6695_reg[2]_i_3_n_4 ,\add_ln840_95_reg_6695_reg[2]_i_3_n_5 ,\add_ln840_95_reg_6695_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_95_reg_6695[2]_i_14_n_3 ,\add_ln840_95_reg_6695[2]_i_15_n_3 ,\add_ln840_95_reg_6695[2]_i_16_n_3 ,\add_ln840_95_reg_6695[2]_i_17_n_3 }),
        .O(\NLW_add_ln840_95_reg_6695_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln840_95_reg_6695[2]_i_18_n_3 ,\add_ln840_95_reg_6695[2]_i_19_n_3 ,\add_ln840_95_reg_6695[2]_i_20_n_3 ,\add_ln840_95_reg_6695[2]_i_21_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_95_reg_6695_reg[2]_i_4 
       (.CI(1'b0),
        .CO({icmp_ln1039_96_fu_4065_p2,\add_ln840_95_reg_6695_reg[2]_i_4_n_4 ,\add_ln840_95_reg_6695_reg[2]_i_4_n_5 ,\add_ln840_95_reg_6695_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_95_reg_6695[2]_i_22_n_3 ,\add_ln840_95_reg_6695[2]_i_23_n_3 ,\add_ln840_95_reg_6695[2]_i_24_n_3 ,\add_ln840_95_reg_6695[2]_i_25_n_3 }),
        .O(\NLW_add_ln840_95_reg_6695_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\add_ln840_95_reg_6695[2]_i_26_n_3 ,\add_ln840_95_reg_6695[2]_i_27_n_3 ,\add_ln840_95_reg_6695[2]_i_28_n_3 ,\add_ln840_95_reg_6695[2]_i_29_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_95_reg_6695_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_95_reg_6695_reg[2]_i_5_CO_UNCONNECTED [3],icmp_ln1039_95_fu_4050_p2,\add_ln840_95_reg_6695_reg[2]_i_5_n_5 ,\add_ln840_95_reg_6695_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_95_reg_6695[2]_i_30_n_3 ,\add_ln840_95_reg_6695[2]_i_31_n_3 ,\add_ln840_95_reg_6695[2]_i_32_n_3 }),
        .O(\NLW_add_ln840_95_reg_6695_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_95_reg_6695[2]_i_33_n_3 ,\add_ln840_95_reg_6695[2]_i_34_n_3 ,\add_ln840_95_reg_6695[2]_i_35_n_3 }));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \add_ln840_98_reg_6700[0]_i_1 
       (.I0(icmp_ln1039_99_fu_4110_p2),
        .I1(icmp_ln1039_100_fu_4125_p2),
        .I2(icmp_ln1039_102_fu_4155_p2),
        .I3(icmp_ln1039_101_fu_4140_p2),
        .O(\add_ln840_98_reg_6700_reg[2]_i_5_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h177E)) 
    \add_ln840_98_reg_6700[1]_i_1 
       (.I0(icmp_ln1039_101_fu_4140_p2),
        .I1(icmp_ln1039_102_fu_4155_p2),
        .I2(icmp_ln1039_100_fu_4125_p2),
        .I3(icmp_ln1039_99_fu_4110_p2),
        .O(\add_ln840_98_reg_6700_reg[2]_i_5_0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \add_ln840_98_reg_6700[2]_i_1 
       (.I0(icmp_ln1039_101_fu_4140_p2),
        .I1(icmp_ln1039_102_fu_4155_p2),
        .I2(icmp_ln1039_100_fu_4125_p2),
        .I3(icmp_ln1039_99_fu_4110_p2),
        .O(\add_ln840_98_reg_6700_reg[2]_i_5_0 [2]));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_98_reg_6700[2]_i_10 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_10_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_98_reg_6700[2]_i_11 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_98_reg_6700[2]_i_11_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_98_reg_6700[2]_i_12 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_98_reg_6700[2]_i_12_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_98_reg_6700[2]_i_13 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_98_reg_6700[2]_i_13_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_14 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_14_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_98_reg_6700[2]_i_15 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_98_reg_6700[2]_i_15_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_98_reg_6700[2]_i_16 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_16_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_98_reg_6700[2]_i_17 
       (.I0(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_98_reg_6700[2]_i_17_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_18 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_18_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_19 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_19_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_98_reg_6700[2]_i_20 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_98_reg_6700[2]_i_20_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_98_reg_6700[2]_i_21 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_21_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_98_reg_6700[2]_i_22 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_98_reg_6700[2]_i_22_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_98_reg_6700[2]_i_23 
       (.I0(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_98_reg_6700[2]_i_23_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_24 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_24_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_25 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_25_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_26 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .O(\add_ln840_98_reg_6700[2]_i_26_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_98_reg_6700[2]_i_27 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_98_reg_6700[2]_i_27_n_3 ));
  LUT3 #(
    .INIT(8'h21)) 
    \add_ln840_98_reg_6700[2]_i_28 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [6]),
        .I2(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_28_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_98_reg_6700[2]_i_29 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [4]),
        .O(\add_ln840_98_reg_6700[2]_i_29_n_3 ));
  LUT3 #(
    .INIT(8'h09)) 
    \add_ln840_98_reg_6700[2]_i_30 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .O(\add_ln840_98_reg_6700[2]_i_30_n_3 ));
  LUT3 #(
    .INIT(8'h81)) 
    \add_ln840_98_reg_6700[2]_i_31 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .I1(\q0_reg[0]_rep__3_n_3 ),
        .I2(\add_ln840_57_reg_6650_reg[2]_i_5_1 [0]),
        .O(\add_ln840_98_reg_6700[2]_i_31_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_6 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_6_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_7 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_117_reg_6725_reg[2]_i_2_0 ),
        .O(\add_ln840_98_reg_6700[2]_i_7_n_3 ));
  LUT3 #(
    .INIT(8'h70)) 
    \add_ln840_98_reg_6700[2]_i_8 
       (.I0(\add_ln840_57_reg_6650_reg[2]_i_5_1 [2]),
        .I1(\add_ln840_113_reg_6720_reg[2]_i_2_1 ),
        .I2(\q0_reg[0]_rep__3_n_3 ),
        .O(\add_ln840_98_reg_6700[2]_i_8_n_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln840_98_reg_6700[2]_i_9 
       (.I0(\q0_reg[0]_rep__3_n_3 ),
        .I1(\add_ln840_57_reg_6650_reg[2]_i_5_1 [1]),
        .O(\add_ln840_98_reg_6700[2]_i_9_n_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_98_reg_6700_reg[2]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln1039_101_fu_4140_p2,\add_ln840_98_reg_6700_reg[2]_i_2_n_4 ,\add_ln840_98_reg_6700_reg[2]_i_2_n_5 ,\add_ln840_98_reg_6700_reg[2]_i_2_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_98_reg_6700[2]_i_6_n_3 ,\add_ln840_98_reg_6700[2]_i_7_n_3 ,\add_ln840_98_reg_6700[2]_i_8_n_3 ,\add_ln840_98_reg_6700[2]_i_9_n_3 }),
        .O(\NLW_add_ln840_98_reg_6700_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln840_98_reg_6700[2]_i_10_n_3 ,\add_ln840_98_reg_6700[2]_i_11_n_3 ,\add_ln840_98_reg_6700[2]_i_12_n_3 ,\add_ln840_98_reg_6700[2]_i_13_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_98_reg_6700_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_98_reg_6700_reg[2]_i_3_CO_UNCONNECTED [3:2],icmp_ln1039_102_fu_4155_p2,\add_ln840_98_reg_6700_reg[2]_i_3_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln840_98_reg_6700[2]_i_14_n_3 ,\add_ln840_98_reg_6700[2]_i_15_n_3 }),
        .O(\NLW_add_ln840_98_reg_6700_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\add_ln840_98_reg_6700[2]_i_16_n_3 ,\add_ln840_98_reg_6700[2]_i_17_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_98_reg_6700_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\NLW_add_ln840_98_reg_6700_reg[2]_i_4_CO_UNCONNECTED [3],icmp_ln1039_100_fu_4125_p2,\add_ln840_98_reg_6700_reg[2]_i_4_n_5 ,\add_ln840_98_reg_6700_reg[2]_i_4_n_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_ln840_98_reg_6700[2]_i_18_n_3 ,\add_ln840_98_reg_6700[2]_i_19_n_3 ,\add_ln840_98_reg_6700[2]_i_20_n_3 }),
        .O(\NLW_add_ln840_98_reg_6700_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\add_ln840_98_reg_6700[2]_i_21_n_3 ,\add_ln840_98_reg_6700[2]_i_22_n_3 ,\add_ln840_98_reg_6700[2]_i_23_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \add_ln840_98_reg_6700_reg[2]_i_5 
       (.CI(1'b0),
        .CO({icmp_ln1039_99_fu_4110_p2,\add_ln840_98_reg_6700_reg[2]_i_5_n_4 ,\add_ln840_98_reg_6700_reg[2]_i_5_n_5 ,\add_ln840_98_reg_6700_reg[2]_i_5_n_6 }),
        .CYINIT(1'b0),
        .DI({\add_ln840_98_reg_6700[2]_i_24_n_3 ,\add_ln840_98_reg_6700[2]_i_25_n_3 ,\add_ln840_98_reg_6700[2]_i_26_n_3 ,\add_ln840_98_reg_6700[2]_i_27_n_3 }),
        .O(\NLW_add_ln840_98_reg_6700_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({\add_ln840_98_reg_6700[2]_i_28_n_3 ,\add_ln840_98_reg_6700[2]_i_29_n_3 ,\add_ln840_98_reg_6700[2]_i_30_n_3 ,\add_ln840_98_reg_6700[2]_i_31_n_3 }));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \inElem_reg_5804_pp0_iter1_reg[7]_i_1 
       (.I0(\q0_reg[0]_0 ),
        .I1(Q),
        .I2(out_V_TREADY_int_regslice),
        .I3(\q0_reg[0]_1 ),
        .I4(ap_CS_iter1_fsm_state2),
        .O(p_ZL7threshs_128_ce0));
  LUT6 #(
    .INIT(64'h00000000A888AAAA)) 
    \q0[0]_i_1 
       (.I0(ap_CS_iter1_fsm_state2),
        .I1(\q0_reg[0]_1 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(Q),
        .I4(\q0_reg[0]_0 ),
        .I5(out[3]),
        .O(\q0[0]_i_1_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1__0_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1__1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1__1_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1__2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1__2_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1__3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1__3_n_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q0[0]_rep_i_1__4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(\q0[0]_rep_i_1__4_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0] 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_i_2_n_3 ),
        .Q(p_ZL7threshs_130_q0),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1_n_3 ),
        .Q(\q0_reg[0]_rep_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep__0 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1__0_n_3 ),
        .Q(\q0_reg[0]_rep__0_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep__1 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1__1_n_3 ),
        .Q(\q0_reg[0]_rep__1_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep__2 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1__2_n_3 ),
        .Q(\q0_reg[0]_rep__2_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep__3 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1__3_n_3 ),
        .Q(\q0_reg[0]_rep__3_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
  (* ORIG_CELL_NAME = "q0_reg[0]" *) 
  FDSE \q0_reg[0]_rep__4 
       (.C(ap_clk),
        .CE(p_ZL7threshs_128_ce0),
        .D(\q0[0]_rep_i_1__4_n_3 ),
        .Q(\q0_reg[0]_rep__4_n_3 ),
        .S(\q0[0]_i_1_n_3 ));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_flow_control_loop_pipe_sequential_init" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init
   (ap_rst_n_0,
    ap_NS_iter1_fsm,
    SR,
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ,
    E,
    i_2_fu_2007_p2,
    \i_fu_320_reg[1] ,
    D,
    grp_Thresholding_Batch_fu_546_ap_start_reg_reg,
    grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[1] ,
    ap_clk,
    \ap_CS_iter1_fsm_reg[1] ,
    out_V_TREADY_int_regslice,
    Q,
    \ap_CS_iter1_fsm_reg[1]_0 ,
    ap_CS_iter1_fsm_state2,
    in0_V_TVALID_int_regslice,
    grp_Thresholding_Batch_fu_546_ap_start_reg,
    \nf_1_fu_316_reg_rep[6] ,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter5_reg,
    \i_fu_320_reg[4] ,
    \i_fu_320_reg[4]_0 ,
    \i_fu_320_reg[4]_1 ,
    \i_fu_320_reg[4]_2 ,
    \i_fu_320_reg[4]_3 ,
    \i_fu_320_reg[9] ,
    \i_fu_320_reg[9]_0 ,
    \i_fu_320_reg[9]_1 ,
    \i_fu_320_reg[9]_2 ,
    \i_fu_320_reg[5] ,
    \i_fu_320_reg[0] ,
    ap_loop_exit_ready_pp0_iter1_reg,
    icmp_ln295_reg_5800,
    ap_NS_fsm10_out);
  output ap_rst_n_0;
  output [0:0]ap_NS_iter1_fsm;
  output [0:0]SR;
  output \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ;
  output [0:0]E;
  output [8:0]i_2_fu_2007_p2;
  output \i_fu_320_reg[1] ;
  output [0:0]D;
  output grp_Thresholding_Batch_fu_546_ap_start_reg_reg;
  output grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0;
  output [1:0]\ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[1] ;
  input ap_clk;
  input \ap_CS_iter1_fsm_reg[1] ;
  input out_V_TREADY_int_regslice;
  input [2:0]Q;
  input \ap_CS_iter1_fsm_reg[1]_0 ;
  input ap_CS_iter1_fsm_state2;
  input in0_V_TVALID_int_regslice;
  input grp_Thresholding_Batch_fu_546_ap_start_reg;
  input \nf_1_fu_316_reg_rep[6] ;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter5_reg;
  input \i_fu_320_reg[4] ;
  input \i_fu_320_reg[4]_0 ;
  input [0:0]\i_fu_320_reg[4]_1 ;
  input \i_fu_320_reg[4]_2 ;
  input \i_fu_320_reg[4]_3 ;
  input \i_fu_320_reg[9] ;
  input \i_fu_320_reg[9]_0 ;
  input \i_fu_320_reg[9]_1 ;
  input \i_fu_320_reg[9]_2 ;
  input \i_fu_320_reg[5] ;
  input \i_fu_320_reg[0] ;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input icmp_ln295_reg_5800;
  input ap_NS_fsm10_out;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[3]_i_2_n_3 ;
  wire [1:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_iter1_fsm_reg[1] ;
  wire \ap_CS_iter1_fsm_reg[1]_0 ;
  wire ap_CS_iter1_fsm_state2;
  wire ap_NS_fsm10_out;
  wire [0:0]ap_NS_iter1_fsm;
  wire ap_clk;
  wire ap_condition_4530;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_done_reg1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter5_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire grp_Thresholding_Batch_fu_546_ap_start_reg;
  wire grp_Thresholding_Batch_fu_546_ap_start_reg_reg;
  wire grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0;
  wire [8:0]i_2_fu_2007_p2;
  wire \i_fu_320[0]_i_4_n_3 ;
  wire \i_fu_320[5]_i_2_n_3 ;
  wire \i_fu_320[9]_i_2_n_3 ;
  wire \i_fu_320[9]_i_3_n_3 ;
  wire \i_fu_320_reg[0] ;
  wire \i_fu_320_reg[1] ;
  wire \i_fu_320_reg[4] ;
  wire \i_fu_320_reg[4]_0 ;
  wire [0:0]\i_fu_320_reg[4]_1 ;
  wire \i_fu_320_reg[4]_2 ;
  wire \i_fu_320_reg[4]_3 ;
  wire \i_fu_320_reg[5] ;
  wire \i_fu_320_reg[9] ;
  wire \i_fu_320_reg[9]_0 ;
  wire \i_fu_320_reg[9]_1 ;
  wire \i_fu_320_reg[9]_2 ;
  wire icmp_ln295_reg_5800;
  wire \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ;
  wire in0_V_TVALID_int_regslice;
  wire \nf_1_fu_316_reg_rep[6] ;
  wire out_V_TREADY_int_regslice;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF5100)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_done_reg1),
        .I1(ap_done_cache),
        .I2(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\ap_CS_fsm_reg[0] [0]));
  LUT5 #(
    .INIT(32'h10001101)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ap_CS_fsm[3]_i_2_n_3 ),
        .I4(ap_NS_fsm10_out),
        .O(\ap_CS_fsm_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_done_reg1),
        .I1(ap_done_cache),
        .I2(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I3(Q[2]),
        .O(\ap_CS_fsm[3]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15000000)) 
    \ap_CS_iter1_fsm[1]_i_1 
       (.I0(\ap_CS_iter1_fsm_reg[1] ),
        .I1(out_V_TREADY_int_regslice),
        .I2(Q[2]),
        .I3(\ap_CS_iter1_fsm_reg[1]_0 ),
        .I4(ap_CS_iter1_fsm_state2),
        .I5(ap_condition_4530),
        .O(ap_NS_iter1_fsm));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80808088)) 
    \ap_CS_iter1_fsm[1]_i_2 
       (.I0(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .I2(in0_V_TVALID_int_regslice),
        .I3(\i_fu_320[0]_i_4_n_3 ),
        .I4(ap_loop_init_int),
        .O(ap_condition_4530));
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1
       (.I0(ap_done_reg1),
        .I1(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    ap_done_cache_i_2
       (.I0(ap_loop_exit_ready_pp0_iter5_reg),
        .I1(\ap_CS_iter1_fsm_reg[1]_0 ),
        .I2(Q[2]),
        .I3(out_V_TREADY_int_regslice),
        .I4(\ap_CS_iter1_fsm_reg[1] ),
        .O(ap_done_reg1));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h7F7F7FFF00000088)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .I2(in0_V_TVALID_int_regslice),
        .I3(\i_fu_320[0]_i_4_n_3 ),
        .I4(ap_loop_init_int),
        .I5(ap_loop_exit_ready_pp0_iter1_reg),
        .O(grp_Thresholding_Batch_fu_546_ap_start_reg_reg));
  LUT4 #(
    .INIT(16'hFF5D)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(ap_condition_4530),
        .I3(ap_done_reg1),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEAAFFAA)) 
    grp_Thresholding_Batch_fu_546_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(\i_fu_320[0]_i_4_n_3 ),
        .I2(ap_loop_init_int),
        .I3(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I4(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88008000)) 
    \i_fu_320[0]_i_1 
       (.I0(in0_V_TVALID_int_regslice),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .I2(ap_loop_init_int),
        .I3(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I4(\i_fu_320[0]_i_4_n_3 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \i_fu_320[0]_i_2 
       (.I0(\i_fu_320_reg[4]_1 ),
        .I1(\i_fu_320_reg[0] ),
        .I2(ap_loop_init_int),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \i_fu_320[0]_i_3 
       (.I0(\ap_CS_iter1_fsm_reg[1] ),
        .I1(out_V_TREADY_int_regslice),
        .I2(Q[2]),
        .I3(\ap_CS_iter1_fsm_reg[1]_0 ),
        .O(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \i_fu_320[0]_i_4 
       (.I0(\i_fu_320_reg[5] ),
        .I1(\i_fu_320_reg[4]_3 ),
        .I2(\i_fu_320_reg[9]_1 ),
        .I3(\i_fu_320_reg[9]_0 ),
        .I4(\i_fu_320_reg[1] ),
        .I5(\i_fu_320_reg[4]_1 ),
        .O(\i_fu_320[0]_i_4_n_3 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \i_fu_320[0]_i_6 
       (.I0(\i_fu_320_reg[4]_0 ),
        .I1(\i_fu_320_reg[9] ),
        .I2(\i_fu_320_reg[9]_2 ),
        .I3(\i_fu_320_reg[4] ),
        .I4(\i_fu_320_reg[4]_2 ),
        .O(\i_fu_320_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \i_fu_320[1]_i_1 
       (.I0(\i_fu_320_reg[4]_1 ),
        .I1(\i_fu_320_reg[4]_0 ),
        .I2(ap_loop_init_int),
        .O(i_2_fu_2007_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \i_fu_320[2]_i_1 
       (.I0(\i_fu_320_reg[4]_0 ),
        .I1(\i_fu_320_reg[4]_1 ),
        .I2(\i_fu_320_reg[4]_2 ),
        .I3(ap_loop_init_int),
        .O(i_2_fu_2007_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \i_fu_320[3]_i_1 
       (.I0(\i_fu_320_reg[4]_2 ),
        .I1(\i_fu_320_reg[4]_1 ),
        .I2(\i_fu_320_reg[4]_0 ),
        .I3(\i_fu_320_reg[4] ),
        .I4(ap_loop_init_int),
        .O(i_2_fu_2007_p2[2]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \i_fu_320[4]_i_1 
       (.I0(\i_fu_320_reg[4] ),
        .I1(\i_fu_320_reg[4]_0 ),
        .I2(\i_fu_320_reg[4]_1 ),
        .I3(\i_fu_320_reg[4]_2 ),
        .I4(\i_fu_320_reg[4]_3 ),
        .I5(\i_fu_320[9]_i_3_n_3 ),
        .O(i_2_fu_2007_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8878)) 
    \i_fu_320[5]_i_1 
       (.I0(\i_fu_320_reg[4]_3 ),
        .I1(\i_fu_320[5]_i_2_n_3 ),
        .I2(\i_fu_320_reg[5] ),
        .I3(ap_loop_init_int),
        .O(i_2_fu_2007_p2[4]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \i_fu_320[5]_i_2 
       (.I0(\i_fu_320_reg[4]_2 ),
        .I1(\i_fu_320_reg[4]_1 ),
        .I2(ap_loop_init_int),
        .I3(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I4(\i_fu_320_reg[4]_0 ),
        .I5(\i_fu_320_reg[4] ),
        .O(\i_fu_320[5]_i_2_n_3 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \i_fu_320[6]_i_1 
       (.I0(\i_fu_320[9]_i_2_n_3 ),
        .I1(\i_fu_320_reg[9]_1 ),
        .I2(ap_loop_init_int),
        .O(i_2_fu_2007_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8878)) 
    \i_fu_320[7]_i_1 
       (.I0(\i_fu_320_reg[9]_1 ),
        .I1(\i_fu_320[9]_i_2_n_3 ),
        .I2(\i_fu_320_reg[9]_0 ),
        .I3(ap_loop_init_int),
        .O(i_2_fu_2007_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80807F80)) 
    \i_fu_320[8]_i_1 
       (.I0(\i_fu_320[9]_i_2_n_3 ),
        .I1(\i_fu_320_reg[9]_1 ),
        .I2(\i_fu_320_reg[9]_0 ),
        .I3(\i_fu_320_reg[9] ),
        .I4(ap_loop_init_int),
        .O(i_2_fu_2007_p2[7]));
  LUT6 #(
    .INIT(64'h7FFF800080008000)) 
    \i_fu_320[9]_i_1 
       (.I0(\i_fu_320[9]_i_2_n_3 ),
        .I1(\i_fu_320_reg[9] ),
        .I2(\i_fu_320_reg[9]_0 ),
        .I3(\i_fu_320_reg[9]_1 ),
        .I4(\i_fu_320_reg[9]_2 ),
        .I5(\i_fu_320[9]_i_3_n_3 ),
        .O(i_2_fu_2007_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i_fu_320[9]_i_2 
       (.I0(\i_fu_320_reg[4]_3 ),
        .I1(\i_fu_320[5]_i_2_n_3 ),
        .I2(\i_fu_320_reg[5] ),
        .O(\i_fu_320[9]_i_2_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i_fu_320[9]_i_3 
       (.I0(ap_loop_init_int),
        .I1(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .O(\i_fu_320[9]_i_3_n_3 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF00000088)) 
    \icmp_ln295_reg_5800[0]_i_1 
       (.I0(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I1(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .I2(in0_V_TVALID_int_regslice),
        .I3(\i_fu_320[0]_i_4_n_3 ),
        .I4(ap_loop_init_int),
        .I5(icmp_ln295_reg_5800),
        .O(grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \nf_1_fu_316_rep[9]_i_1 
       (.I0(\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0] ),
        .I1(in0_V_TVALID_int_regslice),
        .I2(grp_Thresholding_Batch_fu_546_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\nf_1_fu_316_reg_rep[6] ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_regslice_both" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    in0_V_TVALID_int_regslice,
    \B_V_data_1_payload_B_reg[7]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_Thresholding_Batch_fu_546_in0_V_TREADY,
    Q,
    in0_V_TVALID,
    in0_V_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output in0_V_TVALID_int_regslice;
  output [7:0]\B_V_data_1_payload_B_reg[7]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_Thresholding_Batch_fu_546_in0_V_TREADY;
  input [0:0]Q;
  input in0_V_TVALID;
  input [7:0]in0_V_TDATA;

  wire B_V_data_1_load_B;
  wire [7:0]B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[7]_i_1_n_3 ;
  wire [7:0]B_V_data_1_payload_B;
  wire [7:0]\B_V_data_1_payload_B_reg[7]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_3;
  wire \B_V_data_1_state[0]_i_1_n_3 ;
  wire \B_V_data_1_state[1]_i_2_n_3 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_Thresholding_Batch_fu_546_in0_V_TREADY;
  wire [7:0]in0_V_TDATA;
  wire in0_V_TVALID;
  wire in0_V_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(in0_V_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[7]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[0]),
        .Q(B_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[3]),
        .Q(B_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[4]),
        .Q(B_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[6]),
        .Q(B_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[7]_i_1_n_3 ),
        .D(in0_V_TDATA[7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[7]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(in0_V_TVALID_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[0]),
        .Q(B_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[3]),
        .Q(B_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[4]),
        .Q(B_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[6]),
        .Q(B_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in0_V_TDATA[7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_rd_i_1
       (.I0(Q),
        .I1(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .I2(in0_V_TVALID_int_regslice),
        .I3(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_3),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(in0_V_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_3));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_3),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAA2AAAAAAA000000)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .I2(Q),
        .I3(in0_V_TVALID),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .I5(in0_V_TVALID_int_regslice),
        .O(\B_V_data_1_state[0]_i_1_n_3 ));
  LUT5 #(
    .INIT(32'h8F8FFF8F)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(Q),
        .I1(grp_Thresholding_Batch_fu_546_in0_V_TREADY),
        .I2(in0_V_TVALID_int_regslice),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .I4(in0_V_TVALID),
        .O(\B_V_data_1_state[1]_i_2_n_3 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_3 ),
        .Q(in0_V_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_2_n_3 ),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[0]_i_1 
       (.I0(B_V_data_1_payload_B[0]),
        .I1(B_V_data_1_payload_A[0]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[1]_i_1 
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_payload_A[1]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[2]_i_1 
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_payload_A[2]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[3]_i_1 
       (.I0(B_V_data_1_payload_B[3]),
        .I1(B_V_data_1_payload_A[3]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[4]_i_1 
       (.I0(B_V_data_1_payload_B[4]),
        .I1(B_V_data_1_payload_A[4]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[5]_i_1 
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_payload_A[5]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[6]_i_1 
       (.I0(B_V_data_1_payload_B[6]),
        .I1(B_V_data_1_payload_A[6]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \inElem_reg_5804[7]_i_1 
       (.I0(B_V_data_1_payload_B[7]),
        .I1(B_V_data_1_payload_A[7]),
        .I2(B_V_data_1_sel),
        .O(\B_V_data_1_payload_B_reg[7]_0 [7]));
endmodule

(* ORIG_REF_NAME = "Thresholding_Batch_0_regslice_both" *) 
module finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0
   (out_V_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    B_V_data_1_sel_wr,
    \ap_CS_fsm_reg[2] ,
    D,
    ap_NS_fsm10_out,
    out_V_TDATA,
    ap_rst_n_inv,
    ap_clk,
    B_V_data_1_sel_wr_reg_0,
    Q,
    \B_V_data_1_state_reg[1]_0 ,
    ap_rst_n,
    out_V_TREADY,
    grp_Thresholding_Batch_fu_546_out_V_TVALID,
    ap_CS_iter5_fsm_state6,
    \B_V_data_1_payload_A_reg[6]_0 );
  output out_V_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output B_V_data_1_sel_wr;
  output \ap_CS_fsm_reg[2] ;
  output [0:0]D;
  output ap_NS_fsm10_out;
  output [6:0]out_V_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input B_V_data_1_sel_wr_reg_0;
  input [1:0]Q;
  input \B_V_data_1_state_reg[1]_0 ;
  input ap_rst_n;
  input out_V_TREADY;
  input grp_Thresholding_Batch_fu_546_out_V_TVALID;
  input ap_CS_iter5_fsm_state6;
  input [6:0]\B_V_data_1_payload_A_reg[6]_0 ;

  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[6]_i_1_n_3 ;
  wire [6:0]\B_V_data_1_payload_A_reg[6]_0 ;
  wire \B_V_data_1_payload_A_reg_n_3_[0] ;
  wire \B_V_data_1_payload_A_reg_n_3_[1] ;
  wire \B_V_data_1_payload_A_reg_n_3_[2] ;
  wire \B_V_data_1_payload_A_reg_n_3_[3] ;
  wire \B_V_data_1_payload_A_reg_n_3_[4] ;
  wire \B_V_data_1_payload_A_reg_n_3_[5] ;
  wire \B_V_data_1_payload_A_reg_n_3_[6] ;
  wire \B_V_data_1_payload_B_reg_n_3_[0] ;
  wire \B_V_data_1_payload_B_reg_n_3_[1] ;
  wire \B_V_data_1_payload_B_reg_n_3_[2] ;
  wire \B_V_data_1_payload_B_reg_n_3_[3] ;
  wire \B_V_data_1_payload_B_reg_n_3_[4] ;
  wire \B_V_data_1_payload_B_reg_n_3_[5] ;
  wire \B_V_data_1_payload_B_reg_n_3_[6] ;
  wire B_V_data_1_sel_rd_i_1__0_n_3;
  wire B_V_data_1_sel_rd_reg_n_3;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_reg_0;
  wire \B_V_data_1_state[0]_i_1__0_n_3 ;
  wire \B_V_data_1_state[1]_i_1__0_n_3 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_CS_iter5_fsm_state6;
  wire ap_NS_fsm10_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_Thresholding_Batch_fu_546_out_V_TVALID;
  wire [6:0]out_V_TDATA;
  wire out_V_TREADY;
  wire out_V_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[6]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(out_V_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[6]_i_1_n_3 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[6]_i_1_n_3 ),
        .D(\B_V_data_1_payload_A_reg[6]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[6]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[6]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(out_V_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(B_V_data_1_sel_rd_i_1__0_n_3));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_3),
        .Q(B_V_data_1_sel_rd_reg_n_3),
        .R(ap_rst_n_inv));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_reg_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(out_V_TREADY),
        .I2(grp_Thresholding_Batch_fu_546_out_V_TVALID),
        .I3(out_V_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1__0_n_3 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBBBFBFBFB)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(out_V_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(Q[0]),
        .I4(ap_CS_iter5_fsm_state6),
        .I5(\B_V_data_1_state_reg[1]_0 ),
        .O(\B_V_data_1_state[1]_i_1__0_n_3 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_3 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__0_n_3 ),
        .Q(out_V_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(out_V_TREADY),
        .I1(out_V_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(Q[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(Q[1]),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(out_V_TREADY_int_regslice),
        .I3(out_V_TREADY),
        .O(ap_NS_fsm10_out));
  LUT3 #(
    .INIT(8'hF8)) 
    ap_loop_exit_ready_pp0_iter5_reg_i_2
       (.I0(Q[0]),
        .I1(out_V_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .O(\ap_CS_fsm_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_V_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_3_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_3_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_3),
        .O(out_V_TDATA[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
