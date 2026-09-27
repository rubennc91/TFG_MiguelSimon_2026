-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_3_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 9; 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_3_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "101110001", 1 => "101111100", 2 => "101101011", 3 => "101100000", 
    4 => "101101101", 5 => "101111011", 6 => "101100100", 7 => "101101010", 
    8 => "101100101", 9 => "101101011", 10 => "101011101", 11 => "110001110", 
    12 => "101101101", 13 => "101000101", 14 => "101001100", 15 => "101110100", 
    16 => "101101101", 17 => "101000001", 18 => "110000000", 19 => "101100010", 
    20 => "110000101", 21 => "101101001", 22 => "101101000", 23 => "101110110", 
    24 => "101111000", 25 => "101010100", 26 => "101101001", 27 => "101101101", 
    28 => "101100111", 29 => "101111001", 30 => "101011110", 31 => "101010011", 
    32 => "110000011", 33 => "101100011", 34 => "101100011", 35 => "101110111", 
    36 => "100111100", 37 => "101111110", 38 => "101010011", 39 => "101111011", 
    40 => "100111010", 41 => "101001001", 42 => "101011000", 43 => "101001101", 
    44 => "101011101", 45 => "101110011", 46 => "101011101", 47 => "101100010", 
    48 => "101100011", 49 => "101111000", 50 => "101110110", 51 => "101100100", 
    52 => "110001110", 53 => "101110100", 54 => "101010111", 55 => "101010010", 
    56 => "101111011", 57 => "101101101", 58 => "110000111", 59 => "100110010", 
    60 => "101100010", 61 => "110001011", 62 => "101110110", 63 => "101010100");



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

