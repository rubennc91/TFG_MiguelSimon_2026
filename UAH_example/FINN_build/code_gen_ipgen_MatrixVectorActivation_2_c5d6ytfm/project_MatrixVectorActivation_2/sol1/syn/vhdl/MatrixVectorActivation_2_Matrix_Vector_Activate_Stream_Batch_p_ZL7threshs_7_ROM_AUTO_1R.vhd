-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_7_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_7_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1100000111", 1 => "1100010010", 2 => "1100000001", 3 => "1011110110", 
    4 => "1100000011", 5 => "1100010001", 6 => "1011111010", 7 => "1100000000", 
    8 => "1011111011", 9 => "1100000001", 10 => "1011110011", 11 => "1100100100", 
    12 => "1100000011", 13 => "1011011011", 14 => "1011100010", 15 => "1100001010", 
    16 => "1100000011", 17 => "1011010111", 18 => "1100010110", 19 => "1011111000", 
    20 => "1100011011", 21 => "1011111111", 22 => "1011111110", 23 => "1100001100", 
    24 => "1100001110", 25 => "1011101010", 26 => "1011111111", 27 => "1100000011", 
    28 => "1011111101", 29 => "1100001111", 30 => "1011110100", 31 => "1011101001", 
    32 => "1100011001", 33 => "1011111001", 34 => "1011111001", 35 => "1100001101", 
    36 => "1011010010", 37 => "1100010100", 38 => "1011101001", 39 => "1100010001", 
    40 => "1011010000", 41 => "1011011111", 42 => "1011101110", 43 => "1011100011", 
    44 => "1011110011", 45 => "1100001001", 46 => "1011110011", 47 => "1011111000", 
    48 => "1011111001", 49 => "1100001110", 50 => "1100001100", 51 => "1011111010", 
    52 => "1100100100", 53 => "1100001010", 54 => "1011101101", 55 => "1011101000", 
    56 => "1100010001", 57 => "1100000011", 58 => "1100011101", 59 => "1011001000", 
    60 => "1011111000", 61 => "1100100001", 62 => "1100001100", 63 => "1011101010");



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

