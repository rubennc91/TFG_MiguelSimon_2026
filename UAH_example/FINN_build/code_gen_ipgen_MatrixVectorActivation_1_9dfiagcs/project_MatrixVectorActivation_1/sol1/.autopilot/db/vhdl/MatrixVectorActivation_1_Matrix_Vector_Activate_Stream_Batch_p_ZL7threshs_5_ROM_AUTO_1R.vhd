-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_5_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_5_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "011101010", 1 => "011010101", 2 => "100011110", 3 => "011011100", 
    4 => "100010010", 5 => "011011010", 6 => "011001010", 7 => "011100001", 
    8 => "100011010", 9 => "011010110", 10 => "011110001", 11 => "001101101", 
    12 => "100101101", 13 => "100010010", 14 => "011010001", 15 => "011111000", 
    16 => "100000000", 17 => "011000010", 18 => "001101110", 19 => "100011110", 
    20 => "100011001", 21 => "100001011", 22 => "010111100", 23 => "011111010", 
    24 => "011001000", 25 => "100000100", 26 => "011110111", 27 => "011101101", 
    28 => "001111001", 29 => "010111000", 30 => "010000010", 31 => "011110011");



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

