-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_1_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10100111", 1 => "10110010", 2 => "10100001", 3 => "10010110", 
    4 => "10100011", 5 => "10110001", 6 => "10011010", 7 => "10100000", 
    8 => "10011011", 9 => "10100001", 10 => "10010011", 11 => "11000100", 
    12 => "10100011", 13 => "01111011", 14 => "10000010", 15 => "10101010", 
    16 => "10100011", 17 => "01110111", 18 => "10110110", 19 => "10011000", 
    20 => "10111011", 21 => "10011111", 22 => "10011110", 23 => "10101100", 
    24 => "10101110", 25 => "10001010", 26 => "10011111", 27 => "10100011", 
    28 => "10011101", 29 => "10101111", 30 => "10010100", 31 => "10001001", 
    32 => "10111001", 33 => "10011001", 34 => "10011001", 35 => "10101101", 
    36 => "01110010", 37 => "10110100", 38 => "10001001", 39 => "10110001", 
    40 => "01110000", 41 => "01111111", 42 => "10001110", 43 => "10000011", 
    44 => "10010011", 45 => "10101001", 46 => "10010011", 47 => "10011000", 
    48 => "10011001", 49 => "10101110", 50 => "10101100", 51 => "10011010", 
    52 => "11000100", 53 => "10101010", 54 => "10001101", 55 => "10001000", 
    56 => "10110001", 57 => "10100011", 58 => "10111101", 59 => "01101000", 
    60 => "10011000", 61 => "11000001", 62 => "10101100", 63 => "10001010");



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

