-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_0_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 7; 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1000001", 1 => "1001100", 2 => "0111011", 3 => "0110000", 
    4 => "0111101", 5 => "1001011", 6 => "0110100", 7 => "0111010", 
    8 => "0110101", 9 => "0111011", 10 => "0101101", 11 => "1011110", 
    12 => "0111101", 13 => "0010101", 14 => "0011100", 15 => "1000100", 
    16 => "0111101", 17 => "0010001", 18 => "1010000", 19 => "0110010", 
    20 => "1010101", 21 => "0111001", 22 => "0111000", 23 => "1000110", 
    24 => "1001000", 25 => "0100100", 26 => "0111001", 27 => "0111101", 
    28 => "0110111", 29 => "1001001", 30 => "0101110", 31 => "0100011", 
    32 => "1010011", 33 => "0110011", 34 => "0110011", 35 => "1000111", 
    36 => "0001100", 37 => "1001110", 38 => "0100011", 39 => "1001011", 
    40 => "0001010", 41 => "0011001", 42 => "0101000", 43 => "0011101", 
    44 => "0101101", 45 => "1000011", 46 => "0101101", 47 => "0110010", 
    48 => "0110011", 49 => "1001000", 50 => "1000110", 51 => "0110100", 
    52 => "1011110", 53 => "1000100", 54 => "0100111", 55 => "0100010", 
    56 => "1001011", 57 => "0111101", 58 => "1010111", 59 => "0000010", 
    60 => "0110010", 61 => "1011011", 62 => "1000110", 63 => "0100100");



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

