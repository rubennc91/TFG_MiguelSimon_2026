-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_5_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 10; 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_5_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1000111100", 1 => "1001000111", 2 => "1000110110", 3 => "1000101011", 
    4 => "1000111000", 5 => "1001000110", 6 => "1000101111", 7 => "1000110101", 
    8 => "1000110000", 9 => "1000110110", 10 => "1000101000", 11 => "1001011001", 
    12 => "1000111000", 13 => "1000010000", 14 => "1000010111", 15 => "1000111111", 
    16 => "1000111000", 17 => "1000001100", 18 => "1001001011", 19 => "1000101101", 
    20 => "1001010000", 21 => "1000110100", 22 => "1000110011", 23 => "1001000001", 
    24 => "1001000011", 25 => "1000011111", 26 => "1000110100", 27 => "1000111000", 
    28 => "1000110010", 29 => "1001000100", 30 => "1000101001", 31 => "1000011110", 
    32 => "1001001110", 33 => "1000101110", 34 => "1000101110", 35 => "1001000010", 
    36 => "1000000111", 37 => "1001001001", 38 => "1000011110", 39 => "1001000110", 
    40 => "1000000101", 41 => "1000010100", 42 => "1000100011", 43 => "1000011000", 
    44 => "1000101000", 45 => "1000111110", 46 => "1000101000", 47 => "1000101101", 
    48 => "1000101110", 49 => "1001000011", 50 => "1001000001", 51 => "1000101111", 
    52 => "1001011001", 53 => "1000111111", 54 => "1000100010", 55 => "1000011101", 
    56 => "1001000110", 57 => "1000111000", 58 => "1001010010", 59 => "0111111101", 
    60 => "1000101101", 61 => "1001010110", 62 => "1001000001", 63 => "1000011111");



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

