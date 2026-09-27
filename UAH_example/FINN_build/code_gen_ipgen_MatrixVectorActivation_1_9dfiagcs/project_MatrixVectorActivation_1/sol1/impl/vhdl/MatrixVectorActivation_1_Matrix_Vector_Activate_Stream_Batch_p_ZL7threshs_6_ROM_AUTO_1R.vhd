-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_6_ROM_AUTO_1R is 
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


architecture rtl of MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_6_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "100010001", 1 => "011111100", 2 => "101000101", 3 => "100000011", 
    4 => "100111001", 5 => "100000001", 6 => "011110001", 7 => "100001000", 
    8 => "101000001", 9 => "011111101", 10 => "100011000", 11 => "010010100", 
    12 => "101010100", 13 => "100111001", 14 => "011111000", 15 => "100011111", 
    16 => "100100111", 17 => "011101001", 18 => "010010101", 19 => "101000101", 
    20 => "101000000", 21 => "100110010", 22 => "011100011", 23 => "100100001", 
    24 => "011101111", 25 => "100101011", 26 => "100011110", 27 => "100010100", 
    28 => "010100000", 29 => "011011111", 30 => "010101001", 31 => "100011010");



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

