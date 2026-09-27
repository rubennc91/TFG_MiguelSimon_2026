-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_4_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 8; 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_4_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "11010111", 1 => "11100010", 2 => "11010001", 3 => "11000110", 
    4 => "11010011", 5 => "11100001", 6 => "11001010", 7 => "11010000", 
    8 => "11001011", 9 => "11010001", 10 => "11000011", 11 => "11110100", 
    12 => "11010011", 13 => "10101011", 14 => "10110010", 15 => "11011010", 
    16 => "11010011", 17 => "10100111", 18 => "11100110", 19 => "11001000", 
    20 => "11101011", 21 => "11001111", 22 => "11001110", 23 => "11011100", 
    24 => "11011110", 25 => "10111010", 26 => "11001111", 27 => "11010011", 
    28 => "11001101", 29 => "11011111", 30 => "11000100", 31 => "10111001", 
    32 => "11101001", 33 => "11001001", 34 => "11001001", 35 => "11011101", 
    36 => "10100010", 37 => "11100100", 38 => "10111001", 39 => "11100001", 
    40 => "10100000", 41 => "10101111", 42 => "10111110", 43 => "10110011", 
    44 => "11000011", 45 => "11011001", 46 => "11000011", 47 => "11001000", 
    48 => "11001001", 49 => "11011110", 50 => "11011100", 51 => "11001010", 
    52 => "11110100", 53 => "11011010", 54 => "10111101", 55 => "10111000", 
    56 => "11100001", 57 => "11010011", 58 => "11101101", 59 => "10011000", 
    60 => "11001000", 61 => "11110001", 62 => "11011100", 63 => "10111010");



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

