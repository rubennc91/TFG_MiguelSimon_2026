-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_2_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_2_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "100001100", 1 => "100010111", 2 => "100000110", 3 => "011111011", 
    4 => "100001000", 5 => "100010110", 6 => "011111111", 7 => "100000101", 
    8 => "100000000", 9 => "100000110", 10 => "011111000", 11 => "100101001", 
    12 => "100001000", 13 => "011100000", 14 => "011100111", 15 => "100001111", 
    16 => "100001000", 17 => "011011100", 18 => "100011011", 19 => "011111101", 
    20 => "100100000", 21 => "100000100", 22 => "100000011", 23 => "100010001", 
    24 => "100010011", 25 => "011101111", 26 => "100000100", 27 => "100001000", 
    28 => "100000010", 29 => "100010100", 30 => "011111001", 31 => "011101110", 
    32 => "100011110", 33 => "011111110", 34 => "011111110", 35 => "100010010", 
    36 => "011010111", 37 => "100011001", 38 => "011101110", 39 => "100010110", 
    40 => "011010101", 41 => "011100100", 42 => "011110011", 43 => "011101000", 
    44 => "011111000", 45 => "100001110", 46 => "011111000", 47 => "011111101", 
    48 => "011111110", 49 => "100010011", 50 => "100010001", 51 => "011111111", 
    52 => "100101001", 53 => "100001111", 54 => "011110010", 55 => "011101101", 
    56 => "100010110", 57 => "100001000", 58 => "100100010", 59 => "011001101", 
    60 => "011111101", 61 => "100100110", 62 => "100010001", 63 => "011101111");



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

