// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_202_ROM_2P_LUTRAM_1R (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 8;
parameter AddressWidth = 10;
parameter AddressRange = 576;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
    $readmemh("Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_202_ROM_2P_LUTRAM_1R.dat", rom0);
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule

