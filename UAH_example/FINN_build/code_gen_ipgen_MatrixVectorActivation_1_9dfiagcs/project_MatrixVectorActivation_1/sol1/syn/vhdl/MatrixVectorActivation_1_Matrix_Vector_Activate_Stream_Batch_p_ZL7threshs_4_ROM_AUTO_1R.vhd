-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_4_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 9; 
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


architecture rtl of MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_4_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "011000011", 1 => "010101110", 2 => "011110111", 3 => "010110101", 
    4 => "011101011", 5 => "010110011", 6 => "010100011", 7 => "010111010", 
    8 => "011110011", 9 => "010101111", 10 => "011001010", 11 => "001000110", 
    12 => "100000110", 13 => "011101011", 14 => "010101010", 15 => "011010001", 
    16 => "011011001", 17 => "010011011", 18 => "001000111", 19 => "011110111", 
    20 => "011110010", 21 => "011100100", 22 => "010010101", 23 => "011010011", 
    24 => "010100001", 25 => "011011101", 26 => "011010000", 27 => "011000110", 
    28 => "001010010", 29 => "010010001", 30 => "001011011", 31 => "011001100");



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

