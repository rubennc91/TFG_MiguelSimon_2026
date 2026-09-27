-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_13_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 10; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_13_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1000100101", 1 => "1000010000", 2 => "1001011001", 3 => "1000010111", 
    4 => "1001001101", 5 => "1000010101", 6 => "1000000101", 7 => "1000011100", 
    8 => "1001010101", 9 => "1000010001", 10 => "1000101100", 11 => "0110101000", 
    12 => "1001101000", 13 => "1001001101", 14 => "1000001100", 15 => "1000110011", 
    16 => "1000111011", 17 => "0111111101", 18 => "0110101001", 19 => "1001011001", 
    20 => "1001010100", 21 => "1001000110", 22 => "0111110111", 23 => "1000110101", 
    24 => "1000000011", 25 => "1000111111", 26 => "1000110010", 27 => "1000101000", 
    28 => "0110110100", 29 => "0111110011", 30 => "0110111101", 31 => "1000101110");



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

