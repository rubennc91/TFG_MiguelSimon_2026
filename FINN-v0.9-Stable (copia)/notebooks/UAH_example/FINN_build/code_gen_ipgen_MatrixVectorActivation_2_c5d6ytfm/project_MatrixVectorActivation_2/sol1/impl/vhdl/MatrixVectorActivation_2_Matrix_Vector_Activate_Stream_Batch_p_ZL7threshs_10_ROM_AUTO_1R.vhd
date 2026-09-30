-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_10_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 11; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_10_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10000110111", 1 => "10001000010", 2 => "10000110001", 3 => "10000100110", 
    4 => "10000110011", 5 => "10001000001", 6 => "10000101010", 7 => "10000110000", 
    8 => "10000101011", 9 => "10000110001", 10 => "10000100011", 11 => "10001010100", 
    12 => "10000110011", 13 => "10000001011", 14 => "10000010010", 15 => "10000111010", 
    16 => "10000110011", 17 => "10000000111", 18 => "10001000110", 19 => "10000101000", 
    20 => "10001001011", 21 => "10000101111", 22 => "10000101110", 23 => "10000111100", 
    24 => "10000111110", 25 => "10000011010", 26 => "10000101111", 27 => "10000110011", 
    28 => "10000101101", 29 => "10000111111", 30 => "10000100100", 31 => "10000011001", 
    32 => "10001001001", 33 => "10000101001", 34 => "10000101001", 35 => "10000111101", 
    36 => "10000000010", 37 => "10001000100", 38 => "10000011001", 39 => "10001000001", 
    40 => "10000000000", 41 => "10000001111", 42 => "10000011110", 43 => "10000010011", 
    44 => "10000100011", 45 => "10000111001", 46 => "10000100011", 47 => "10000101000", 
    48 => "10000101001", 49 => "10000111110", 50 => "10000111100", 51 => "10000101010", 
    52 => "10001010100", 53 => "10000111010", 54 => "10000011101", 55 => "10000011000", 
    56 => "10001000001", 57 => "10000110011", 58 => "10001001101", 59 => "01111111000", 
    60 => "10000101000", 61 => "10001010001", 62 => "10000111100", 63 => "10000011010");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

