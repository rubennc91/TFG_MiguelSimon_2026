-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_14_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_14_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10111001101", 1 => "10111011000", 2 => "10111000111", 3 => "10110111100", 
    4 => "10111001001", 5 => "10111010111", 6 => "10111000000", 7 => "10111000110", 
    8 => "10111000001", 9 => "10111000111", 10 => "10110111001", 11 => "10111101010", 
    12 => "10111001001", 13 => "10110100001", 14 => "10110101000", 15 => "10111010000", 
    16 => "10111001001", 17 => "10110011101", 18 => "10111011100", 19 => "10110111110", 
    20 => "10111100001", 21 => "10111000101", 22 => "10111000100", 23 => "10111010010", 
    24 => "10111010100", 25 => "10110110000", 26 => "10111000101", 27 => "10111001001", 
    28 => "10111000011", 29 => "10111010101", 30 => "10110111010", 31 => "10110101111", 
    32 => "10111011111", 33 => "10110111111", 34 => "10110111111", 35 => "10111010011", 
    36 => "10110011000", 37 => "10111011010", 38 => "10110101111", 39 => "10111010111", 
    40 => "10110010110", 41 => "10110100101", 42 => "10110110100", 43 => "10110101001", 
    44 => "10110111001", 45 => "10111001111", 46 => "10110111001", 47 => "10110111110", 
    48 => "10110111111", 49 => "10111010100", 50 => "10111010010", 51 => "10111000000", 
    52 => "10111101010", 53 => "10111010000", 54 => "10110110011", 55 => "10110101110", 
    56 => "10111010111", 57 => "10111001001", 58 => "10111100011", 59 => "10110001110", 
    60 => "10110111110", 61 => "10111100111", 62 => "10111010010", 63 => "10110110000");



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

