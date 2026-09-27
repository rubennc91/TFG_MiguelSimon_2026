-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_11_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 10; 
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


architecture rtl of MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_11_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0111010110", 1 => "0111000001", 2 => "1000001010", 3 => "0111001000", 
    4 => "0111111110", 5 => "0111000110", 6 => "0110110110", 7 => "0111001101", 
    8 => "1000000110", 9 => "0111000010", 10 => "0111011101", 11 => "0101011001", 
    12 => "1000011001", 13 => "0111111110", 14 => "0110111101", 15 => "0111100100", 
    16 => "0111101100", 17 => "0110101110", 18 => "0101011010", 19 => "1000001010", 
    20 => "1000000101", 21 => "0111110111", 22 => "0110101000", 23 => "0111100110", 
    24 => "0110110100", 25 => "0111110000", 26 => "0111100011", 27 => "0111011001", 
    28 => "0101100101", 29 => "0110100100", 30 => "0101101110", 31 => "0111011111");



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

