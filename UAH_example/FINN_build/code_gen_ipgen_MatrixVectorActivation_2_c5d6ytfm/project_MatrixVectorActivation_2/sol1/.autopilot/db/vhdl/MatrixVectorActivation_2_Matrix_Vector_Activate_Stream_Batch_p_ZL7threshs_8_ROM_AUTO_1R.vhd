-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_8_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_8_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "101101100", 1 => "101110111", 2 => "101100110", 3 => "101011011", 
    4 => "101101000", 5 => "101110110", 6 => "101011111", 7 => "101100101", 
    8 => "101100000", 9 => "101100110", 10 => "101011000", 11 => "110001001", 
    12 => "101101000", 13 => "101000000", 14 => "101000111", 15 => "101101111", 
    16 => "101101000", 17 => "100111100", 18 => "101111011", 19 => "101011101", 
    20 => "110000000", 21 => "101100100", 22 => "101100011", 23 => "101110001", 
    24 => "101110011", 25 => "101001111", 26 => "101100100", 27 => "101101000", 
    28 => "101100010", 29 => "101110100", 30 => "101011001", 31 => "101001110", 
    32 => "101111110", 33 => "101011110", 34 => "101011110", 35 => "101110010", 
    36 => "100110111", 37 => "101111001", 38 => "101001110", 39 => "101110110", 
    40 => "100110101", 41 => "101000100", 42 => "101010011", 43 => "101001000", 
    44 => "101011000", 45 => "101101110", 46 => "101011000", 47 => "101011101", 
    48 => "101011110", 49 => "101110011", 50 => "101110001", 51 => "101011111", 
    52 => "110001001", 53 => "101101111", 54 => "101010010", 55 => "101001101", 
    56 => "101110110", 57 => "101101000", 58 => "110000010", 59 => "100101101", 
    60 => "101011101", 61 => "110000110", 62 => "101110001", 63 => "101001111");



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

