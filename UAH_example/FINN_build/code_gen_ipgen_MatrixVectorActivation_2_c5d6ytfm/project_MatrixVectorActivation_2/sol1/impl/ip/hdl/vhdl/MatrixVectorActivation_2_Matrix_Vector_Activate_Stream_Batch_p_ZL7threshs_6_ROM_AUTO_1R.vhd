-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_6_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_6_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1010100010", 1 => "1010101101", 2 => "1010011100", 3 => "1010010001", 
    4 => "1010011110", 5 => "1010101100", 6 => "1010010101", 7 => "1010011011", 
    8 => "1010010110", 9 => "1010011100", 10 => "1010001110", 11 => "1010111111", 
    12 => "1010011110", 13 => "1001110110", 14 => "1001111101", 15 => "1010100101", 
    16 => "1010011110", 17 => "1001110010", 18 => "1010110001", 19 => "1010010011", 
    20 => "1010110110", 21 => "1010011010", 22 => "1010011001", 23 => "1010100111", 
    24 => "1010101001", 25 => "1010000101", 26 => "1010011010", 27 => "1010011110", 
    28 => "1010011000", 29 => "1010101010", 30 => "1010001111", 31 => "1010000100", 
    32 => "1010110100", 33 => "1010010100", 34 => "1010010100", 35 => "1010101000", 
    36 => "1001101101", 37 => "1010101111", 38 => "1010000100", 39 => "1010101100", 
    40 => "1001101011", 41 => "1001111010", 42 => "1010001001", 43 => "1001111110", 
    44 => "1010001110", 45 => "1010100100", 46 => "1010001110", 47 => "1010010011", 
    48 => "1010010100", 49 => "1010101001", 50 => "1010100111", 51 => "1010010101", 
    52 => "1010111111", 53 => "1010100101", 54 => "1010001000", 55 => "1010000011", 
    56 => "1010101100", 57 => "1010011110", 58 => "1010111000", 59 => "1001100011", 
    60 => "1010010011", 61 => "1010111100", 62 => "1010100111", 63 => "1010000101");



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

