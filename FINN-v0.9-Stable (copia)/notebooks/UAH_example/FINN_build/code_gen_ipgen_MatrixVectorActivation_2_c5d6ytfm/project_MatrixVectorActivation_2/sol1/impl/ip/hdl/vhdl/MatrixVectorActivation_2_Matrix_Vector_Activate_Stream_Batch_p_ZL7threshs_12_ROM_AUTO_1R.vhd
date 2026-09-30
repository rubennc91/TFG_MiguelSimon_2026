-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_12_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_12_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10100000010", 1 => "10100001101", 2 => "10011111100", 3 => "10011110001", 
    4 => "10011111110", 5 => "10100001100", 6 => "10011110101", 7 => "10011111011", 
    8 => "10011110110", 9 => "10011111100", 10 => "10011101110", 11 => "10100011111", 
    12 => "10011111110", 13 => "10011010110", 14 => "10011011101", 15 => "10100000101", 
    16 => "10011111110", 17 => "10011010010", 18 => "10100010001", 19 => "10011110011", 
    20 => "10100010110", 21 => "10011111010", 22 => "10011111001", 23 => "10100000111", 
    24 => "10100001001", 25 => "10011100101", 26 => "10011111010", 27 => "10011111110", 
    28 => "10011111000", 29 => "10100001010", 30 => "10011101111", 31 => "10011100100", 
    32 => "10100010100", 33 => "10011110100", 34 => "10011110100", 35 => "10100001000", 
    36 => "10011001101", 37 => "10100001111", 38 => "10011100100", 39 => "10100001100", 
    40 => "10011001011", 41 => "10011011010", 42 => "10011101001", 43 => "10011011110", 
    44 => "10011101110", 45 => "10100000100", 46 => "10011101110", 47 => "10011110011", 
    48 => "10011110100", 49 => "10100001001", 50 => "10100000111", 51 => "10011110101", 
    52 => "10100011111", 53 => "10100000101", 54 => "10011101000", 55 => "10011100011", 
    56 => "10100001100", 57 => "10011111110", 58 => "10100011000", 59 => "10011000011", 
    60 => "10011110011", 61 => "10100011100", 62 => "10100000111", 63 => "10011100101");



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

