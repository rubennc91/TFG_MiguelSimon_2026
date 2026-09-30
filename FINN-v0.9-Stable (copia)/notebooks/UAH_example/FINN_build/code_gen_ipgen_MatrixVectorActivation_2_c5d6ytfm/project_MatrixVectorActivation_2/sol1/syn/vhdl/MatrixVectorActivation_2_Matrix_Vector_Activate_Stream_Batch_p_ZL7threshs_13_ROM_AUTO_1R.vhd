-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_13_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_2_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_13_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10101100111", 1 => "10101110010", 2 => "10101100001", 3 => "10101010110", 
    4 => "10101100011", 5 => "10101110001", 6 => "10101011010", 7 => "10101100000", 
    8 => "10101011011", 9 => "10101100001", 10 => "10101010011", 11 => "10110000100", 
    12 => "10101100011", 13 => "10100111011", 14 => "10101000010", 15 => "10101101010", 
    16 => "10101100011", 17 => "10100110111", 18 => "10101110110", 19 => "10101011000", 
    20 => "10101111011", 21 => "10101011111", 22 => "10101011110", 23 => "10101101100", 
    24 => "10101101110", 25 => "10101001010", 26 => "10101011111", 27 => "10101100011", 
    28 => "10101011101", 29 => "10101101111", 30 => "10101010100", 31 => "10101001001", 
    32 => "10101111001", 33 => "10101011001", 34 => "10101011001", 35 => "10101101101", 
    36 => "10100110010", 37 => "10101110100", 38 => "10101001001", 39 => "10101110001", 
    40 => "10100110000", 41 => "10100111111", 42 => "10101001110", 43 => "10101000011", 
    44 => "10101010011", 45 => "10101101001", 46 => "10101010011", 47 => "10101011000", 
    48 => "10101011001", 49 => "10101101110", 50 => "10101101100", 51 => "10101011010", 
    52 => "10110000100", 53 => "10101101010", 54 => "10101001101", 55 => "10101001000", 
    56 => "10101110001", 57 => "10101100011", 58 => "10101111101", 59 => "10100101000", 
    60 => "10101011000", 61 => "10110000001", 62 => "10101101100", 63 => "10101001010");



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

