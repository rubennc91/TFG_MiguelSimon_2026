-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_11_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_11_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10010011101", 1 => "10010101000", 2 => "10010010111", 3 => "10010001100", 
    4 => "10010011001", 5 => "10010100111", 6 => "10010010000", 7 => "10010010110", 
    8 => "10010010001", 9 => "10010010111", 10 => "10010001001", 11 => "10010111010", 
    12 => "10010011001", 13 => "10001110001", 14 => "10001111000", 15 => "10010100000", 
    16 => "10010011001", 17 => "10001101101", 18 => "10010101100", 19 => "10010001110", 
    20 => "10010110001", 21 => "10010010101", 22 => "10010010100", 23 => "10010100010", 
    24 => "10010100100", 25 => "10010000000", 26 => "10010010101", 27 => "10010011001", 
    28 => "10010010011", 29 => "10010100101", 30 => "10010001010", 31 => "10001111111", 
    32 => "10010101111", 33 => "10010001111", 34 => "10010001111", 35 => "10010100011", 
    36 => "10001101000", 37 => "10010101010", 38 => "10001111111", 39 => "10010100111", 
    40 => "10001100110", 41 => "10001110101", 42 => "10010000100", 43 => "10001111001", 
    44 => "10010001001", 45 => "10010011111", 46 => "10010001001", 47 => "10010001110", 
    48 => "10010001111", 49 => "10010100100", 50 => "10010100010", 51 => "10010010000", 
    52 => "10010111010", 53 => "10010100000", 54 => "10010000011", 55 => "10001111110", 
    56 => "10010100111", 57 => "10010011001", 58 => "10010110011", 59 => "10001011110", 
    60 => "10010001110", 61 => "10010110111", 62 => "10010100010", 63 => "10010000000");



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

