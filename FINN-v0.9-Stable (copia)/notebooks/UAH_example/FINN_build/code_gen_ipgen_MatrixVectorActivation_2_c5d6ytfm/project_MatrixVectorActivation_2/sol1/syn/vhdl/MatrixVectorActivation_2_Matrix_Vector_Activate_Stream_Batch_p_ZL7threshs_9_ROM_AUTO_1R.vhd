-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_9_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_9_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "11010010", 1 => "11011101", 2 => "11001100", 3 => "11000001", 
    4 => "11001110", 5 => "11011100", 6 => "11000101", 7 => "11001011", 
    8 => "11000110", 9 => "11001100", 10 => "10111110", 11 => "11101111", 
    12 => "11001110", 13 => "10100110", 14 => "10101101", 15 => "11010101", 
    16 => "11001110", 17 => "10100010", 18 => "11100001", 19 => "11000011", 
    20 => "11100110", 21 => "11001010", 22 => "11001001", 23 => "11010111", 
    24 => "11011001", 25 => "10110101", 26 => "11001010", 27 => "11001110", 
    28 => "11001000", 29 => "11011010", 30 => "10111111", 31 => "10110100", 
    32 => "11100100", 33 => "11000100", 34 => "11000100", 35 => "11011000", 
    36 => "10011101", 37 => "11011111", 38 => "10110100", 39 => "11011100", 
    40 => "10011011", 41 => "10101010", 42 => "10111001", 43 => "10101110", 
    44 => "10111110", 45 => "11010100", 46 => "10111110", 47 => "11000011", 
    48 => "11000100", 49 => "11011001", 50 => "11010111", 51 => "11000101", 
    52 => "11101111", 53 => "11010101", 54 => "10111000", 55 => "10110011", 
    56 => "11011100", 57 => "11001110", 58 => "11101000", 59 => "10010011", 
    60 => "11000011", 61 => "11101100", 62 => "11010111", 63 => "10110101");



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

