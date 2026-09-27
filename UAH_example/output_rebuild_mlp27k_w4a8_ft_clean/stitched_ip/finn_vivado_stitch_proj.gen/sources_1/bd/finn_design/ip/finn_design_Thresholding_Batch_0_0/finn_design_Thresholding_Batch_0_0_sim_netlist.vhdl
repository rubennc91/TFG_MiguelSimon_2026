-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Jul  8 10:44:55 2026
-- Host        : finn_dev_miguel_tfg running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /tmp/FINN_build_mlp27k_w4a8_ft_clean/vivado_stitch_proj_8ba8a6h2/finn_vivado_stitch_proj.gen/sources_1/bd/finn_design/ip/finn_design_Thresholding_Batch_0_0/finn_design_Thresholding_Batch_0_0_sim_netlist.vhdl
-- Design      : finn_design_Thresholding_Batch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R is
  port (
    \q0_reg[0]_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \inElem_reg_5804_pp0_iter1_reg_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_ZL7threshs_128_ce0 : in STD_LOGIC;
    \q0_reg[0]_1\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \add_ln840_35_reg_6620_reg[2]_i_4_0\ : in STD_LOGIC;
    \add_ln840_35_reg_6620_reg[2]_i_4_1\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_35_reg_6620_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R : entity is "Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R is
  signal \add_ln840_35_reg_6620[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \^q0_reg[0]_0\ : STD_LOGIC;
  signal \NLW_add_ln840_35_reg_6620_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_8_reg_6585_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \add_ln840_35_reg_6620_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_8_reg_6585_reg[2]_i_4\ : label is 11;
begin
  \q0_reg[0]_0\ <= \^q0_reg[0]_0\;
\add_ln840_35_reg_6620[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(4),
      I1 => \add_ln840_35_reg_6620_reg[2]_i_4_0\,
      I2 => \^q0_reg[0]_0\,
      O => \add_ln840_35_reg_6620[2]_i_18_n_3\
    );
\add_ln840_35_reg_6620[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(2),
      I1 => \add_ln840_35_reg_6620_reg[2]_i_4_1\,
      I2 => \^q0_reg[0]_0\,
      O => \add_ln840_35_reg_6620[2]_i_19_n_3\
    );
\add_ln840_35_reg_6620[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^q0_reg[0]_0\,
      O => \add_ln840_35_reg_6620[2]_i_20_n_3\
    );
\add_ln840_35_reg_6620[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_35_reg_6620_reg[2]_i_4_0\,
      I1 => \^q0_reg[0]_0\,
      I2 => Q(4),
      O => \add_ln840_35_reg_6620[2]_i_22_n_3\
    );
\add_ln840_35_reg_6620[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_35_reg_6620_reg[2]_i_4_1\,
      I1 => \^q0_reg[0]_0\,
      I2 => Q(2),
      O => \add_ln840_35_reg_6620[2]_i_23_n_3\
    );
\add_ln840_35_reg_6620[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => Q(1),
      I1 => \^q0_reg[0]_0\,
      I2 => Q(0),
      O => \add_ln840_35_reg_6620[2]_i_24_n_3\
    );
\add_ln840_35_reg_6620_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \inElem_reg_5804_pp0_iter1_reg_reg[4]\(0),
      CO(2) => \add_ln840_35_reg_6620_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_35_reg_6620_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_35_reg_6620_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_35_reg_6620[2]_i_18_n_3\,
      DI(1) => \add_ln840_35_reg_6620[2]_i_19_n_3\,
      DI(0) => \add_ln840_35_reg_6620[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_35_reg_6620_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_35_reg_6620_reg[0]\(0),
      S(2) => \add_ln840_35_reg_6620[2]_i_22_n_3\,
      S(1) => \add_ln840_35_reg_6620[2]_i_23_n_3\,
      S(0) => \add_ln840_35_reg_6620[2]_i_24_n_3\
    );
\add_ln840_8_reg_6585[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \^q0_reg[0]_0\,
      O => \add_ln840_8_reg_6585[2]_i_18_n_3\
    );
\add_ln840_8_reg_6585[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^q0_reg[0]_0\,
      O => \add_ln840_8_reg_6585[2]_i_19_n_3\
    );
\add_ln840_8_reg_6585[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => Q(3),
      I1 => \^q0_reg[0]_0\,
      I2 => Q(2),
      O => \add_ln840_8_reg_6585[2]_i_22_n_3\
    );
\add_ln840_8_reg_6585[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => Q(1),
      I1 => \^q0_reg[0]_0\,
      I2 => Q(0),
      O => \add_ln840_8_reg_6585[2]_i_23_n_3\
    );
\add_ln840_8_reg_6585_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \add_ln840_8_reg_6585_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_8_reg_6585_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_8_reg_6585_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_8_reg_6585[2]_i_18_n_3\,
      DI(0) => \add_ln840_8_reg_6585[2]_i_19_n_3\,
      O(3 downto 0) => \NLW_add_ln840_8_reg_6585_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => S(1 downto 0),
      S(1) => \add_ln840_8_reg_6585[2]_i_22_n_3\,
      S(0) => \add_ln840_8_reg_6585[2]_i_23_n_3\
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => \q0_reg[0]_1\,
      Q => \^q0_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R is
  port (
    p_ZL7threshs_128_ce0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \inElem_reg_5804_pp0_iter1_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_64_reg_6655_reg[2]_i_6_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_67_reg_6660_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_79_reg_6675_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_86_reg_6685_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_82_reg_6680_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_74_reg_6670_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_89_reg_6690_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_16_reg_6595_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_19_reg_6600_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_3_reg_6580_reg[1]_i_3_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_8_reg_6585_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_11_reg_6590_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_23_reg_6605_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_26_reg_6610_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_32_reg_6615_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_39_reg_6625_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_35_reg_6620_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_42_reg_6630_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_47_reg_6635_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_54_reg_6645_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_50_reg_6640_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_57_reg_6650_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_95_reg_6695_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_102_reg_6705_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_98_reg_6700_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_110_reg_6715_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_117_reg_6725_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_113_reg_6720_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_105_reg_6710_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \add_ln840_120_reg_6730_reg[2]_i_5_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_clk : in STD_LOGIC;
    \q0_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_V_TREADY_int_regslice : in STD_LOGIC;
    \q0_reg[0]_1\ : in STD_LOGIC;
    ap_CS_iter1_fsm_state2 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \add_ln840_1_reg_6570_reg[0]\ : in STD_LOGIC;
    \add_ln840_1_reg_6570_reg[0]_0\ : in STD_LOGIC;
    \add_ln840_57_reg_6650_reg[2]_i_5_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \add_ln840_2_reg_6575_reg[0]\ : in STD_LOGIC;
    \add_ln840_117_reg_6725_reg[2]_i_2_0\ : in STD_LOGIC;
    \add_ln840_113_reg_6720_reg[2]_i_2_0\ : in STD_LOGIC;
    \add_ln840_113_reg_6720_reg[2]_i_2_1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_35_reg_6620_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_71_reg_6665_reg[0]\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_64_reg_6655_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_79_reg_6675_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_79_reg_6675_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_79_reg_6675_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_79_reg_6675_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_82_reg_6680_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_82_reg_6680_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_82_reg_6680_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_74_reg_6670_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_74_reg_6670_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_74_reg_6670_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_74_reg_6670_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_89_reg_6690_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_16_reg_6595_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_16_reg_6595_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_16_reg_6595_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_16_reg_6595_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_19_reg_6600_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_19_reg_6600_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_19_reg_6600_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_19_reg_6600_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_2_reg_6575_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_3_reg_6580_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_3_reg_6580_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_8_reg_6585_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_8_reg_6585_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_8_reg_6585_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_11_reg_6590_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_11_reg_6590_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_11_reg_6590_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_11_reg_6590_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_23_reg_6605_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_23_reg_6605_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_23_reg_6605_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_23_reg_6605_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_26_reg_6610_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_26_reg_6610_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_26_reg_6610_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_26_reg_6610_reg[2]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_32_reg_6615_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_32_reg_6615_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_32_reg_6615_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_32_reg_6615_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_39_reg_6625_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_39_reg_6625_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_39_reg_6625_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_39_reg_6625_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_35_reg_6620_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_35_reg_6620_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_35_reg_6620_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_42_reg_6630_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_42_reg_6630_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_42_reg_6630_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_47_reg_6635_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_47_reg_6635_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_54_reg_6645_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_54_reg_6645_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_102_reg_6705_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_102_reg_6705_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_110_reg_6715_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_110_reg_6715_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_110_reg_6715_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln840_117_reg_6725_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_117_reg_6725_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_117_reg_6725_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_113_reg_6720_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_113_reg_6720_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_113_reg_6720_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \add_ln840_113_reg_6720_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R : entity is "Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R is
  signal \add_ln840_102_reg_6705[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_105_reg_6710_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_120_reg_6730_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575[1]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575[1]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575_reg[1]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575_reg[1]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580_reg[1]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580_reg[1]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580_reg[1]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580_reg[1]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580_reg[1]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_50_reg_6640_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_57_reg_6650_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_36_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_6_n_4\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_6_n_5\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655_reg[2]_i_6_n_6\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_67_reg_6660_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_71_reg_6665_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_86_reg_6685_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_89_reg_6690_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_32_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_33_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_34_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_35_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_95_reg_6695_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_18_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_25_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_30_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_31_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700[2]_i_9_n_3\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \add_ln840_98_reg_6700_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal icmp_ln1039_100_fu_4125_p2 : STD_LOGIC;
  signal icmp_ln1039_101_fu_4140_p2 : STD_LOGIC;
  signal icmp_ln1039_102_fu_4155_p2 : STD_LOGIC;
  signal icmp_ln1039_103_fu_4170_p2 : STD_LOGIC;
  signal icmp_ln1039_104_fu_4185_p2 : STD_LOGIC;
  signal icmp_ln1039_105_fu_4200_p2 : STD_LOGIC;
  signal icmp_ln1039_106_fu_4215_p2 : STD_LOGIC;
  signal icmp_ln1039_107_fu_4230_p2 : STD_LOGIC;
  signal icmp_ln1039_108_fu_4245_p2 : STD_LOGIC;
  signal icmp_ln1039_109_fu_4260_p2 : STD_LOGIC;
  signal icmp_ln1039_10_fu_2391_p2 : STD_LOGIC;
  signal icmp_ln1039_110_fu_4275_p2 : STD_LOGIC;
  signal icmp_ln1039_111_fu_4290_p2 : STD_LOGIC;
  signal icmp_ln1039_112_fu_4309_p2 : STD_LOGIC;
  signal icmp_ln1039_113_fu_4328_p2 : STD_LOGIC;
  signal icmp_ln1039_114_fu_4347_p2 : STD_LOGIC;
  signal icmp_ln1039_115_fu_4366_p2 : STD_LOGIC;
  signal icmp_ln1039_116_fu_4385_p2 : STD_LOGIC;
  signal icmp_ln1039_117_fu_4404_p2 : STD_LOGIC;
  signal icmp_ln1039_118_fu_4423_p2 : STD_LOGIC;
  signal icmp_ln1039_119_fu_4442_p2 : STD_LOGIC;
  signal icmp_ln1039_11_fu_2410_p2 : STD_LOGIC;
  signal icmp_ln1039_120_fu_4461_p2 : STD_LOGIC;
  signal icmp_ln1039_121_fu_4480_p2 : STD_LOGIC;
  signal icmp_ln1039_122_fu_4499_p2 : STD_LOGIC;
  signal icmp_ln1039_123_fu_4518_p2 : STD_LOGIC;
  signal icmp_ln1039_124_fu_4537_p2 : STD_LOGIC;
  signal icmp_ln1039_125_fu_4556_p2 : STD_LOGIC;
  signal icmp_ln1039_126_fu_4575_p2 : STD_LOGIC;
  signal icmp_ln1039_12_fu_2429_p2 : STD_LOGIC;
  signal icmp_ln1039_13_fu_2452_p2 : STD_LOGIC;
  signal icmp_ln1039_14_fu_2475_p2 : STD_LOGIC;
  signal icmp_ln1039_15_fu_2498_p2 : STD_LOGIC;
  signal icmp_ln1039_16_fu_2521_p2 : STD_LOGIC;
  signal icmp_ln1039_17_fu_2544_p2 : STD_LOGIC;
  signal icmp_ln1039_18_fu_2563_p2 : STD_LOGIC;
  signal icmp_ln1039_19_fu_2582_p2 : STD_LOGIC;
  signal icmp_ln1039_20_fu_2601_p2 : STD_LOGIC;
  signal icmp_ln1039_21_fu_2620_p2 : STD_LOGIC;
  signal icmp_ln1039_22_fu_2639_p2 : STD_LOGIC;
  signal icmp_ln1039_23_fu_2658_p2 : STD_LOGIC;
  signal icmp_ln1039_24_fu_2677_p2 : STD_LOGIC;
  signal icmp_ln1039_25_fu_2696_p2 : STD_LOGIC;
  signal icmp_ln1039_26_fu_2715_p2 : STD_LOGIC;
  signal icmp_ln1039_27_fu_2738_p2 : STD_LOGIC;
  signal icmp_ln1039_28_fu_2761_p2 : STD_LOGIC;
  signal icmp_ln1039_29_fu_2784_p2 : STD_LOGIC;
  signal icmp_ln1039_30_fu_2807_p2 : STD_LOGIC;
  signal icmp_ln1039_31_fu_2830_p2 : STD_LOGIC;
  signal icmp_ln1039_32_fu_2853_p2 : STD_LOGIC;
  signal icmp_ln1039_33_fu_2876_p2 : STD_LOGIC;
  signal icmp_ln1039_34_fu_2899_p2 : STD_LOGIC;
  signal icmp_ln1039_35_fu_2922_p2 : STD_LOGIC;
  signal icmp_ln1039_37_fu_2964_p2 : STD_LOGIC;
  signal icmp_ln1039_38_fu_2983_p2 : STD_LOGIC;
  signal icmp_ln1039_39_fu_3002_p2 : STD_LOGIC;
  signal icmp_ln1039_40_fu_3021_p2 : STD_LOGIC;
  signal icmp_ln1039_41_fu_3040_p2 : STD_LOGIC;
  signal icmp_ln1039_42_fu_3059_p2 : STD_LOGIC;
  signal icmp_ln1039_43_fu_3078_p2 : STD_LOGIC;
  signal icmp_ln1039_44_fu_3097_p2 : STD_LOGIC;
  signal icmp_ln1039_45_fu_3116_p2 : STD_LOGIC;
  signal icmp_ln1039_46_fu_3135_p2 : STD_LOGIC;
  signal icmp_ln1039_47_fu_3154_p2 : STD_LOGIC;
  signal icmp_ln1039_48_fu_3173_p2 : STD_LOGIC;
  signal icmp_ln1039_49_fu_3192_p2 : STD_LOGIC;
  signal icmp_ln1039_4_fu_2265_p2 : STD_LOGIC;
  signal icmp_ln1039_50_fu_3211_p2 : STD_LOGIC;
  signal icmp_ln1039_51_fu_3230_p2 : STD_LOGIC;
  signal icmp_ln1039_52_fu_3249_p2 : STD_LOGIC;
  signal icmp_ln1039_53_fu_3268_p2 : STD_LOGIC;
  signal icmp_ln1039_54_fu_3287_p2 : STD_LOGIC;
  signal icmp_ln1039_55_fu_3306_p2 : STD_LOGIC;
  signal icmp_ln1039_56_fu_3329_p2 : STD_LOGIC;
  signal icmp_ln1039_57_fu_3352_p2 : STD_LOGIC;
  signal icmp_ln1039_58_fu_3375_p2 : STD_LOGIC;
  signal icmp_ln1039_59_fu_3398_p2 : STD_LOGIC;
  signal icmp_ln1039_5_fu_2284_p2 : STD_LOGIC;
  signal icmp_ln1039_60_fu_3421_p2 : STD_LOGIC;
  signal icmp_ln1039_61_fu_3444_p2 : STD_LOGIC;
  signal icmp_ln1039_62_fu_3467_p2 : STD_LOGIC;
  signal icmp_ln1039_63_fu_3490_p2 : STD_LOGIC;
  signal icmp_ln1039_64_fu_3513_p2 : STD_LOGIC;
  signal icmp_ln1039_65_fu_3536_p2 : STD_LOGIC;
  signal icmp_ln1039_66_fu_3559_p2 : STD_LOGIC;
  signal icmp_ln1039_67_fu_3582_p2 : STD_LOGIC;
  signal icmp_ln1039_68_fu_3605_p2 : STD_LOGIC;
  signal icmp_ln1039_69_fu_3628_p2 : STD_LOGIC;
  signal icmp_ln1039_6_fu_2307_p2 : STD_LOGIC;
  signal icmp_ln1039_70_fu_3651_p2 : STD_LOGIC;
  signal icmp_ln1039_71_fu_3674_p2 : STD_LOGIC;
  signal icmp_ln1039_72_fu_3697_p2 : STD_LOGIC;
  signal icmp_ln1039_73_fu_3720_p2 : STD_LOGIC;
  signal icmp_ln1039_75_fu_3750_p2 : STD_LOGIC;
  signal icmp_ln1039_76_fu_3765_p2 : STD_LOGIC;
  signal icmp_ln1039_77_fu_3780_p2 : STD_LOGIC;
  signal icmp_ln1039_78_fu_3795_p2 : STD_LOGIC;
  signal icmp_ln1039_79_fu_3810_p2 : STD_LOGIC;
  signal icmp_ln1039_7_fu_2330_p2 : STD_LOGIC;
  signal icmp_ln1039_80_fu_3825_p2 : STD_LOGIC;
  signal icmp_ln1039_81_fu_3840_p2 : STD_LOGIC;
  signal icmp_ln1039_82_fu_3855_p2 : STD_LOGIC;
  signal icmp_ln1039_83_fu_3870_p2 : STD_LOGIC;
  signal icmp_ln1039_84_fu_3885_p2 : STD_LOGIC;
  signal icmp_ln1039_85_fu_3900_p2 : STD_LOGIC;
  signal icmp_ln1039_86_fu_3915_p2 : STD_LOGIC;
  signal icmp_ln1039_87_fu_3930_p2 : STD_LOGIC;
  signal icmp_ln1039_88_fu_3945_p2 : STD_LOGIC;
  signal icmp_ln1039_89_fu_3960_p2 : STD_LOGIC;
  signal icmp_ln1039_90_fu_3975_p2 : STD_LOGIC;
  signal icmp_ln1039_91_fu_3990_p2 : STD_LOGIC;
  signal icmp_ln1039_92_fu_4005_p2 : STD_LOGIC;
  signal icmp_ln1039_93_fu_4020_p2 : STD_LOGIC;
  signal icmp_ln1039_94_fu_4035_p2 : STD_LOGIC;
  signal icmp_ln1039_95_fu_4050_p2 : STD_LOGIC;
  signal icmp_ln1039_96_fu_4065_p2 : STD_LOGIC;
  signal icmp_ln1039_97_fu_4080_p2 : STD_LOGIC;
  signal icmp_ln1039_98_fu_4095_p2 : STD_LOGIC;
  signal icmp_ln1039_99_fu_4110_p2 : STD_LOGIC;
  signal icmp_ln1039_9_fu_2372_p2 : STD_LOGIC;
  signal \^p_zl7threshs_128_ce0\ : STD_LOGIC;
  signal p_ZL7threshs_130_q0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q0[0]_i_1_n_3\ : STD_LOGIC;
  signal \q0[0]_i_2_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1__0_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1__1_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1__2_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1__3_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1__4_n_3\ : STD_LOGIC;
  signal \q0[0]_rep_i_1_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep__0_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep__1_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep__2_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep__3_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep__4_n_3\ : STD_LOGIC;
  signal \q0_reg[0]_rep_n_3\ : STD_LOGIC;
  signal zext_ln218_1_fu_2234_p1 : STD_LOGIC;
  signal \NLW_add_ln840_102_reg_6705_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_102_reg_6705_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_102_reg_6705_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_102_reg_6705_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_105_reg_6710_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_110_reg_6715_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_110_reg_6715_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_110_reg_6715_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_110_reg_6715_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_110_reg_6715_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_113_reg_6720_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_113_reg_6720_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_113_reg_6720_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_113_reg_6720_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_113_reg_6720_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_117_reg_6725_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_117_reg_6725_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_117_reg_6725_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_117_reg_6725_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_117_reg_6725_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_11_reg_6590_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_120_reg_6730_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_120_reg_6730_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_120_reg_6730_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_120_reg_6730_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_120_reg_6730_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_16_reg_6595_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_16_reg_6595_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_16_reg_6595_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_16_reg_6595_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_16_reg_6595_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_19_reg_6600_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_19_reg_6600_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_19_reg_6600_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_19_reg_6600_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_19_reg_6600_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_23_reg_6605_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_23_reg_6605_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_23_reg_6605_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_23_reg_6605_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_23_reg_6605_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_26_reg_6610_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_26_reg_6610_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_26_reg_6610_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_26_reg_6610_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_26_reg_6610_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_2_reg_6575_reg[1]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_2_reg_6575_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_32_reg_6615_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_35_reg_6620_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_35_reg_6620_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_35_reg_6620_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_39_reg_6625_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_3_reg_6580_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_3_reg_6580_reg[1]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_3_reg_6580_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_42_reg_6630_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_42_reg_6630_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_42_reg_6630_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_42_reg_6630_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_42_reg_6630_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_47_reg_6635_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_47_reg_6635_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_47_reg_6635_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_47_reg_6635_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_50_reg_6640_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_50_reg_6640_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_50_reg_6640_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_50_reg_6640_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_50_reg_6640_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_54_reg_6645_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_54_reg_6645_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_54_reg_6645_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_54_reg_6645_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_57_reg_6650_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_57_reg_6650_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_57_reg_6650_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_57_reg_6650_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_57_reg_6650_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_64_reg_6655_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_64_reg_6655_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_64_reg_6655_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_64_reg_6655_reg[2]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_67_reg_6660_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_67_reg_6660_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_67_reg_6660_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_67_reg_6660_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_67_reg_6660_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_71_reg_6665_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_71_reg_6665_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_71_reg_6665_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_74_reg_6670_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_74_reg_6670_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_74_reg_6670_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_74_reg_6670_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_79_reg_6675_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_79_reg_6675_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_79_reg_6675_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_79_reg_6675_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_79_reg_6675_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_82_reg_6680_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_82_reg_6680_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_82_reg_6680_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_82_reg_6680_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_82_reg_6680_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_86_reg_6685_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_86_reg_6685_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_86_reg_6685_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_86_reg_6685_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_86_reg_6685_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_89_reg_6690_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_89_reg_6690_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_89_reg_6690_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_89_reg_6690_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_89_reg_6690_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_8_reg_6585_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_8_reg_6585_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_8_reg_6585_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_95_reg_6695_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_95_reg_6695_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_95_reg_6695_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_95_reg_6695_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_95_reg_6695_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_add_ln840_98_reg_6700_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln840_102_reg_6705[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \add_ln840_102_reg_6705[1]_i_1\ : label is "soft_lutpair37";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \add_ln840_102_reg_6705_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_102_reg_6705_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_102_reg_6705_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_102_reg_6705_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_105_reg_6710[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \add_ln840_105_reg_6710[1]_i_1\ : label is "soft_lutpair25";
  attribute COMPARATOR_THRESHOLD of \add_ln840_105_reg_6710_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_105_reg_6710_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_105_reg_6710_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_105_reg_6710_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_110_reg_6715[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \add_ln840_110_reg_6715[1]_i_1\ : label is "soft_lutpair23";
  attribute COMPARATOR_THRESHOLD of \add_ln840_110_reg_6715_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_110_reg_6715_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_110_reg_6715_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_110_reg_6715_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_113_reg_6720[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \add_ln840_113_reg_6720[1]_i_1\ : label is "soft_lutpair24";
  attribute COMPARATOR_THRESHOLD of \add_ln840_113_reg_6720_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_113_reg_6720_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_113_reg_6720_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_113_reg_6720_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_117_reg_6725[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \add_ln840_117_reg_6725[1]_i_1\ : label is "soft_lutpair38";
  attribute COMPARATOR_THRESHOLD of \add_ln840_117_reg_6725_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_117_reg_6725_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_117_reg_6725_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_117_reg_6725_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_11_reg_6590[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \add_ln840_11_reg_6590[1]_i_1\ : label is "soft_lutpair15";
  attribute COMPARATOR_THRESHOLD of \add_ln840_11_reg_6590_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_11_reg_6590_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_11_reg_6590_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_11_reg_6590_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_120_reg_6730[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \add_ln840_120_reg_6730[1]_i_1\ : label is "soft_lutpair26";
  attribute COMPARATOR_THRESHOLD of \add_ln840_120_reg_6730_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_120_reg_6730_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_120_reg_6730_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_120_reg_6730_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_16_reg_6595[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \add_ln840_16_reg_6595[1]_i_1\ : label is "soft_lutpair30";
  attribute COMPARATOR_THRESHOLD of \add_ln840_16_reg_6595_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_16_reg_6595_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_16_reg_6595_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_16_reg_6595_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_19_reg_6600[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \add_ln840_19_reg_6600[1]_i_1\ : label is "soft_lutpair14";
  attribute COMPARATOR_THRESHOLD of \add_ln840_19_reg_6600_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_19_reg_6600_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_19_reg_6600_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_19_reg_6600_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_1_reg_6570[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \add_ln840_1_reg_6570[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \add_ln840_23_reg_6605[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \add_ln840_23_reg_6605[1]_i_1\ : label is "soft_lutpair16";
  attribute COMPARATOR_THRESHOLD of \add_ln840_23_reg_6605_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_23_reg_6605_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_23_reg_6605_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_23_reg_6605_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_26_reg_6610[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \add_ln840_26_reg_6610[1]_i_1\ : label is "soft_lutpair32";
  attribute COMPARATOR_THRESHOLD of \add_ln840_26_reg_6610_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_26_reg_6610_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_26_reg_6610_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_26_reg_6610_reg[2]_i_5\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_2_reg_6575_reg[1]_i_3\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_32_reg_6615[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \add_ln840_32_reg_6615[1]_i_1\ : label is "soft_lutpair17";
  attribute COMPARATOR_THRESHOLD of \add_ln840_32_reg_6615_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_32_reg_6615_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_32_reg_6615_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_32_reg_6615_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_35_reg_6620[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \add_ln840_35_reg_6620[1]_i_1\ : label is "soft_lutpair33";
  attribute COMPARATOR_THRESHOLD of \add_ln840_35_reg_6620_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_35_reg_6620_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_35_reg_6620_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_39_reg_6625[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \add_ln840_39_reg_6625[1]_i_1\ : label is "soft_lutpair18";
  attribute COMPARATOR_THRESHOLD of \add_ln840_39_reg_6625_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_39_reg_6625_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_39_reg_6625_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_39_reg_6625_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_3_reg_6580[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \add_ln840_3_reg_6580[1]_i_1\ : label is "soft_lutpair39";
  attribute COMPARATOR_THRESHOLD of \add_ln840_3_reg_6580_reg[1]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_3_reg_6580_reg[1]_i_3\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_42_reg_6630[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \add_ln840_42_reg_6630[1]_i_1\ : label is "soft_lutpair34";
  attribute COMPARATOR_THRESHOLD of \add_ln840_42_reg_6630_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_42_reg_6630_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_42_reg_6630_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_42_reg_6630_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_47_reg_6635[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \add_ln840_47_reg_6635[1]_i_1\ : label is "soft_lutpair35";
  attribute COMPARATOR_THRESHOLD of \add_ln840_47_reg_6635_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_47_reg_6635_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_47_reg_6635_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_47_reg_6635_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_50_reg_6640[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \add_ln840_50_reg_6640[1]_i_1\ : label is "soft_lutpair19";
  attribute COMPARATOR_THRESHOLD of \add_ln840_50_reg_6640_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_50_reg_6640_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_50_reg_6640_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_50_reg_6640_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_54_reg_6645[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \add_ln840_54_reg_6645[1]_i_1\ : label is "soft_lutpair36";
  attribute COMPARATOR_THRESHOLD of \add_ln840_54_reg_6645_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_54_reg_6645_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_54_reg_6645_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_54_reg_6645_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_57_reg_6650[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \add_ln840_57_reg_6650[1]_i_1\ : label is "soft_lutpair20";
  attribute COMPARATOR_THRESHOLD of \add_ln840_57_reg_6650_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_57_reg_6650_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_57_reg_6650_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_57_reg_6650_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_64_reg_6655[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \add_ln840_64_reg_6655[1]_i_1\ : label is "soft_lutpair27";
  attribute COMPARATOR_THRESHOLD of \add_ln840_64_reg_6655_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_64_reg_6655_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_64_reg_6655_reg[2]_i_5\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_64_reg_6655_reg[2]_i_6\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_67_reg_6660[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \add_ln840_67_reg_6660[1]_i_1\ : label is "soft_lutpair10";
  attribute COMPARATOR_THRESHOLD of \add_ln840_67_reg_6660_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_67_reg_6660_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_67_reg_6660_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_67_reg_6660_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_71_reg_6665[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \add_ln840_71_reg_6665[2]_i_1\ : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD of \add_ln840_71_reg_6665_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_71_reg_6665_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_71_reg_6665_reg[2]_i_4\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_74_reg_6670[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \add_ln840_74_reg_6670[1]_i_1\ : label is "soft_lutpair28";
  attribute COMPARATOR_THRESHOLD of \add_ln840_74_reg_6670_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_74_reg_6670_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_74_reg_6670_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_74_reg_6670_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_79_reg_6675[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \add_ln840_79_reg_6675[1]_i_1\ : label is "soft_lutpair11";
  attribute COMPARATOR_THRESHOLD of \add_ln840_79_reg_6675_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_79_reg_6675_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_79_reg_6675_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_79_reg_6675_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_82_reg_6680[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \add_ln840_82_reg_6680[1]_i_1\ : label is "soft_lutpair13";
  attribute COMPARATOR_THRESHOLD of \add_ln840_82_reg_6680_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_82_reg_6680_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_82_reg_6680_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_82_reg_6680_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_86_reg_6685[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \add_ln840_86_reg_6685[1]_i_1\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD of \add_ln840_86_reg_6685_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_86_reg_6685_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_86_reg_6685_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_86_reg_6685_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_89_reg_6690[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \add_ln840_89_reg_6690[1]_i_1\ : label is "soft_lutpair29";
  attribute COMPARATOR_THRESHOLD of \add_ln840_89_reg_6690_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_89_reg_6690_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_89_reg_6690_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_89_reg_6690_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_8_reg_6585[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \add_ln840_8_reg_6585[1]_i_1\ : label is "soft_lutpair31";
  attribute COMPARATOR_THRESHOLD of \add_ln840_8_reg_6585_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_8_reg_6585_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_8_reg_6585_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_95_reg_6695[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \add_ln840_95_reg_6695[1]_i_1\ : label is "soft_lutpair21";
  attribute COMPARATOR_THRESHOLD of \add_ln840_95_reg_6695_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_95_reg_6695_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_95_reg_6695_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_95_reg_6695_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \add_ln840_98_reg_6700[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \add_ln840_98_reg_6700[1]_i_1\ : label is "soft_lutpair22";
  attribute COMPARATOR_THRESHOLD of \add_ln840_98_reg_6700_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_98_reg_6700_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_98_reg_6700_reg[2]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \add_ln840_98_reg_6700_reg[2]_i_5\ : label is 11;
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \q0_reg[0]\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep__0\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep__1\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep__2\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep__3\ : label is "q0_reg[0]";
  attribute ORIG_CELL_NAME of \q0_reg[0]_rep__4\ : label is "q0_reg[0]";
begin
  p_ZL7threshs_128_ce0 <= \^p_zl7threshs_128_ce0\;
\add_ln840_102_reg_6705[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_103_fu_4170_p2,
      I1 => icmp_ln1039_104_fu_4185_p2,
      I2 => icmp_ln1039_106_fu_4215_p2,
      I3 => icmp_ln1039_105_fu_4200_p2,
      O => \add_ln840_102_reg_6705_reg[2]_i_5_0\(0)
    );
\add_ln840_102_reg_6705[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_105_fu_4200_p2,
      I1 => icmp_ln1039_106_fu_4215_p2,
      I2 => icmp_ln1039_104_fu_4185_p2,
      I3 => icmp_ln1039_103_fu_4170_p2,
      O => \add_ln840_102_reg_6705_reg[2]_i_5_0\(1)
    );
\add_ln840_102_reg_6705[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_105_fu_4200_p2,
      I1 => icmp_ln1039_106_fu_4215_p2,
      I2 => icmp_ln1039_104_fu_4185_p2,
      I3 => icmp_ln1039_103_fu_4170_p2,
      O => \add_ln840_102_reg_6705_reg[2]_i_5_0\(2)
    );
\add_ln840_102_reg_6705[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_10_n_3\
    );
\add_ln840_102_reg_6705[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_102_reg_6705[2]_i_11_n_3\
    );
\add_ln840_102_reg_6705[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_102_reg_6705[2]_i_12_n_3\
    );
\add_ln840_102_reg_6705[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_102_reg_6705[2]_i_13_n_3\
    );
\add_ln840_102_reg_6705[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_14_n_3\
    );
\add_ln840_102_reg_6705[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_15_n_3\
    );
\add_ln840_102_reg_6705[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_102_reg_6705[2]_i_16_n_3\
    );
\add_ln840_102_reg_6705[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_17_n_3\
    );
\add_ln840_102_reg_6705[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_18_n_3\
    );
\add_ln840_102_reg_6705[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_102_reg_6705[2]_i_19_n_3\
    );
\add_ln840_102_reg_6705[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_102_reg_6705[2]_i_20_n_3\
    );
\add_ln840_102_reg_6705[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_102_reg_6705[2]_i_21_n_3\
    );
\add_ln840_102_reg_6705[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_22_n_3\
    );
\add_ln840_102_reg_6705[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_23_n_3\
    );
\add_ln840_102_reg_6705[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_24_n_3\
    );
\add_ln840_102_reg_6705[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_25_n_3\
    );
\add_ln840_102_reg_6705[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_102_reg_6705[2]_i_26_n_3\
    );
\add_ln840_102_reg_6705[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_102_reg_6705[2]_i_28_n_3\
    );
\add_ln840_102_reg_6705[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_29_n_3\
    );
\add_ln840_102_reg_6705[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_30_n_3\
    );
\add_ln840_102_reg_6705[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_102_reg_6705[2]_i_31_n_3\
    );
\add_ln840_102_reg_6705[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_32_n_3\
    );
\add_ln840_102_reg_6705[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_102_reg_6705[2]_i_33_n_3\
    );
\add_ln840_102_reg_6705[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_102_reg_6705[2]_i_35_n_3\
    );
\add_ln840_102_reg_6705[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_102_reg_6705[2]_i_6_n_3\
    );
\add_ln840_102_reg_6705[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_102_reg_6705[2]_i_7_n_3\
    );
\add_ln840_102_reg_6705[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_102_reg_6705[2]_i_8_n_3\
    );
\add_ln840_102_reg_6705[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_102_reg_6705[2]_i_9_n_3\
    );
\add_ln840_102_reg_6705_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_105_fu_4200_p2,
      CO(2) => \add_ln840_102_reg_6705_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_102_reg_6705_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_102_reg_6705_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_102_reg_6705[2]_i_6_n_3\,
      DI(2) => \add_ln840_102_reg_6705[2]_i_7_n_3\,
      DI(1) => \add_ln840_102_reg_6705[2]_i_8_n_3\,
      DI(0) => \add_ln840_102_reg_6705[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_102_reg_6705_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_102_reg_6705[2]_i_10_n_3\,
      S(2) => \add_ln840_102_reg_6705[2]_i_11_n_3\,
      S(1) => \add_ln840_102_reg_6705[2]_i_12_n_3\,
      S(0) => \add_ln840_102_reg_6705[2]_i_13_n_3\
    );
\add_ln840_102_reg_6705_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_106_fu_4215_p2,
      CO(2) => \add_ln840_102_reg_6705_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_102_reg_6705_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_102_reg_6705_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_102_reg_6705[2]_i_14_n_3\,
      DI(2) => \add_ln840_102_reg_6705[2]_i_15_n_3\,
      DI(1) => \add_ln840_102_reg_6705[2]_i_16_n_3\,
      DI(0) => \add_ln840_102_reg_6705[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_102_reg_6705_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_102_reg_6705[2]_i_18_n_3\,
      S(2) => \add_ln840_102_reg_6705[2]_i_19_n_3\,
      S(1) => \add_ln840_102_reg_6705[2]_i_20_n_3\,
      S(0) => \add_ln840_102_reg_6705[2]_i_21_n_3\
    );
\add_ln840_102_reg_6705_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_104_fu_4185_p2,
      CO(2) => \add_ln840_102_reg_6705_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_102_reg_6705_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_102_reg_6705_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_102_reg_6705[2]_i_22_n_3\,
      DI(2) => \add_ln840_102_reg_6705[2]_i_23_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_102_reg_6705[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_102_reg_6705_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_102_reg_6705[2]_i_25_n_3\,
      S(2) => \add_ln840_102_reg_6705[2]_i_26_n_3\,
      S(1) => \add_ln840_102_reg_6705_reg[2]\(0),
      S(0) => \add_ln840_102_reg_6705[2]_i_28_n_3\
    );
\add_ln840_102_reg_6705_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_103_fu_4170_p2,
      CO(2) => \add_ln840_102_reg_6705_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_102_reg_6705_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_102_reg_6705_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_102_reg_6705[2]_i_29_n_3\,
      DI(2) => \add_ln840_102_reg_6705[2]_i_30_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_102_reg_6705[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_102_reg_6705_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_102_reg_6705[2]_i_32_n_3\,
      S(2) => \add_ln840_102_reg_6705[2]_i_33_n_3\,
      S(1) => \add_ln840_102_reg_6705_reg[2]_0\(0),
      S(0) => \add_ln840_102_reg_6705[2]_i_35_n_3\
    );
\add_ln840_105_reg_6710[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_107_fu_4230_p2,
      I1 => icmp_ln1039_108_fu_4245_p2,
      I2 => icmp_ln1039_110_fu_4275_p2,
      I3 => icmp_ln1039_109_fu_4260_p2,
      O => \add_ln840_105_reg_6710_reg[2]_i_5_0\(0)
    );
\add_ln840_105_reg_6710[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_109_fu_4260_p2,
      I1 => icmp_ln1039_110_fu_4275_p2,
      I2 => icmp_ln1039_108_fu_4245_p2,
      I3 => icmp_ln1039_107_fu_4230_p2,
      O => \add_ln840_105_reg_6710_reg[2]_i_5_0\(1)
    );
\add_ln840_105_reg_6710[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_109_fu_4260_p2,
      I1 => icmp_ln1039_110_fu_4275_p2,
      I2 => icmp_ln1039_108_fu_4245_p2,
      I3 => icmp_ln1039_107_fu_4230_p2,
      O => \add_ln840_105_reg_6710_reg[2]_i_5_0\(2)
    );
\add_ln840_105_reg_6710[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_105_reg_6710[2]_i_10_n_3\
    );
\add_ln840_105_reg_6710[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_105_reg_6710[2]_i_11_n_3\
    );
\add_ln840_105_reg_6710[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_12_n_3\
    );
\add_ln840_105_reg_6710[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_13_n_3\
    );
\add_ln840_105_reg_6710[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_14_n_3\
    );
\add_ln840_105_reg_6710[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_105_reg_6710[2]_i_15_n_3\
    );
\add_ln840_105_reg_6710[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_16_n_3\
    );
\add_ln840_105_reg_6710[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_105_reg_6710[2]_i_17_n_3\
    );
\add_ln840_105_reg_6710[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_105_reg_6710[2]_i_18_n_3\
    );
\add_ln840_105_reg_6710[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_105_reg_6710[2]_i_19_n_3\
    );
\add_ln840_105_reg_6710[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_20_n_3\
    );
\add_ln840_105_reg_6710[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_21_n_3\
    );
\add_ln840_105_reg_6710[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_105_reg_6710[2]_i_22_n_3\
    );
\add_ln840_105_reg_6710[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_105_reg_6710[2]_i_23_n_3\
    );
\add_ln840_105_reg_6710[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_24_n_3\
    );
\add_ln840_105_reg_6710[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_105_reg_6710[2]_i_25_n_3\
    );
\add_ln840_105_reg_6710[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_105_reg_6710[2]_i_26_n_3\
    );
\add_ln840_105_reg_6710[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_105_reg_6710[2]_i_27_n_3\
    );
\add_ln840_105_reg_6710[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_28_n_3\
    );
\add_ln840_105_reg_6710[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_29_n_3\
    );
\add_ln840_105_reg_6710[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_105_reg_6710[2]_i_30_n_3\
    );
\add_ln840_105_reg_6710[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_31_n_3\
    );
\add_ln840_105_reg_6710[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_105_reg_6710[2]_i_32_n_3\
    );
\add_ln840_105_reg_6710[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_105_reg_6710[2]_i_33_n_3\
    );
\add_ln840_105_reg_6710[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_6_n_3\
    );
\add_ln840_105_reg_6710[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_7_n_3\
    );
\add_ln840_105_reg_6710[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_105_reg_6710[2]_i_8_n_3\
    );
\add_ln840_105_reg_6710[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_105_reg_6710[2]_i_9_n_3\
    );
\add_ln840_105_reg_6710_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_105_reg_6710_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_109_fu_4260_p2,
      CO(1) => \add_ln840_105_reg_6710_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_105_reg_6710_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_105_reg_6710[2]_i_6_n_3\,
      DI(1) => \add_ln840_105_reg_6710[2]_i_7_n_3\,
      DI(0) => \add_ln840_105_reg_6710[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_105_reg_6710_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_105_reg_6710[2]_i_9_n_3\,
      S(1) => \add_ln840_105_reg_6710[2]_i_10_n_3\,
      S(0) => \add_ln840_105_reg_6710[2]_i_11_n_3\
    );
\add_ln840_105_reg_6710_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_110_fu_4275_p2,
      CO(2) => \add_ln840_105_reg_6710_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_105_reg_6710_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_105_reg_6710_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_105_reg_6710[2]_i_12_n_3\,
      DI(2) => \add_ln840_105_reg_6710[2]_i_13_n_3\,
      DI(1) => \add_ln840_105_reg_6710[2]_i_14_n_3\,
      DI(0) => \add_ln840_105_reg_6710[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_105_reg_6710_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_105_reg_6710[2]_i_16_n_3\,
      S(2) => \add_ln840_105_reg_6710[2]_i_17_n_3\,
      S(1) => \add_ln840_105_reg_6710[2]_i_18_n_3\,
      S(0) => \add_ln840_105_reg_6710[2]_i_19_n_3\
    );
\add_ln840_105_reg_6710_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_108_fu_4245_p2,
      CO(2) => \add_ln840_105_reg_6710_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_105_reg_6710_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_105_reg_6710_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_105_reg_6710[2]_i_20_n_3\,
      DI(2) => \add_ln840_105_reg_6710[2]_i_21_n_3\,
      DI(1) => \add_ln840_105_reg_6710[2]_i_22_n_3\,
      DI(0) => \add_ln840_105_reg_6710[2]_i_23_n_3\,
      O(3 downto 0) => \NLW_add_ln840_105_reg_6710_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_105_reg_6710[2]_i_24_n_3\,
      S(2) => \add_ln840_105_reg_6710[2]_i_25_n_3\,
      S(1) => \add_ln840_105_reg_6710[2]_i_26_n_3\,
      S(0) => \add_ln840_105_reg_6710[2]_i_27_n_3\
    );
\add_ln840_105_reg_6710_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_105_reg_6710_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_107_fu_4230_p2,
      CO(1) => \add_ln840_105_reg_6710_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_105_reg_6710_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_105_reg_6710[2]_i_28_n_3\,
      DI(1) => \add_ln840_105_reg_6710[2]_i_29_n_3\,
      DI(0) => \add_ln840_105_reg_6710[2]_i_30_n_3\,
      O(3 downto 0) => \NLW_add_ln840_105_reg_6710_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_105_reg_6710[2]_i_31_n_3\,
      S(1) => \add_ln840_105_reg_6710[2]_i_32_n_3\,
      S(0) => \add_ln840_105_reg_6710[2]_i_33_n_3\
    );
\add_ln840_110_reg_6715[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_111_fu_4290_p2,
      I1 => icmp_ln1039_112_fu_4309_p2,
      I2 => icmp_ln1039_114_fu_4347_p2,
      I3 => icmp_ln1039_113_fu_4328_p2,
      O => \add_ln840_110_reg_6715_reg[2]_i_5_0\(0)
    );
\add_ln840_110_reg_6715[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_113_fu_4328_p2,
      I1 => icmp_ln1039_114_fu_4347_p2,
      I2 => icmp_ln1039_112_fu_4309_p2,
      I3 => icmp_ln1039_111_fu_4290_p2,
      O => \add_ln840_110_reg_6715_reg[2]_i_5_0\(1)
    );
\add_ln840_110_reg_6715[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_113_fu_4328_p2,
      I1 => icmp_ln1039_114_fu_4347_p2,
      I2 => icmp_ln1039_112_fu_4309_p2,
      I3 => icmp_ln1039_111_fu_4290_p2,
      O => \add_ln840_110_reg_6715_reg[2]_i_5_0\(2)
    );
\add_ln840_110_reg_6715[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_110_reg_6715[2]_i_11_n_3\
    );
\add_ln840_110_reg_6715[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_12_n_3\
    );
\add_ln840_110_reg_6715[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_110_reg_6715[2]_i_13_n_3\
    );
\add_ln840_110_reg_6715[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_110_reg_6715[2]_i_14_n_3\
    );
\add_ln840_110_reg_6715[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_110_reg_6715[2]_i_16_n_3\
    );
\add_ln840_110_reg_6715[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_17_n_3\
    );
\add_ln840_110_reg_6715[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_110_reg_6715[2]_i_18_n_3\
    );
\add_ln840_110_reg_6715[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_110_reg_6715[2]_i_19_n_3\
    );
\add_ln840_110_reg_6715[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_110_reg_6715[2]_i_22_n_3\
    );
\add_ln840_110_reg_6715[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_110_reg_6715[2]_i_23_n_3\
    );
\add_ln840_110_reg_6715[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_24_n_3\
    );
\add_ln840_110_reg_6715[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_25_n_3\
    );
\add_ln840_110_reg_6715[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_26_n_3\
    );
\add_ln840_110_reg_6715[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_110_reg_6715[2]_i_27_n_3\
    );
\add_ln840_110_reg_6715[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_110_reg_6715[2]_i_28_n_3\
    );
\add_ln840_110_reg_6715[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_110_reg_6715[2]_i_29_n_3\
    );
\add_ln840_110_reg_6715[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_110_reg_6715[2]_i_30_n_3\
    );
\add_ln840_110_reg_6715[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_6_n_3\
    );
\add_ln840_110_reg_6715[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_110_reg_6715[2]_i_7_n_3\
    );
\add_ln840_110_reg_6715[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      O => \add_ln840_110_reg_6715[2]_i_8_n_3\
    );
\add_ln840_110_reg_6715_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_113_fu_4328_p2,
      CO(2) => \add_ln840_110_reg_6715_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_110_reg_6715_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_110_reg_6715_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_110_reg_6715[2]_i_6_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_110_reg_6715[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_110_reg_6715_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_110_reg_6715[2]_i_8_n_3\,
      S(2 downto 1) => \add_ln840_110_reg_6715_reg[2]_1\(1 downto 0),
      S(0) => \add_ln840_110_reg_6715[2]_i_11_n_3\
    );
\add_ln840_110_reg_6715_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_110_reg_6715_reg[2]_i_3_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_114_fu_4347_p2,
      CO(1) => \add_ln840_110_reg_6715_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_110_reg_6715_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_110_reg_6715[2]_i_12_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_110_reg_6715[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_110_reg_6715_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_110_reg_6715[2]_i_14_n_3\,
      S(1) => \add_ln840_110_reg_6715_reg[2]_0\(0),
      S(0) => \add_ln840_110_reg_6715[2]_i_16_n_3\
    );
\add_ln840_110_reg_6715_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_112_fu_4309_p2,
      CO(2) => \add_ln840_110_reg_6715_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_110_reg_6715_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_110_reg_6715_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_110_reg_6715[2]_i_17_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_110_reg_6715[2]_i_18_n_3\,
      O(3 downto 0) => \NLW_add_ln840_110_reg_6715_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_110_reg_6715[2]_i_19_n_3\,
      S(2 downto 1) => \add_ln840_110_reg_6715_reg[2]\(1 downto 0),
      S(0) => \add_ln840_110_reg_6715[2]_i_22_n_3\
    );
\add_ln840_110_reg_6715_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_111_fu_4290_p2,
      CO(2) => \add_ln840_110_reg_6715_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_110_reg_6715_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_110_reg_6715_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_110_reg_6715[2]_i_23_n_3\,
      DI(2) => \add_ln840_110_reg_6715[2]_i_24_n_3\,
      DI(1) => \add_ln840_110_reg_6715[2]_i_25_n_3\,
      DI(0) => \add_ln840_110_reg_6715[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_110_reg_6715_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_110_reg_6715[2]_i_27_n_3\,
      S(2) => \add_ln840_110_reg_6715[2]_i_28_n_3\,
      S(1) => \add_ln840_110_reg_6715[2]_i_29_n_3\,
      S(0) => \add_ln840_110_reg_6715[2]_i_30_n_3\
    );
\add_ln840_113_reg_6720[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_115_fu_4366_p2,
      I1 => icmp_ln1039_116_fu_4385_p2,
      I2 => icmp_ln1039_118_fu_4423_p2,
      I3 => icmp_ln1039_117_fu_4404_p2,
      O => \add_ln840_113_reg_6720_reg[2]_i_5_0\(0)
    );
\add_ln840_113_reg_6720[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_117_fu_4404_p2,
      I1 => icmp_ln1039_118_fu_4423_p2,
      I2 => icmp_ln1039_116_fu_4385_p2,
      I3 => icmp_ln1039_115_fu_4366_p2,
      O => \add_ln840_113_reg_6720_reg[2]_i_5_0\(1)
    );
\add_ln840_113_reg_6720[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_117_fu_4404_p2,
      I1 => icmp_ln1039_118_fu_4423_p2,
      I2 => icmp_ln1039_116_fu_4385_p2,
      I3 => icmp_ln1039_115_fu_4366_p2,
      O => \add_ln840_113_reg_6720_reg[2]_i_5_0\(2)
    );
\add_ln840_113_reg_6720[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_113_reg_6720[2]_i_11_n_3\
    );
\add_ln840_113_reg_6720[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_113_reg_6720[2]_i_12_n_3\
    );
\add_ln840_113_reg_6720[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_113_reg_6720[2]_i_13_n_3\
    );
\add_ln840_113_reg_6720[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_113_reg_6720[2]_i_14_n_3\
    );
\add_ln840_113_reg_6720[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_113_reg_6720[2]_i_15_n_3\
    );
\add_ln840_113_reg_6720[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_113_reg_6720[2]_i_16_n_3\
    );
\add_ln840_113_reg_6720[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_113_reg_6720[2]_i_18_n_3\
    );
\add_ln840_113_reg_6720[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_113_reg_6720[2]_i_19_n_3\
    );
\add_ln840_113_reg_6720[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_113_reg_6720[2]_i_20_n_3\
    );
\add_ln840_113_reg_6720[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_113_reg_6720[2]_i_21_n_3\
    );
\add_ln840_113_reg_6720[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_113_reg_6720[2]_i_22_n_3\
    );
\add_ln840_113_reg_6720[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_113_reg_6720[2]_i_24_n_3\
    );
\add_ln840_113_reg_6720[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_113_reg_6720[2]_i_25_n_3\
    );
\add_ln840_113_reg_6720[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_113_reg_6720[2]_i_26_n_3\
    );
\add_ln840_113_reg_6720[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_113_reg_6720[2]_i_27_n_3\
    );
\add_ln840_113_reg_6720[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_113_reg_6720[2]_i_28_n_3\
    );
\add_ln840_113_reg_6720[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_113_reg_6720[2]_i_30_n_3\
    );
\add_ln840_113_reg_6720[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_113_reg_6720[2]_i_31_n_3\
    );
\add_ln840_113_reg_6720[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_113_reg_6720[2]_i_6_n_3\
    );
\add_ln840_113_reg_6720[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_113_reg_6720[2]_i_7_n_3\
    );
\add_ln840_113_reg_6720[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_113_reg_6720[2]_i_8_n_3\
    );
\add_ln840_113_reg_6720[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      O => \add_ln840_113_reg_6720[2]_i_9_n_3\
    );
\add_ln840_113_reg_6720_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_117_fu_4404_p2,
      CO(2) => \add_ln840_113_reg_6720_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_113_reg_6720_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_113_reg_6720_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_113_reg_6720[2]_i_6_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_113_reg_6720[2]_i_7_n_3\,
      DI(0) => \add_ln840_113_reg_6720[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_113_reg_6720_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_113_reg_6720[2]_i_9_n_3\,
      S(2) => \add_ln840_113_reg_6720_reg[2]_2\(0),
      S(1) => \add_ln840_113_reg_6720[2]_i_11_n_3\,
      S(0) => \add_ln840_113_reg_6720[2]_i_12_n_3\
    );
\add_ln840_113_reg_6720_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_118_fu_4423_p2,
      CO(2) => \add_ln840_113_reg_6720_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_113_reg_6720_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_113_reg_6720_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_113_reg_6720[2]_i_13_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_113_reg_6720[2]_i_14_n_3\,
      DI(0) => \add_ln840_113_reg_6720[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_113_reg_6720_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_113_reg_6720[2]_i_16_n_3\,
      S(2) => \add_ln840_113_reg_6720_reg[2]_0\(0),
      S(1) => \add_ln840_113_reg_6720[2]_i_18_n_3\,
      S(0) => \add_ln840_113_reg_6720[2]_i_19_n_3\
    );
\add_ln840_113_reg_6720_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_113_reg_6720_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_116_fu_4385_p2,
      CO(1) => \add_ln840_113_reg_6720_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_113_reg_6720_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_113_reg_6720[2]_i_20_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_113_reg_6720[2]_i_21_n_3\,
      O(3 downto 0) => \NLW_add_ln840_113_reg_6720_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_113_reg_6720[2]_i_22_n_3\,
      S(1) => \add_ln840_113_reg_6720_reg[2]\(0),
      S(0) => \add_ln840_113_reg_6720[2]_i_24_n_3\
    );
\add_ln840_113_reg_6720_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_115_fu_4366_p2,
      CO(2) => \add_ln840_113_reg_6720_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_113_reg_6720_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_113_reg_6720_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_113_reg_6720[2]_i_25_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_113_reg_6720[2]_i_26_n_3\,
      DI(0) => \add_ln840_113_reg_6720[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_113_reg_6720_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_113_reg_6720[2]_i_28_n_3\,
      S(2) => \add_ln840_113_reg_6720_reg[2]_1\(0),
      S(1) => \add_ln840_113_reg_6720[2]_i_30_n_3\,
      S(0) => \add_ln840_113_reg_6720[2]_i_31_n_3\
    );
\add_ln840_117_reg_6725[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_119_fu_4442_p2,
      I1 => icmp_ln1039_120_fu_4461_p2,
      I2 => icmp_ln1039_122_fu_4499_p2,
      I3 => icmp_ln1039_121_fu_4480_p2,
      O => \add_ln840_117_reg_6725_reg[2]_i_5_0\(0)
    );
\add_ln840_117_reg_6725[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_121_fu_4480_p2,
      I1 => icmp_ln1039_122_fu_4499_p2,
      I2 => icmp_ln1039_120_fu_4461_p2,
      I3 => icmp_ln1039_119_fu_4442_p2,
      O => \add_ln840_117_reg_6725_reg[2]_i_5_0\(1)
    );
\add_ln840_117_reg_6725[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_121_fu_4480_p2,
      I1 => icmp_ln1039_122_fu_4499_p2,
      I2 => icmp_ln1039_120_fu_4461_p2,
      I3 => icmp_ln1039_119_fu_4442_p2,
      O => \add_ln840_117_reg_6725_reg[2]_i_5_0\(2)
    );
\add_ln840_117_reg_6725[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_10_n_3\
    );
\add_ln840_117_reg_6725[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_117_reg_6725[2]_i_11_n_3\
    );
\add_ln840_117_reg_6725[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_117_reg_6725[2]_i_12_n_3\
    );
\add_ln840_117_reg_6725[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_117_reg_6725[2]_i_13_n_3\
    );
\add_ln840_117_reg_6725[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_117_reg_6725[2]_i_14_n_3\
    );
\add_ln840_117_reg_6725[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_117_reg_6725[2]_i_16_n_3\
    );
\add_ln840_117_reg_6725[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_17_n_3\
    );
\add_ln840_117_reg_6725[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_18_n_3\
    );
\add_ln840_117_reg_6725[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_19_n_3\
    );
\add_ln840_117_reg_6725[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      O => \add_ln840_117_reg_6725[2]_i_20_n_3\
    );
\add_ln840_117_reg_6725[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_117_reg_6725[2]_i_22_n_3\
    );
\add_ln840_117_reg_6725[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_117_reg_6725[2]_i_23_n_3\
    );
\add_ln840_117_reg_6725[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_24_n_3\
    );
\add_ln840_117_reg_6725[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_25_n_3\
    );
\add_ln840_117_reg_6725[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_117_reg_6725[2]_i_26_n_3\
    );
\add_ln840_117_reg_6725[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_117_reg_6725[2]_i_27_n_3\
    );
\add_ln840_117_reg_6725[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_117_reg_6725[2]_i_29_n_3\
    );
\add_ln840_117_reg_6725[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_117_reg_6725[2]_i_30_n_3\
    );
\add_ln840_117_reg_6725[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_117_reg_6725[2]_i_6_n_3\
    );
\add_ln840_117_reg_6725[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_117_reg_6725[2]_i_7_n_3\
    );
\add_ln840_117_reg_6725[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_117_reg_6725[2]_i_8_n_3\
    );
\add_ln840_117_reg_6725[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_117_reg_6725[2]_i_9_n_3\
    );
\add_ln840_117_reg_6725_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_117_reg_6725_reg[2]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_121_fu_4480_p2,
      CO(0) => \add_ln840_117_reg_6725_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_117_reg_6725[2]_i_6_n_3\,
      DI(0) => \add_ln840_117_reg_6725[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_117_reg_6725_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_117_reg_6725[2]_i_8_n_3\,
      S(0) => \add_ln840_117_reg_6725[2]_i_9_n_3\
    );
\add_ln840_117_reg_6725_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_122_fu_4499_p2,
      CO(2) => \add_ln840_117_reg_6725_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_117_reg_6725_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_117_reg_6725_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_117_reg_6725[2]_i_10_n_3\,
      DI(2) => \add_ln840_117_reg_6725[2]_i_11_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_117_reg_6725[2]_i_12_n_3\,
      O(3 downto 0) => \NLW_add_ln840_117_reg_6725_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_117_reg_6725[2]_i_13_n_3\,
      S(2) => \add_ln840_117_reg_6725[2]_i_14_n_3\,
      S(1) => \add_ln840_117_reg_6725_reg[2]_0\(0),
      S(0) => \add_ln840_117_reg_6725[2]_i_16_n_3\
    );
\add_ln840_117_reg_6725_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_120_fu_4461_p2,
      CO(2) => \add_ln840_117_reg_6725_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_117_reg_6725_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_117_reg_6725_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_117_reg_6725[2]_i_17_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_117_reg_6725[2]_i_18_n_3\,
      DI(0) => \add_ln840_117_reg_6725[2]_i_19_n_3\,
      O(3 downto 0) => \NLW_add_ln840_117_reg_6725_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_117_reg_6725[2]_i_20_n_3\,
      S(2) => \add_ln840_117_reg_6725_reg[2]\(0),
      S(1) => \add_ln840_117_reg_6725[2]_i_22_n_3\,
      S(0) => \add_ln840_117_reg_6725[2]_i_23_n_3\
    );
\add_ln840_117_reg_6725_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_119_fu_4442_p2,
      CO(2) => \add_ln840_117_reg_6725_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_117_reg_6725_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_117_reg_6725_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_117_reg_6725[2]_i_24_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_117_reg_6725[2]_i_25_n_3\,
      DI(0) => \add_ln840_117_reg_6725[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_117_reg_6725_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_117_reg_6725[2]_i_27_n_3\,
      S(2) => \add_ln840_117_reg_6725_reg[2]_1\(0),
      S(1) => \add_ln840_117_reg_6725[2]_i_29_n_3\,
      S(0) => \add_ln840_117_reg_6725[2]_i_30_n_3\
    );
\add_ln840_11_reg_6590[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_11_fu_2410_p2,
      I1 => icmp_ln1039_12_fu_2429_p2,
      I2 => icmp_ln1039_14_fu_2475_p2,
      I3 => icmp_ln1039_13_fu_2452_p2,
      O => \add_ln840_11_reg_6590_reg[2]_i_5_0\(0)
    );
\add_ln840_11_reg_6590[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_13_fu_2452_p2,
      I1 => icmp_ln1039_14_fu_2475_p2,
      I2 => icmp_ln1039_12_fu_2429_p2,
      I3 => icmp_ln1039_11_fu_2410_p2,
      O => \add_ln840_11_reg_6590_reg[2]_i_5_0\(1)
    );
\add_ln840_11_reg_6590[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_13_fu_2452_p2,
      I1 => icmp_ln1039_14_fu_2475_p2,
      I2 => icmp_ln1039_12_fu_2429_p2,
      I3 => icmp_ln1039_11_fu_2410_p2,
      O => \add_ln840_11_reg_6590_reg[2]_i_5_0\(2)
    );
\add_ln840_11_reg_6590[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_10_n_3\
    );
\add_ln840_11_reg_6590[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_11_reg_6590[2]_i_11_n_3\
    );
\add_ln840_11_reg_6590[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_11_reg_6590[2]_i_12_n_3\
    );
\add_ln840_11_reg_6590[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_11_reg_6590[2]_i_13_n_3\
    );
\add_ln840_11_reg_6590[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_11_reg_6590[2]_i_15_n_3\
    );
\add_ln840_11_reg_6590[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_16_n_3\
    );
\add_ln840_11_reg_6590[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_11_reg_6590[2]_i_17_n_3\
    );
\add_ln840_11_reg_6590[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_11_reg_6590[2]_i_18_n_3\
    );
\add_ln840_11_reg_6590[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_19_n_3\
    );
\add_ln840_11_reg_6590[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_11_reg_6590[2]_i_20_n_3\
    );
\add_ln840_11_reg_6590[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_11_reg_6590[2]_i_22_n_3\
    );
\add_ln840_11_reg_6590[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_23_n_3\
    );
\add_ln840_11_reg_6590[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_11_reg_6590[2]_i_24_n_3\
    );
\add_ln840_11_reg_6590[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_11_reg_6590[2]_i_25_n_3\
    );
\add_ln840_11_reg_6590[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_26_n_3\
    );
\add_ln840_11_reg_6590[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_11_reg_6590[2]_i_28_n_3\
    );
\add_ln840_11_reg_6590[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_11_reg_6590[2]_i_29_n_3\
    );
\add_ln840_11_reg_6590[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_11_reg_6590[2]_i_6_n_3\
    );
\add_ln840_11_reg_6590[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_11_reg_6590[2]_i_7_n_3\
    );
\add_ln840_11_reg_6590[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_11_reg_6590[2]_i_9_n_3\
    );
\add_ln840_11_reg_6590_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_11_reg_6590_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_13_fu_2452_p2,
      CO(1) => \add_ln840_11_reg_6590_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_11_reg_6590_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_11_reg_6590[2]_i_6_n_3\,
      DI(0) => \add_ln840_11_reg_6590[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_11_reg_6590_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_11_reg_6590_reg[2]_2\(0),
      S(1) => \add_ln840_11_reg_6590[2]_i_9_n_3\,
      S(0) => \add_ln840_11_reg_6590[2]_i_10_n_3\
    );
\add_ln840_11_reg_6590_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_14_fu_2475_p2,
      CO(2) => \add_ln840_11_reg_6590_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_11_reg_6590_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_11_reg_6590_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_11_reg_6590[2]_i_11_n_3\,
      DI(1) => \add_ln840_11_reg_6590[2]_i_12_n_3\,
      DI(0) => \add_ln840_11_reg_6590[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_11_reg_6590_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_11_reg_6590_reg[2]_0\(0),
      S(2) => \add_ln840_11_reg_6590[2]_i_15_n_3\,
      S(1) => \add_ln840_11_reg_6590[2]_i_16_n_3\,
      S(0) => \add_ln840_11_reg_6590[2]_i_17_n_3\
    );
\add_ln840_11_reg_6590_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_12_fu_2429_p2,
      CO(2) => \add_ln840_11_reg_6590_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_11_reg_6590_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_11_reg_6590_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_11_reg_6590[2]_i_18_n_3\,
      DI(1) => \add_ln840_11_reg_6590[2]_i_19_n_3\,
      DI(0) => \add_ln840_11_reg_6590[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_11_reg_6590_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_11_reg_6590_reg[2]\(0),
      S(2) => \add_ln840_11_reg_6590[2]_i_22_n_3\,
      S(1) => \add_ln840_11_reg_6590[2]_i_23_n_3\,
      S(0) => \add_ln840_11_reg_6590[2]_i_24_n_3\
    );
\add_ln840_11_reg_6590_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_11_reg_6590_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_11_fu_2410_p2,
      CO(1) => \add_ln840_11_reg_6590_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_11_reg_6590_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_11_reg_6590[2]_i_25_n_3\,
      DI(0) => \add_ln840_11_reg_6590[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_11_reg_6590_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_11_reg_6590_reg[2]_1\(0),
      S(1) => \add_ln840_11_reg_6590[2]_i_28_n_3\,
      S(0) => \add_ln840_11_reg_6590[2]_i_29_n_3\
    );
\add_ln840_120_reg_6730[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_123_fu_4518_p2,
      I1 => icmp_ln1039_124_fu_4537_p2,
      I2 => icmp_ln1039_126_fu_4575_p2,
      I3 => icmp_ln1039_125_fu_4556_p2,
      O => \add_ln840_120_reg_6730_reg[2]_i_5_0\(0)
    );
\add_ln840_120_reg_6730[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_125_fu_4556_p2,
      I1 => icmp_ln1039_126_fu_4575_p2,
      I2 => icmp_ln1039_124_fu_4537_p2,
      I3 => icmp_ln1039_123_fu_4518_p2,
      O => \add_ln840_120_reg_6730_reg[2]_i_5_0\(1)
    );
\add_ln840_120_reg_6730[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_125_fu_4556_p2,
      I1 => icmp_ln1039_126_fu_4575_p2,
      I2 => icmp_ln1039_124_fu_4537_p2,
      I3 => icmp_ln1039_123_fu_4518_p2,
      O => \add_ln840_120_reg_6730_reg[2]_i_5_0\(2)
    );
\add_ln840_120_reg_6730[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_120_reg_6730[2]_i_10_n_3\
    );
\add_ln840_120_reg_6730[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_11_n_3\
    );
\add_ln840_120_reg_6730[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_12_n_3\
    );
\add_ln840_120_reg_6730[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_120_reg_6730[2]_i_13_n_3\
    );
\add_ln840_120_reg_6730[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_120_reg_6730[2]_i_14_n_3\
    );
\add_ln840_120_reg_6730[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_15_n_3\
    );
\add_ln840_120_reg_6730[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_120_reg_6730[2]_i_16_n_3\
    );
\add_ln840_120_reg_6730[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_120_reg_6730[2]_i_17_n_3\
    );
\add_ln840_120_reg_6730[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_120_reg_6730[2]_i_18_n_3\
    );
\add_ln840_120_reg_6730[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_19_n_3\
    );
\add_ln840_120_reg_6730[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_20_n_3\
    );
\add_ln840_120_reg_6730[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_120_reg_6730[2]_i_21_n_3\
    );
\add_ln840_120_reg_6730[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_120_reg_6730[2]_i_22_n_3\
    );
\add_ln840_120_reg_6730[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_23_n_3\
    );
\add_ln840_120_reg_6730[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_24_n_3\
    );
\add_ln840_120_reg_6730[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_120_reg_6730[2]_i_25_n_3\
    );
\add_ln840_120_reg_6730[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      O => \add_ln840_120_reg_6730[2]_i_26_n_3\
    );
\add_ln840_120_reg_6730[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_27_n_3\
    );
\add_ln840_120_reg_6730[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_28_n_3\
    );
\add_ln840_120_reg_6730[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_120_reg_6730[2]_i_29_n_3\
    );
\add_ln840_120_reg_6730[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_120_reg_6730[2]_i_30_n_3\
    );
\add_ln840_120_reg_6730[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_31_n_3\
    );
\add_ln840_120_reg_6730[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_32_n_3\
    );
\add_ln840_120_reg_6730[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      O => \add_ln840_120_reg_6730[2]_i_33_n_3\
    );
\add_ln840_120_reg_6730[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_34_n_3\
    );
\add_ln840_120_reg_6730[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_35_n_3\
    );
\add_ln840_120_reg_6730[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_120_reg_6730[2]_i_6_n_3\
    );
\add_ln840_120_reg_6730[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_120_reg_6730[2]_i_7_n_3\
    );
\add_ln840_120_reg_6730[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_120_reg_6730[2]_i_8_n_3\
    );
\add_ln840_120_reg_6730[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_120_reg_6730[2]_i_9_n_3\
    );
\add_ln840_120_reg_6730_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_125_fu_4556_p2,
      CO(2) => \add_ln840_120_reg_6730_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_120_reg_6730_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_120_reg_6730_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_120_reg_6730[2]_i_6_n_3\,
      DI(2) => \add_ln840_120_reg_6730[2]_i_7_n_3\,
      DI(1) => \add_ln840_120_reg_6730[2]_i_8_n_3\,
      DI(0) => \add_ln840_120_reg_6730[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_120_reg_6730_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_120_reg_6730[2]_i_10_n_3\,
      S(2) => \add_ln840_120_reg_6730[2]_i_11_n_3\,
      S(1) => \add_ln840_120_reg_6730[2]_i_12_n_3\,
      S(0) => \add_ln840_120_reg_6730[2]_i_13_n_3\
    );
\add_ln840_120_reg_6730_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_126_fu_4575_p2,
      CO(2) => \add_ln840_120_reg_6730_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_120_reg_6730_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_120_reg_6730_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_120_reg_6730[2]_i_14_n_3\,
      DI(2) => \add_ln840_120_reg_6730[2]_i_15_n_3\,
      DI(1) => \add_ln840_120_reg_6730[2]_i_16_n_3\,
      DI(0) => \add_ln840_120_reg_6730[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_120_reg_6730_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_120_reg_6730[2]_i_18_n_3\,
      S(2) => \add_ln840_120_reg_6730[2]_i_19_n_3\,
      S(1) => \add_ln840_120_reg_6730[2]_i_20_n_3\,
      S(0) => \add_ln840_120_reg_6730[2]_i_21_n_3\
    );
\add_ln840_120_reg_6730_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_124_fu_4537_p2,
      CO(2) => \add_ln840_120_reg_6730_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_120_reg_6730_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_120_reg_6730_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_120_reg_6730[2]_i_22_n_3\,
      DI(2) => \add_ln840_120_reg_6730[2]_i_23_n_3\,
      DI(1) => \add_ln840_120_reg_6730[2]_i_24_n_3\,
      DI(0) => \add_ln840_120_reg_6730[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_120_reg_6730_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_120_reg_6730[2]_i_26_n_3\,
      S(2) => \add_ln840_120_reg_6730[2]_i_27_n_3\,
      S(1) => \add_ln840_120_reg_6730[2]_i_28_n_3\,
      S(0) => \add_ln840_120_reg_6730[2]_i_29_n_3\
    );
\add_ln840_120_reg_6730_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_120_reg_6730_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_123_fu_4518_p2,
      CO(1) => \add_ln840_120_reg_6730_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_120_reg_6730_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_120_reg_6730[2]_i_30_n_3\,
      DI(1) => \add_ln840_120_reg_6730[2]_i_31_n_3\,
      DI(0) => \add_ln840_120_reg_6730[2]_i_32_n_3\,
      O(3 downto 0) => \NLW_add_ln840_120_reg_6730_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_120_reg_6730[2]_i_33_n_3\,
      S(1) => \add_ln840_120_reg_6730[2]_i_34_n_3\,
      S(0) => \add_ln840_120_reg_6730[2]_i_35_n_3\
    );
\add_ln840_16_reg_6595[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_15_fu_2498_p2,
      I1 => icmp_ln1039_16_fu_2521_p2,
      I2 => icmp_ln1039_18_fu_2563_p2,
      I3 => icmp_ln1039_17_fu_2544_p2,
      O => \add_ln840_16_reg_6595_reg[2]_i_5_0\(0)
    );
\add_ln840_16_reg_6595[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_17_fu_2544_p2,
      I1 => icmp_ln1039_18_fu_2563_p2,
      I2 => icmp_ln1039_16_fu_2521_p2,
      I3 => icmp_ln1039_15_fu_2498_p2,
      O => \add_ln840_16_reg_6595_reg[2]_i_5_0\(1)
    );
\add_ln840_16_reg_6595[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_17_fu_2544_p2,
      I1 => icmp_ln1039_18_fu_2563_p2,
      I2 => icmp_ln1039_16_fu_2521_p2,
      I3 => icmp_ln1039_15_fu_2498_p2,
      O => \add_ln840_16_reg_6595_reg[2]_i_5_0\(2)
    );
\add_ln840_16_reg_6595[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_16_reg_6595[2]_i_10_n_3\
    );
\add_ln840_16_reg_6595[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_16_reg_6595[2]_i_11_n_3\
    );
\add_ln840_16_reg_6595[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_16_reg_6595[2]_i_12_n_3\
    );
\add_ln840_16_reg_6595[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_16_reg_6595[2]_i_13_n_3\
    );
\add_ln840_16_reg_6595[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_16_reg_6595[2]_i_15_n_3\
    );
\add_ln840_16_reg_6595[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_16_reg_6595[2]_i_16_n_3\
    );
\add_ln840_16_reg_6595[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_16_reg_6595[2]_i_17_n_3\
    );
\add_ln840_16_reg_6595[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_16_reg_6595[2]_i_18_n_3\
    );
\add_ln840_16_reg_6595[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_16_reg_6595[2]_i_20_n_3\
    );
\add_ln840_16_reg_6595[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_16_reg_6595[2]_i_21_n_3\
    );
\add_ln840_16_reg_6595[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_16_reg_6595[2]_i_22_n_3\
    );
\add_ln840_16_reg_6595[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_16_reg_6595[2]_i_23_n_3\
    );
\add_ln840_16_reg_6595[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_16_reg_6595[2]_i_24_n_3\
    );
\add_ln840_16_reg_6595[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_16_reg_6595[2]_i_25_n_3\
    );
\add_ln840_16_reg_6595[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_16_reg_6595[2]_i_27_n_3\
    );
\add_ln840_16_reg_6595[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_16_reg_6595[2]_i_28_n_3\
    );
\add_ln840_16_reg_6595[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_16_reg_6595[2]_i_29_n_3\
    );
\add_ln840_16_reg_6595[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_16_reg_6595[2]_i_6_n_3\
    );
\add_ln840_16_reg_6595[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_16_reg_6595[2]_i_7_n_3\
    );
\add_ln840_16_reg_6595[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_16_reg_6595[2]_i_8_n_3\
    );
\add_ln840_16_reg_6595_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_17_fu_2544_p2,
      CO(2) => \add_ln840_16_reg_6595_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_16_reg_6595_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_16_reg_6595_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_16_reg_6595[2]_i_6_n_3\,
      DI(1) => \add_ln840_16_reg_6595[2]_i_7_n_3\,
      DI(0) => \add_ln840_16_reg_6595[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_16_reg_6595_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_16_reg_6595_reg[2]_2\(0),
      S(2) => \add_ln840_16_reg_6595[2]_i_10_n_3\,
      S(1) => \add_ln840_16_reg_6595[2]_i_11_n_3\,
      S(0) => \add_ln840_16_reg_6595[2]_i_12_n_3\
    );
\add_ln840_16_reg_6595_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_16_reg_6595_reg[2]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_18_fu_2563_p2,
      CO(0) => \add_ln840_16_reg_6595_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \add_ln840_16_reg_6595[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_16_reg_6595_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_16_reg_6595_reg[2]_0\(0),
      S(0) => \add_ln840_16_reg_6595[2]_i_15_n_3\
    );
\add_ln840_16_reg_6595_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_16_fu_2521_p2,
      CO(2) => \add_ln840_16_reg_6595_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_16_reg_6595_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_16_reg_6595_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_16_reg_6595[2]_i_16_n_3\,
      DI(1) => \add_ln840_16_reg_6595[2]_i_17_n_3\,
      DI(0) => \add_ln840_16_reg_6595[2]_i_18_n_3\,
      O(3 downto 0) => \NLW_add_ln840_16_reg_6595_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_16_reg_6595_reg[2]\(0),
      S(2) => \add_ln840_16_reg_6595[2]_i_20_n_3\,
      S(1) => \add_ln840_16_reg_6595[2]_i_21_n_3\,
      S(0) => \add_ln840_16_reg_6595[2]_i_22_n_3\
    );
\add_ln840_16_reg_6595_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_15_fu_2498_p2,
      CO(2) => \add_ln840_16_reg_6595_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_16_reg_6595_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_16_reg_6595_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_16_reg_6595[2]_i_23_n_3\,
      DI(1) => \add_ln840_16_reg_6595[2]_i_24_n_3\,
      DI(0) => \add_ln840_16_reg_6595[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_16_reg_6595_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_16_reg_6595_reg[2]_1\(0),
      S(2) => \add_ln840_16_reg_6595[2]_i_27_n_3\,
      S(1) => \add_ln840_16_reg_6595[2]_i_28_n_3\,
      S(0) => \add_ln840_16_reg_6595[2]_i_29_n_3\
    );
\add_ln840_19_reg_6600[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_19_fu_2582_p2,
      I1 => icmp_ln1039_20_fu_2601_p2,
      I2 => icmp_ln1039_22_fu_2639_p2,
      I3 => icmp_ln1039_21_fu_2620_p2,
      O => \add_ln840_19_reg_6600_reg[2]_i_5_0\(0)
    );
\add_ln840_19_reg_6600[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_21_fu_2620_p2,
      I1 => icmp_ln1039_22_fu_2639_p2,
      I2 => icmp_ln1039_20_fu_2601_p2,
      I3 => icmp_ln1039_19_fu_2582_p2,
      O => \add_ln840_19_reg_6600_reg[2]_i_5_0\(1)
    );
\add_ln840_19_reg_6600[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_21_fu_2620_p2,
      I1 => icmp_ln1039_22_fu_2639_p2,
      I2 => icmp_ln1039_20_fu_2601_p2,
      I3 => icmp_ln1039_19_fu_2582_p2,
      O => \add_ln840_19_reg_6600_reg[2]_i_5_0\(2)
    );
\add_ln840_19_reg_6600[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_19_reg_6600[2]_i_10_n_3\
    );
\add_ln840_19_reg_6600[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_11_n_3\
    );
\add_ln840_19_reg_6600[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_19_reg_6600[2]_i_12_n_3\
    );
\add_ln840_19_reg_6600[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_19_reg_6600[2]_i_13_n_3\
    );
\add_ln840_19_reg_6600[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_14_n_3\
    );
\add_ln840_19_reg_6600[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_19_reg_6600[2]_i_15_n_3\
    );
\add_ln840_19_reg_6600[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_19_reg_6600[2]_i_17_n_3\
    );
\add_ln840_19_reg_6600[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_18_n_3\
    );
\add_ln840_19_reg_6600[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_19_reg_6600[2]_i_19_n_3\
    );
\add_ln840_19_reg_6600[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_19_reg_6600[2]_i_20_n_3\
    );
\add_ln840_19_reg_6600[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_21_n_3\
    );
\add_ln840_19_reg_6600[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_19_reg_6600[2]_i_23_n_3\
    );
\add_ln840_19_reg_6600[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_24_n_3\
    );
\add_ln840_19_reg_6600[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_19_reg_6600[2]_i_25_n_3\
    );
\add_ln840_19_reg_6600[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_19_reg_6600[2]_i_26_n_3\
    );
\add_ln840_19_reg_6600[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_19_reg_6600[2]_i_28_n_3\
    );
\add_ln840_19_reg_6600[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_19_reg_6600[2]_i_30_n_3\
    );
\add_ln840_19_reg_6600[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_19_reg_6600[2]_i_6_n_3\
    );
\add_ln840_19_reg_6600[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_19_reg_6600[2]_i_7_n_3\
    );
\add_ln840_19_reg_6600[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_19_reg_6600[2]_i_8_n_3\
    );
\add_ln840_19_reg_6600_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_21_fu_2620_p2,
      CO(2) => \add_ln840_19_reg_6600_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_19_reg_6600_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_19_reg_6600_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_19_reg_6600[2]_i_6_n_3\,
      DI(1) => \add_ln840_19_reg_6600[2]_i_7_n_3\,
      DI(0) => \add_ln840_19_reg_6600[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_19_reg_6600_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_19_reg_6600_reg[2]_2\(0),
      S(2) => \add_ln840_19_reg_6600[2]_i_10_n_3\,
      S(1) => \add_ln840_19_reg_6600[2]_i_11_n_3\,
      S(0) => \add_ln840_19_reg_6600[2]_i_12_n_3\
    );
\add_ln840_19_reg_6600_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_22_fu_2639_p2,
      CO(2) => \add_ln840_19_reg_6600_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_19_reg_6600_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_19_reg_6600_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_19_reg_6600[2]_i_13_n_3\,
      DI(1) => \add_ln840_19_reg_6600[2]_i_14_n_3\,
      DI(0) => \add_ln840_19_reg_6600[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_19_reg_6600_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_19_reg_6600_reg[2]_0\(0),
      S(2) => \add_ln840_19_reg_6600[2]_i_17_n_3\,
      S(1) => \add_ln840_19_reg_6600[2]_i_18_n_3\,
      S(0) => \add_ln840_19_reg_6600[2]_i_19_n_3\
    );
\add_ln840_19_reg_6600_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_19_reg_6600_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_20_fu_2601_p2,
      CO(1) => \add_ln840_19_reg_6600_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_19_reg_6600_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_19_reg_6600[2]_i_20_n_3\,
      DI(0) => \add_ln840_19_reg_6600[2]_i_21_n_3\,
      O(3 downto 0) => \NLW_add_ln840_19_reg_6600_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_19_reg_6600_reg[2]\(0),
      S(1) => \add_ln840_19_reg_6600[2]_i_23_n_3\,
      S(0) => \add_ln840_19_reg_6600[2]_i_24_n_3\
    );
\add_ln840_19_reg_6600_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_19_fu_2582_p2,
      CO(2) => \add_ln840_19_reg_6600_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_19_reg_6600_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_19_reg_6600_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_19_reg_6600[2]_i_25_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_19_reg_6600[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_19_reg_6600_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_19_reg_6600_reg[2]_1\(1),
      S(2) => \add_ln840_19_reg_6600[2]_i_28_n_3\,
      S(1) => \add_ln840_19_reg_6600_reg[2]_1\(0),
      S(0) => \add_ln840_19_reg_6600[2]_i_30_n_3\
    );
\add_ln840_1_reg_6570[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9A9AAA"
    )
        port map (
      I0 => zext_ln218_1_fu_2234_p1,
      I1 => \add_ln840_1_reg_6570_reg[0]\,
      I2 => \add_ln840_1_reg_6570_reg[0]_0\,
      I3 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I4 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => D(0)
    );
\add_ln840_1_reg_6570[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFEFCF"
    )
        port map (
      I0 => zext_ln218_1_fu_2234_p1,
      I1 => \add_ln840_1_reg_6570_reg[0]\,
      I2 => \add_ln840_1_reg_6570_reg[0]_0\,
      I3 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I4 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => D(1)
    );
\add_ln840_1_reg_6570[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDDD5"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I3 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I4 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I5 => \add_ln840_2_reg_6575_reg[0]\,
      O => zext_ln218_1_fu_2234_p1
    );
\add_ln840_23_reg_6605[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_23_fu_2658_p2,
      I1 => icmp_ln1039_24_fu_2677_p2,
      I2 => icmp_ln1039_26_fu_2715_p2,
      I3 => icmp_ln1039_25_fu_2696_p2,
      O => \add_ln840_23_reg_6605_reg[2]_i_5_0\(0)
    );
\add_ln840_23_reg_6605[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_25_fu_2696_p2,
      I1 => icmp_ln1039_26_fu_2715_p2,
      I2 => icmp_ln1039_24_fu_2677_p2,
      I3 => icmp_ln1039_23_fu_2658_p2,
      O => \add_ln840_23_reg_6605_reg[2]_i_5_0\(1)
    );
\add_ln840_23_reg_6605[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_25_fu_2696_p2,
      I1 => icmp_ln1039_26_fu_2715_p2,
      I2 => icmp_ln1039_24_fu_2677_p2,
      I3 => icmp_ln1039_23_fu_2658_p2,
      O => \add_ln840_23_reg_6605_reg[2]_i_5_0\(2)
    );
\add_ln840_23_reg_6605[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_23_reg_6605[2]_i_10_n_3\
    );
\add_ln840_23_reg_6605[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_23_reg_6605[2]_i_11_n_3\
    );
\add_ln840_23_reg_6605[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_23_reg_6605[2]_i_12_n_3\
    );
\add_ln840_23_reg_6605[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_23_reg_6605[2]_i_13_n_3\
    );
\add_ln840_23_reg_6605[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_23_reg_6605[2]_i_15_n_3\
    );
\add_ln840_23_reg_6605[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_23_reg_6605[2]_i_16_n_3\
    );
\add_ln840_23_reg_6605[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_23_reg_6605[2]_i_17_n_3\
    );
\add_ln840_23_reg_6605[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_23_reg_6605[2]_i_18_n_3\
    );
\add_ln840_23_reg_6605[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_23_reg_6605[2]_i_19_n_3\
    );
\add_ln840_23_reg_6605[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_23_reg_6605[2]_i_20_n_3\
    );
\add_ln840_23_reg_6605[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_23_reg_6605[2]_i_22_n_3\
    );
\add_ln840_23_reg_6605[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_23_reg_6605[2]_i_23_n_3\
    );
\add_ln840_23_reg_6605[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_23_reg_6605[2]_i_24_n_3\
    );
\add_ln840_23_reg_6605[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_23_reg_6605[2]_i_25_n_3\
    );
\add_ln840_23_reg_6605[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_23_reg_6605[2]_i_26_n_3\
    );
\add_ln840_23_reg_6605[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_23_reg_6605[2]_i_27_n_3\
    );
\add_ln840_23_reg_6605[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_23_reg_6605[2]_i_29_n_3\
    );
\add_ln840_23_reg_6605[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_23_reg_6605[2]_i_30_n_3\
    );
\add_ln840_23_reg_6605[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_23_reg_6605[2]_i_31_n_3\
    );
\add_ln840_23_reg_6605[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_23_reg_6605[2]_i_6_n_3\
    );
\add_ln840_23_reg_6605[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_23_reg_6605[2]_i_7_n_3\
    );
\add_ln840_23_reg_6605[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_23_reg_6605[2]_i_9_n_3\
    );
\add_ln840_23_reg_6605_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_23_reg_6605_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_25_fu_2696_p2,
      CO(1) => \add_ln840_23_reg_6605_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_23_reg_6605_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_23_reg_6605[2]_i_6_n_3\,
      DI(0) => \add_ln840_23_reg_6605[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_23_reg_6605_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_23_reg_6605_reg[2]_2\(0),
      S(1) => \add_ln840_23_reg_6605[2]_i_9_n_3\,
      S(0) => \add_ln840_23_reg_6605[2]_i_10_n_3\
    );
\add_ln840_23_reg_6605_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_26_fu_2715_p2,
      CO(2) => \add_ln840_23_reg_6605_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_23_reg_6605_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_23_reg_6605_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_23_reg_6605[2]_i_11_n_3\,
      DI(1) => \add_ln840_23_reg_6605[2]_i_12_n_3\,
      DI(0) => \add_ln840_23_reg_6605[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_23_reg_6605_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_23_reg_6605_reg[2]_0\(0),
      S(2) => \add_ln840_23_reg_6605[2]_i_15_n_3\,
      S(1) => \add_ln840_23_reg_6605[2]_i_16_n_3\,
      S(0) => \add_ln840_23_reg_6605[2]_i_17_n_3\
    );
\add_ln840_23_reg_6605_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_24_fu_2677_p2,
      CO(2) => \add_ln840_23_reg_6605_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_23_reg_6605_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_23_reg_6605_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_23_reg_6605[2]_i_18_n_3\,
      DI(1) => \add_ln840_23_reg_6605[2]_i_19_n_3\,
      DI(0) => \add_ln840_23_reg_6605[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_23_reg_6605_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_23_reg_6605_reg[2]\(0),
      S(2) => \add_ln840_23_reg_6605[2]_i_22_n_3\,
      S(1) => \add_ln840_23_reg_6605[2]_i_23_n_3\,
      S(0) => \add_ln840_23_reg_6605[2]_i_24_n_3\
    );
\add_ln840_23_reg_6605_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_23_fu_2658_p2,
      CO(2) => \add_ln840_23_reg_6605_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_23_reg_6605_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_23_reg_6605_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_23_reg_6605[2]_i_25_n_3\,
      DI(1) => \add_ln840_23_reg_6605[2]_i_26_n_3\,
      DI(0) => \add_ln840_23_reg_6605[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_23_reg_6605_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_23_reg_6605_reg[2]_1\(0),
      S(2) => \add_ln840_23_reg_6605[2]_i_29_n_3\,
      S(1) => \add_ln840_23_reg_6605[2]_i_30_n_3\,
      S(0) => \add_ln840_23_reg_6605[2]_i_31_n_3\
    );
\add_ln840_26_reg_6610[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_27_fu_2738_p2,
      I1 => icmp_ln1039_28_fu_2761_p2,
      I2 => icmp_ln1039_30_fu_2807_p2,
      I3 => icmp_ln1039_29_fu_2784_p2,
      O => \add_ln840_26_reg_6610_reg[2]_i_5_0\(0)
    );
\add_ln840_26_reg_6610[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_29_fu_2784_p2,
      I1 => icmp_ln1039_30_fu_2807_p2,
      I2 => icmp_ln1039_28_fu_2761_p2,
      I3 => icmp_ln1039_27_fu_2738_p2,
      O => \add_ln840_26_reg_6610_reg[2]_i_5_0\(1)
    );
\add_ln840_26_reg_6610[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_29_fu_2784_p2,
      I1 => icmp_ln1039_30_fu_2807_p2,
      I2 => icmp_ln1039_28_fu_2761_p2,
      I3 => icmp_ln1039_27_fu_2738_p2,
      O => \add_ln840_26_reg_6610_reg[2]_i_5_0\(2)
    );
\add_ln840_26_reg_6610[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_26_reg_6610[2]_i_11_n_3\
    );
\add_ln840_26_reg_6610[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_26_reg_6610[2]_i_12_n_3\
    );
\add_ln840_26_reg_6610[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_26_reg_6610[2]_i_13_n_3\
    );
\add_ln840_26_reg_6610[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_26_reg_6610[2]_i_14_n_3\
    );
\add_ln840_26_reg_6610[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_26_reg_6610[2]_i_16_n_3\
    );
\add_ln840_26_reg_6610[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_26_reg_6610[2]_i_17_n_3\
    );
\add_ln840_26_reg_6610[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_26_reg_6610[2]_i_18_n_3\
    );
\add_ln840_26_reg_6610[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_26_reg_6610[2]_i_19_n_3\
    );
\add_ln840_26_reg_6610[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_26_reg_6610[2]_i_20_n_3\
    );
\add_ln840_26_reg_6610[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_26_reg_6610[2]_i_22_n_3\
    );
\add_ln840_26_reg_6610[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_26_reg_6610[2]_i_24_n_3\
    );
\add_ln840_26_reg_6610[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_26_reg_6610[2]_i_25_n_3\
    );
\add_ln840_26_reg_6610[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_26_reg_6610[2]_i_27_n_3\
    );
\add_ln840_26_reg_6610[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_26_reg_6610[2]_i_6_n_3\
    );
\add_ln840_26_reg_6610[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_26_reg_6610[2]_i_7_n_3\
    );
\add_ln840_26_reg_6610[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_26_reg_6610[2]_i_9_n_3\
    );
\add_ln840_26_reg_6610_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_29_fu_2784_p2,
      CO(2) => \add_ln840_26_reg_6610_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_26_reg_6610_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_26_reg_6610_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_26_reg_6610[2]_i_6_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_26_reg_6610[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_26_reg_6610_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_26_reg_6610_reg[2]_2\(1),
      S(2) => \add_ln840_26_reg_6610[2]_i_9_n_3\,
      S(1) => \add_ln840_26_reg_6610_reg[2]_2\(0),
      S(0) => \add_ln840_26_reg_6610[2]_i_11_n_3\
    );
\add_ln840_26_reg_6610_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_30_fu_2807_p2,
      CO(2) => \add_ln840_26_reg_6610_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_26_reg_6610_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_26_reg_6610_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_26_reg_6610[2]_i_12_n_3\,
      DI(1) => \add_ln840_26_reg_6610[2]_i_13_n_3\,
      DI(0) => \add_ln840_26_reg_6610[2]_i_14_n_3\,
      O(3 downto 0) => \NLW_add_ln840_26_reg_6610_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_26_reg_6610_reg[2]_0\(0),
      S(2) => \add_ln840_26_reg_6610[2]_i_16_n_3\,
      S(1) => \add_ln840_26_reg_6610[2]_i_17_n_3\,
      S(0) => \add_ln840_26_reg_6610[2]_i_18_n_3\
    );
\add_ln840_26_reg_6610_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_28_fu_2761_p2,
      CO(2) => \add_ln840_26_reg_6610_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_26_reg_6610_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_26_reg_6610_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_26_reg_6610[2]_i_19_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_26_reg_6610[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_26_reg_6610_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_26_reg_6610_reg[2]\(1),
      S(2) => \add_ln840_26_reg_6610[2]_i_22_n_3\,
      S(1) => \add_ln840_26_reg_6610_reg[2]\(0),
      S(0) => \add_ln840_26_reg_6610[2]_i_24_n_3\
    );
\add_ln840_26_reg_6610_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_26_reg_6610_reg[2]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_27_fu_2738_p2,
      CO(0) => \add_ln840_26_reg_6610_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \add_ln840_26_reg_6610[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_26_reg_6610_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_26_reg_6610_reg[2]_1\(0),
      S(0) => \add_ln840_26_reg_6610[2]_i_27_n_3\
    );
\add_ln840_2_reg_6575[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF00070000"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I2 => \add_ln840_2_reg_6575_reg[0]\,
      I3 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I4 => p_ZL7threshs_130_q0(0),
      I5 => icmp_ln1039_4_fu_2265_p2,
      O => \inElem_reg_5804_pp0_iter1_reg_reg[1]\(0)
    );
\add_ln840_2_reg_6575[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF8FFFF"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I2 => \add_ln840_2_reg_6575_reg[0]\,
      I3 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I4 => p_ZL7threshs_130_q0(0),
      I5 => icmp_ln1039_4_fu_2265_p2,
      O => \inElem_reg_5804_pp0_iter1_reg_reg[1]\(1)
    );
\add_ln840_2_reg_6575[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_2_reg_6575[1]_i_4_n_3\
    );
\add_ln840_2_reg_6575[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_2_reg_6575[1]_i_7_n_3\
    );
\add_ln840_2_reg_6575_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_2_reg_6575_reg[1]_i_3_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_4_fu_2265_p2,
      CO(1) => \add_ln840_2_reg_6575_reg[1]_i_3_n_5\,
      CO(0) => \add_ln840_2_reg_6575_reg[1]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \add_ln840_2_reg_6575[1]_i_4_n_3\,
      O(3 downto 0) => \NLW_add_ln840_2_reg_6575_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 1) => \add_ln840_2_reg_6575_reg[1]\(1 downto 0),
      S(0) => \add_ln840_2_reg_6575[1]_i_7_n_3\
    );
\add_ln840_32_reg_6615[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_31_fu_2830_p2,
      I1 => icmp_ln1039_32_fu_2853_p2,
      I2 => icmp_ln1039_34_fu_2899_p2,
      I3 => icmp_ln1039_33_fu_2876_p2,
      O => \add_ln840_32_reg_6615_reg[2]_i_5_0\(0)
    );
\add_ln840_32_reg_6615[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_33_fu_2876_p2,
      I1 => icmp_ln1039_34_fu_2899_p2,
      I2 => icmp_ln1039_32_fu_2853_p2,
      I3 => icmp_ln1039_31_fu_2830_p2,
      O => \add_ln840_32_reg_6615_reg[2]_i_5_0\(1)
    );
\add_ln840_32_reg_6615[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_33_fu_2876_p2,
      I1 => icmp_ln1039_34_fu_2899_p2,
      I2 => icmp_ln1039_32_fu_2853_p2,
      I3 => icmp_ln1039_31_fu_2830_p2,
      O => \add_ln840_32_reg_6615_reg[2]_i_5_0\(2)
    );
\add_ln840_32_reg_6615[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_32_reg_6615[2]_i_10_n_3\
    );
\add_ln840_32_reg_6615[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_32_reg_6615[2]_i_11_n_3\
    );
\add_ln840_32_reg_6615[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_32_reg_6615[2]_i_12_n_3\
    );
\add_ln840_32_reg_6615[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_32_reg_6615[2]_i_13_n_3\
    );
\add_ln840_32_reg_6615[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_32_reg_6615[2]_i_14_n_3\
    );
\add_ln840_32_reg_6615[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_32_reg_6615[2]_i_16_n_3\
    );
\add_ln840_32_reg_6615[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_32_reg_6615[2]_i_17_n_3\
    );
\add_ln840_32_reg_6615[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_32_reg_6615[2]_i_18_n_3\
    );
\add_ln840_32_reg_6615[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_32_reg_6615[2]_i_19_n_3\
    );
\add_ln840_32_reg_6615[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_32_reg_6615[2]_i_21_n_3\
    );
\add_ln840_32_reg_6615[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_32_reg_6615[2]_i_22_n_3\
    );
\add_ln840_32_reg_6615[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_32_reg_6615[2]_i_23_n_3\
    );
\add_ln840_32_reg_6615[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_32_reg_6615[2]_i_24_n_3\
    );
\add_ln840_32_reg_6615[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_32_reg_6615[2]_i_25_n_3\
    );
\add_ln840_32_reg_6615[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_32_reg_6615[2]_i_27_n_3\
    );
\add_ln840_32_reg_6615[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_32_reg_6615[2]_i_28_n_3\
    );
\add_ln840_32_reg_6615[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_32_reg_6615[2]_i_29_n_3\
    );
\add_ln840_32_reg_6615[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_32_reg_6615[2]_i_6_n_3\
    );
\add_ln840_32_reg_6615[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_32_reg_6615[2]_i_7_n_3\
    );
\add_ln840_32_reg_6615[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_32_reg_6615[2]_i_8_n_3\
    );
\add_ln840_32_reg_6615_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_33_fu_2876_p2,
      CO(2) => \add_ln840_32_reg_6615_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_32_reg_6615_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_32_reg_6615_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_32_reg_6615[2]_i_6_n_3\,
      DI(1) => \add_ln840_32_reg_6615[2]_i_7_n_3\,
      DI(0) => \add_ln840_32_reg_6615[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_32_reg_6615_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_32_reg_6615_reg[2]_2\(0),
      S(2) => \add_ln840_32_reg_6615[2]_i_10_n_3\,
      S(1) => \add_ln840_32_reg_6615[2]_i_11_n_3\,
      S(0) => \add_ln840_32_reg_6615[2]_i_12_n_3\
    );
\add_ln840_32_reg_6615_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_32_reg_6615_reg[2]_i_3_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_34_fu_2899_p2,
      CO(1) => \add_ln840_32_reg_6615_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_32_reg_6615_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_32_reg_6615[2]_i_13_n_3\,
      DI(0) => \add_ln840_32_reg_6615[2]_i_14_n_3\,
      O(3 downto 0) => \NLW_add_ln840_32_reg_6615_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_32_reg_6615_reg[2]_0\(0),
      S(1) => \add_ln840_32_reg_6615[2]_i_16_n_3\,
      S(0) => \add_ln840_32_reg_6615[2]_i_17_n_3\
    );
\add_ln840_32_reg_6615_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_32_reg_6615_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_32_fu_2853_p2,
      CO(1) => \add_ln840_32_reg_6615_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_32_reg_6615_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_32_reg_6615[2]_i_18_n_3\,
      DI(0) => \add_ln840_32_reg_6615[2]_i_19_n_3\,
      O(3 downto 0) => \NLW_add_ln840_32_reg_6615_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_32_reg_6615_reg[2]\(0),
      S(1) => \add_ln840_32_reg_6615[2]_i_21_n_3\,
      S(0) => \add_ln840_32_reg_6615[2]_i_22_n_3\
    );
\add_ln840_32_reg_6615_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_31_fu_2830_p2,
      CO(2) => \add_ln840_32_reg_6615_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_32_reg_6615_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_32_reg_6615_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_32_reg_6615[2]_i_23_n_3\,
      DI(1) => \add_ln840_32_reg_6615[2]_i_24_n_3\,
      DI(0) => \add_ln840_32_reg_6615[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_32_reg_6615_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_32_reg_6615_reg[2]_1\(0),
      S(2) => \add_ln840_32_reg_6615[2]_i_27_n_3\,
      S(1) => \add_ln840_32_reg_6615[2]_i_28_n_3\,
      S(0) => \add_ln840_32_reg_6615[2]_i_29_n_3\
    );
\add_ln840_35_reg_6620[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_35_fu_2922_p2,
      I1 => \add_ln840_35_reg_6620_reg[0]\(0),
      I2 => icmp_ln1039_38_fu_2983_p2,
      I3 => icmp_ln1039_37_fu_2964_p2,
      O => \add_ln840_35_reg_6620_reg[2]_i_5_0\(0)
    );
\add_ln840_35_reg_6620[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_37_fu_2964_p2,
      I1 => icmp_ln1039_38_fu_2983_p2,
      I2 => \add_ln840_35_reg_6620_reg[0]\(0),
      I3 => icmp_ln1039_35_fu_2922_p2,
      O => \add_ln840_35_reg_6620_reg[2]_i_5_0\(1)
    );
\add_ln840_35_reg_6620[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_37_fu_2964_p2,
      I1 => icmp_ln1039_38_fu_2983_p2,
      I2 => \add_ln840_35_reg_6620_reg[0]\(0),
      I3 => icmp_ln1039_35_fu_2922_p2,
      O => \add_ln840_35_reg_6620_reg[2]_i_5_0\(2)
    );
\add_ln840_35_reg_6620[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_35_reg_6620[2]_i_11_n_3\
    );
\add_ln840_35_reg_6620[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_35_reg_6620[2]_i_12_n_3\
    );
\add_ln840_35_reg_6620[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_35_reg_6620[2]_i_13_n_3\
    );
\add_ln840_35_reg_6620[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_35_reg_6620[2]_i_14_n_3\
    );
\add_ln840_35_reg_6620[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_35_reg_6620[2]_i_17_n_3\
    );
\add_ln840_35_reg_6620[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_35_reg_6620[2]_i_25_n_3\
    );
\add_ln840_35_reg_6620[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_35_reg_6620[2]_i_26_n_3\
    );
\add_ln840_35_reg_6620[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_35_reg_6620[2]_i_27_n_3\
    );
\add_ln840_35_reg_6620[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_35_reg_6620[2]_i_29_n_3\
    );
\add_ln840_35_reg_6620[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_35_reg_6620[2]_i_30_n_3\
    );
\add_ln840_35_reg_6620[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_35_reg_6620[2]_i_31_n_3\
    );
\add_ln840_35_reg_6620[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_35_reg_6620[2]_i_6_n_3\
    );
\add_ln840_35_reg_6620[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_35_reg_6620[2]_i_7_n_3\
    );
\add_ln840_35_reg_6620[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_35_reg_6620[2]_i_8_n_3\
    );
\add_ln840_35_reg_6620_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_37_fu_2964_p2,
      CO(2) => \add_ln840_35_reg_6620_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_35_reg_6620_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_35_reg_6620_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_35_reg_6620[2]_i_6_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_35_reg_6620[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_35_reg_6620_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_35_reg_6620[2]_i_8_n_3\,
      S(2 downto 1) => \add_ln840_35_reg_6620_reg[2]_1\(1 downto 0),
      S(0) => \add_ln840_35_reg_6620[2]_i_11_n_3\
    );
\add_ln840_35_reg_6620_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_38_fu_2983_p2,
      CO(2) => \add_ln840_35_reg_6620_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_35_reg_6620_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_35_reg_6620_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_35_reg_6620[2]_i_12_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_35_reg_6620[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_35_reg_6620_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_35_reg_6620[2]_i_14_n_3\,
      S(2 downto 1) => \add_ln840_35_reg_6620_reg[2]\(1 downto 0),
      S(0) => \add_ln840_35_reg_6620[2]_i_17_n_3\
    );
\add_ln840_35_reg_6620_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_35_fu_2922_p2,
      CO(2) => \add_ln840_35_reg_6620_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_35_reg_6620_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_35_reg_6620_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_35_reg_6620[2]_i_25_n_3\,
      DI(1) => \add_ln840_35_reg_6620[2]_i_26_n_3\,
      DI(0) => \add_ln840_35_reg_6620[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_35_reg_6620_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_35_reg_6620_reg[2]_0\(0),
      S(2) => \add_ln840_35_reg_6620[2]_i_29_n_3\,
      S(1) => \add_ln840_35_reg_6620[2]_i_30_n_3\,
      S(0) => \add_ln840_35_reg_6620[2]_i_31_n_3\
    );
\add_ln840_39_reg_6625[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_39_fu_3002_p2,
      I1 => icmp_ln1039_40_fu_3021_p2,
      I2 => icmp_ln1039_42_fu_3059_p2,
      I3 => icmp_ln1039_41_fu_3040_p2,
      O => \add_ln840_39_reg_6625_reg[2]_i_5_0\(0)
    );
\add_ln840_39_reg_6625[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_41_fu_3040_p2,
      I1 => icmp_ln1039_42_fu_3059_p2,
      I2 => icmp_ln1039_40_fu_3021_p2,
      I3 => icmp_ln1039_39_fu_3002_p2,
      O => \add_ln840_39_reg_6625_reg[2]_i_5_0\(1)
    );
\add_ln840_39_reg_6625[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_41_fu_3040_p2,
      I1 => icmp_ln1039_42_fu_3059_p2,
      I2 => icmp_ln1039_40_fu_3021_p2,
      I3 => icmp_ln1039_39_fu_3002_p2,
      O => \add_ln840_39_reg_6625_reg[2]_i_5_0\(2)
    );
\add_ln840_39_reg_6625[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_10_n_3\
    );
\add_ln840_39_reg_6625[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_11_n_3\
    );
\add_ln840_39_reg_6625[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_39_reg_6625[2]_i_12_n_3\
    );
\add_ln840_39_reg_6625[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_39_reg_6625[2]_i_13_n_3\
    );
\add_ln840_39_reg_6625[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_14_n_3\
    );
\add_ln840_39_reg_6625[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_16_n_3\
    );
\add_ln840_39_reg_6625[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_39_reg_6625[2]_i_17_n_3\
    );
\add_ln840_39_reg_6625[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_18_n_3\
    );
\add_ln840_39_reg_6625[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_19_n_3\
    );
\add_ln840_39_reg_6625[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_39_reg_6625[2]_i_20_n_3\
    );
\add_ln840_39_reg_6625[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_21_n_3\
    );
\add_ln840_39_reg_6625[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_23_n_3\
    );
\add_ln840_39_reg_6625[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_39_reg_6625[2]_i_24_n_3\
    );
\add_ln840_39_reg_6625[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_25_n_3\
    );
\add_ln840_39_reg_6625[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_26_n_3\
    );
\add_ln840_39_reg_6625[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_27_n_3\
    );
\add_ln840_39_reg_6625[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_39_reg_6625[2]_i_29_n_3\
    );
\add_ln840_39_reg_6625[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_6_n_3\
    );
\add_ln840_39_reg_6625[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_39_reg_6625[2]_i_7_n_3\
    );
\add_ln840_39_reg_6625[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_39_reg_6625[2]_i_8_n_3\
    );
\add_ln840_39_reg_6625_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_39_reg_6625_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_41_fu_3040_p2,
      CO(1) => \add_ln840_39_reg_6625_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_39_reg_6625_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_39_reg_6625[2]_i_6_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_39_reg_6625[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_39_reg_6625_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_39_reg_6625[2]_i_8_n_3\,
      S(1) => \add_ln840_39_reg_6625_reg[2]_2\(0),
      S(0) => \add_ln840_39_reg_6625[2]_i_10_n_3\
    );
\add_ln840_39_reg_6625_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_42_fu_3059_p2,
      CO(2) => \add_ln840_39_reg_6625_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_39_reg_6625_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_39_reg_6625_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_39_reg_6625[2]_i_11_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_39_reg_6625[2]_i_12_n_3\,
      DI(0) => \add_ln840_39_reg_6625[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_39_reg_6625_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_39_reg_6625[2]_i_14_n_3\,
      S(2) => \add_ln840_39_reg_6625_reg[2]_0\(0),
      S(1) => \add_ln840_39_reg_6625[2]_i_16_n_3\,
      S(0) => \add_ln840_39_reg_6625[2]_i_17_n_3\
    );
\add_ln840_39_reg_6625_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_40_fu_3021_p2,
      CO(2) => \add_ln840_39_reg_6625_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_39_reg_6625_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_39_reg_6625_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_39_reg_6625[2]_i_18_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_39_reg_6625[2]_i_19_n_3\,
      DI(0) => \add_ln840_39_reg_6625[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_39_reg_6625_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_39_reg_6625[2]_i_21_n_3\,
      S(2) => \add_ln840_39_reg_6625_reg[2]\(0),
      S(1) => \add_ln840_39_reg_6625[2]_i_23_n_3\,
      S(0) => \add_ln840_39_reg_6625[2]_i_24_n_3\
    );
\add_ln840_39_reg_6625_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_39_reg_6625_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_39_fu_3002_p2,
      CO(1) => \add_ln840_39_reg_6625_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_39_reg_6625_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_39_reg_6625[2]_i_25_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_39_reg_6625[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_39_reg_6625_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_39_reg_6625[2]_i_27_n_3\,
      S(1) => \add_ln840_39_reg_6625_reg[2]_1\(0),
      S(0) => \add_ln840_39_reg_6625[2]_i_29_n_3\
    );
\add_ln840_3_reg_6580[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => icmp_ln1039_5_fu_2284_p2,
      I1 => icmp_ln1039_6_fu_2307_p2,
      O => \add_ln840_3_reg_6580_reg[1]_i_3_0\(0)
    );
\add_ln840_3_reg_6580[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => icmp_ln1039_5_fu_2284_p2,
      I1 => icmp_ln1039_6_fu_2307_p2,
      O => \add_ln840_3_reg_6580_reg[1]_i_3_0\(1)
    );
\add_ln840_3_reg_6580[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_3_reg_6580[1]_i_10_n_3\
    );
\add_ln840_3_reg_6580[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_3_reg_6580[1]_i_13_n_3\
    );
\add_ln840_3_reg_6580[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_3_reg_6580[1]_i_4_n_3\
    );
\add_ln840_3_reg_6580[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_3_reg_6580[1]_i_5_n_3\
    );
\add_ln840_3_reg_6580[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_3_reg_6580[1]_i_8_n_3\
    );
\add_ln840_3_reg_6580[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_3_reg_6580[1]_i_9_n_3\
    );
\add_ln840_3_reg_6580_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_5_fu_2284_p2,
      CO(2) => \add_ln840_3_reg_6580_reg[1]_i_2_n_4\,
      CO(1) => \add_ln840_3_reg_6580_reg[1]_i_2_n_5\,
      CO(0) => \add_ln840_3_reg_6580_reg[1]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_3_reg_6580[1]_i_4_n_3\,
      DI(0) => \add_ln840_3_reg_6580[1]_i_5_n_3\,
      O(3 downto 0) => \NLW_add_ln840_3_reg_6580_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \add_ln840_3_reg_6580_reg[0]_0\(1 downto 0),
      S(1) => \add_ln840_3_reg_6580[1]_i_8_n_3\,
      S(0) => \add_ln840_3_reg_6580[1]_i_9_n_3\
    );
\add_ln840_3_reg_6580_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_3_reg_6580_reg[1]_i_3_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_6_fu_2307_p2,
      CO(1) => \add_ln840_3_reg_6580_reg[1]_i_3_n_5\,
      CO(0) => \add_ln840_3_reg_6580_reg[1]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \add_ln840_3_reg_6580[1]_i_10_n_3\,
      O(3 downto 0) => \NLW_add_ln840_3_reg_6580_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 1) => \add_ln840_3_reg_6580_reg[0]\(1 downto 0),
      S(0) => \add_ln840_3_reg_6580[1]_i_13_n_3\
    );
\add_ln840_42_reg_6630[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_43_fu_3078_p2,
      I1 => icmp_ln1039_44_fu_3097_p2,
      I2 => icmp_ln1039_46_fu_3135_p2,
      I3 => icmp_ln1039_45_fu_3116_p2,
      O => \add_ln840_42_reg_6630_reg[2]_i_5_0\(0)
    );
\add_ln840_42_reg_6630[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_45_fu_3116_p2,
      I1 => icmp_ln1039_46_fu_3135_p2,
      I2 => icmp_ln1039_44_fu_3097_p2,
      I3 => icmp_ln1039_43_fu_3078_p2,
      O => \add_ln840_42_reg_6630_reg[2]_i_5_0\(1)
    );
\add_ln840_42_reg_6630[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_45_fu_3116_p2,
      I1 => icmp_ln1039_46_fu_3135_p2,
      I2 => icmp_ln1039_44_fu_3097_p2,
      I3 => icmp_ln1039_43_fu_3078_p2,
      O => \add_ln840_42_reg_6630_reg[2]_i_5_0\(2)
    );
\add_ln840_42_reg_6630[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_42_reg_6630[2]_i_11_n_3\
    );
\add_ln840_42_reg_6630[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_42_reg_6630[2]_i_12_n_3\
    );
\add_ln840_42_reg_6630[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_13_n_3\
    );
\add_ln840_42_reg_6630[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_42_reg_6630[2]_i_14_n_3\
    );
\add_ln840_42_reg_6630[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_15_n_3\
    );
\add_ln840_42_reg_6630[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_42_reg_6630[2]_i_16_n_3\
    );
\add_ln840_42_reg_6630[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_17_n_3\
    );
\add_ln840_42_reg_6630[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_42_reg_6630[2]_i_18_n_3\
    );
\add_ln840_42_reg_6630[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_42_reg_6630[2]_i_19_n_3\
    );
\add_ln840_42_reg_6630[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_20_n_3\
    );
\add_ln840_42_reg_6630[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_42_reg_6630[2]_i_22_n_3\
    );
\add_ln840_42_reg_6630[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_42_reg_6630[2]_i_23_n_3\
    );
\add_ln840_42_reg_6630[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_24_n_3\
    );
\add_ln840_42_reg_6630[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_42_reg_6630[2]_i_25_n_3\
    );
\add_ln840_42_reg_6630[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_42_reg_6630[2]_i_26_n_3\
    );
\add_ln840_42_reg_6630[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_27_n_3\
    );
\add_ln840_42_reg_6630[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_42_reg_6630[2]_i_29_n_3\
    );
\add_ln840_42_reg_6630[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_42_reg_6630[2]_i_30_n_3\
    );
\add_ln840_42_reg_6630[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_6_n_3\
    );
\add_ln840_42_reg_6630[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep_n_3\,
      O => \add_ln840_42_reg_6630[2]_i_7_n_3\
    );
\add_ln840_42_reg_6630[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_42_reg_6630[2]_i_8_n_3\
    );
\add_ln840_42_reg_6630[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_42_reg_6630[2]_i_9_n_3\
    );
\add_ln840_42_reg_6630_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_45_fu_3116_p2,
      CO(2) => \add_ln840_42_reg_6630_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_42_reg_6630_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_42_reg_6630_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_42_reg_6630[2]_i_6_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_42_reg_6630[2]_i_7_n_3\,
      DI(0) => \add_ln840_42_reg_6630[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_42_reg_6630_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_42_reg_6630[2]_i_9_n_3\,
      S(2) => \add_ln840_42_reg_6630_reg[2]_1\(0),
      S(1) => \add_ln840_42_reg_6630[2]_i_11_n_3\,
      S(0) => \add_ln840_42_reg_6630[2]_i_12_n_3\
    );
\add_ln840_42_reg_6630_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_42_reg_6630_reg[2]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_46_fu_3135_p2,
      CO(0) => \add_ln840_42_reg_6630_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_42_reg_6630[2]_i_13_n_3\,
      DI(0) => \add_ln840_42_reg_6630[2]_i_14_n_3\,
      O(3 downto 0) => \NLW_add_ln840_42_reg_6630_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_42_reg_6630[2]_i_15_n_3\,
      S(0) => \add_ln840_42_reg_6630[2]_i_16_n_3\
    );
\add_ln840_42_reg_6630_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_44_fu_3097_p2,
      CO(2) => \add_ln840_42_reg_6630_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_42_reg_6630_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_42_reg_6630_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_42_reg_6630[2]_i_17_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_42_reg_6630[2]_i_18_n_3\,
      DI(0) => \add_ln840_42_reg_6630[2]_i_19_n_3\,
      O(3 downto 0) => \NLW_add_ln840_42_reg_6630_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_42_reg_6630[2]_i_20_n_3\,
      S(2) => \add_ln840_42_reg_6630_reg[2]\(0),
      S(1) => \add_ln840_42_reg_6630[2]_i_22_n_3\,
      S(0) => \add_ln840_42_reg_6630[2]_i_23_n_3\
    );
\add_ln840_42_reg_6630_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_43_fu_3078_p2,
      CO(2) => \add_ln840_42_reg_6630_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_42_reg_6630_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_42_reg_6630_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_42_reg_6630[2]_i_24_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_42_reg_6630[2]_i_25_n_3\,
      DI(0) => \add_ln840_42_reg_6630[2]_i_26_n_3\,
      O(3 downto 0) => \NLW_add_ln840_42_reg_6630_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_42_reg_6630[2]_i_27_n_3\,
      S(2) => \add_ln840_42_reg_6630_reg[2]_0\(0),
      S(1) => \add_ln840_42_reg_6630[2]_i_29_n_3\,
      S(0) => \add_ln840_42_reg_6630[2]_i_30_n_3\
    );
\add_ln840_47_reg_6635[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_47_fu_3154_p2,
      I1 => icmp_ln1039_48_fu_3173_p2,
      I2 => icmp_ln1039_50_fu_3211_p2,
      I3 => icmp_ln1039_49_fu_3192_p2,
      O => \add_ln840_47_reg_6635_reg[2]_i_5_0\(0)
    );
\add_ln840_47_reg_6635[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_49_fu_3192_p2,
      I1 => icmp_ln1039_50_fu_3211_p2,
      I2 => icmp_ln1039_48_fu_3173_p2,
      I3 => icmp_ln1039_47_fu_3154_p2,
      O => \add_ln840_47_reg_6635_reg[2]_i_5_0\(1)
    );
\add_ln840_47_reg_6635[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_49_fu_3192_p2,
      I1 => icmp_ln1039_50_fu_3211_p2,
      I2 => icmp_ln1039_48_fu_3173_p2,
      I3 => icmp_ln1039_47_fu_3154_p2,
      O => \add_ln840_47_reg_6635_reg[2]_i_5_0\(2)
    );
\add_ln840_47_reg_6635[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_10_n_3\
    );
\add_ln840_47_reg_6635[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_11_n_3\
    );
\add_ln840_47_reg_6635[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_47_reg_6635[2]_i_12_n_3\
    );
\add_ln840_47_reg_6635[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_47_reg_6635[2]_i_13_n_3\
    );
\add_ln840_47_reg_6635[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_14_n_3\
    );
\add_ln840_47_reg_6635[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_15_n_3\
    );
\add_ln840_47_reg_6635[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_47_reg_6635[2]_i_16_n_3\
    );
\add_ln840_47_reg_6635[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_47_reg_6635[2]_i_17_n_3\
    );
\add_ln840_47_reg_6635[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_18_n_3\
    );
\add_ln840_47_reg_6635[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_19_n_3\
    );
\add_ln840_47_reg_6635[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_47_reg_6635[2]_i_20_n_3\
    );
\add_ln840_47_reg_6635[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_47_reg_6635[2]_i_21_n_3\
    );
\add_ln840_47_reg_6635[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_22_n_3\
    );
\add_ln840_47_reg_6635[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_23_n_3\
    );
\add_ln840_47_reg_6635[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_47_reg_6635[2]_i_24_n_3\
    );
\add_ln840_47_reg_6635[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_25_n_3\
    );
\add_ln840_47_reg_6635[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_26_n_3\
    );
\add_ln840_47_reg_6635[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_47_reg_6635[2]_i_28_n_3\
    );
\add_ln840_47_reg_6635[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_29_n_3\
    );
\add_ln840_47_reg_6635[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_30_n_3\
    );
\add_ln840_47_reg_6635[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_47_reg_6635[2]_i_31_n_3\
    );
\add_ln840_47_reg_6635[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_32_n_3\
    );
\add_ln840_47_reg_6635[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_33_n_3\
    );
\add_ln840_47_reg_6635[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_47_reg_6635[2]_i_35_n_3\
    );
\add_ln840_47_reg_6635[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_47_reg_6635[2]_i_6_n_3\
    );
\add_ln840_47_reg_6635[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_47_reg_6635[2]_i_7_n_3\
    );
\add_ln840_47_reg_6635[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_47_reg_6635[2]_i_8_n_3\
    );
\add_ln840_47_reg_6635[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_47_reg_6635[2]_i_9_n_3\
    );
\add_ln840_47_reg_6635_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_49_fu_3192_p2,
      CO(2) => \add_ln840_47_reg_6635_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_47_reg_6635_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_47_reg_6635_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_47_reg_6635[2]_i_6_n_3\,
      DI(2) => \add_ln840_47_reg_6635[2]_i_7_n_3\,
      DI(1) => \add_ln840_47_reg_6635[2]_i_8_n_3\,
      DI(0) => \add_ln840_47_reg_6635[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_47_reg_6635_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_47_reg_6635[2]_i_10_n_3\,
      S(2) => \add_ln840_47_reg_6635[2]_i_11_n_3\,
      S(1) => \add_ln840_47_reg_6635[2]_i_12_n_3\,
      S(0) => \add_ln840_47_reg_6635[2]_i_13_n_3\
    );
\add_ln840_47_reg_6635_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_50_fu_3211_p2,
      CO(2) => \add_ln840_47_reg_6635_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_47_reg_6635_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_47_reg_6635_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_47_reg_6635[2]_i_14_n_3\,
      DI(2) => \add_ln840_47_reg_6635[2]_i_15_n_3\,
      DI(1) => \add_ln840_47_reg_6635[2]_i_16_n_3\,
      DI(0) => \add_ln840_47_reg_6635[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_47_reg_6635_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_47_reg_6635[2]_i_18_n_3\,
      S(2) => \add_ln840_47_reg_6635[2]_i_19_n_3\,
      S(1) => \add_ln840_47_reg_6635[2]_i_20_n_3\,
      S(0) => \add_ln840_47_reg_6635[2]_i_21_n_3\
    );
\add_ln840_47_reg_6635_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_48_fu_3173_p2,
      CO(2) => \add_ln840_47_reg_6635_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_47_reg_6635_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_47_reg_6635_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_47_reg_6635[2]_i_22_n_3\,
      DI(2) => \add_ln840_47_reg_6635[2]_i_23_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_47_reg_6635[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_47_reg_6635_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_47_reg_6635[2]_i_25_n_3\,
      S(2) => \add_ln840_47_reg_6635[2]_i_26_n_3\,
      S(1) => \add_ln840_47_reg_6635_reg[2]\(0),
      S(0) => \add_ln840_47_reg_6635[2]_i_28_n_3\
    );
\add_ln840_47_reg_6635_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_47_fu_3154_p2,
      CO(2) => \add_ln840_47_reg_6635_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_47_reg_6635_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_47_reg_6635_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_47_reg_6635[2]_i_29_n_3\,
      DI(2) => \add_ln840_47_reg_6635[2]_i_30_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_47_reg_6635[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_47_reg_6635_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_47_reg_6635[2]_i_32_n_3\,
      S(2) => \add_ln840_47_reg_6635[2]_i_33_n_3\,
      S(1) => \add_ln840_47_reg_6635_reg[2]_0\(0),
      S(0) => \add_ln840_47_reg_6635[2]_i_35_n_3\
    );
\add_ln840_50_reg_6640[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_51_fu_3230_p2,
      I1 => icmp_ln1039_52_fu_3249_p2,
      I2 => icmp_ln1039_54_fu_3287_p2,
      I3 => icmp_ln1039_53_fu_3268_p2,
      O => \add_ln840_50_reg_6640_reg[2]_i_5_0\(0)
    );
\add_ln840_50_reg_6640[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_53_fu_3268_p2,
      I1 => icmp_ln1039_54_fu_3287_p2,
      I2 => icmp_ln1039_52_fu_3249_p2,
      I3 => icmp_ln1039_51_fu_3230_p2,
      O => \add_ln840_50_reg_6640_reg[2]_i_5_0\(1)
    );
\add_ln840_50_reg_6640[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_53_fu_3268_p2,
      I1 => icmp_ln1039_54_fu_3287_p2,
      I2 => icmp_ln1039_52_fu_3249_p2,
      I3 => icmp_ln1039_51_fu_3230_p2,
      O => \add_ln840_50_reg_6640_reg[2]_i_5_0\(2)
    );
\add_ln840_50_reg_6640[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_10_n_3\
    );
\add_ln840_50_reg_6640[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_50_reg_6640[2]_i_11_n_3\
    );
\add_ln840_50_reg_6640[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_12_n_3\
    );
\add_ln840_50_reg_6640[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_13_n_3\
    );
\add_ln840_50_reg_6640[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_50_reg_6640[2]_i_14_n_3\
    );
\add_ln840_50_reg_6640[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_50_reg_6640[2]_i_15_n_3\
    );
\add_ln840_50_reg_6640[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_16_n_3\
    );
\add_ln840_50_reg_6640[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_17_n_3\
    );
\add_ln840_50_reg_6640[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_50_reg_6640[2]_i_18_n_3\
    );
\add_ln840_50_reg_6640[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_50_reg_6640[2]_i_19_n_3\
    );
\add_ln840_50_reg_6640[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_20_n_3\
    );
\add_ln840_50_reg_6640[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_21_n_3\
    );
\add_ln840_50_reg_6640[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_50_reg_6640[2]_i_22_n_3\
    );
\add_ln840_50_reg_6640[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_50_reg_6640[2]_i_23_n_3\
    );
\add_ln840_50_reg_6640[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_24_n_3\
    );
\add_ln840_50_reg_6640[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_25_n_3\
    );
\add_ln840_50_reg_6640[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_50_reg_6640[2]_i_26_n_3\
    );
\add_ln840_50_reg_6640[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_50_reg_6640[2]_i_27_n_3\
    );
\add_ln840_50_reg_6640[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_28_n_3\
    );
\add_ln840_50_reg_6640[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_29_n_3\
    );
\add_ln840_50_reg_6640[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_50_reg_6640[2]_i_30_n_3\
    );
\add_ln840_50_reg_6640[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_50_reg_6640[2]_i_31_n_3\
    );
\add_ln840_50_reg_6640[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_32_n_3\
    );
\add_ln840_50_reg_6640[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_33_n_3\
    );
\add_ln840_50_reg_6640[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_50_reg_6640[2]_i_34_n_3\
    );
\add_ln840_50_reg_6640[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_50_reg_6640[2]_i_35_n_3\
    );
\add_ln840_50_reg_6640[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_6_n_3\
    );
\add_ln840_50_reg_6640[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_50_reg_6640[2]_i_7_n_3\
    );
\add_ln840_50_reg_6640[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_50_reg_6640[2]_i_8_n_3\
    );
\add_ln840_50_reg_6640[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_50_reg_6640[2]_i_9_n_3\
    );
\add_ln840_50_reg_6640_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_50_reg_6640_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_53_fu_3268_p2,
      CO(1) => \add_ln840_50_reg_6640_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_50_reg_6640_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_50_reg_6640[2]_i_6_n_3\,
      DI(1) => \add_ln840_50_reg_6640[2]_i_7_n_3\,
      DI(0) => \add_ln840_50_reg_6640[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_50_reg_6640_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_50_reg_6640[2]_i_9_n_3\,
      S(1) => \add_ln840_50_reg_6640[2]_i_10_n_3\,
      S(0) => \add_ln840_50_reg_6640[2]_i_11_n_3\
    );
\add_ln840_50_reg_6640_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_54_fu_3287_p2,
      CO(2) => \add_ln840_50_reg_6640_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_50_reg_6640_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_50_reg_6640_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_50_reg_6640[2]_i_12_n_3\,
      DI(2) => \add_ln840_50_reg_6640[2]_i_13_n_3\,
      DI(1) => \add_ln840_50_reg_6640[2]_i_14_n_3\,
      DI(0) => \add_ln840_50_reg_6640[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_50_reg_6640_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_50_reg_6640[2]_i_16_n_3\,
      S(2) => \add_ln840_50_reg_6640[2]_i_17_n_3\,
      S(1) => \add_ln840_50_reg_6640[2]_i_18_n_3\,
      S(0) => \add_ln840_50_reg_6640[2]_i_19_n_3\
    );
\add_ln840_50_reg_6640_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_52_fu_3249_p2,
      CO(2) => \add_ln840_50_reg_6640_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_50_reg_6640_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_50_reg_6640_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_50_reg_6640[2]_i_20_n_3\,
      DI(2) => \add_ln840_50_reg_6640[2]_i_21_n_3\,
      DI(1) => \add_ln840_50_reg_6640[2]_i_22_n_3\,
      DI(0) => \add_ln840_50_reg_6640[2]_i_23_n_3\,
      O(3 downto 0) => \NLW_add_ln840_50_reg_6640_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_50_reg_6640[2]_i_24_n_3\,
      S(2) => \add_ln840_50_reg_6640[2]_i_25_n_3\,
      S(1) => \add_ln840_50_reg_6640[2]_i_26_n_3\,
      S(0) => \add_ln840_50_reg_6640[2]_i_27_n_3\
    );
\add_ln840_50_reg_6640_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_51_fu_3230_p2,
      CO(2) => \add_ln840_50_reg_6640_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_50_reg_6640_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_50_reg_6640_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_50_reg_6640[2]_i_28_n_3\,
      DI(2) => \add_ln840_50_reg_6640[2]_i_29_n_3\,
      DI(1) => \add_ln840_50_reg_6640[2]_i_30_n_3\,
      DI(0) => \add_ln840_50_reg_6640[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_50_reg_6640_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_50_reg_6640[2]_i_32_n_3\,
      S(2) => \add_ln840_50_reg_6640[2]_i_33_n_3\,
      S(1) => \add_ln840_50_reg_6640[2]_i_34_n_3\,
      S(0) => \add_ln840_50_reg_6640[2]_i_35_n_3\
    );
\add_ln840_54_reg_6645[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_55_fu_3306_p2,
      I1 => icmp_ln1039_56_fu_3329_p2,
      I2 => icmp_ln1039_58_fu_3375_p2,
      I3 => icmp_ln1039_57_fu_3352_p2,
      O => \add_ln840_54_reg_6645_reg[2]_i_5_0\(0)
    );
\add_ln840_54_reg_6645[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_57_fu_3352_p2,
      I1 => icmp_ln1039_58_fu_3375_p2,
      I2 => icmp_ln1039_56_fu_3329_p2,
      I3 => icmp_ln1039_55_fu_3306_p2,
      O => \add_ln840_54_reg_6645_reg[2]_i_5_0\(1)
    );
\add_ln840_54_reg_6645[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_57_fu_3352_p2,
      I1 => icmp_ln1039_58_fu_3375_p2,
      I2 => icmp_ln1039_56_fu_3329_p2,
      I3 => icmp_ln1039_55_fu_3306_p2,
      O => \add_ln840_54_reg_6645_reg[2]_i_5_0\(2)
    );
\add_ln840_54_reg_6645[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_54_reg_6645[2]_i_10_n_3\
    );
\add_ln840_54_reg_6645[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_12_n_3\
    );
\add_ln840_54_reg_6645[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_13_n_3\
    );
\add_ln840_54_reg_6645[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_54_reg_6645[2]_i_14_n_3\
    );
\add_ln840_54_reg_6645[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_54_reg_6645[2]_i_15_n_3\
    );
\add_ln840_54_reg_6645[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_16_n_3\
    );
\add_ln840_54_reg_6645[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_17_n_3\
    );
\add_ln840_54_reg_6645[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_54_reg_6645[2]_i_18_n_3\
    );
\add_ln840_54_reg_6645[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_54_reg_6645[2]_i_19_n_3\
    );
\add_ln840_54_reg_6645[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_20_n_3\
    );
\add_ln840_54_reg_6645[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_21_n_3\
    );
\add_ln840_54_reg_6645[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_54_reg_6645[2]_i_22_n_3\
    );
\add_ln840_54_reg_6645[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_23_n_3\
    );
\add_ln840_54_reg_6645[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_24_n_3\
    );
\add_ln840_54_reg_6645[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_54_reg_6645[2]_i_25_n_3\
    );
\add_ln840_54_reg_6645[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_27_n_3\
    );
\add_ln840_54_reg_6645[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_28_n_3\
    );
\add_ln840_54_reg_6645[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_54_reg_6645[2]_i_29_n_3\
    );
\add_ln840_54_reg_6645[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_54_reg_6645[2]_i_30_n_3\
    );
\add_ln840_54_reg_6645[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_54_reg_6645[2]_i_31_n_3\
    );
\add_ln840_54_reg_6645[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_32_n_3\
    );
\add_ln840_54_reg_6645[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_54_reg_6645[2]_i_33_n_3\
    );
\add_ln840_54_reg_6645[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_54_reg_6645[2]_i_34_n_3\
    );
\add_ln840_54_reg_6645[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_54_reg_6645[2]_i_35_n_3\
    );
\add_ln840_54_reg_6645[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_6_n_3\
    );
\add_ln840_54_reg_6645[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_54_reg_6645[2]_i_7_n_3\
    );
\add_ln840_54_reg_6645[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_54_reg_6645[2]_i_8_n_3\
    );
\add_ln840_54_reg_6645[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_54_reg_6645[2]_i_9_n_3\
    );
\add_ln840_54_reg_6645_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_57_fu_3352_p2,
      CO(2) => \add_ln840_54_reg_6645_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_54_reg_6645_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_54_reg_6645_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_54_reg_6645[2]_i_6_n_3\,
      DI(2) => \add_ln840_54_reg_6645[2]_i_7_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_54_reg_6645[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_54_reg_6645_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_54_reg_6645[2]_i_9_n_3\,
      S(2) => \add_ln840_54_reg_6645[2]_i_10_n_3\,
      S(1) => \add_ln840_54_reg_6645_reg[2]_0\(0),
      S(0) => \add_ln840_54_reg_6645[2]_i_12_n_3\
    );
\add_ln840_54_reg_6645_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_58_fu_3375_p2,
      CO(2) => \add_ln840_54_reg_6645_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_54_reg_6645_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_54_reg_6645_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_54_reg_6645[2]_i_13_n_3\,
      DI(2) => \add_ln840_54_reg_6645[2]_i_14_n_3\,
      DI(1) => \add_ln840_54_reg_6645[2]_i_15_n_3\,
      DI(0) => \add_ln840_54_reg_6645[2]_i_16_n_3\,
      O(3 downto 0) => \NLW_add_ln840_54_reg_6645_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_54_reg_6645[2]_i_17_n_3\,
      S(2) => \add_ln840_54_reg_6645[2]_i_18_n_3\,
      S(1) => \add_ln840_54_reg_6645[2]_i_19_n_3\,
      S(0) => \add_ln840_54_reg_6645[2]_i_20_n_3\
    );
\add_ln840_54_reg_6645_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_56_fu_3329_p2,
      CO(2) => \add_ln840_54_reg_6645_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_54_reg_6645_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_54_reg_6645_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_54_reg_6645[2]_i_21_n_3\,
      DI(2) => \add_ln840_54_reg_6645[2]_i_22_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_54_reg_6645[2]_i_23_n_3\,
      O(3 downto 0) => \NLW_add_ln840_54_reg_6645_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_54_reg_6645[2]_i_24_n_3\,
      S(2) => \add_ln840_54_reg_6645[2]_i_25_n_3\,
      S(1) => \add_ln840_54_reg_6645_reg[2]\(0),
      S(0) => \add_ln840_54_reg_6645[2]_i_27_n_3\
    );
\add_ln840_54_reg_6645_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_55_fu_3306_p2,
      CO(2) => \add_ln840_54_reg_6645_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_54_reg_6645_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_54_reg_6645_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_54_reg_6645[2]_i_28_n_3\,
      DI(2) => \add_ln840_54_reg_6645[2]_i_29_n_3\,
      DI(1) => \add_ln840_54_reg_6645[2]_i_30_n_3\,
      DI(0) => \add_ln840_54_reg_6645[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_54_reg_6645_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_54_reg_6645[2]_i_32_n_3\,
      S(2) => \add_ln840_54_reg_6645[2]_i_33_n_3\,
      S(1) => \add_ln840_54_reg_6645[2]_i_34_n_3\,
      S(0) => \add_ln840_54_reg_6645[2]_i_35_n_3\
    );
\add_ln840_57_reg_6650[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_59_fu_3398_p2,
      I1 => icmp_ln1039_60_fu_3421_p2,
      I2 => icmp_ln1039_62_fu_3467_p2,
      I3 => icmp_ln1039_61_fu_3444_p2,
      O => \add_ln840_57_reg_6650_reg[2]_i_5_0\(0)
    );
\add_ln840_57_reg_6650[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_61_fu_3444_p2,
      I1 => icmp_ln1039_62_fu_3467_p2,
      I2 => icmp_ln1039_60_fu_3421_p2,
      I3 => icmp_ln1039_59_fu_3398_p2,
      O => \add_ln840_57_reg_6650_reg[2]_i_5_0\(1)
    );
\add_ln840_57_reg_6650[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_61_fu_3444_p2,
      I1 => icmp_ln1039_62_fu_3467_p2,
      I2 => icmp_ln1039_60_fu_3421_p2,
      I3 => icmp_ln1039_59_fu_3398_p2,
      O => \add_ln840_57_reg_6650_reg[2]_i_5_0\(2)
    );
\add_ln840_57_reg_6650[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_10_n_3\
    );
\add_ln840_57_reg_6650[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_57_reg_6650[2]_i_11_n_3\
    );
\add_ln840_57_reg_6650[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_57_reg_6650[2]_i_12_n_3\
    );
\add_ln840_57_reg_6650[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_57_reg_6650[2]_i_13_n_3\
    );
\add_ln840_57_reg_6650[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_14_n_3\
    );
\add_ln840_57_reg_6650[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_57_reg_6650[2]_i_15_n_3\
    );
\add_ln840_57_reg_6650[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_57_reg_6650[2]_i_16_n_3\
    );
\add_ln840_57_reg_6650[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__0_n_3\,
      O => \add_ln840_57_reg_6650[2]_i_17_n_3\
    );
\add_ln840_57_reg_6650[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_18_n_3\
    );
\add_ln840_57_reg_6650[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_57_reg_6650[2]_i_19_n_3\
    );
\add_ln840_57_reg_6650[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_57_reg_6650[2]_i_20_n_3\
    );
\add_ln840_57_reg_6650[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__0_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_57_reg_6650[2]_i_21_n_3\
    );
\add_ln840_57_reg_6650[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_22_n_3\
    );
\add_ln840_57_reg_6650[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_57_reg_6650[2]_i_23_n_3\
    );
\add_ln840_57_reg_6650[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_57_reg_6650[2]_i_24_n_3\
    );
\add_ln840_57_reg_6650[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_25_n_3\
    );
\add_ln840_57_reg_6650[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_57_reg_6650[2]_i_26_n_3\
    );
\add_ln840_57_reg_6650[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_57_reg_6650[2]_i_27_n_3\
    );
\add_ln840_57_reg_6650[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_28_n_3\
    );
\add_ln840_57_reg_6650[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_57_reg_6650[2]_i_29_n_3\
    );
\add_ln840_57_reg_6650[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_57_reg_6650[2]_i_30_n_3\
    );
\add_ln840_57_reg_6650[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_57_reg_6650[2]_i_31_n_3\
    );
\add_ln840_57_reg_6650[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_32_n_3\
    );
\add_ln840_57_reg_6650[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_57_reg_6650[2]_i_33_n_3\
    );
\add_ln840_57_reg_6650[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_57_reg_6650[2]_i_34_n_3\
    );
\add_ln840_57_reg_6650[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_57_reg_6650[2]_i_35_n_3\
    );
\add_ln840_57_reg_6650[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(7),
      O => \add_ln840_57_reg_6650[2]_i_6_n_3\
    );
\add_ln840_57_reg_6650[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_57_reg_6650[2]_i_7_n_3\
    );
\add_ln840_57_reg_6650[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_57_reg_6650[2]_i_8_n_3\
    );
\add_ln840_57_reg_6650[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__0_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_57_reg_6650[2]_i_9_n_3\
    );
\add_ln840_57_reg_6650_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_61_fu_3444_p2,
      CO(2) => \add_ln840_57_reg_6650_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_57_reg_6650_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_57_reg_6650_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_57_reg_6650[2]_i_6_n_3\,
      DI(2) => \add_ln840_57_reg_6650[2]_i_7_n_3\,
      DI(1) => \add_ln840_57_reg_6650[2]_i_8_n_3\,
      DI(0) => \add_ln840_57_reg_6650[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_57_reg_6650_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_57_reg_6650[2]_i_10_n_3\,
      S(2) => \add_ln840_57_reg_6650[2]_i_11_n_3\,
      S(1) => \add_ln840_57_reg_6650[2]_i_12_n_3\,
      S(0) => \add_ln840_57_reg_6650[2]_i_13_n_3\
    );
\add_ln840_57_reg_6650_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_62_fu_3467_p2,
      CO(2) => \add_ln840_57_reg_6650_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_57_reg_6650_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_57_reg_6650_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_57_reg_6650[2]_i_14_n_3\,
      DI(2) => \add_ln840_57_reg_6650[2]_i_15_n_3\,
      DI(1) => \add_ln840_57_reg_6650[2]_i_16_n_3\,
      DI(0) => \add_ln840_57_reg_6650[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_57_reg_6650_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_57_reg_6650[2]_i_18_n_3\,
      S(2) => \add_ln840_57_reg_6650[2]_i_19_n_3\,
      S(1) => \add_ln840_57_reg_6650[2]_i_20_n_3\,
      S(0) => \add_ln840_57_reg_6650[2]_i_21_n_3\
    );
\add_ln840_57_reg_6650_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_57_reg_6650_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_60_fu_3421_p2,
      CO(1) => \add_ln840_57_reg_6650_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_57_reg_6650_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_57_reg_6650[2]_i_22_n_3\,
      DI(1) => \add_ln840_57_reg_6650[2]_i_23_n_3\,
      DI(0) => \add_ln840_57_reg_6650[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_57_reg_6650_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_57_reg_6650[2]_i_25_n_3\,
      S(1) => \add_ln840_57_reg_6650[2]_i_26_n_3\,
      S(0) => \add_ln840_57_reg_6650[2]_i_27_n_3\
    );
\add_ln840_57_reg_6650_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_59_fu_3398_p2,
      CO(2) => \add_ln840_57_reg_6650_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_57_reg_6650_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_57_reg_6650_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_57_reg_6650[2]_i_28_n_3\,
      DI(2) => \add_ln840_57_reg_6650[2]_i_29_n_3\,
      DI(1) => \add_ln840_57_reg_6650[2]_i_30_n_3\,
      DI(0) => \add_ln840_57_reg_6650[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_57_reg_6650_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_57_reg_6650[2]_i_32_n_3\,
      S(2) => \add_ln840_57_reg_6650[2]_i_33_n_3\,
      S(1) => \add_ln840_57_reg_6650[2]_i_34_n_3\,
      S(0) => \add_ln840_57_reg_6650[2]_i_35_n_3\
    );
\add_ln840_64_reg_6655[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_63_fu_3490_p2,
      I1 => icmp_ln1039_64_fu_3513_p2,
      I2 => icmp_ln1039_66_fu_3559_p2,
      I3 => icmp_ln1039_65_fu_3536_p2,
      O => \add_ln840_64_reg_6655_reg[2]_i_6_0\(0)
    );
\add_ln840_64_reg_6655[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_65_fu_3536_p2,
      I1 => icmp_ln1039_66_fu_3559_p2,
      I2 => icmp_ln1039_64_fu_3513_p2,
      I3 => icmp_ln1039_63_fu_3490_p2,
      O => \add_ln840_64_reg_6655_reg[2]_i_6_0\(1)
    );
\add_ln840_64_reg_6655[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_10_n_3\
    );
\add_ln840_64_reg_6655[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_64_reg_6655[2]_i_11_n_3\
    );
\add_ln840_64_reg_6655[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_13_n_3\
    );
\add_ln840_64_reg_6655[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_14_n_3\
    );
\add_ln840_64_reg_6655[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_64_reg_6655[2]_i_15_n_3\
    );
\add_ln840_64_reg_6655[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_64_reg_6655[2]_i_16_n_3\
    );
\add_ln840_64_reg_6655[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_17_n_3\
    );
\add_ln840_64_reg_6655[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_64_reg_6655[2]_i_18_n_3\
    );
\add_ln840_64_reg_6655[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_65_fu_3536_p2,
      I1 => icmp_ln1039_66_fu_3559_p2,
      I2 => icmp_ln1039_64_fu_3513_p2,
      I3 => icmp_ln1039_63_fu_3490_p2,
      O => \add_ln840_64_reg_6655_reg[2]_i_6_0\(2)
    );
\add_ln840_64_reg_6655[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_20_n_3\
    );
\add_ln840_64_reg_6655[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_21_n_3\
    );
\add_ln840_64_reg_6655[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_64_reg_6655[2]_i_22_n_3\
    );
\add_ln840_64_reg_6655[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_64_reg_6655[2]_i_23_n_3\
    );
\add_ln840_64_reg_6655[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_64_reg_6655[2]_i_24_n_3\
    );
\add_ln840_64_reg_6655[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_25_n_3\
    );
\add_ln840_64_reg_6655[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_64_reg_6655[2]_i_26_n_3\
    );
\add_ln840_64_reg_6655[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_64_reg_6655[2]_i_27_n_3\
    );
\add_ln840_64_reg_6655[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_28_n_3\
    );
\add_ln840_64_reg_6655[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_29_n_3\
    );
\add_ln840_64_reg_6655[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_64_reg_6655[2]_i_30_n_3\
    );
\add_ln840_64_reg_6655[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_64_reg_6655[2]_i_31_n_3\
    );
\add_ln840_64_reg_6655[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_32_n_3\
    );
\add_ln840_64_reg_6655[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_33_n_3\
    );
\add_ln840_64_reg_6655[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_64_reg_6655[2]_i_34_n_3\
    );
\add_ln840_64_reg_6655[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_64_reg_6655[2]_i_35_n_3\
    );
\add_ln840_64_reg_6655[2]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_36_n_3\
    );
\add_ln840_64_reg_6655[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_64_reg_6655[2]_i_7_n_3\
    );
\add_ln840_64_reg_6655[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_64_reg_6655[2]_i_8_n_3\
    );
\add_ln840_64_reg_6655[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_64_reg_6655[2]_i_9_n_3\
    );
\add_ln840_64_reg_6655_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_65_fu_3536_p2,
      CO(2) => \add_ln840_64_reg_6655_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_64_reg_6655_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_64_reg_6655_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_64_reg_6655[2]_i_7_n_3\,
      DI(2) => \add_ln840_64_reg_6655[2]_i_8_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_64_reg_6655[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_64_reg_6655_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_64_reg_6655[2]_i_10_n_3\,
      S(2) => \add_ln840_64_reg_6655[2]_i_11_n_3\,
      S(1) => \add_ln840_64_reg_6655_reg[2]\(0),
      S(0) => \add_ln840_64_reg_6655[2]_i_13_n_3\
    );
\add_ln840_64_reg_6655_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_66_fu_3559_p2,
      CO(2) => \add_ln840_64_reg_6655_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_64_reg_6655_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_64_reg_6655_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_64_reg_6655[2]_i_14_n_3\,
      DI(2) => \add_ln840_64_reg_6655[2]_i_15_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_64_reg_6655[2]_i_16_n_3\,
      O(3 downto 0) => \NLW_add_ln840_64_reg_6655_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_64_reg_6655[2]_i_17_n_3\,
      S(2) => \add_ln840_64_reg_6655[2]_i_18_n_3\,
      S(1) => S(0),
      S(0) => \add_ln840_64_reg_6655[2]_i_20_n_3\
    );
\add_ln840_64_reg_6655_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_64_fu_3513_p2,
      CO(2) => \add_ln840_64_reg_6655_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_64_reg_6655_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_64_reg_6655_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_64_reg_6655[2]_i_21_n_3\,
      DI(2) => \add_ln840_64_reg_6655[2]_i_22_n_3\,
      DI(1) => \add_ln840_64_reg_6655[2]_i_23_n_3\,
      DI(0) => \add_ln840_64_reg_6655[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_64_reg_6655_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_64_reg_6655[2]_i_25_n_3\,
      S(2) => \add_ln840_64_reg_6655[2]_i_26_n_3\,
      S(1) => \add_ln840_64_reg_6655[2]_i_27_n_3\,
      S(0) => \add_ln840_64_reg_6655[2]_i_28_n_3\
    );
\add_ln840_64_reg_6655_reg[2]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_63_fu_3490_p2,
      CO(2) => \add_ln840_64_reg_6655_reg[2]_i_6_n_4\,
      CO(1) => \add_ln840_64_reg_6655_reg[2]_i_6_n_5\,
      CO(0) => \add_ln840_64_reg_6655_reg[2]_i_6_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_64_reg_6655[2]_i_29_n_3\,
      DI(2) => \add_ln840_64_reg_6655[2]_i_30_n_3\,
      DI(1) => \add_ln840_64_reg_6655[2]_i_31_n_3\,
      DI(0) => \add_ln840_64_reg_6655[2]_i_32_n_3\,
      O(3 downto 0) => \NLW_add_ln840_64_reg_6655_reg[2]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_64_reg_6655[2]_i_33_n_3\,
      S(2) => \add_ln840_64_reg_6655[2]_i_34_n_3\,
      S(1) => \add_ln840_64_reg_6655[2]_i_35_n_3\,
      S(0) => \add_ln840_64_reg_6655[2]_i_36_n_3\
    );
\add_ln840_67_reg_6660[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_67_fu_3582_p2,
      I1 => icmp_ln1039_68_fu_3605_p2,
      I2 => icmp_ln1039_70_fu_3651_p2,
      I3 => icmp_ln1039_69_fu_3628_p2,
      O => \add_ln840_67_reg_6660_reg[2]_i_5_0\(0)
    );
\add_ln840_67_reg_6660[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_69_fu_3628_p2,
      I1 => icmp_ln1039_70_fu_3651_p2,
      I2 => icmp_ln1039_68_fu_3605_p2,
      I3 => icmp_ln1039_67_fu_3582_p2,
      O => \add_ln840_67_reg_6660_reg[2]_i_5_0\(1)
    );
\add_ln840_67_reg_6660[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_69_fu_3628_p2,
      I1 => icmp_ln1039_70_fu_3651_p2,
      I2 => icmp_ln1039_68_fu_3605_p2,
      I3 => icmp_ln1039_67_fu_3582_p2,
      O => \add_ln840_67_reg_6660_reg[2]_i_5_0\(2)
    );
\add_ln840_67_reg_6660[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_10_n_3\
    );
\add_ln840_67_reg_6660[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_67_reg_6660[2]_i_11_n_3\
    );
\add_ln840_67_reg_6660[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_12_n_3\
    );
\add_ln840_67_reg_6660[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_67_reg_6660[2]_i_13_n_3\
    );
\add_ln840_67_reg_6660[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_14_n_3\
    );
\add_ln840_67_reg_6660[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_67_reg_6660[2]_i_15_n_3\
    );
\add_ln840_67_reg_6660[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_67_reg_6660[2]_i_16_n_3\
    );
\add_ln840_67_reg_6660[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_67_reg_6660[2]_i_17_n_3\
    );
\add_ln840_67_reg_6660[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_18_n_3\
    );
\add_ln840_67_reg_6660[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_67_reg_6660[2]_i_19_n_3\
    );
\add_ln840_67_reg_6660[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_20_n_3\
    );
\add_ln840_67_reg_6660[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_67_reg_6660[2]_i_21_n_3\
    );
\add_ln840_67_reg_6660[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_22_n_3\
    );
\add_ln840_67_reg_6660[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_67_reg_6660[2]_i_23_n_3\
    );
\add_ln840_67_reg_6660[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_24_n_3\
    );
\add_ln840_67_reg_6660[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_67_reg_6660[2]_i_25_n_3\
    );
\add_ln840_67_reg_6660[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_26_n_3\
    );
\add_ln840_67_reg_6660[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_67_reg_6660[2]_i_27_n_3\
    );
\add_ln840_67_reg_6660[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_28_n_3\
    );
\add_ln840_67_reg_6660[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_67_reg_6660[2]_i_29_n_3\
    );
\add_ln840_67_reg_6660[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_30_n_3\
    );
\add_ln840_67_reg_6660[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_67_reg_6660[2]_i_31_n_3\
    );
\add_ln840_67_reg_6660[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_32_n_3\
    );
\add_ln840_67_reg_6660[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_33_n_3\
    );
\add_ln840_67_reg_6660[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_67_reg_6660[2]_i_34_n_3\
    );
\add_ln840_67_reg_6660[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_35_n_3\
    );
\add_ln840_67_reg_6660[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_67_reg_6660[2]_i_6_n_3\
    );
\add_ln840_67_reg_6660[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_67_reg_6660[2]_i_7_n_3\
    );
\add_ln840_67_reg_6660[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_67_reg_6660[2]_i_8_n_3\
    );
\add_ln840_67_reg_6660[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_67_reg_6660[2]_i_9_n_3\
    );
\add_ln840_67_reg_6660_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_69_fu_3628_p2,
      CO(2) => \add_ln840_67_reg_6660_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_67_reg_6660_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_67_reg_6660_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_67_reg_6660[2]_i_6_n_3\,
      DI(2) => \add_ln840_67_reg_6660[2]_i_7_n_3\,
      DI(1) => \add_ln840_67_reg_6660[2]_i_8_n_3\,
      DI(0) => \add_ln840_67_reg_6660[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_67_reg_6660_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_67_reg_6660[2]_i_10_n_3\,
      S(2) => \add_ln840_67_reg_6660[2]_i_11_n_3\,
      S(1) => \add_ln840_67_reg_6660[2]_i_12_n_3\,
      S(0) => \add_ln840_67_reg_6660[2]_i_13_n_3\
    );
\add_ln840_67_reg_6660_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_70_fu_3651_p2,
      CO(2) => \add_ln840_67_reg_6660_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_67_reg_6660_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_67_reg_6660_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_67_reg_6660[2]_i_14_n_3\,
      DI(2) => \add_ln840_67_reg_6660[2]_i_15_n_3\,
      DI(1) => \add_ln840_67_reg_6660[2]_i_16_n_3\,
      DI(0) => \add_ln840_67_reg_6660[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_67_reg_6660_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_67_reg_6660[2]_i_18_n_3\,
      S(2) => \add_ln840_67_reg_6660[2]_i_19_n_3\,
      S(1) => \add_ln840_67_reg_6660[2]_i_20_n_3\,
      S(0) => \add_ln840_67_reg_6660[2]_i_21_n_3\
    );
\add_ln840_67_reg_6660_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_68_fu_3605_p2,
      CO(2) => \add_ln840_67_reg_6660_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_67_reg_6660_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_67_reg_6660_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_67_reg_6660[2]_i_22_n_3\,
      DI(2) => \add_ln840_67_reg_6660[2]_i_23_n_3\,
      DI(1) => \add_ln840_67_reg_6660[2]_i_24_n_3\,
      DI(0) => \add_ln840_67_reg_6660[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_67_reg_6660_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_67_reg_6660[2]_i_26_n_3\,
      S(2) => \add_ln840_67_reg_6660[2]_i_27_n_3\,
      S(1) => \add_ln840_67_reg_6660[2]_i_28_n_3\,
      S(0) => \add_ln840_67_reg_6660[2]_i_29_n_3\
    );
\add_ln840_67_reg_6660_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_67_reg_6660_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_67_fu_3582_p2,
      CO(1) => \add_ln840_67_reg_6660_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_67_reg_6660_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_67_reg_6660[2]_i_30_n_3\,
      DI(1) => \add_ln840_67_reg_6660[2]_i_31_n_3\,
      DI(0) => \add_ln840_67_reg_6660[2]_i_32_n_3\,
      O(3 downto 0) => \NLW_add_ln840_67_reg_6660_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_67_reg_6660[2]_i_33_n_3\,
      S(1) => \add_ln840_67_reg_6660[2]_i_34_n_3\,
      S(0) => \add_ln840_67_reg_6660[2]_i_35_n_3\
    );
\add_ln840_71_reg_6665[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => icmp_ln1039_71_fu_3674_p2,
      I1 => icmp_ln1039_72_fu_3697_p2,
      I2 => \q0_reg[0]_rep__2_n_3\,
      I3 => \add_ln840_71_reg_6665_reg[0]\,
      I4 => icmp_ln1039_73_fu_3720_p2,
      O => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\(0)
    );
\add_ln840_71_reg_6665[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51F7F7AE"
    )
        port map (
      I0 => icmp_ln1039_73_fu_3720_p2,
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      I3 => icmp_ln1039_72_fu_3697_p2,
      I4 => icmp_ln1039_71_fu_3674_p2,
      O => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\(1)
    );
\add_ln840_71_reg_6665[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000045"
    )
        port map (
      I0 => icmp_ln1039_73_fu_3720_p2,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      I2 => \q0_reg[0]_rep__2_n_3\,
      I3 => icmp_ln1039_72_fu_3697_p2,
      I4 => icmp_ln1039_71_fu_3674_p2,
      O => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\(2)
    );
\add_ln840_71_reg_6665[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_71_reg_6665[2]_i_10_n_3\
    );
\add_ln840_71_reg_6665[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_71_reg_6665[2]_i_11_n_3\
    );
\add_ln840_71_reg_6665[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_71_reg_6665[2]_i_12_n_3\
    );
\add_ln840_71_reg_6665[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_13_n_3\
    );
\add_ln840_71_reg_6665[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_14_n_3\
    );
\add_ln840_71_reg_6665[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_15_n_3\
    );
\add_ln840_71_reg_6665[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_71_reg_6665[2]_i_16_n_3\
    );
\add_ln840_71_reg_6665[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_17_n_3\
    );
\add_ln840_71_reg_6665[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_71_reg_6665[2]_i_18_n_3\
    );
\add_ln840_71_reg_6665[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_71_reg_6665[2]_i_19_n_3\
    );
\add_ln840_71_reg_6665[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_71_reg_6665[2]_i_20_n_3\
    );
\add_ln840_71_reg_6665[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_21_n_3\
    );
\add_ln840_71_reg_6665[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_22_n_3\
    );
\add_ln840_71_reg_6665[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_71_reg_6665[2]_i_23_n_3\
    );
\add_ln840_71_reg_6665[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_24_n_3\
    );
\add_ln840_71_reg_6665[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_25_n_3\
    );
\add_ln840_71_reg_6665[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_71_reg_6665[2]_i_26_n_3\
    );
\add_ln840_71_reg_6665[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_71_reg_6665[2]_i_27_n_3\
    );
\add_ln840_71_reg_6665[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_71_reg_6665[2]_i_28_n_3\
    );
\add_ln840_71_reg_6665[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_5_n_3\
    );
\add_ln840_71_reg_6665[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_6_n_3\
    );
\add_ln840_71_reg_6665[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_71_reg_6665[2]_i_7_n_3\
    );
\add_ln840_71_reg_6665[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_71_reg_6665[2]_i_8_n_3\
    );
\add_ln840_71_reg_6665[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_71_reg_6665[2]_i_9_n_3\
    );
\add_ln840_71_reg_6665_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_73_fu_3720_p2,
      CO(2) => \add_ln840_71_reg_6665_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_71_reg_6665_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_71_reg_6665_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_71_reg_6665[2]_i_5_n_3\,
      DI(2) => \add_ln840_71_reg_6665[2]_i_6_n_3\,
      DI(1) => \add_ln840_71_reg_6665[2]_i_7_n_3\,
      DI(0) => \add_ln840_71_reg_6665[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_71_reg_6665_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_71_reg_6665[2]_i_9_n_3\,
      S(2) => \add_ln840_71_reg_6665[2]_i_10_n_3\,
      S(1) => \add_ln840_71_reg_6665[2]_i_11_n_3\,
      S(0) => \add_ln840_71_reg_6665[2]_i_12_n_3\
    );
\add_ln840_71_reg_6665_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_72_fu_3697_p2,
      CO(2) => \add_ln840_71_reg_6665_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_71_reg_6665_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_71_reg_6665_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_71_reg_6665[2]_i_13_n_3\,
      DI(2) => \add_ln840_71_reg_6665[2]_i_14_n_3\,
      DI(1) => \add_ln840_71_reg_6665[2]_i_15_n_3\,
      DI(0) => \add_ln840_71_reg_6665[2]_i_16_n_3\,
      O(3 downto 0) => \NLW_add_ln840_71_reg_6665_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_71_reg_6665[2]_i_17_n_3\,
      S(2) => \add_ln840_71_reg_6665[2]_i_18_n_3\,
      S(1) => \add_ln840_71_reg_6665[2]_i_19_n_3\,
      S(0) => \add_ln840_71_reg_6665[2]_i_20_n_3\
    );
\add_ln840_71_reg_6665_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_71_fu_3674_p2,
      CO(2) => \add_ln840_71_reg_6665_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_71_reg_6665_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_71_reg_6665_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_71_reg_6665[2]_i_21_n_3\,
      DI(2) => \add_ln840_71_reg_6665[2]_i_22_n_3\,
      DI(1) => \add_ln840_71_reg_6665[2]_i_23_n_3\,
      DI(0) => \add_ln840_71_reg_6665[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_71_reg_6665_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_71_reg_6665[2]_i_25_n_3\,
      S(2) => \add_ln840_71_reg_6665[2]_i_26_n_3\,
      S(1) => \add_ln840_71_reg_6665[2]_i_27_n_3\,
      S(0) => \add_ln840_71_reg_6665[2]_i_28_n_3\
    );
\add_ln840_74_reg_6670[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_75_fu_3750_p2,
      I1 => icmp_ln1039_76_fu_3765_p2,
      I2 => icmp_ln1039_78_fu_3795_p2,
      I3 => icmp_ln1039_77_fu_3780_p2,
      O => \add_ln840_74_reg_6670_reg[2]_i_5_0\(0)
    );
\add_ln840_74_reg_6670[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_77_fu_3780_p2,
      I1 => icmp_ln1039_78_fu_3795_p2,
      I2 => icmp_ln1039_76_fu_3765_p2,
      I3 => icmp_ln1039_75_fu_3750_p2,
      O => \add_ln840_74_reg_6670_reg[2]_i_5_0\(1)
    );
\add_ln840_74_reg_6670[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_77_fu_3780_p2,
      I1 => icmp_ln1039_78_fu_3795_p2,
      I2 => icmp_ln1039_76_fu_3765_p2,
      I3 => icmp_ln1039_75_fu_3750_p2,
      O => \add_ln840_74_reg_6670_reg[2]_i_5_0\(2)
    );
\add_ln840_74_reg_6670[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_74_reg_6670[2]_i_11_n_3\
    );
\add_ln840_74_reg_6670[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_74_reg_6670[2]_i_12_n_3\
    );
\add_ln840_74_reg_6670[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_13_n_3\
    );
\add_ln840_74_reg_6670[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_74_reg_6670[2]_i_14_n_3\
    );
\add_ln840_74_reg_6670[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_74_reg_6670[2]_i_15_n_3\
    );
\add_ln840_74_reg_6670[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_16_n_3\
    );
\add_ln840_74_reg_6670[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_74_reg_6670[2]_i_18_n_3\
    );
\add_ln840_74_reg_6670[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_74_reg_6670[2]_i_19_n_3\
    );
\add_ln840_74_reg_6670[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_20_n_3\
    );
\add_ln840_74_reg_6670[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_74_reg_6670[2]_i_21_n_3\
    );
\add_ln840_74_reg_6670[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_22_n_3\
    );
\add_ln840_74_reg_6670[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_74_reg_6670[2]_i_25_n_3\
    );
\add_ln840_74_reg_6670[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_26_n_3\
    );
\add_ln840_74_reg_6670[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_74_reg_6670[2]_i_27_n_3\
    );
\add_ln840_74_reg_6670[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_28_n_3\
    );
\add_ln840_74_reg_6670[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_74_reg_6670[2]_i_31_n_3\
    );
\add_ln840_74_reg_6670[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_6_n_3\
    );
\add_ln840_74_reg_6670[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_74_reg_6670[2]_i_7_n_3\
    );
\add_ln840_74_reg_6670[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_74_reg_6670[2]_i_8_n_3\
    );
\add_ln840_74_reg_6670[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_74_reg_6670[2]_i_9_n_3\
    );
\add_ln840_74_reg_6670_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_77_fu_3780_p2,
      CO(2) => \add_ln840_74_reg_6670_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_74_reg_6670_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_74_reg_6670_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_74_reg_6670[2]_i_6_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_74_reg_6670[2]_i_7_n_3\,
      DI(0) => \add_ln840_74_reg_6670[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_74_reg_6670_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_74_reg_6670[2]_i_9_n_3\,
      S(2) => \add_ln840_74_reg_6670_reg[2]_2\(0),
      S(1) => \add_ln840_74_reg_6670[2]_i_11_n_3\,
      S(0) => \add_ln840_74_reg_6670[2]_i_12_n_3\
    );
\add_ln840_74_reg_6670_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_78_fu_3795_p2,
      CO(2) => \add_ln840_74_reg_6670_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_74_reg_6670_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_74_reg_6670_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_74_reg_6670[2]_i_13_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_74_reg_6670[2]_i_14_n_3\,
      DI(0) => \add_ln840_74_reg_6670[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_74_reg_6670_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_74_reg_6670[2]_i_16_n_3\,
      S(2) => \add_ln840_74_reg_6670_reg[2]_0\(0),
      S(1) => \add_ln840_74_reg_6670[2]_i_18_n_3\,
      S(0) => \add_ln840_74_reg_6670[2]_i_19_n_3\
    );
\add_ln840_74_reg_6670_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_76_fu_3765_p2,
      CO(2) => \add_ln840_74_reg_6670_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_74_reg_6670_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_74_reg_6670_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_74_reg_6670[2]_i_20_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_74_reg_6670[2]_i_21_n_3\,
      O(3 downto 0) => \NLW_add_ln840_74_reg_6670_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_74_reg_6670[2]_i_22_n_3\,
      S(2 downto 1) => \add_ln840_74_reg_6670_reg[2]\(1 downto 0),
      S(0) => \add_ln840_74_reg_6670[2]_i_25_n_3\
    );
\add_ln840_74_reg_6670_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_75_fu_3750_p2,
      CO(2) => \add_ln840_74_reg_6670_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_74_reg_6670_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_74_reg_6670_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_74_reg_6670[2]_i_26_n_3\,
      DI(2 downto 1) => B"00",
      DI(0) => \add_ln840_74_reg_6670[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_74_reg_6670_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_74_reg_6670[2]_i_28_n_3\,
      S(2 downto 1) => \add_ln840_74_reg_6670_reg[2]_1\(1 downto 0),
      S(0) => \add_ln840_74_reg_6670[2]_i_31_n_3\
    );
\add_ln840_79_reg_6675[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_79_fu_3810_p2,
      I1 => icmp_ln1039_80_fu_3825_p2,
      I2 => icmp_ln1039_82_fu_3855_p2,
      I3 => icmp_ln1039_81_fu_3840_p2,
      O => \add_ln840_79_reg_6675_reg[2]_i_5_0\(0)
    );
\add_ln840_79_reg_6675[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_81_fu_3840_p2,
      I1 => icmp_ln1039_82_fu_3855_p2,
      I2 => icmp_ln1039_80_fu_3825_p2,
      I3 => icmp_ln1039_79_fu_3810_p2,
      O => \add_ln840_79_reg_6675_reg[2]_i_5_0\(1)
    );
\add_ln840_79_reg_6675[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_81_fu_3840_p2,
      I1 => icmp_ln1039_82_fu_3855_p2,
      I2 => icmp_ln1039_80_fu_3825_p2,
      I3 => icmp_ln1039_79_fu_3810_p2,
      O => \add_ln840_79_reg_6675_reg[2]_i_5_0\(2)
    );
\add_ln840_79_reg_6675[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_79_reg_6675[2]_i_10_n_3\
    );
\add_ln840_79_reg_6675[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_11_n_3\
    );
\add_ln840_79_reg_6675[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_79_reg_6675[2]_i_12_n_3\
    );
\add_ln840_79_reg_6675[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_79_reg_6675[2]_i_13_n_3\
    );
\add_ln840_79_reg_6675[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_14_n_3\
    );
\add_ln840_79_reg_6675[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_79_reg_6675[2]_i_16_n_3\
    );
\add_ln840_79_reg_6675[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_79_reg_6675[2]_i_17_n_3\
    );
\add_ln840_79_reg_6675[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_18_n_3\
    );
\add_ln840_79_reg_6675[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_79_reg_6675[2]_i_19_n_3\
    );
\add_ln840_79_reg_6675[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_79_reg_6675[2]_i_20_n_3\
    );
\add_ln840_79_reg_6675[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_21_n_3\
    );
\add_ln840_79_reg_6675[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_79_reg_6675[2]_i_23_n_3\
    );
\add_ln840_79_reg_6675[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_79_reg_6675[2]_i_24_n_3\
    );
\add_ln840_79_reg_6675[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_25_n_3\
    );
\add_ln840_79_reg_6675[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_79_reg_6675[2]_i_26_n_3\
    );
\add_ln840_79_reg_6675[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_79_reg_6675[2]_i_27_n_3\
    );
\add_ln840_79_reg_6675[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_28_n_3\
    );
\add_ln840_79_reg_6675[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_79_reg_6675[2]_i_30_n_3\
    );
\add_ln840_79_reg_6675[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_79_reg_6675[2]_i_31_n_3\
    );
\add_ln840_79_reg_6675[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_6_n_3\
    );
\add_ln840_79_reg_6675[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_79_reg_6675[2]_i_7_n_3\
    );
\add_ln840_79_reg_6675[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_79_reg_6675[2]_i_8_n_3\
    );
\add_ln840_79_reg_6675_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_79_reg_6675_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_81_fu_3840_p2,
      CO(1) => \add_ln840_79_reg_6675_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_79_reg_6675_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_79_reg_6675[2]_i_6_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_79_reg_6675[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_79_reg_6675_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_79_reg_6675[2]_i_8_n_3\,
      S(1) => \add_ln840_79_reg_6675_reg[2]_2\(0),
      S(0) => \add_ln840_79_reg_6675[2]_i_10_n_3\
    );
\add_ln840_79_reg_6675_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_82_fu_3855_p2,
      CO(2) => \add_ln840_79_reg_6675_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_79_reg_6675_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_79_reg_6675_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_79_reg_6675[2]_i_11_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_79_reg_6675[2]_i_12_n_3\,
      DI(0) => \add_ln840_79_reg_6675[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_79_reg_6675_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_79_reg_6675[2]_i_14_n_3\,
      S(2) => \add_ln840_79_reg_6675_reg[2]_0\(0),
      S(1) => \add_ln840_79_reg_6675[2]_i_16_n_3\,
      S(0) => \add_ln840_79_reg_6675[2]_i_17_n_3\
    );
\add_ln840_79_reg_6675_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_80_fu_3825_p2,
      CO(2) => \add_ln840_79_reg_6675_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_79_reg_6675_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_79_reg_6675_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_79_reg_6675[2]_i_18_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_79_reg_6675[2]_i_19_n_3\,
      DI(0) => \add_ln840_79_reg_6675[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_79_reg_6675_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_79_reg_6675[2]_i_21_n_3\,
      S(2) => \add_ln840_79_reg_6675_reg[2]\(0),
      S(1) => \add_ln840_79_reg_6675[2]_i_23_n_3\,
      S(0) => \add_ln840_79_reg_6675[2]_i_24_n_3\
    );
\add_ln840_79_reg_6675_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_79_fu_3810_p2,
      CO(2) => \add_ln840_79_reg_6675_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_79_reg_6675_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_79_reg_6675_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_79_reg_6675[2]_i_25_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_79_reg_6675[2]_i_26_n_3\,
      DI(0) => \add_ln840_79_reg_6675[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_79_reg_6675_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_79_reg_6675[2]_i_28_n_3\,
      S(2) => \add_ln840_79_reg_6675_reg[2]_1\(0),
      S(1) => \add_ln840_79_reg_6675[2]_i_30_n_3\,
      S(0) => \add_ln840_79_reg_6675[2]_i_31_n_3\
    );
\add_ln840_82_reg_6680[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_83_fu_3870_p2,
      I1 => icmp_ln1039_84_fu_3885_p2,
      I2 => icmp_ln1039_86_fu_3915_p2,
      I3 => icmp_ln1039_85_fu_3900_p2,
      O => \add_ln840_82_reg_6680_reg[2]_i_5_0\(0)
    );
\add_ln840_82_reg_6680[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_85_fu_3900_p2,
      I1 => icmp_ln1039_86_fu_3915_p2,
      I2 => icmp_ln1039_84_fu_3885_p2,
      I3 => icmp_ln1039_83_fu_3870_p2,
      O => \add_ln840_82_reg_6680_reg[2]_i_5_0\(1)
    );
\add_ln840_82_reg_6680[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_85_fu_3900_p2,
      I1 => icmp_ln1039_86_fu_3915_p2,
      I2 => icmp_ln1039_84_fu_3885_p2,
      I3 => icmp_ln1039_83_fu_3870_p2,
      O => \add_ln840_82_reg_6680_reg[2]_i_5_0\(2)
    );
\add_ln840_82_reg_6680[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_10_n_3\
    );
\add_ln840_82_reg_6680[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_82_reg_6680[2]_i_12_n_3\
    );
\add_ln840_82_reg_6680[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_13_n_3\
    );
\add_ln840_82_reg_6680[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_14_n_3\
    );
\add_ln840_82_reg_6680[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_82_reg_6680[2]_i_15_n_3\
    );
\add_ln840_82_reg_6680[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_16_n_3\
    );
\add_ln840_82_reg_6680[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_17_n_3\
    );
\add_ln840_82_reg_6680[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_82_reg_6680[2]_i_18_n_3\
    );
\add_ln840_82_reg_6680[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_19_n_3\
    );
\add_ln840_82_reg_6680[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_20_n_3\
    );
\add_ln840_82_reg_6680[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_82_reg_6680[2]_i_21_n_3\
    );
\add_ln840_82_reg_6680[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_22_n_3\
    );
\add_ln840_82_reg_6680[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_23_n_3\
    );
\add_ln840_82_reg_6680[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_82_reg_6680[2]_i_25_n_3\
    );
\add_ln840_82_reg_6680[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_26_n_3\
    );
\add_ln840_82_reg_6680[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_82_reg_6680[2]_i_27_n_3\
    );
\add_ln840_82_reg_6680[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_82_reg_6680[2]_i_28_n_3\
    );
\add_ln840_82_reg_6680[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_29_n_3\
    );
\add_ln840_82_reg_6680[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_82_reg_6680[2]_i_31_n_3\
    );
\add_ln840_82_reg_6680[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_82_reg_6680[2]_i_32_n_3\
    );
\add_ln840_82_reg_6680[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_6_n_3\
    );
\add_ln840_82_reg_6680[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_82_reg_6680[2]_i_7_n_3\
    );
\add_ln840_82_reg_6680[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_82_reg_6680[2]_i_8_n_3\
    );
\add_ln840_82_reg_6680[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_82_reg_6680[2]_i_9_n_3\
    );
\add_ln840_82_reg_6680_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_85_fu_3900_p2,
      CO(2) => \add_ln840_82_reg_6680_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_82_reg_6680_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_82_reg_6680_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_82_reg_6680[2]_i_6_n_3\,
      DI(2) => \add_ln840_82_reg_6680[2]_i_7_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_82_reg_6680[2]_i_8_n_3\,
      O(3 downto 0) => \NLW_add_ln840_82_reg_6680_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_82_reg_6680[2]_i_9_n_3\,
      S(2) => \add_ln840_82_reg_6680[2]_i_10_n_3\,
      S(1) => \add_ln840_82_reg_6680_reg[2]_1\(0),
      S(0) => \add_ln840_82_reg_6680[2]_i_12_n_3\
    );
\add_ln840_82_reg_6680_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_82_reg_6680_reg[2]_i_3_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_86_fu_3915_p2,
      CO(1) => \add_ln840_82_reg_6680_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_82_reg_6680_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_82_reg_6680[2]_i_13_n_3\,
      DI(1) => \add_ln840_82_reg_6680[2]_i_14_n_3\,
      DI(0) => \add_ln840_82_reg_6680[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_82_reg_6680_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_82_reg_6680[2]_i_16_n_3\,
      S(1) => \add_ln840_82_reg_6680[2]_i_17_n_3\,
      S(0) => \add_ln840_82_reg_6680[2]_i_18_n_3\
    );
\add_ln840_82_reg_6680_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_84_fu_3885_p2,
      CO(2) => \add_ln840_82_reg_6680_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_82_reg_6680_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_82_reg_6680_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_82_reg_6680[2]_i_19_n_3\,
      DI(2) => \add_ln840_82_reg_6680[2]_i_20_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_82_reg_6680[2]_i_21_n_3\,
      O(3 downto 0) => \NLW_add_ln840_82_reg_6680_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_82_reg_6680[2]_i_22_n_3\,
      S(2) => \add_ln840_82_reg_6680[2]_i_23_n_3\,
      S(1) => \add_ln840_82_reg_6680_reg[2]\(0),
      S(0) => \add_ln840_82_reg_6680[2]_i_25_n_3\
    );
\add_ln840_82_reg_6680_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_83_fu_3870_p2,
      CO(2) => \add_ln840_82_reg_6680_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_82_reg_6680_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_82_reg_6680_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_82_reg_6680[2]_i_26_n_3\,
      DI(2) => '0',
      DI(1) => \add_ln840_82_reg_6680[2]_i_27_n_3\,
      DI(0) => \add_ln840_82_reg_6680[2]_i_28_n_3\,
      O(3 downto 0) => \NLW_add_ln840_82_reg_6680_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_82_reg_6680[2]_i_29_n_3\,
      S(2) => \add_ln840_82_reg_6680_reg[2]_0\(0),
      S(1) => \add_ln840_82_reg_6680[2]_i_31_n_3\,
      S(0) => \add_ln840_82_reg_6680[2]_i_32_n_3\
    );
\add_ln840_86_reg_6685[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_87_fu_3930_p2,
      I1 => icmp_ln1039_88_fu_3945_p2,
      I2 => icmp_ln1039_90_fu_3975_p2,
      I3 => icmp_ln1039_89_fu_3960_p2,
      O => \add_ln840_86_reg_6685_reg[2]_i_5_0\(0)
    );
\add_ln840_86_reg_6685[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_89_fu_3960_p2,
      I1 => icmp_ln1039_90_fu_3975_p2,
      I2 => icmp_ln1039_88_fu_3945_p2,
      I3 => icmp_ln1039_87_fu_3930_p2,
      O => \add_ln840_86_reg_6685_reg[2]_i_5_0\(1)
    );
\add_ln840_86_reg_6685[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_89_fu_3960_p2,
      I1 => icmp_ln1039_90_fu_3975_p2,
      I2 => icmp_ln1039_88_fu_3945_p2,
      I3 => icmp_ln1039_87_fu_3930_p2,
      O => \add_ln840_86_reg_6685_reg[2]_i_5_0\(2)
    );
\add_ln840_86_reg_6685[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_10_n_3\
    );
\add_ln840_86_reg_6685[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_11_n_3\
    );
\add_ln840_86_reg_6685[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_86_reg_6685[2]_i_12_n_3\
    );
\add_ln840_86_reg_6685[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_86_reg_6685[2]_i_13_n_3\
    );
\add_ln840_86_reg_6685[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_14_n_3\
    );
\add_ln840_86_reg_6685[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_15_n_3\
    );
\add_ln840_86_reg_6685[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_86_reg_6685[2]_i_16_n_3\
    );
\add_ln840_86_reg_6685[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__1_n_3\,
      O => \add_ln840_86_reg_6685[2]_i_17_n_3\
    );
\add_ln840_86_reg_6685[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_18_n_3\
    );
\add_ln840_86_reg_6685[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_19_n_3\
    );
\add_ln840_86_reg_6685[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_86_reg_6685[2]_i_20_n_3\
    );
\add_ln840_86_reg_6685[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__1_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_86_reg_6685[2]_i_21_n_3\
    );
\add_ln840_86_reg_6685[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_22_n_3\
    );
\add_ln840_86_reg_6685[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_23_n_3\
    );
\add_ln840_86_reg_6685[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_86_reg_6685[2]_i_24_n_3\
    );
\add_ln840_86_reg_6685[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_25_n_3\
    );
\add_ln840_86_reg_6685[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_26_n_3\
    );
\add_ln840_86_reg_6685[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_86_reg_6685[2]_i_27_n_3\
    );
\add_ln840_86_reg_6685[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_28_n_3\
    );
\add_ln840_86_reg_6685[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_29_n_3\
    );
\add_ln840_86_reg_6685[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_86_reg_6685[2]_i_30_n_3\
    );
\add_ln840_86_reg_6685[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_86_reg_6685[2]_i_31_n_3\
    );
\add_ln840_86_reg_6685[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_32_n_3\
    );
\add_ln840_86_reg_6685[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_33_n_3\
    );
\add_ln840_86_reg_6685[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_86_reg_6685[2]_i_34_n_3\
    );
\add_ln840_86_reg_6685[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__1_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_86_reg_6685[2]_i_35_n_3\
    );
\add_ln840_86_reg_6685[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_86_reg_6685[2]_i_6_n_3\
    );
\add_ln840_86_reg_6685[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_86_reg_6685[2]_i_7_n_3\
    );
\add_ln840_86_reg_6685[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_86_reg_6685[2]_i_8_n_3\
    );
\add_ln840_86_reg_6685[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_86_reg_6685[2]_i_9_n_3\
    );
\add_ln840_86_reg_6685_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_89_fu_3960_p2,
      CO(2) => \add_ln840_86_reg_6685_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_86_reg_6685_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_86_reg_6685_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_86_reg_6685[2]_i_6_n_3\,
      DI(2) => \add_ln840_86_reg_6685[2]_i_7_n_3\,
      DI(1) => \add_ln840_86_reg_6685[2]_i_8_n_3\,
      DI(0) => \add_ln840_86_reg_6685[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_86_reg_6685_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_86_reg_6685[2]_i_10_n_3\,
      S(2) => \add_ln840_86_reg_6685[2]_i_11_n_3\,
      S(1) => \add_ln840_86_reg_6685[2]_i_12_n_3\,
      S(0) => \add_ln840_86_reg_6685[2]_i_13_n_3\
    );
\add_ln840_86_reg_6685_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_90_fu_3975_p2,
      CO(2) => \add_ln840_86_reg_6685_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_86_reg_6685_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_86_reg_6685_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_86_reg_6685[2]_i_14_n_3\,
      DI(2) => \add_ln840_86_reg_6685[2]_i_15_n_3\,
      DI(1) => \add_ln840_86_reg_6685[2]_i_16_n_3\,
      DI(0) => \add_ln840_86_reg_6685[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_86_reg_6685_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_86_reg_6685[2]_i_18_n_3\,
      S(2) => \add_ln840_86_reg_6685[2]_i_19_n_3\,
      S(1) => \add_ln840_86_reg_6685[2]_i_20_n_3\,
      S(0) => \add_ln840_86_reg_6685[2]_i_21_n_3\
    );
\add_ln840_86_reg_6685_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_86_reg_6685_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_88_fu_3945_p2,
      CO(1) => \add_ln840_86_reg_6685_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_86_reg_6685_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_86_reg_6685[2]_i_22_n_3\,
      DI(1) => \add_ln840_86_reg_6685[2]_i_23_n_3\,
      DI(0) => \add_ln840_86_reg_6685[2]_i_24_n_3\,
      O(3 downto 0) => \NLW_add_ln840_86_reg_6685_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_86_reg_6685[2]_i_25_n_3\,
      S(1) => \add_ln840_86_reg_6685[2]_i_26_n_3\,
      S(0) => \add_ln840_86_reg_6685[2]_i_27_n_3\
    );
\add_ln840_86_reg_6685_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_87_fu_3930_p2,
      CO(2) => \add_ln840_86_reg_6685_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_86_reg_6685_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_86_reg_6685_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_86_reg_6685[2]_i_28_n_3\,
      DI(2) => \add_ln840_86_reg_6685[2]_i_29_n_3\,
      DI(1) => \add_ln840_86_reg_6685[2]_i_30_n_3\,
      DI(0) => \add_ln840_86_reg_6685[2]_i_31_n_3\,
      O(3 downto 0) => \NLW_add_ln840_86_reg_6685_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_86_reg_6685[2]_i_32_n_3\,
      S(2) => \add_ln840_86_reg_6685[2]_i_33_n_3\,
      S(1) => \add_ln840_86_reg_6685[2]_i_34_n_3\,
      S(0) => \add_ln840_86_reg_6685[2]_i_35_n_3\
    );
\add_ln840_89_reg_6690[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_91_fu_3990_p2,
      I1 => icmp_ln1039_92_fu_4005_p2,
      I2 => icmp_ln1039_94_fu_4035_p2,
      I3 => icmp_ln1039_93_fu_4020_p2,
      O => \add_ln840_89_reg_6690_reg[2]_i_5_0\(0)
    );
\add_ln840_89_reg_6690[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_93_fu_4020_p2,
      I1 => icmp_ln1039_94_fu_4035_p2,
      I2 => icmp_ln1039_92_fu_4005_p2,
      I3 => icmp_ln1039_91_fu_3990_p2,
      O => \add_ln840_89_reg_6690_reg[2]_i_5_0\(1)
    );
\add_ln840_89_reg_6690[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_93_fu_4020_p2,
      I1 => icmp_ln1039_94_fu_4035_p2,
      I2 => icmp_ln1039_92_fu_4005_p2,
      I3 => icmp_ln1039_91_fu_3990_p2,
      O => \add_ln840_89_reg_6690_reg[2]_i_5_0\(2)
    );
\add_ln840_89_reg_6690[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_10_n_3\
    );
\add_ln840_89_reg_6690[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_89_reg_6690[2]_i_11_n_3\
    );
\add_ln840_89_reg_6690[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_89_reg_6690[2]_i_12_n_3\
    );
\add_ln840_89_reg_6690[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_13_n_3\
    );
\add_ln840_89_reg_6690[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_14_n_3\
    );
\add_ln840_89_reg_6690[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_89_reg_6690[2]_i_16_n_3\
    );
\add_ln840_89_reg_6690[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_17_n_3\
    );
\add_ln840_89_reg_6690[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_18_n_3\
    );
\add_ln840_89_reg_6690[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_89_reg_6690[2]_i_19_n_3\
    );
\add_ln840_89_reg_6690[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_89_reg_6690[2]_i_20_n_3\
    );
\add_ln840_89_reg_6690[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_21_n_3\
    );
\add_ln840_89_reg_6690[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_22_n_3\
    );
\add_ln840_89_reg_6690[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_89_reg_6690[2]_i_23_n_3\
    );
\add_ln840_89_reg_6690[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_89_reg_6690[2]_i_24_n_3\
    );
\add_ln840_89_reg_6690[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_25_n_3\
    );
\add_ln840_89_reg_6690[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_26_n_3\
    );
\add_ln840_89_reg_6690[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => \q0_reg[0]_rep__2_n_3\,
      O => \add_ln840_89_reg_6690[2]_i_27_n_3\
    );
\add_ln840_89_reg_6690[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_89_reg_6690[2]_i_28_n_3\
    );
\add_ln840_89_reg_6690[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_29_n_3\
    );
\add_ln840_89_reg_6690[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_30_n_3\
    );
\add_ln840_89_reg_6690[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I1 => \q0_reg[0]_rep__2_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_89_reg_6690[2]_i_31_n_3\
    );
\add_ln840_89_reg_6690[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_89_reg_6690[2]_i_32_n_3\
    );
\add_ln840_89_reg_6690[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_6_n_3\
    );
\add_ln840_89_reg_6690[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_89_reg_6690[2]_i_7_n_3\
    );
\add_ln840_89_reg_6690[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_71_reg_6665_reg[0]\,
      O => \add_ln840_89_reg_6690[2]_i_8_n_3\
    );
\add_ln840_89_reg_6690[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__2_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_89_reg_6690[2]_i_9_n_3\
    );
\add_ln840_89_reg_6690_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_89_reg_6690_reg[2]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_93_fu_4020_p2,
      CO(0) => \add_ln840_89_reg_6690_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_89_reg_6690[2]_i_6_n_3\,
      DI(0) => \add_ln840_89_reg_6690[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_89_reg_6690_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_89_reg_6690[2]_i_8_n_3\,
      S(0) => \add_ln840_89_reg_6690[2]_i_9_n_3\
    );
\add_ln840_89_reg_6690_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_94_fu_4035_p2,
      CO(2) => \add_ln840_89_reg_6690_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_89_reg_6690_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_89_reg_6690_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_89_reg_6690[2]_i_10_n_3\,
      DI(2) => \add_ln840_89_reg_6690[2]_i_11_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_89_reg_6690[2]_i_12_n_3\,
      O(3 downto 0) => \NLW_add_ln840_89_reg_6690_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_89_reg_6690[2]_i_13_n_3\,
      S(2) => \add_ln840_89_reg_6690[2]_i_14_n_3\,
      S(1) => \add_ln840_89_reg_6690_reg[2]\(0),
      S(0) => \add_ln840_89_reg_6690[2]_i_16_n_3\
    );
\add_ln840_89_reg_6690_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_92_fu_4005_p2,
      CO(2) => \add_ln840_89_reg_6690_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_89_reg_6690_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_89_reg_6690_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_89_reg_6690[2]_i_17_n_3\,
      DI(2) => \add_ln840_89_reg_6690[2]_i_18_n_3\,
      DI(1) => \add_ln840_89_reg_6690[2]_i_19_n_3\,
      DI(0) => \add_ln840_89_reg_6690[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_89_reg_6690_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_89_reg_6690[2]_i_21_n_3\,
      S(2) => \add_ln840_89_reg_6690[2]_i_22_n_3\,
      S(1) => \add_ln840_89_reg_6690[2]_i_23_n_3\,
      S(0) => \add_ln840_89_reg_6690[2]_i_24_n_3\
    );
\add_ln840_89_reg_6690_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_91_fu_3990_p2,
      CO(2) => \add_ln840_89_reg_6690_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_89_reg_6690_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_89_reg_6690_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_89_reg_6690[2]_i_25_n_3\,
      DI(2) => \add_ln840_89_reg_6690[2]_i_26_n_3\,
      DI(1) => \add_ln840_89_reg_6690[2]_i_27_n_3\,
      DI(0) => \add_ln840_89_reg_6690[2]_i_28_n_3\,
      O(3 downto 0) => \NLW_add_ln840_89_reg_6690_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_89_reg_6690[2]_i_29_n_3\,
      S(2) => \add_ln840_89_reg_6690[2]_i_30_n_3\,
      S(1) => \add_ln840_89_reg_6690[2]_i_31_n_3\,
      S(0) => \add_ln840_89_reg_6690[2]_i_32_n_3\
    );
\add_ln840_8_reg_6585[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_7_fu_2330_p2,
      I1 => CO(0),
      I2 => icmp_ln1039_10_fu_2391_p2,
      I3 => icmp_ln1039_9_fu_2372_p2,
      O => \add_ln840_8_reg_6585_reg[2]_i_5_0\(0)
    );
\add_ln840_8_reg_6585[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_9_fu_2372_p2,
      I1 => icmp_ln1039_10_fu_2391_p2,
      I2 => CO(0),
      I3 => icmp_ln1039_7_fu_2330_p2,
      O => \add_ln840_8_reg_6585_reg[2]_i_5_0\(1)
    );
\add_ln840_8_reg_6585[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_9_fu_2372_p2,
      I1 => icmp_ln1039_10_fu_2391_p2,
      I2 => CO(0),
      I3 => icmp_ln1039_7_fu_2330_p2,
      O => \add_ln840_8_reg_6585_reg[2]_i_5_0\(2)
    );
\add_ln840_8_reg_6585[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_8_reg_6585[2]_i_11_n_3\
    );
\add_ln840_8_reg_6585[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_8_reg_6585[2]_i_12_n_3\
    );
\add_ln840_8_reg_6585[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_8_reg_6585[2]_i_13_n_3\
    );
\add_ln840_8_reg_6585[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_8_reg_6585[2]_i_15_n_3\
    );
\add_ln840_8_reg_6585[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_8_reg_6585[2]_i_17_n_3\
    );
\add_ln840_8_reg_6585[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      I2 => p_ZL7threshs_130_q0(0),
      O => \add_ln840_8_reg_6585[2]_i_24_n_3\
    );
\add_ln840_8_reg_6585[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_8_reg_6585[2]_i_25_n_3\
    );
\add_ln840_8_reg_6585[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => p_ZL7threshs_130_q0(0),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(3),
      O => \add_ln840_8_reg_6585[2]_i_28_n_3\
    );
\add_ln840_8_reg_6585[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_8_reg_6585[2]_i_29_n_3\
    );
\add_ln840_8_reg_6585[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_8_reg_6585[2]_i_6_n_3\
    );
\add_ln840_8_reg_6585[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_8_reg_6585[2]_i_7_n_3\
    );
\add_ln840_8_reg_6585[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_ZL7threshs_130_q0(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(5),
      O => \add_ln840_8_reg_6585[2]_i_9_n_3\
    );
\add_ln840_8_reg_6585_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_9_fu_2372_p2,
      CO(2) => \add_ln840_8_reg_6585_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_8_reg_6585_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_8_reg_6585_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_8_reg_6585[2]_i_6_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_8_reg_6585[2]_i_7_n_3\,
      O(3 downto 0) => \NLW_add_ln840_8_reg_6585_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_8_reg_6585_reg[2]_1\(1),
      S(2) => \add_ln840_8_reg_6585[2]_i_9_n_3\,
      S(1) => \add_ln840_8_reg_6585_reg[2]_1\(0),
      S(0) => \add_ln840_8_reg_6585[2]_i_11_n_3\
    );
\add_ln840_8_reg_6585_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_10_fu_2391_p2,
      CO(2) => \add_ln840_8_reg_6585_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_8_reg_6585_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_8_reg_6585_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_8_reg_6585[2]_i_12_n_3\,
      DI(1) => '0',
      DI(0) => \add_ln840_8_reg_6585[2]_i_13_n_3\,
      O(3 downto 0) => \NLW_add_ln840_8_reg_6585_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_8_reg_6585_reg[2]\(1),
      S(2) => \add_ln840_8_reg_6585[2]_i_15_n_3\,
      S(1) => \add_ln840_8_reg_6585_reg[2]\(0),
      S(0) => \add_ln840_8_reg_6585[2]_i_17_n_3\
    );
\add_ln840_8_reg_6585_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_7_fu_2330_p2,
      CO(2) => \add_ln840_8_reg_6585_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_8_reg_6585_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_8_reg_6585_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_8_reg_6585[2]_i_24_n_3\,
      DI(0) => \add_ln840_8_reg_6585[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_8_reg_6585_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \add_ln840_8_reg_6585_reg[2]_0\(1 downto 0),
      S(1) => \add_ln840_8_reg_6585[2]_i_28_n_3\,
      S(0) => \add_ln840_8_reg_6585[2]_i_29_n_3\
    );
\add_ln840_95_reg_6695[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_95_fu_4050_p2,
      I1 => icmp_ln1039_96_fu_4065_p2,
      I2 => icmp_ln1039_98_fu_4095_p2,
      I3 => icmp_ln1039_97_fu_4080_p2,
      O => \add_ln840_95_reg_6695_reg[2]_i_5_0\(0)
    );
\add_ln840_95_reg_6695[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_97_fu_4080_p2,
      I1 => icmp_ln1039_98_fu_4095_p2,
      I2 => icmp_ln1039_96_fu_4065_p2,
      I3 => icmp_ln1039_95_fu_4050_p2,
      O => \add_ln840_95_reg_6695_reg[2]_i_5_0\(1)
    );
\add_ln840_95_reg_6695[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_97_fu_4080_p2,
      I1 => icmp_ln1039_98_fu_4095_p2,
      I2 => icmp_ln1039_96_fu_4065_p2,
      I3 => icmp_ln1039_95_fu_4050_p2,
      O => \add_ln840_95_reg_6695_reg[2]_i_5_0\(2)
    );
\add_ln840_95_reg_6695[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_10_n_3\
    );
\add_ln840_95_reg_6695[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_95_reg_6695[2]_i_11_n_3\
    );
\add_ln840_95_reg_6695[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_12_n_3\
    );
\add_ln840_95_reg_6695[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__4_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_95_reg_6695[2]_i_13_n_3\
    );
\add_ln840_95_reg_6695[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_14_n_3\
    );
\add_ln840_95_reg_6695[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_15_n_3\
    );
\add_ln840_95_reg_6695[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_95_reg_6695[2]_i_16_n_3\
    );
\add_ln840_95_reg_6695[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_95_reg_6695[2]_i_17_n_3\
    );
\add_ln840_95_reg_6695[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_18_n_3\
    );
\add_ln840_95_reg_6695[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_95_reg_6695[2]_i_19_n_3\
    );
\add_ln840_95_reg_6695[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_20_n_3\
    );
\add_ln840_95_reg_6695[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_95_reg_6695[2]_i_21_n_3\
    );
\add_ln840_95_reg_6695[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_22_n_3\
    );
\add_ln840_95_reg_6695[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_23_n_3\
    );
\add_ln840_95_reg_6695[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_24_n_3\
    );
\add_ln840_95_reg_6695[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_95_reg_6695[2]_i_25_n_3\
    );
\add_ln840_95_reg_6695[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_26_n_3\
    );
\add_ln840_95_reg_6695[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_95_reg_6695[2]_i_27_n_3\
    );
\add_ln840_95_reg_6695[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_28_n_3\
    );
\add_ln840_95_reg_6695[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_95_reg_6695[2]_i_29_n_3\
    );
\add_ln840_95_reg_6695[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_30_n_3\
    );
\add_ln840_95_reg_6695[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_31_n_3\
    );
\add_ln840_95_reg_6695[2]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_32_n_3\
    );
\add_ln840_95_reg_6695[2]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_33_n_3\
    );
\add_ln840_95_reg_6695[2]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_95_reg_6695[2]_i_34_n_3\
    );
\add_ln840_95_reg_6695[2]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_35_n_3\
    );
\add_ln840_95_reg_6695[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_6_n_3\
    );
\add_ln840_95_reg_6695[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_95_reg_6695[2]_i_7_n_3\
    );
\add_ln840_95_reg_6695[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q0_reg[0]_rep__4_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_95_reg_6695[2]_i_8_n_3\
    );
\add_ln840_95_reg_6695[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__4_n_3\,
      O => \add_ln840_95_reg_6695[2]_i_9_n_3\
    );
\add_ln840_95_reg_6695_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_97_fu_4080_p2,
      CO(2) => \add_ln840_95_reg_6695_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_95_reg_6695_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_95_reg_6695_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_95_reg_6695[2]_i_6_n_3\,
      DI(2) => \add_ln840_95_reg_6695[2]_i_7_n_3\,
      DI(1) => \add_ln840_95_reg_6695[2]_i_8_n_3\,
      DI(0) => \add_ln840_95_reg_6695[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_95_reg_6695_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_95_reg_6695[2]_i_10_n_3\,
      S(2) => \add_ln840_95_reg_6695[2]_i_11_n_3\,
      S(1) => \add_ln840_95_reg_6695[2]_i_12_n_3\,
      S(0) => \add_ln840_95_reg_6695[2]_i_13_n_3\
    );
\add_ln840_95_reg_6695_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_98_fu_4095_p2,
      CO(2) => \add_ln840_95_reg_6695_reg[2]_i_3_n_4\,
      CO(1) => \add_ln840_95_reg_6695_reg[2]_i_3_n_5\,
      CO(0) => \add_ln840_95_reg_6695_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_95_reg_6695[2]_i_14_n_3\,
      DI(2) => \add_ln840_95_reg_6695[2]_i_15_n_3\,
      DI(1) => \add_ln840_95_reg_6695[2]_i_16_n_3\,
      DI(0) => \add_ln840_95_reg_6695[2]_i_17_n_3\,
      O(3 downto 0) => \NLW_add_ln840_95_reg_6695_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_95_reg_6695[2]_i_18_n_3\,
      S(2) => \add_ln840_95_reg_6695[2]_i_19_n_3\,
      S(1) => \add_ln840_95_reg_6695[2]_i_20_n_3\,
      S(0) => \add_ln840_95_reg_6695[2]_i_21_n_3\
    );
\add_ln840_95_reg_6695_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_96_fu_4065_p2,
      CO(2) => \add_ln840_95_reg_6695_reg[2]_i_4_n_4\,
      CO(1) => \add_ln840_95_reg_6695_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_95_reg_6695_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_95_reg_6695[2]_i_22_n_3\,
      DI(2) => \add_ln840_95_reg_6695[2]_i_23_n_3\,
      DI(1) => \add_ln840_95_reg_6695[2]_i_24_n_3\,
      DI(0) => \add_ln840_95_reg_6695[2]_i_25_n_3\,
      O(3 downto 0) => \NLW_add_ln840_95_reg_6695_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_95_reg_6695[2]_i_26_n_3\,
      S(2) => \add_ln840_95_reg_6695[2]_i_27_n_3\,
      S(1) => \add_ln840_95_reg_6695[2]_i_28_n_3\,
      S(0) => \add_ln840_95_reg_6695[2]_i_29_n_3\
    );
\add_ln840_95_reg_6695_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_95_reg_6695_reg[2]_i_5_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_95_fu_4050_p2,
      CO(1) => \add_ln840_95_reg_6695_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_95_reg_6695_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_95_reg_6695[2]_i_30_n_3\,
      DI(1) => \add_ln840_95_reg_6695[2]_i_31_n_3\,
      DI(0) => \add_ln840_95_reg_6695[2]_i_32_n_3\,
      O(3 downto 0) => \NLW_add_ln840_95_reg_6695_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_95_reg_6695[2]_i_33_n_3\,
      S(1) => \add_ln840_95_reg_6695[2]_i_34_n_3\,
      S(0) => \add_ln840_95_reg_6695[2]_i_35_n_3\
    );
\add_ln840_98_reg_6700[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => icmp_ln1039_99_fu_4110_p2,
      I1 => icmp_ln1039_100_fu_4125_p2,
      I2 => icmp_ln1039_102_fu_4155_p2,
      I3 => icmp_ln1039_101_fu_4140_p2,
      O => \add_ln840_98_reg_6700_reg[2]_i_5_0\(0)
    );
\add_ln840_98_reg_6700[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"177E"
    )
        port map (
      I0 => icmp_ln1039_101_fu_4140_p2,
      I1 => icmp_ln1039_102_fu_4155_p2,
      I2 => icmp_ln1039_100_fu_4125_p2,
      I3 => icmp_ln1039_99_fu_4110_p2,
      O => \add_ln840_98_reg_6700_reg[2]_i_5_0\(1)
    );
\add_ln840_98_reg_6700[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => icmp_ln1039_101_fu_4140_p2,
      I1 => icmp_ln1039_102_fu_4155_p2,
      I2 => icmp_ln1039_100_fu_4125_p2,
      I3 => icmp_ln1039_99_fu_4110_p2,
      O => \add_ln840_98_reg_6700_reg[2]_i_5_0\(2)
    );
\add_ln840_98_reg_6700[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_10_n_3\
    );
\add_ln840_98_reg_6700[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_98_reg_6700[2]_i_11_n_3\
    );
\add_ln840_98_reg_6700[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_98_reg_6700[2]_i_12_n_3\
    );
\add_ln840_98_reg_6700[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_98_reg_6700[2]_i_13_n_3\
    );
\add_ln840_98_reg_6700[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_14_n_3\
    );
\add_ln840_98_reg_6700[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_98_reg_6700[2]_i_15_n_3\
    );
\add_ln840_98_reg_6700[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_16_n_3\
    );
\add_ln840_98_reg_6700[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_98_reg_6700[2]_i_17_n_3\
    );
\add_ln840_98_reg_6700[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_18_n_3\
    );
\add_ln840_98_reg_6700[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_19_n_3\
    );
\add_ln840_98_reg_6700[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_98_reg_6700[2]_i_20_n_3\
    );
\add_ln840_98_reg_6700[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_21_n_3\
    );
\add_ln840_98_reg_6700[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_98_reg_6700[2]_i_22_n_3\
    );
\add_ln840_98_reg_6700[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_98_reg_6700[2]_i_23_n_3\
    );
\add_ln840_98_reg_6700[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_24_n_3\
    );
\add_ln840_98_reg_6700[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_25_n_3\
    );
\add_ln840_98_reg_6700[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      O => \add_ln840_98_reg_6700[2]_i_26_n_3\
    );
\add_ln840_98_reg_6700[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_98_reg_6700[2]_i_27_n_3\
    );
\add_ln840_98_reg_6700[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(6),
      I2 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_28_n_3\
    );
\add_ln840_98_reg_6700[2]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(4),
      O => \add_ln840_98_reg_6700[2]_i_29_n_3\
    );
\add_ln840_98_reg_6700[2]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      O => \add_ln840_98_reg_6700[2]_i_30_n_3\
    );
\add_ln840_98_reg_6700[2]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      I1 => \q0_reg[0]_rep__3_n_3\,
      I2 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(0),
      O => \add_ln840_98_reg_6700[2]_i_31_n_3\
    );
\add_ln840_98_reg_6700[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_6_n_3\
    );
\add_ln840_98_reg_6700[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_117_reg_6725_reg[2]_i_2_0\,
      O => \add_ln840_98_reg_6700[2]_i_7_n_3\
    );
\add_ln840_98_reg_6700[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(2),
      I1 => \add_ln840_113_reg_6720_reg[2]_i_2_1\,
      I2 => \q0_reg[0]_rep__3_n_3\,
      O => \add_ln840_98_reg_6700[2]_i_8_n_3\
    );
\add_ln840_98_reg_6700[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_rep__3_n_3\,
      I1 => \add_ln840_57_reg_6650_reg[2]_i_5_1\(1),
      O => \add_ln840_98_reg_6700[2]_i_9_n_3\
    );
\add_ln840_98_reg_6700_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_101_fu_4140_p2,
      CO(2) => \add_ln840_98_reg_6700_reg[2]_i_2_n_4\,
      CO(1) => \add_ln840_98_reg_6700_reg[2]_i_2_n_5\,
      CO(0) => \add_ln840_98_reg_6700_reg[2]_i_2_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_98_reg_6700[2]_i_6_n_3\,
      DI(2) => \add_ln840_98_reg_6700[2]_i_7_n_3\,
      DI(1) => \add_ln840_98_reg_6700[2]_i_8_n_3\,
      DI(0) => \add_ln840_98_reg_6700[2]_i_9_n_3\,
      O(3 downto 0) => \NLW_add_ln840_98_reg_6700_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_98_reg_6700[2]_i_10_n_3\,
      S(2) => \add_ln840_98_reg_6700[2]_i_11_n_3\,
      S(1) => \add_ln840_98_reg_6700[2]_i_12_n_3\,
      S(0) => \add_ln840_98_reg_6700[2]_i_13_n_3\
    );
\add_ln840_98_reg_6700_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_add_ln840_98_reg_6700_reg[2]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln1039_102_fu_4155_p2,
      CO(0) => \add_ln840_98_reg_6700_reg[2]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \add_ln840_98_reg_6700[2]_i_14_n_3\,
      DI(0) => \add_ln840_98_reg_6700[2]_i_15_n_3\,
      O(3 downto 0) => \NLW_add_ln840_98_reg_6700_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \add_ln840_98_reg_6700[2]_i_16_n_3\,
      S(0) => \add_ln840_98_reg_6700[2]_i_17_n_3\
    );
\add_ln840_98_reg_6700_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_add_ln840_98_reg_6700_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln1039_100_fu_4125_p2,
      CO(1) => \add_ln840_98_reg_6700_reg[2]_i_4_n_5\,
      CO(0) => \add_ln840_98_reg_6700_reg[2]_i_4_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \add_ln840_98_reg_6700[2]_i_18_n_3\,
      DI(1) => \add_ln840_98_reg_6700[2]_i_19_n_3\,
      DI(0) => \add_ln840_98_reg_6700[2]_i_20_n_3\,
      O(3 downto 0) => \NLW_add_ln840_98_reg_6700_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \add_ln840_98_reg_6700[2]_i_21_n_3\,
      S(1) => \add_ln840_98_reg_6700[2]_i_22_n_3\,
      S(0) => \add_ln840_98_reg_6700[2]_i_23_n_3\
    );
\add_ln840_98_reg_6700_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln1039_99_fu_4110_p2,
      CO(2) => \add_ln840_98_reg_6700_reg[2]_i_5_n_4\,
      CO(1) => \add_ln840_98_reg_6700_reg[2]_i_5_n_5\,
      CO(0) => \add_ln840_98_reg_6700_reg[2]_i_5_n_6\,
      CYINIT => '0',
      DI(3) => \add_ln840_98_reg_6700[2]_i_24_n_3\,
      DI(2) => \add_ln840_98_reg_6700[2]_i_25_n_3\,
      DI(1) => \add_ln840_98_reg_6700[2]_i_26_n_3\,
      DI(0) => \add_ln840_98_reg_6700[2]_i_27_n_3\,
      O(3 downto 0) => \NLW_add_ln840_98_reg_6700_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \add_ln840_98_reg_6700[2]_i_28_n_3\,
      S(2) => \add_ln840_98_reg_6700[2]_i_29_n_3\,
      S(1) => \add_ln840_98_reg_6700[2]_i_30_n_3\,
      S(0) => \add_ln840_98_reg_6700[2]_i_31_n_3\
    );
\inElem_reg_5804_pp0_iter1_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD50000"
    )
        port map (
      I0 => \q0_reg[0]_0\,
      I1 => Q(0),
      I2 => out_V_TREADY_int_regslice,
      I3 => \q0_reg[0]_1\,
      I4 => ap_CS_iter1_fsm_state2,
      O => \^p_zl7threshs_128_ce0\
    );
\q0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A888AAAA"
    )
        port map (
      I0 => ap_CS_iter1_fsm_state2,
      I1 => \q0_reg[0]_1\,
      I2 => out_V_TREADY_int_regslice,
      I3 => Q(0),
      I4 => \q0_reg[0]_0\,
      I5 => \out\(3),
      O => \q0[0]_i_1_n_3\
    );
\q0[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_i_2_n_3\
    );
\q0[0]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1_n_3\
    );
\q0[0]_rep_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1__0_n_3\
    );
\q0[0]_rep_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1__1_n_3\
    );
\q0[0]_rep_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1__2_n_3\
    );
\q0[0]_rep_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1__3_n_3\
    );
\q0[0]_rep_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      O => \q0[0]_rep_i_1__4_n_3\
    );
\q0_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_i_2_n_3\,
      Q => p_ZL7threshs_130_q0(0),
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1_n_3\,
      Q => \q0_reg[0]_rep_n_3\,
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1__0_n_3\,
      Q => \q0_reg[0]_rep__0_n_3\,
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1__1_n_3\,
      Q => \q0_reg[0]_rep__1_n_3\,
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1__2_n_3\,
      Q => \q0_reg[0]_rep__2_n_3\,
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep__3\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1__3_n_3\,
      Q => \q0_reg[0]_rep__3_n_3\,
      S => \q0[0]_i_1_n_3\
    );
\q0_reg[0]_rep__4\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \^p_zl7threshs_128_ce0\,
      D => \q0[0]_rep_i_1__4_n_3\,
      Q => \q0_reg[0]_rep__4_n_3\,
      S => \q0[0]_i_1_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ap_NS_iter1_fsm : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_2_fu_2007_p2 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \i_fu_320_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_Thresholding_Batch_fu_546_ap_start_reg_reg : out STD_LOGIC;
    grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \ap_CS_iter1_fsm_reg[1]\ : in STD_LOGIC;
    out_V_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_iter1_fsm_reg[1]_0\ : in STD_LOGIC;
    ap_CS_iter1_fsm_state2 : in STD_LOGIC;
    in0_V_TVALID_int_regslice : in STD_LOGIC;
    grp_Thresholding_Batch_fu_546_ap_start_reg : in STD_LOGIC;
    \nf_1_fu_316_reg_rep[6]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter5_reg : in STD_LOGIC;
    \i_fu_320_reg[4]\ : in STD_LOGIC;
    \i_fu_320_reg[4]_0\ : in STD_LOGIC;
    \i_fu_320_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i_fu_320_reg[4]_2\ : in STD_LOGIC;
    \i_fu_320_reg[4]_3\ : in STD_LOGIC;
    \i_fu_320_reg[9]\ : in STD_LOGIC;
    \i_fu_320_reg[9]_0\ : in STD_LOGIC;
    \i_fu_320_reg[9]_1\ : in STD_LOGIC;
    \i_fu_320_reg[9]_2\ : in STD_LOGIC;
    \i_fu_320_reg[5]\ : in STD_LOGIC;
    \i_fu_320_reg[0]\ : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    icmp_ln295_reg_5800 : in STD_LOGIC;
    ap_NS_fsm10_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init : entity is "Thresholding_Batch_0_flow_control_loop_pipe_sequential_init";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init is
  signal \ap_CS_fsm[3]_i_2_n_3\ : STD_LOGIC;
  signal ap_condition_4530 : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_3 : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_3 : STD_LOGIC;
  signal \^ap_rst_n_0\ : STD_LOGIC;
  signal \i_fu_320[0]_i_4_n_3\ : STD_LOGIC;
  signal \i_fu_320[5]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_320[9]_i_2_n_3\ : STD_LOGIC;
  signal \i_fu_320[9]_i_3_n_3\ : STD_LOGIC;
  signal \^i_fu_320_reg[1]\ : STD_LOGIC;
  signal \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_iter1_fsm[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_done_cache_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_320[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_320[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_320[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_320[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_320[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_320[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_320[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_320[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_320[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_320[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_320[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \nf_1_fu_316_rep[9]_i_1\ : label is "soft_lutpair0";
begin
  ap_rst_n_0 <= \^ap_rst_n_0\;
  \i_fu_320_reg[1]\ <= \^i_fu_320_reg[1]\;
  \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\ <= \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\;
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5100"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => ap_done_cache,
      I2 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I3 => Q(2),
      I4 => Q(1),
      O => \ap_CS_fsm_reg[0]\(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001101"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \ap_CS_fsm[3]_i_2_n_3\,
      I4 => ap_NS_fsm10_out,
      O => \ap_CS_fsm_reg[0]\(1)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => ap_done_cache,
      I2 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I3 => Q(2),
      O => \ap_CS_fsm[3]_i_2_n_3\
    );
\ap_CS_iter1_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15000000"
    )
        port map (
      I0 => \ap_CS_iter1_fsm_reg[1]\,
      I1 => out_V_TREADY_int_regslice,
      I2 => Q(2),
      I3 => \ap_CS_iter1_fsm_reg[1]_0\,
      I4 => ap_CS_iter1_fsm_state2,
      I5 => ap_condition_4530,
      O => ap_NS_iter1_fsm(0)
    );
\ap_CS_iter1_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808088"
    )
        port map (
      I0 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      I2 => in0_V_TVALID_int_regslice,
      I3 => \i_fu_320[0]_i_4_n_3\,
      I4 => ap_loop_init_int,
      O => ap_condition_4530
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_3
    );
ap_done_cache_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter5_reg,
      I1 => \ap_CS_iter1_fsm_reg[1]_0\,
      I2 => Q(2),
      I3 => out_V_TREADY_int_regslice,
      I4 => \ap_CS_iter1_fsm_reg[1]\,
      O => ap_done_reg1
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_3,
      Q => ap_done_cache,
      R => \^ap_rst_n_0\
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFF00000088"
    )
        port map (
      I0 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      I2 => in0_V_TVALID_int_regslice,
      I3 => \i_fu_320[0]_i_4_n_3\,
      I4 => ap_loop_init_int,
      I5 => ap_loop_exit_ready_pp0_iter1_reg,
      O => grp_Thresholding_Batch_fu_546_ap_start_reg_reg
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => ap_condition_4530,
      I3 => ap_done_reg1,
      O => ap_loop_init_int_i_1_n_3
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_3,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_Thresholding_Batch_fu_546_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAFFAA"
    )
        port map (
      I0 => Q(1),
      I1 => \i_fu_320[0]_i_4_n_3\,
      I2 => ap_loop_init_int,
      I3 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I4 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      O => \ap_CS_fsm_reg[1]\
    );
\i_fu_320[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008000"
    )
        port map (
      I0 => in0_V_TVALID_int_regslice,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      I2 => ap_loop_init_int,
      I3 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I4 => \i_fu_320[0]_i_4_n_3\,
      O => E(0)
    );
\i_fu_320[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \i_fu_320_reg[4]_1\(0),
      I1 => \i_fu_320_reg[0]\,
      I2 => ap_loop_init_int,
      O => D(0)
    );
\i_fu_320[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAFF"
    )
        port map (
      I0 => \ap_CS_iter1_fsm_reg[1]\,
      I1 => out_V_TREADY_int_regslice,
      I2 => Q(2),
      I3 => \ap_CS_iter1_fsm_reg[1]_0\,
      O => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\
    );
\i_fu_320[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \i_fu_320_reg[5]\,
      I1 => \i_fu_320_reg[4]_3\,
      I2 => \i_fu_320_reg[9]_1\,
      I3 => \i_fu_320_reg[9]_0\,
      I4 => \^i_fu_320_reg[1]\,
      I5 => \i_fu_320_reg[4]_1\(0),
      O => \i_fu_320[0]_i_4_n_3\
    );
\i_fu_320[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \i_fu_320_reg[4]_0\,
      I1 => \i_fu_320_reg[9]\,
      I2 => \i_fu_320_reg[9]_2\,
      I3 => \i_fu_320_reg[4]\,
      I4 => \i_fu_320_reg[4]_2\,
      O => \^i_fu_320_reg[1]\
    );
\i_fu_320[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \i_fu_320_reg[4]_1\(0),
      I1 => \i_fu_320_reg[4]_0\,
      I2 => ap_loop_init_int,
      O => i_2_fu_2007_p2(0)
    );
\i_fu_320[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \i_fu_320_reg[4]_0\,
      I1 => \i_fu_320_reg[4]_1\(0),
      I2 => \i_fu_320_reg[4]_2\,
      I3 => ap_loop_init_int,
      O => i_2_fu_2007_p2(1)
    );
\i_fu_320[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \i_fu_320_reg[4]_2\,
      I1 => \i_fu_320_reg[4]_1\(0),
      I2 => \i_fu_320_reg[4]_0\,
      I3 => \i_fu_320_reg[4]\,
      I4 => ap_loop_init_int,
      O => i_2_fu_2007_p2(2)
    );
\i_fu_320[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \i_fu_320_reg[4]\,
      I1 => \i_fu_320_reg[4]_0\,
      I2 => \i_fu_320_reg[4]_1\(0),
      I3 => \i_fu_320_reg[4]_2\,
      I4 => \i_fu_320_reg[4]_3\,
      I5 => \i_fu_320[9]_i_3_n_3\,
      O => i_2_fu_2007_p2(3)
    );
\i_fu_320[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8878"
    )
        port map (
      I0 => \i_fu_320_reg[4]_3\,
      I1 => \i_fu_320[5]_i_2_n_3\,
      I2 => \i_fu_320_reg[5]\,
      I3 => ap_loop_init_int,
      O => i_2_fu_2007_p2(4)
    );
\i_fu_320[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \i_fu_320_reg[4]_2\,
      I1 => \i_fu_320_reg[4]_1\(0),
      I2 => ap_loop_init_int,
      I3 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I4 => \i_fu_320_reg[4]_0\,
      I5 => \i_fu_320_reg[4]\,
      O => \i_fu_320[5]_i_2_n_3\
    );
\i_fu_320[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \i_fu_320[9]_i_2_n_3\,
      I1 => \i_fu_320_reg[9]_1\,
      I2 => ap_loop_init_int,
      O => i_2_fu_2007_p2(5)
    );
\i_fu_320[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8878"
    )
        port map (
      I0 => \i_fu_320_reg[9]_1\,
      I1 => \i_fu_320[9]_i_2_n_3\,
      I2 => \i_fu_320_reg[9]_0\,
      I3 => ap_loop_init_int,
      O => i_2_fu_2007_p2(6)
    );
\i_fu_320[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80807F80"
    )
        port map (
      I0 => \i_fu_320[9]_i_2_n_3\,
      I1 => \i_fu_320_reg[9]_1\,
      I2 => \i_fu_320_reg[9]_0\,
      I3 => \i_fu_320_reg[9]\,
      I4 => ap_loop_init_int,
      O => i_2_fu_2007_p2(7)
    );
\i_fu_320[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080008000"
    )
        port map (
      I0 => \i_fu_320[9]_i_2_n_3\,
      I1 => \i_fu_320_reg[9]\,
      I2 => \i_fu_320_reg[9]_0\,
      I3 => \i_fu_320_reg[9]_1\,
      I4 => \i_fu_320_reg[9]_2\,
      I5 => \i_fu_320[9]_i_3_n_3\,
      O => i_2_fu_2007_p2(8)
    );
\i_fu_320[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i_fu_320_reg[4]_3\,
      I1 => \i_fu_320[5]_i_2_n_3\,
      I2 => \i_fu_320_reg[5]\,
      O => \i_fu_320[9]_i_2_n_3\
    );
\i_fu_320[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      O => \i_fu_320[9]_i_3_n_3\
    );
\icmp_ln295_reg_5800[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFF00000088"
    )
        port map (
      I0 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      I2 => in0_V_TVALID_int_regslice,
      I3 => \i_fu_320[0]_i_4_n_3\,
      I4 => ap_loop_init_int,
      I5 => icmp_ln295_reg_5800,
      O => grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0
    );
\nf_1_fu_316_rep[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\,
      I1 => in0_V_TVALID_int_regslice,
      I2 => grp_Thresholding_Batch_fu_546_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \nf_1_fu_316_reg_rep[6]\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    in0_V_TVALID_int_regslice : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_Thresholding_Batch_fu_546_in0_V_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    in0_V_TVALID : in STD_LOGIC;
    in0_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both : entity is "Thresholding_Batch_0_regslice_both";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both is
  signal B_V_data_1_load_B : STD_LOGIC;
  signal B_V_data_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \B_V_data_1_payload_A[7]_i_1_n_3\ : STD_LOGIC;
  signal B_V_data_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_V_data_1_sel : STD_LOGIC;
  signal B_V_data_1_sel_rd_i_1_n_3 : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal \B_V_data_1_sel_wr_i_1__0_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[1]_i_2_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^in0_v_tvalid_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \inElem_reg_5804[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \inElem_reg_5804[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \inElem_reg_5804[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \inElem_reg_5804[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \inElem_reg_5804[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \inElem_reg_5804[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \inElem_reg_5804[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \inElem_reg_5804[7]_i_1\ : label is "soft_lutpair77";
begin
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  in0_V_TVALID_int_regslice <= \^in0_v_tvalid_int_regslice\;
\B_V_data_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^in0_v_tvalid_int_regslice\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => \B_V_data_1_payload_A[7]_i_1_n_3\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(0),
      Q => B_V_data_1_payload_A(0),
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(1),
      Q => B_V_data_1_payload_A(1),
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(2),
      Q => B_V_data_1_payload_A(2),
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(3),
      Q => B_V_data_1_payload_A(3),
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(4),
      Q => B_V_data_1_payload_A(4),
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(5),
      Q => B_V_data_1_payload_A(5),
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(6),
      Q => B_V_data_1_payload_A(6),
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[7]_i_1_n_3\,
      D => in0_V_TDATA(7),
      Q => B_V_data_1_payload_A(7),
      R => '0'
    );
\B_V_data_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => B_V_data_1_sel_wr,
      I1 => \^in0_v_tvalid_int_regslice\,
      I2 => \^b_v_data_1_state_reg[1]_0\,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(0),
      Q => B_V_data_1_payload_B(0),
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(1),
      Q => B_V_data_1_payload_B(1),
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(2),
      Q => B_V_data_1_payload_B(2),
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(3),
      Q => B_V_data_1_payload_B(3),
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(4),
      Q => B_V_data_1_payload_B(4),
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(5),
      Q => B_V_data_1_payload_B(5),
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(6),
      Q => B_V_data_1_payload_B(6),
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => in0_V_TDATA(7),
      Q => B_V_data_1_payload_B(7),
      R => '0'
    );
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Q(0),
      I1 => grp_Thresholding_Batch_fu_546_in0_V_TREADY,
      I2 => \^in0_v_tvalid_int_regslice\,
      I3 => B_V_data_1_sel,
      O => B_V_data_1_sel_rd_i_1_n_3
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_i_1_n_3,
      Q => B_V_data_1_sel,
      R => ap_rst_n_inv
    );
\B_V_data_1_sel_wr_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => in0_V_TVALID,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => \B_V_data_1_sel_wr_i_1__0_n_3\
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_wr_i_1__0_n_3\,
      Q => B_V_data_1_sel_wr,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAAAA000000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => grp_Thresholding_Batch_fu_546_in0_V_TREADY,
      I2 => Q(0),
      I3 => in0_V_TVALID,
      I4 => \^b_v_data_1_state_reg[1]_0\,
      I5 => \^in0_v_tvalid_int_regslice\,
      O => \B_V_data_1_state[0]_i_1_n_3\
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8FFF8F"
    )
        port map (
      I0 => Q(0),
      I1 => grp_Thresholding_Batch_fu_546_in0_V_TREADY,
      I2 => \^in0_v_tvalid_int_regslice\,
      I3 => \^b_v_data_1_state_reg[1]_0\,
      I4 => in0_V_TVALID,
      O => \B_V_data_1_state[1]_i_2_n_3\
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_3\,
      Q => \^in0_v_tvalid_int_regslice\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[1]_i_2_n_3\,
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => ap_rst_n_inv
    );
\inElem_reg_5804[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(0),
      I1 => B_V_data_1_payload_A(0),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(0)
    );
\inElem_reg_5804[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(1),
      I1 => B_V_data_1_payload_A(1),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(1)
    );
\inElem_reg_5804[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(2),
      I1 => B_V_data_1_payload_A(2),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(2)
    );
\inElem_reg_5804[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(3),
      I1 => B_V_data_1_payload_A(3),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(3)
    );
\inElem_reg_5804[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(4),
      I1 => B_V_data_1_payload_A(4),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(4)
    );
\inElem_reg_5804[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(5),
      I1 => B_V_data_1_payload_A(5),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(5)
    );
\inElem_reg_5804[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(6),
      I1 => B_V_data_1_payload_A(6),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(6)
    );
\inElem_reg_5804[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B_V_data_1_payload_B(7),
      I1 => B_V_data_1_payload_A(7),
      I2 => B_V_data_1_sel,
      O => \B_V_data_1_payload_B_reg[7]_0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0 is
  port (
    out_V_TREADY_int_regslice : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC;
    B_V_data_1_sel_wr : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_NS_fsm10_out : out STD_LOGIC;
    out_V_TDATA : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B_V_data_1_sel_wr_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \B_V_data_1_state_reg[1]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    out_V_TREADY : in STD_LOGIC;
    grp_Thresholding_Batch_fu_546_out_V_TVALID : in STD_LOGIC;
    ap_CS_iter5_fsm_state6 : in STD_LOGIC;
    \B_V_data_1_payload_A_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0 : entity is "Thresholding_Batch_0_regslice_both";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0 is
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[0]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[3]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_3_[6]\ : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__0_n_3\ : STD_LOGIC;
  signal B_V_data_1_sel_rd_reg_n_3 : STD_LOGIC;
  signal \^b_v_data_1_sel_wr\ : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \B_V_data_1_state[1]_i_1__0_n_3\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[0]_0\ : STD_LOGIC;
  signal \^out_v_tready_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_sel_rd_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \out_V_TDATA[0]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \out_V_TDATA[1]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \out_V_TDATA[2]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \out_V_TDATA[3]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \out_V_TDATA[4]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \out_V_TDATA[5]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \out_V_TDATA[6]_INST_0\ : label is "soft_lutpair82";
begin
  B_V_data_1_sel_wr <= \^b_v_data_1_sel_wr\;
  \B_V_data_1_state_reg[0]_0\ <= \^b_v_data_1_state_reg[0]_0\;
  out_V_TREADY_int_regslice <= \^out_v_tready_int_regslice\;
\B_V_data_1_payload_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[0]_0\,
      I1 => \^out_v_tready_int_regslice\,
      I2 => \^b_v_data_1_sel_wr\,
      O => \B_V_data_1_payload_A[6]_i_1_n_3\
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(0),
      Q => \B_V_data_1_payload_A_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(1),
      Q => \B_V_data_1_payload_A_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(2),
      Q => \B_V_data_1_payload_A_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(3),
      Q => \B_V_data_1_payload_A_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(4),
      Q => \B_V_data_1_payload_A_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(5),
      Q => \B_V_data_1_payload_A_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \B_V_data_1_payload_A[6]_i_1_n_3\,
      D => \B_V_data_1_payload_A_reg[6]_0\(6),
      Q => \B_V_data_1_payload_A_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => \^b_v_data_1_sel_wr\,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^out_v_tready_int_regslice\,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(0),
      Q => \B_V_data_1_payload_B_reg_n_3_[0]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(1),
      Q => \B_V_data_1_payload_B_reg_n_3_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(2),
      Q => \B_V_data_1_payload_B_reg_n_3_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(3),
      Q => \B_V_data_1_payload_B_reg_n_3_[3]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(4),
      Q => \B_V_data_1_payload_B_reg_n_3_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(5),
      Q => \B_V_data_1_payload_B_reg_n_3_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => \B_V_data_1_payload_A_reg[6]_0\(6),
      Q => \B_V_data_1_payload_B_reg_n_3_[6]\,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => out_V_TREADY,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => \B_V_data_1_sel_rd_i_1__0_n_3\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__0_n_3\,
      Q => B_V_data_1_sel_rd_reg_n_3,
      R => ap_rst_n_inv
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_reg_0,
      Q => \^b_v_data_1_sel_wr\,
      R => ap_rst_n_inv
    );
\B_V_data_1_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => out_V_TREADY,
      I2 => grp_Thresholding_Batch_fu_546_out_V_TVALID,
      I3 => \^out_v_tready_int_regslice\,
      I4 => \^b_v_data_1_state_reg[0]_0\,
      O => \B_V_data_1_state[0]_i_1__0_n_3\
    );
\B_V_data_1_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBBBFBFBFB"
    )
        port map (
      I0 => out_V_TREADY,
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^out_v_tready_int_regslice\,
      I3 => Q(0),
      I4 => ap_CS_iter5_fsm_state6,
      I5 => \B_V_data_1_state_reg[1]_0\,
      O => \B_V_data_1_state[1]_i_1__0_n_3\
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__0_n_3\,
      Q => \^b_v_data_1_state_reg[0]_0\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[1]_i_1__0_n_3\,
      Q => \^out_v_tready_int_regslice\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F00"
    )
        port map (
      I0 => out_V_TREADY,
      I1 => \^out_v_tready_int_regslice\,
      I2 => \^b_v_data_1_state_reg[0]_0\,
      I3 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(1),
      I1 => \^b_v_data_1_state_reg[0]_0\,
      I2 => \^out_v_tready_int_regslice\,
      I3 => out_V_TREADY,
      O => ap_NS_fsm10_out
    );
ap_loop_exit_ready_pp0_iter5_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(0),
      I1 => \^out_v_tready_int_regslice\,
      I2 => \B_V_data_1_state_reg[1]_0\,
      O => \ap_CS_fsm_reg[2]\
    );
\out_V_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[0]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[0]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(0)
    );
\out_V_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[1]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[1]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(1)
    );
\out_V_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[2]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[2]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(2)
    );
\out_V_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[3]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[3]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(3)
    );
\out_V_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[4]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[4]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(4)
    );
\out_V_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[5]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[5]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(5)
    );
\out_V_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_3_[6]\,
      I1 => \B_V_data_1_payload_A_reg_n_3_[6]\,
      I2 => B_V_data_1_sel_rd_reg_n_3,
      O => out_V_TDATA(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    ap_CS_iter5_fsm_state6 : out STD_LOGIC;
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\ : out STD_LOGIC;
    grp_Thresholding_Batch_fu_546_in0_V_TREADY : out STD_LOGIC;
    grp_Thresholding_Batch_fu_546_out_V_TVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1\ : out STD_LOGIC;
    result_V_2_fu_5775_p2 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter5_reg_reg_0 : in STD_LOGIC;
    out_V_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in0_V_TVALID_int_regslice : in STD_LOGIC;
    grp_Thresholding_Batch_fu_546_ap_start_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_NS_fsm10_out : in STD_LOGIC;
    B_V_data_1_sel_wr : in STD_LOGIC;
    \inElem_reg_5804_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch : entity is "Thresholding_Batch_0_Thresholding_Batch";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch is
  signal \B_V_data_1_payload_A[3]_i_2_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_3_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_4_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_5_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_6_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_7_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[3]_i_8_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_3_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_4_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_5_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_6_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A[6]_i_7_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal add_ln840_102_fu_5258_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_102_reg_6705 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_102_reg_67050 : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_102_reg_6705[2]_i_34_n_3\ : STD_LOGIC;
  signal add_ln840_105_fu_5284_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_105_reg_6710 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_110_fu_5310_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_110_reg_6715 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_110_reg_6715[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_110_reg_6715[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_113_fu_5336_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_113_reg_6720 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_113_reg_6720[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_113_reg_6720[2]_i_29_n_3\ : STD_LOGIC;
  signal add_ln840_117_fu_5362_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_117_reg_6725 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_117_reg_6725[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_117_reg_6725[2]_i_28_n_3\ : STD_LOGIC;
  signal add_ln840_11_fu_4660_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_11_reg_6590 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_11_reg_6590[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_11_reg_6590[2]_i_8_n_3\ : STD_LOGIC;
  signal add_ln840_120_fu_5388_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_120_reg_6730 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_123_fu_5711_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_123_reg_6765 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_123_reg_67650 : STD_LOGIC;
  signal \add_ln840_123_reg_6765[1]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[3]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_123_reg_6765[5]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_123_reg_6765_pp0_iter4_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_13_fu_5431_p2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal add_ln840_13_reg_6735 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \add_ln840_13_reg_6735[0]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln840_13_reg_6735[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_13_reg_6735[3]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_13_reg_6735[3]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_13_reg_6735[3]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_13_reg_6735[3]_i_5_n_3\ : STD_LOGIC;
  signal add_ln840_16_fu_4686_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_16_reg_6595 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_16_reg_6595[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_19_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_16_reg_6595[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_19_fu_4712_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_19_reg_6600 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_19_reg_6600[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_19_reg_6600[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_1_fu_4596_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln840_1_reg_6570 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \add_ln840_1_reg_6570[1]_i_3_n_3\ : STD_LOGIC;
  signal add_ln840_20_fu_5443_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_ln840_20_reg_6740 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_ln840_23_fu_4738_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_23_reg_6605 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_23_reg_6605[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_23_reg_6605[2]_i_8_n_3\ : STD_LOGIC;
  signal add_ln840_26_fu_4764_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_26_reg_6610 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_26_reg_6610[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_26_reg_6610[2]_i_8_n_3\ : STD_LOGIC;
  signal add_ln840_27_fu_5455_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_ln840_27_reg_6745 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_ln840_2_fu_4602_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln840_2_reg_6575 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \add_ln840_2_reg_6575[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575[1]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_2_reg_6575[1]_i_6_n_3\ : STD_LOGIC;
  signal add_ln840_32_fu_4790_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_32_reg_6615 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_32_reg_6615[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_32_reg_6615[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_35_fu_4816_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_35_reg_6620 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_35_reg_6620[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_35_reg_6620[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_39_fu_4842_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_39_reg_6625 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_39_reg_6625[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_28_n_3\ : STD_LOGIC;
  signal \add_ln840_39_reg_6625[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_3_fu_4608_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln840_3_reg_6580 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \add_ln840_3_reg_6580[1]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_3_reg_6580[1]_i_7_n_3\ : STD_LOGIC;
  signal add_ln840_42_fu_4868_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_42_reg_6630 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_42_reg_6630[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_42_reg_6630[2]_i_28_n_3\ : STD_LOGIC;
  signal add_ln840_44_fu_5493_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln840_44_reg_6750 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \add_ln840_44_reg_6750[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_44_reg_6750[2]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_44_reg_6750[2]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_44_reg_6750[4]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_44_reg_6750[4]_i_3_n_3\ : STD_LOGIC;
  signal add_ln840_47_fu_4894_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_47_reg_6635 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_47_reg_6635[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_47_reg_6635[2]_i_34_n_3\ : STD_LOGIC;
  signal add_ln840_50_fu_4920_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_50_reg_6640 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_54_fu_4946_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_54_reg_6645 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_54_reg_6645[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_54_reg_6645[2]_i_26_n_3\ : STD_LOGIC;
  signal add_ln840_57_fu_4972_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_57_reg_6650 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_59_fu_5531_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln840_59_reg_6755 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \add_ln840_59_reg_6755[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_59_reg_6755[2]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_59_reg_6755[2]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_59_reg_6755[4]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_59_reg_6755[4]_i_3_n_3\ : STD_LOGIC;
  signal add_ln840_61_fu_5754_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_61_reg_6770 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_61_reg_67700 : STD_LOGIC;
  signal \add_ln840_61_reg_6770[2]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[2]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[3]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[3]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[3]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_61_reg_6770[5]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_64_fu_4998_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_64_reg_6655 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_64_reg_6655[2]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_64_reg_6655[2]_i_19_n_3\ : STD_LOGIC;
  signal add_ln840_67_fu_5024_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_67_reg_6660 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_71_fu_5050_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_71_reg_6665 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_74_fu_5076_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_74_reg_6670 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_74_reg_6670[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_17_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_23_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_74_reg_6670[2]_i_30_n_3\ : STD_LOGIC;
  signal add_ln840_79_fu_5102_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_79_reg_6675 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_79_reg_6675[2]_i_15_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_22_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_29_n_3\ : STD_LOGIC;
  signal \add_ln840_79_reg_6675[2]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_82_fu_5128_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_82_reg_6680 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_82_reg_6680[2]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_24_n_3\ : STD_LOGIC;
  signal \add_ln840_82_reg_6680[2]_i_30_n_3\ : STD_LOGIC;
  signal add_ln840_86_fu_5154_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_86_reg_6685 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_89_fu_5180_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_89_reg_6690 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_89_reg_6690[2]_i_15_n_3\ : STD_LOGIC;
  signal add_ln840_8_fu_4634_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_8_reg_6585 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln840_8_reg_6585[2]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_14_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_16_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_20_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_21_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_26_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_27_n_3\ : STD_LOGIC;
  signal \add_ln840_8_reg_6585[2]_i_8_n_3\ : STD_LOGIC;
  signal add_ln840_92_fu_5621_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_92_reg_6760 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \add_ln840_92_reg_6760[1]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[1]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[2]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_2_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[3]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_10_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_11_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_12_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_13_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_3_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_4_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_5_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_6_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_7_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_8_n_3\ : STD_LOGIC;
  signal \add_ln840_92_reg_6760[5]_i_9_n_3\ : STD_LOGIC;
  signal add_ln840_92_reg_6760_pp0_iter4_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln840_95_fu_5206_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_95_reg_6695 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_98_fu_5232_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal add_ln840_98_reg_6700 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_CS_iter1_fsm_state2 : STD_LOGIC;
  signal ap_CS_iter2_fsm_state3 : STD_LOGIC;
  signal ap_CS_iter3_fsm_state4 : STD_LOGIC;
  signal ap_CS_iter4_fsm_state5 : STD_LOGIC;
  signal \^ap_cs_iter5_fsm_state6\ : STD_LOGIC;
  signal ap_NS_iter1_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_NS_iter2_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_NS_iter3_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_NS_iter4_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_NS_iter5_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_NS_iter5_fsm1 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3 : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_20 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal \^grp_thresholding_batch_fu_546_in0_v_tready\ : STD_LOGIC;
  signal i_2_fu_2007_p2 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \i_fu_320[0]_i_5_n_3\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[0]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[1]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[2]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[3]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[4]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[5]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[6]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[7]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[8]\ : STD_LOGIC;
  signal \i_fu_320_reg_n_3_[9]\ : STD_LOGIC;
  signal icmp_ln1039_36_fu_2945_p2 : STD_LOGIC;
  signal icmp_ln1039_8_fu_2353_p2 : STD_LOGIC;
  signal icmp_ln295_reg_5800 : STD_LOGIC;
  signal icmp_ln295_reg_5800_pp0_iter1_reg : STD_LOGIC;
  signal icmp_ln295_reg_5800_pp0_iter2_reg : STD_LOGIC;
  signal \icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal icmp_ln295_reg_5800_pp0_iter3_reg : STD_LOGIC;
  signal \icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\ : STD_LOGIC;
  signal inElem_reg_5804 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inElem_reg_5804_pp0_iter1_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\ : STD_LOGIC;
  signal \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\ : STD_LOGIC;
  signal \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3\ : STD_LOGIC;
  signal \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3\ : STD_LOGIC;
  signal nf_1_fu_316 : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal nf_1_fu_3160 : STD_LOGIC;
  signal nf_1_fu_316_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \nf_1_fu_316_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[20]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[28]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[4]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \nf_1_fu_316_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \nf_1_fu_316_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal \nf_1_fu_316_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \nf_1_fu_316_reg_rep[8]_i_1_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_1_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_1_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_1_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_2_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_2_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_2_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[8]_i_2_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_11_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_11_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_11_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_11_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_12_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_12_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_12_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_12_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_13_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_13_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_14_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_14_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_14_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_14_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_15_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_15_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_15_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_15_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_3_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_3_n_4\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_3_n_5\ : STD_LOGIC;
  signal \nf_1_fu_316_reg_rep[9]_i_3_n_6\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_10_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_4_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_5_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_6_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_7_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_8_n_3\ : STD_LOGIC;
  signal \nf_1_fu_316_rep[9]_i_9_n_3\ : STD_LOGIC;
  signal nf_fu_2152_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \nf_fu_2152_p2__0\ : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_out/i__n_3\ : STD_LOGIC;
  signal p_ZL7threshs_128_U_n_3 : STD_LOGIC;
  signal p_ZL7threshs_128_ce0 : STD_LOGIC;
  signal zext_ln840_26_fu_5738_p1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_B_V_data_1_payload_A_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_B_V_data_1_payload_A_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_nf_1_fu_316_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_nf_1_fu_316_reg_rep[9]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_nf_1_fu_316_reg_rep[9]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute HLUTNM : string;
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_2\ : label is "lutpair2";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_3\ : label is "lutpair1";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_6\ : label is "lutpair2";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_7\ : label is "lutpair1";
  attribute HLUTNM of \B_V_data_1_payload_A[3]_i_8\ : label is "lutpair0";
  attribute HLUTNM of \B_V_data_1_payload_A[6]_i_3\ : label is "lutpair4";
  attribute HLUTNM of \B_V_data_1_payload_A[6]_i_4\ : label is "lutpair3";
  attribute HLUTNM of \B_V_data_1_payload_A[6]_i_7\ : label is "lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \B_V_data_1_payload_A_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \B_V_data_1_payload_A_reg[6]_i_2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_state[0]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[1]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[2]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[2]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[2]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[2]_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[3]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[3]_i_5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_10\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_11\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_5\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \add_ln840_123_reg_6765[5]_i_8\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \add_ln840_13_reg_6735[1]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \add_ln840_13_reg_6735[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \add_ln840_13_reg_6735[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \add_ln840_13_reg_6735[3]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \add_ln840_20_reg_6740[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \add_ln840_20_reg_6740[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \add_ln840_27_reg_6745[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \add_ln840_27_reg_6745[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \add_ln840_44_reg_6750[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \add_ln840_44_reg_6750[1]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \add_ln840_44_reg_6750[2]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \add_ln840_44_reg_6750[4]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \add_ln840_59_reg_6755[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \add_ln840_59_reg_6755[1]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \add_ln840_59_reg_6755[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \add_ln840_59_reg_6755[4]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[2]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[2]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[3]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[3]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[3]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_10\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_11\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_13\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_14\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \add_ln840_61_reg_6770[5]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[1]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[2]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[2]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[2]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[2]_i_6\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[3]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[3]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_11\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_12\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \add_ln840_92_reg_6760[5]_i_9\ : label is "soft_lutpair69";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \ap_CS_iter1_fsm_reg[1]\ : label is "ap_ST_iter1_fsm_state0:01,ap_ST_iter1_fsm_state2:10";
  attribute FSM_ENCODED_STATES of \ap_CS_iter2_fsm_reg[1]\ : label is "ap_ST_iter2_fsm_state0:01,ap_ST_iter2_fsm_state3:10";
  attribute FSM_ENCODED_STATES of \ap_CS_iter3_fsm_reg[1]\ : label is "ap_ST_iter3_fsm_state0:01,ap_ST_iter3_fsm_state4:10";
  attribute FSM_ENCODED_STATES of \ap_CS_iter4_fsm_reg[1]\ : label is "ap_ST_iter4_fsm_state0:01,ap_ST_iter4_fsm_state5:10";
  attribute SOFT_HLUTNM of \ap_CS_iter5_fsm[1]_i_1\ : label is "soft_lutpair63";
  attribute FSM_ENCODED_STATES of \ap_CS_iter5_fsm_reg[1]\ : label is "ap_ST_iter5_fsm_state0:01,ap_ST_iter5_fsm_state6:10";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[3]\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[3]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[3]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[5]\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[5]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[5]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[7]\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[7]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[7]";
  attribute ORIG_CELL_NAME of \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0\ : label is "inElem_reg_5804_pp0_iter1_reg_reg[7]";
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_15\ : label is 35;
  attribute ADDER_THRESHOLD of \nf_1_fu_316_reg_rep[9]_i_3\ : label is 35;
begin
  ap_CS_iter5_fsm_state6 <= \^ap_cs_iter5_fsm_state6\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  grp_Thresholding_Batch_fu_546_in0_V_TREADY <= \^grp_thresholding_batch_fu_546_in0_v_tready\;
  \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\ <= \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\;
\B_V_data_1_payload_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(2),
      I1 => add_ln840_61_reg_6770(2),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(2),
      O => \B_V_data_1_payload_A[3]_i_2_n_3\
    );
\B_V_data_1_payload_A[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(1),
      I1 => add_ln840_61_reg_6770(1),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(1),
      O => \B_V_data_1_payload_A[3]_i_3_n_3\
    );
\B_V_data_1_payload_A[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(0),
      I1 => add_ln840_61_reg_6770(0),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(0),
      O => \B_V_data_1_payload_A[3]_i_4_n_3\
    );
\B_V_data_1_payload_A[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(3),
      I1 => add_ln840_61_reg_6770(3),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(3),
      I3 => \B_V_data_1_payload_A[3]_i_2_n_3\,
      O => \B_V_data_1_payload_A[3]_i_5_n_3\
    );
\B_V_data_1_payload_A[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(2),
      I1 => add_ln840_61_reg_6770(2),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(2),
      I3 => \B_V_data_1_payload_A[3]_i_3_n_3\,
      O => \B_V_data_1_payload_A[3]_i_6_n_3\
    );
\B_V_data_1_payload_A[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(1),
      I1 => add_ln840_61_reg_6770(1),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(1),
      I3 => \B_V_data_1_payload_A[3]_i_4_n_3\,
      O => \B_V_data_1_payload_A[3]_i_7_n_3\
    );
\B_V_data_1_payload_A[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(0),
      I1 => add_ln840_61_reg_6770(0),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(0),
      O => \B_V_data_1_payload_A[3]_i_8_n_3\
    );
\B_V_data_1_payload_A[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(4),
      I1 => add_ln840_61_reg_6770(4),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(4),
      O => \B_V_data_1_payload_A[6]_i_3_n_3\
    );
\B_V_data_1_payload_A[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(3),
      I1 => add_ln840_61_reg_6770(3),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(3),
      O => \B_V_data_1_payload_A[6]_i_4_n_3\
    );
\B_V_data_1_payload_A[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(5),
      I1 => add_ln840_61_reg_6770(5),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(5),
      O => \B_V_data_1_payload_A[6]_i_5_n_3\
    );
\B_V_data_1_payload_A[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \B_V_data_1_payload_A[6]_i_3_n_3\,
      I1 => add_ln840_61_reg_6770(5),
      I2 => add_ln840_92_reg_6760_pp0_iter4_reg(5),
      I3 => add_ln840_123_reg_6765_pp0_iter4_reg(5),
      O => \B_V_data_1_payload_A[6]_i_6_n_3\
    );
\B_V_data_1_payload_A[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_92_reg_6760_pp0_iter4_reg(4),
      I1 => add_ln840_61_reg_6770(4),
      I2 => add_ln840_123_reg_6765_pp0_iter4_reg(4),
      I3 => \B_V_data_1_payload_A[6]_i_4_n_3\,
      O => \B_V_data_1_payload_A[6]_i_7_n_3\
    );
\B_V_data_1_payload_A_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \B_V_data_1_payload_A_reg[3]_i_1_n_3\,
      CO(2) => \B_V_data_1_payload_A_reg[3]_i_1_n_4\,
      CO(1) => \B_V_data_1_payload_A_reg[3]_i_1_n_5\,
      CO(0) => \B_V_data_1_payload_A_reg[3]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \B_V_data_1_payload_A[3]_i_2_n_3\,
      DI(2) => \B_V_data_1_payload_A[3]_i_3_n_3\,
      DI(1) => \B_V_data_1_payload_A[3]_i_4_n_3\,
      DI(0) => '0',
      O(3 downto 0) => result_V_2_fu_5775_p2(3 downto 0),
      S(3) => \B_V_data_1_payload_A[3]_i_5_n_3\,
      S(2) => \B_V_data_1_payload_A[3]_i_6_n_3\,
      S(1) => \B_V_data_1_payload_A[3]_i_7_n_3\,
      S(0) => \B_V_data_1_payload_A[3]_i_8_n_3\
    );
\B_V_data_1_payload_A_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \B_V_data_1_payload_A_reg[3]_i_1_n_3\,
      CO(3 downto 2) => \NLW_B_V_data_1_payload_A_reg[6]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \B_V_data_1_payload_A_reg[6]_i_2_n_5\,
      CO(0) => \B_V_data_1_payload_A_reg[6]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \B_V_data_1_payload_A[6]_i_3_n_3\,
      DI(0) => \B_V_data_1_payload_A[6]_i_4_n_3\,
      O(3) => \NLW_B_V_data_1_payload_A_reg[6]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => result_V_2_fu_5775_p2(6 downto 4),
      S(3) => '0',
      S(2) => \B_V_data_1_payload_A[6]_i_5_n_3\,
      S(1) => \B_V_data_1_payload_A[6]_i_6_n_3\,
      S(0) => \B_V_data_1_payload_A[6]_i_7_n_3\
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I1 => \^ap_cs_iter5_fsm_state6\,
      I2 => Q(2),
      I3 => out_V_TREADY_int_regslice,
      I4 => B_V_data_1_sel_wr,
      O => \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1\
    );
\B_V_data_1_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I1 => \^ap_cs_iter5_fsm_state6\,
      I2 => Q(2),
      I3 => out_V_TREADY_int_regslice,
      O => grp_Thresholding_Batch_fu_546_out_V_TVALID
    );
\add_ln840_102_reg_6705[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_102_reg_6705[2]_i_27_n_3\
    );
\add_ln840_102_reg_6705[2]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_102_reg_6705[2]_i_34_n_3\
    );
\add_ln840_102_reg_6705_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_102_fu_5258_p2(0),
      Q => add_ln840_102_reg_6705(0),
      R => '0'
    );
\add_ln840_102_reg_6705_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_102_fu_5258_p2(1),
      Q => add_ln840_102_reg_6705(1),
      R => '0'
    );
\add_ln840_102_reg_6705_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_102_fu_5258_p2(2),
      Q => add_ln840_102_reg_6705(2),
      R => '0'
    );
\add_ln840_105_reg_6710_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_105_fu_5284_p2(0),
      Q => add_ln840_105_reg_6710(0),
      R => '0'
    );
\add_ln840_105_reg_6710_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_105_fu_5284_p2(1),
      Q => add_ln840_105_reg_6710(1),
      R => '0'
    );
\add_ln840_105_reg_6710_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_105_fu_5284_p2(2),
      Q => add_ln840_105_reg_6710(2),
      R => '0'
    );
\add_ln840_110_reg_6715[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_110_reg_6715[2]_i_10_n_3\
    );
\add_ln840_110_reg_6715[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_110_reg_6715[2]_i_15_n_3\
    );
\add_ln840_110_reg_6715[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_110_reg_6715[2]_i_20_n_3\
    );
\add_ln840_110_reg_6715[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_110_reg_6715[2]_i_21_n_3\
    );
\add_ln840_110_reg_6715[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_110_reg_6715[2]_i_9_n_3\
    );
\add_ln840_110_reg_6715_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_110_fu_5310_p2(0),
      Q => add_ln840_110_reg_6715(0),
      R => '0'
    );
\add_ln840_110_reg_6715_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_110_fu_5310_p2(1),
      Q => add_ln840_110_reg_6715(1),
      R => '0'
    );
\add_ln840_110_reg_6715_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_110_fu_5310_p2(2),
      Q => add_ln840_110_reg_6715(2),
      R => '0'
    );
\add_ln840_113_reg_6720[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_113_reg_6720[2]_i_10_n_3\
    );
\add_ln840_113_reg_6720[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_113_reg_6720[2]_i_17_n_3\
    );
\add_ln840_113_reg_6720[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_113_reg_6720[2]_i_23_n_3\
    );
\add_ln840_113_reg_6720[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_113_reg_6720[2]_i_29_n_3\
    );
\add_ln840_113_reg_6720_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_113_fu_5336_p2(0),
      Q => add_ln840_113_reg_6720(0),
      R => '0'
    );
\add_ln840_113_reg_6720_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_113_fu_5336_p2(1),
      Q => add_ln840_113_reg_6720(1),
      R => '0'
    );
\add_ln840_113_reg_6720_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_113_fu_5336_p2(2),
      Q => add_ln840_113_reg_6720(2),
      R => '0'
    );
\add_ln840_117_reg_6725[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_117_reg_6725[2]_i_15_n_3\
    );
\add_ln840_117_reg_6725[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_117_reg_6725[2]_i_21_n_3\
    );
\add_ln840_117_reg_6725[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_117_reg_6725[2]_i_28_n_3\
    );
\add_ln840_117_reg_6725_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_117_fu_5362_p2(0),
      Q => add_ln840_117_reg_6725(0),
      R => '0'
    );
\add_ln840_117_reg_6725_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_117_fu_5362_p2(1),
      Q => add_ln840_117_reg_6725(1),
      R => '0'
    );
\add_ln840_117_reg_6725_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_117_fu_5362_p2(2),
      Q => add_ln840_117_reg_6725(2),
      R => '0'
    );
\add_ln840_11_reg_6590[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_11_reg_6590[2]_i_14_n_3\
    );
\add_ln840_11_reg_6590[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_11_reg_6590[2]_i_21_n_3\
    );
\add_ln840_11_reg_6590[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_11_reg_6590[2]_i_27_n_3\
    );
\add_ln840_11_reg_6590[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_11_reg_6590[2]_i_8_n_3\
    );
\add_ln840_11_reg_6590_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_11_fu_4660_p2(0),
      Q => add_ln840_11_reg_6590(0),
      R => '0'
    );
\add_ln840_11_reg_6590_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_11_fu_4660_p2(1),
      Q => add_ln840_11_reg_6590(1),
      R => '0'
    );
\add_ln840_11_reg_6590_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_11_fu_4660_p2(2),
      Q => add_ln840_11_reg_6590(2),
      R => '0'
    );
\add_ln840_120_reg_6730_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_120_fu_5388_p2(0),
      Q => add_ln840_120_reg_6730(0),
      R => '0'
    );
\add_ln840_120_reg_6730_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_120_fu_5388_p2(1),
      Q => add_ln840_120_reg_6730(1),
      R => '0'
    );
\add_ln840_120_reg_6730_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_120_fu_5388_p2(2),
      Q => add_ln840_120_reg_6730(2),
      R => '0'
    );
\add_ln840_123_reg_6765[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[1]_i_2_n_3\,
      I1 => add_ln840_120_reg_6730(0),
      I2 => add_ln840_105_reg_6710(0),
      I3 => add_ln840_98_reg_6700(0),
      I4 => add_ln840_102_reg_6705(0),
      I5 => add_ln840_95_reg_6695(0),
      O => add_ln840_123_fu_5711_p2(0)
    );
\add_ln840_123_reg_6765[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[2]_i_3_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_4_n_3\,
      I2 => add_ln840_120_reg_6730(0),
      I3 => \add_ln840_123_reg_6765[1]_i_2_n_3\,
      I4 => add_ln840_105_reg_6710(0),
      O => \add_ln840_123_reg_6765[1]_i_1_n_3\
    );
\add_ln840_123_reg_6765[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => add_ln840_110_reg_6715(0),
      I1 => add_ln840_113_reg_6720(0),
      I2 => add_ln840_117_reg_6725(0),
      O => \add_ln840_123_reg_6765[1]_i_2_n_3\
    );
\add_ln840_123_reg_6765[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[2]_i_2_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_3_n_3\,
      I2 => \add_ln840_123_reg_6765[2]_i_4_n_3\,
      I3 => \add_ln840_123_reg_6765[2]_i_5_n_3\,
      I4 => \add_ln840_123_reg_6765[2]_i_6_n_3\,
      O => add_ln840_123_fu_5711_p2(2)
    );
\add_ln840_123_reg_6765[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14417DD7"
    )
        port map (
      I0 => add_ln840_120_reg_6730(0),
      I1 => add_ln840_117_reg_6725(0),
      I2 => add_ln840_113_reg_6720(0),
      I3 => add_ln840_110_reg_6715(0),
      I4 => add_ln840_105_reg_6710(0),
      O => \add_ln840_123_reg_6765[2]_i_2_n_3\
    );
\add_ln840_123_reg_6765[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900006900696900"
    )
        port map (
      I0 => add_ln840_105_reg_6710(0),
      I1 => add_ln840_120_reg_6730(0),
      I2 => \add_ln840_123_reg_6765[1]_i_2_n_3\,
      I3 => add_ln840_95_reg_6695(0),
      I4 => add_ln840_102_reg_6705(0),
      I5 => add_ln840_98_reg_6700(0),
      O => \add_ln840_123_reg_6765[2]_i_3_n_3\
    );
\add_ln840_123_reg_6765[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[2]_i_7_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_8_n_3\,
      I2 => add_ln840_95_reg_6695(0),
      I3 => add_ln840_102_reg_6705(0),
      I4 => add_ln840_98_reg_6700(0),
      O => \add_ln840_123_reg_6765[2]_i_4_n_3\
    );
\add_ln840_123_reg_6765[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[3]_i_4_n_3\,
      I1 => \add_ln840_123_reg_6765[3]_i_2_n_3\,
      I2 => \add_ln840_123_reg_6765[3]_i_3_n_3\,
      O => \add_ln840_123_reg_6765[2]_i_5_n_3\
    );
\add_ln840_123_reg_6765[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11171777"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[2]_i_7_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_8_n_3\,
      I2 => add_ln840_95_reg_6695(0),
      I3 => add_ln840_102_reg_6705(0),
      I4 => add_ln840_98_reg_6700(0),
      O => \add_ln840_123_reg_6765[2]_i_6_n_3\
    );
\add_ln840_123_reg_6765[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => add_ln840_120_reg_6730(1),
      I1 => add_ln840_105_reg_6710(1),
      I2 => \add_ln840_123_reg_6765[3]_i_8_n_3\,
      I3 => add_ln840_110_reg_6715(1),
      I4 => add_ln840_113_reg_6720(1),
      I5 => add_ln840_117_reg_6725(1),
      O => \add_ln840_123_reg_6765[2]_i_7_n_3\
    );
\add_ln840_123_reg_6765[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_117_reg_6725(0),
      I1 => add_ln840_113_reg_6720(0),
      I2 => add_ln840_110_reg_6715(0),
      O => \add_ln840_123_reg_6765[2]_i_8_n_3\
    );
\add_ln840_123_reg_6765[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[3]_i_2_n_3\,
      I1 => \add_ln840_123_reg_6765[3]_i_3_n_3\,
      I2 => \add_ln840_123_reg_6765[3]_i_4_n_3\,
      I3 => \add_ln840_123_reg_6765[3]_i_5_n_3\,
      I4 => \add_ln840_123_reg_6765[3]_i_6_n_3\,
      O => add_ln840_123_fu_5711_p2(3)
    );
\add_ln840_123_reg_6765[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => add_ln840_98_reg_6700(1),
      I1 => add_ln840_102_reg_6705(1),
      I2 => add_ln840_95_reg_6695(1),
      I3 => add_ln840_113_reg_6720(1),
      I4 => add_ln840_117_reg_6725(1),
      I5 => add_ln840_110_reg_6715(1),
      O => \add_ln840_123_reg_6765[3]_i_2_n_3\
    );
\add_ln840_123_reg_6765[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => add_ln840_105_reg_6710(2),
      I1 => add_ln840_120_reg_6730(2),
      I2 => add_ln840_105_reg_6710(1),
      I3 => add_ln840_120_reg_6730(1),
      I4 => \add_ln840_123_reg_6765[3]_i_7_n_3\,
      O => \add_ln840_123_reg_6765[3]_i_3_n_3\
    );
\add_ln840_123_reg_6765[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"099F9F099F09099F"
    )
        port map (
      I0 => add_ln840_105_reg_6710(1),
      I1 => add_ln840_120_reg_6730(1),
      I2 => \add_ln840_123_reg_6765[3]_i_8_n_3\,
      I3 => add_ln840_110_reg_6715(1),
      I4 => add_ln840_113_reg_6720(1),
      I5 => add_ln840_117_reg_6725(1),
      O => \add_ln840_123_reg_6765[3]_i_4_n_3\
    );
\add_ln840_123_reg_6765[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008E8EFF"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[2]_i_4_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_3_n_3\,
      I2 => \add_ln840_123_reg_6765[2]_i_2_n_3\,
      I3 => \add_ln840_123_reg_6765[2]_i_6_n_3\,
      I4 => \add_ln840_123_reg_6765[2]_i_5_n_3\,
      O => \add_ln840_123_reg_6765[3]_i_5_n_3\
    );
\add_ln840_123_reg_6765[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA959555556A6AAA"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_6_n_3\,
      I1 => add_ln840_105_reg_6710(1),
      I2 => add_ln840_120_reg_6730(1),
      I3 => add_ln840_105_reg_6710(2),
      I4 => add_ln840_120_reg_6730(2),
      I5 => \add_ln840_123_reg_6765[5]_i_5_n_3\,
      O => \add_ln840_123_reg_6765[3]_i_6_n_3\
    );
\add_ln840_123_reg_6765[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => add_ln840_95_reg_6695(2),
      I1 => add_ln840_98_reg_6700(2),
      I2 => add_ln840_102_reg_6705(2),
      I3 => add_ln840_110_reg_6715(2),
      I4 => add_ln840_113_reg_6720(2),
      I5 => add_ln840_117_reg_6725(2),
      O => \add_ln840_123_reg_6765[3]_i_7_n_3\
    );
\add_ln840_123_reg_6765[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_95_reg_6695(1),
      I1 => add_ln840_98_reg_6700(1),
      I2 => add_ln840_102_reg_6705(1),
      O => \add_ln840_123_reg_6765[3]_i_8_n_3\
    );
\add_ln840_123_reg_6765[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_4_n_3\,
      I1 => \add_ln840_123_reg_6765[5]_i_3_n_3\,
      I2 => \add_ln840_123_reg_6765[5]_i_2_n_3\,
      O => add_ln840_123_fu_5711_p2(4)
    );
\add_ln840_123_reg_6765[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_2_n_3\,
      I1 => \add_ln840_123_reg_6765[5]_i_3_n_3\,
      I2 => \add_ln840_123_reg_6765[5]_i_4_n_3\,
      O => add_ln840_123_fu_5711_p2(5)
    );
\add_ln840_123_reg_6765[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => add_ln840_120_reg_6730(1),
      I1 => add_ln840_105_reg_6710(1),
      I2 => add_ln840_120_reg_6730(2),
      I3 => add_ln840_105_reg_6710(2),
      O => \add_ln840_123_reg_6765[5]_i_10_n_3\
    );
\add_ln840_123_reg_6765[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_95_reg_6695(2),
      I1 => add_ln840_98_reg_6700(2),
      I2 => add_ln840_102_reg_6705(2),
      O => \add_ln840_123_reg_6765[5]_i_11_n_3\
    );
\add_ln840_123_reg_6765[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_95_reg_6695(0),
      I1 => add_ln840_102_reg_6705(0),
      I2 => add_ln840_98_reg_6700(0),
      O => \add_ln840_123_reg_6765[5]_i_12_n_3\
    );
\add_ln840_123_reg_6765[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077F0000FFFF077F"
    )
        port map (
      I0 => add_ln840_105_reg_6710(1),
      I1 => add_ln840_120_reg_6730(1),
      I2 => add_ln840_105_reg_6710(2),
      I3 => add_ln840_120_reg_6730(2),
      I4 => \add_ln840_123_reg_6765[5]_i_5_n_3\,
      I5 => \add_ln840_123_reg_6765[5]_i_6_n_3\,
      O => \add_ln840_123_reg_6765[5]_i_2_n_3\
    );
\add_ln840_123_reg_6765[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"022AABBF"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_7_n_3\,
      I1 => add_ln840_113_reg_6720(2),
      I2 => add_ln840_117_reg_6725(2),
      I3 => add_ln840_110_reg_6715(2),
      I4 => \add_ln840_123_reg_6765[5]_i_8_n_3\,
      O => \add_ln840_123_reg_6765[5]_i_3_n_3\
    );
\add_ln840_123_reg_6765[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"571515017F575715"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[3]_i_6_n_3\,
      I1 => \add_ln840_123_reg_6765[3]_i_4_n_3\,
      I2 => \add_ln840_123_reg_6765[3]_i_3_n_3\,
      I3 => \add_ln840_123_reg_6765[3]_i_2_n_3\,
      I4 => \add_ln840_123_reg_6765[5]_i_9_n_3\,
      I5 => \add_ln840_123_reg_6765[2]_i_6_n_3\,
      O => \add_ln840_123_reg_6765[5]_i_4_n_3\
    );
\add_ln840_123_reg_6765[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_7_n_3\,
      I1 => \add_ln840_123_reg_6765[5]_i_8_n_3\,
      I2 => add_ln840_110_reg_6715(2),
      I3 => add_ln840_117_reg_6725(2),
      I4 => add_ln840_113_reg_6720(2),
      O => \add_ln840_123_reg_6765[5]_i_5_n_3\
    );
\add_ln840_123_reg_6765[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_10_n_3\,
      I1 => add_ln840_117_reg_6725(2),
      I2 => add_ln840_113_reg_6720(2),
      I3 => add_ln840_110_reg_6715(2),
      I4 => \add_ln840_123_reg_6765[5]_i_11_n_3\,
      O => \add_ln840_123_reg_6765[5]_i_6_n_3\
    );
\add_ln840_123_reg_6765[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => add_ln840_98_reg_6700(1),
      I1 => add_ln840_102_reg_6705(1),
      I2 => add_ln840_95_reg_6695(1),
      I3 => add_ln840_113_reg_6720(1),
      I4 => add_ln840_117_reg_6725(1),
      I5 => add_ln840_110_reg_6715(1),
      O => \add_ln840_123_reg_6765[5]_i_7_n_3\
    );
\add_ln840_123_reg_6765[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_95_reg_6695(2),
      I1 => add_ln840_102_reg_6705(2),
      I2 => add_ln840_98_reg_6700(2),
      O => \add_ln840_123_reg_6765[5]_i_8_n_3\
    );
\add_ln840_123_reg_6765[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9600FF96"
    )
        port map (
      I0 => \add_ln840_123_reg_6765[5]_i_12_n_3\,
      I1 => \add_ln840_123_reg_6765[2]_i_8_n_3\,
      I2 => \add_ln840_123_reg_6765[2]_i_7_n_3\,
      I3 => \add_ln840_123_reg_6765[2]_i_3_n_3\,
      I4 => \add_ln840_123_reg_6765[2]_i_2_n_3\,
      O => \add_ln840_123_reg_6765[5]_i_9_n_3\
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(0),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(0),
      R => '0'
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(1),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(1),
      R => '0'
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(2),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(2),
      R => '0'
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(3),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(3),
      R => '0'
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(4),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(4),
      R => '0'
    );
\add_ln840_123_reg_6765_pp0_iter4_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_123_reg_6765(5),
      Q => add_ln840_123_reg_6765_pp0_iter4_reg(5),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_123_fu_5711_p2(0),
      Q => add_ln840_123_reg_6765(0),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => \add_ln840_123_reg_6765[1]_i_1_n_3\,
      Q => add_ln840_123_reg_6765(1),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_123_fu_5711_p2(2),
      Q => add_ln840_123_reg_6765(2),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_123_fu_5711_p2(3),
      Q => add_ln840_123_reg_6765(3),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_123_fu_5711_p2(4),
      Q => add_ln840_123_reg_6765(4),
      R => '0'
    );
\add_ln840_123_reg_6765_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_123_fu_5711_p2(5),
      Q => add_ln840_123_reg_6765(5),
      R => '0'
    );
\add_ln840_13_reg_6735[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_11_reg_6590(0),
      I1 => add_ln840_3_reg_6580(0),
      I2 => add_ln840_1_reg_6570(0),
      I3 => add_ln840_2_reg_6575(0),
      I4 => add_ln840_8_reg_6585(0),
      O => \add_ln840_13_reg_6735[0]_i_1_n_3\
    );
\add_ln840_13_reg_6735[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566A6A566A56566A"
    )
        port map (
      I0 => \add_ln840_13_reg_6735[1]_i_2_n_3\,
      I1 => add_ln840_8_reg_6585(0),
      I2 => add_ln840_11_reg_6590(0),
      I3 => add_ln840_3_reg_6580(0),
      I4 => add_ln840_1_reg_6570(0),
      I5 => add_ln840_2_reg_6575(0),
      O => add_ln840_13_fu_5431_p2(1)
    );
\add_ln840_13_reg_6735[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln840_13_reg_6735[3]_i_5_n_3\,
      I1 => add_ln840_11_reg_6590(1),
      I2 => add_ln840_8_reg_6585(1),
      O => \add_ln840_13_reg_6735[1]_i_2_n_3\
    );
\add_ln840_13_reg_6735[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_8_reg_6585(2),
      I1 => \add_ln840_13_reg_6735[3]_i_4_n_3\,
      I2 => add_ln840_11_reg_6590(2),
      I3 => \add_ln840_13_reg_6735[3]_i_2_n_3\,
      I4 => \add_ln840_13_reg_6735[3]_i_3_n_3\,
      O => add_ln840_13_fu_5431_p2(2)
    );
\add_ln840_13_reg_6735[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE7E771"
    )
        port map (
      I0 => \add_ln840_13_reg_6735[3]_i_2_n_3\,
      I1 => \add_ln840_13_reg_6735[3]_i_3_n_3\,
      I2 => add_ln840_8_reg_6585(2),
      I3 => \add_ln840_13_reg_6735[3]_i_4_n_3\,
      I4 => add_ln840_11_reg_6590(2),
      O => add_ln840_13_fu_5431_p2(3)
    );
\add_ln840_13_reg_6735[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => add_ln840_8_reg_6585(1),
      I1 => add_ln840_11_reg_6590(1),
      I2 => \add_ln840_13_reg_6735[3]_i_5_n_3\,
      O => \add_ln840_13_reg_6735[3]_i_2_n_3\
    );
\add_ln840_13_reg_6735[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"577F7F577F57577F"
    )
        port map (
      I0 => \add_ln840_13_reg_6735[1]_i_2_n_3\,
      I1 => add_ln840_8_reg_6585(0),
      I2 => add_ln840_11_reg_6590(0),
      I3 => add_ln840_3_reg_6580(0),
      I4 => add_ln840_1_reg_6570(0),
      I5 => add_ln840_2_reg_6575(0),
      O => \add_ln840_13_reg_6735[3]_i_3_n_3\
    );
\add_ln840_13_reg_6735[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17FFFFE8FFE8E800"
    )
        port map (
      I0 => add_ln840_2_reg_6575(0),
      I1 => add_ln840_3_reg_6580(0),
      I2 => add_ln840_1_reg_6570(0),
      I3 => add_ln840_2_reg_6575(1),
      I4 => add_ln840_3_reg_6580(1),
      I5 => add_ln840_1_reg_6570(1),
      O => \add_ln840_13_reg_6735[3]_i_4_n_3\
    );
\add_ln840_13_reg_6735[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => add_ln840_3_reg_6580(1),
      I1 => add_ln840_1_reg_6570(1),
      I2 => add_ln840_2_reg_6575(1),
      I3 => add_ln840_1_reg_6570(0),
      I4 => add_ln840_3_reg_6580(0),
      I5 => add_ln840_2_reg_6575(0),
      O => \add_ln840_13_reg_6735[3]_i_5_n_3\
    );
\add_ln840_13_reg_6735_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => \add_ln840_13_reg_6735[0]_i_1_n_3\,
      Q => add_ln840_13_reg_6735(0),
      R => '0'
    );
\add_ln840_13_reg_6735_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_13_fu_5431_p2(1),
      Q => add_ln840_13_reg_6735(1),
      R => '0'
    );
\add_ln840_13_reg_6735_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_13_fu_5431_p2(2),
      Q => add_ln840_13_reg_6735(2),
      R => '0'
    );
\add_ln840_13_reg_6735_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_13_fu_5431_p2(3),
      Q => add_ln840_13_reg_6735(3),
      R => '0'
    );
\add_ln840_16_reg_6595[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_16_reg_6595[2]_i_14_n_3\
    );
\add_ln840_16_reg_6595[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_16_reg_6595[2]_i_19_n_3\
    );
\add_ln840_16_reg_6595[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_16_reg_6595[2]_i_26_n_3\
    );
\add_ln840_16_reg_6595[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_16_reg_6595[2]_i_9_n_3\
    );
\add_ln840_16_reg_6595_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_16_fu_4686_p2(0),
      Q => add_ln840_16_reg_6595(0),
      R => '0'
    );
\add_ln840_16_reg_6595_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_16_fu_4686_p2(1),
      Q => add_ln840_16_reg_6595(1),
      R => '0'
    );
\add_ln840_16_reg_6595_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_16_fu_4686_p2(2),
      Q => add_ln840_16_reg_6595(2),
      R => '0'
    );
\add_ln840_19_reg_6600[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_19_reg_6600[2]_i_16_n_3\
    );
\add_ln840_19_reg_6600[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_19_reg_6600[2]_i_22_n_3\
    );
\add_ln840_19_reg_6600[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_19_reg_6600[2]_i_27_n_3\
    );
\add_ln840_19_reg_6600[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_19_reg_6600[2]_i_29_n_3\
    );
\add_ln840_19_reg_6600[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_19_reg_6600[2]_i_9_n_3\
    );
\add_ln840_19_reg_6600_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_19_fu_4712_p2(0),
      Q => add_ln840_19_reg_6600(0),
      R => '0'
    );
\add_ln840_19_reg_6600_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_19_fu_4712_p2(1),
      Q => add_ln840_19_reg_6600(1),
      R => '0'
    );
\add_ln840_19_reg_6600_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_19_fu_4712_p2(2),
      Q => add_ln840_19_reg_6600(2),
      R => '0'
    );
\add_ln840_1_reg_6570[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(7),
      I1 => inElem_reg_5804_pp0_iter1_reg(6),
      I2 => inElem_reg_5804_pp0_iter1_reg(4),
      I3 => inElem_reg_5804_pp0_iter1_reg(5),
      I4 => inElem_reg_5804_pp0_iter1_reg(3),
      I5 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_1_reg_6570[1]_i_3_n_3\
    );
\add_ln840_1_reg_6570_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_1_fu_4596_p2(0),
      Q => add_ln840_1_reg_6570(0),
      R => '0'
    );
\add_ln840_1_reg_6570_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_1_fu_4596_p2(1),
      Q => add_ln840_1_reg_6570(1),
      R => '0'
    );
\add_ln840_20_reg_6740[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln840_19_reg_6600(0),
      I1 => add_ln840_16_reg_6595(0),
      O => add_ln840_20_fu_5443_p2(0)
    );
\add_ln840_20_reg_6740[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => add_ln840_19_reg_6600(0),
      I1 => add_ln840_16_reg_6595(0),
      I2 => add_ln840_16_reg_6595(1),
      I3 => add_ln840_19_reg_6600(1),
      O => add_ln840_20_fu_5443_p2(1)
    );
\add_ln840_20_reg_6740[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => add_ln840_16_reg_6595(0),
      I1 => add_ln840_19_reg_6600(0),
      I2 => add_ln840_19_reg_6600(1),
      I3 => add_ln840_16_reg_6595(1),
      I4 => add_ln840_16_reg_6595(2),
      I5 => add_ln840_19_reg_6600(2),
      O => add_ln840_20_fu_5443_p2(2)
    );
\add_ln840_20_reg_6740[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => add_ln840_16_reg_6595(2),
      I1 => add_ln840_19_reg_6600(2),
      I2 => add_ln840_16_reg_6595(0),
      I3 => add_ln840_19_reg_6600(0),
      I4 => add_ln840_19_reg_6600(1),
      I5 => add_ln840_16_reg_6595(1),
      O => add_ln840_20_fu_5443_p2(3)
    );
\add_ln840_20_reg_6740_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_20_fu_5443_p2(0),
      Q => add_ln840_20_reg_6740(0),
      R => '0'
    );
\add_ln840_20_reg_6740_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_20_fu_5443_p2(1),
      Q => add_ln840_20_reg_6740(1),
      R => '0'
    );
\add_ln840_20_reg_6740_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_20_fu_5443_p2(2),
      Q => add_ln840_20_reg_6740(2),
      R => '0'
    );
\add_ln840_20_reg_6740_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_20_fu_5443_p2(3),
      Q => add_ln840_20_reg_6740(3),
      R => '0'
    );
\add_ln840_23_reg_6605[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_23_reg_6605[2]_i_14_n_3\
    );
\add_ln840_23_reg_6605[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_23_reg_6605[2]_i_21_n_3\
    );
\add_ln840_23_reg_6605[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_23_reg_6605[2]_i_28_n_3\
    );
\add_ln840_23_reg_6605[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_23_reg_6605[2]_i_8_n_3\
    );
\add_ln840_23_reg_6605_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_23_fu_4738_p2(0),
      Q => add_ln840_23_reg_6605(0),
      R => '0'
    );
\add_ln840_23_reg_6605_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_23_fu_4738_p2(1),
      Q => add_ln840_23_reg_6605(1),
      R => '0'
    );
\add_ln840_23_reg_6605_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_23_fu_4738_p2(2),
      Q => add_ln840_23_reg_6605(2),
      R => '0'
    );
\add_ln840_26_reg_6610[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_26_reg_6610[2]_i_10_n_3\
    );
\add_ln840_26_reg_6610[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_26_reg_6610[2]_i_15_n_3\
    );
\add_ln840_26_reg_6610[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_26_reg_6610[2]_i_21_n_3\
    );
\add_ln840_26_reg_6610[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_26_reg_6610[2]_i_23_n_3\
    );
\add_ln840_26_reg_6610[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_26_reg_6610[2]_i_26_n_3\
    );
\add_ln840_26_reg_6610[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_26_reg_6610[2]_i_8_n_3\
    );
\add_ln840_26_reg_6610_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_26_fu_4764_p2(0),
      Q => add_ln840_26_reg_6610(0),
      R => '0'
    );
\add_ln840_26_reg_6610_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_26_fu_4764_p2(1),
      Q => add_ln840_26_reg_6610(1),
      R => '0'
    );
\add_ln840_26_reg_6610_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_26_fu_4764_p2(2),
      Q => add_ln840_26_reg_6610(2),
      R => '0'
    );
\add_ln840_27_reg_6745[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => add_ln840_26_reg_6610(0),
      I1 => add_ln840_23_reg_6605(0),
      O => add_ln840_27_fu_5455_p2(0)
    );
\add_ln840_27_reg_6745[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => add_ln840_26_reg_6610(0),
      I1 => add_ln840_23_reg_6605(0),
      I2 => add_ln840_23_reg_6605(1),
      I3 => add_ln840_26_reg_6610(1),
      O => add_ln840_27_fu_5455_p2(1)
    );
\add_ln840_27_reg_6745[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => add_ln840_23_reg_6605(0),
      I1 => add_ln840_26_reg_6610(0),
      I2 => add_ln840_26_reg_6610(1),
      I3 => add_ln840_23_reg_6605(1),
      I4 => add_ln840_23_reg_6605(2),
      I5 => add_ln840_26_reg_6610(2),
      O => add_ln840_27_fu_5455_p2(2)
    );
\add_ln840_27_reg_6745[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => add_ln840_23_reg_6605(2),
      I1 => add_ln840_26_reg_6610(2),
      I2 => add_ln840_23_reg_6605(0),
      I3 => add_ln840_26_reg_6610(0),
      I4 => add_ln840_26_reg_6610(1),
      I5 => add_ln840_23_reg_6605(1),
      O => add_ln840_27_fu_5455_p2(3)
    );
\add_ln840_27_reg_6745_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_27_fu_5455_p2(0),
      Q => add_ln840_27_reg_6745(0),
      R => '0'
    );
\add_ln840_27_reg_6745_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_27_fu_5455_p2(1),
      Q => add_ln840_27_reg_6745(1),
      R => '0'
    );
\add_ln840_27_reg_6745_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_27_fu_5455_p2(2),
      Q => add_ln840_27_reg_6745(2),
      R => '0'
    );
\add_ln840_27_reg_6745_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_27_fu_5455_p2(3),
      Q => add_ln840_27_reg_6745(3),
      R => '0'
    );
\add_ln840_2_reg_6575[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      I2 => inElem_reg_5804_pp0_iter1_reg(6),
      I3 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_2_reg_6575[1]_i_2_n_3\
    );
\add_ln840_2_reg_6575[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_2_reg_6575[1]_i_5_n_3\
    );
\add_ln840_2_reg_6575[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_2_reg_6575[1]_i_6_n_3\
    );
\add_ln840_2_reg_6575_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_2_fu_4602_p2(0),
      Q => add_ln840_2_reg_6575(0),
      R => '0'
    );
\add_ln840_2_reg_6575_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_2_fu_4602_p2(1),
      Q => add_ln840_2_reg_6575(1),
      R => '0'
    );
\add_ln840_32_reg_6615[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_32_reg_6615[2]_i_15_n_3\
    );
\add_ln840_32_reg_6615[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_32_reg_6615[2]_i_20_n_3\
    );
\add_ln840_32_reg_6615[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_32_reg_6615[2]_i_26_n_3\
    );
\add_ln840_32_reg_6615[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_32_reg_6615[2]_i_9_n_3\
    );
\add_ln840_32_reg_6615_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_32_fu_4790_p2(0),
      Q => add_ln840_32_reg_6615(0),
      R => '0'
    );
\add_ln840_32_reg_6615_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_32_fu_4790_p2(1),
      Q => add_ln840_32_reg_6615(1),
      R => '0'
    );
\add_ln840_32_reg_6615_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_32_fu_4790_p2(2),
      Q => add_ln840_32_reg_6615(2),
      R => '0'
    );
\add_ln840_35_reg_6620[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_35_reg_6620[2]_i_10_n_3\
    );
\add_ln840_35_reg_6620[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_35_reg_6620[2]_i_15_n_3\
    );
\add_ln840_35_reg_6620[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_35_reg_6620[2]_i_16_n_3\
    );
\add_ln840_35_reg_6620[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_35_reg_6620[2]_i_21_n_3\
    );
\add_ln840_35_reg_6620[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_35_reg_6620[2]_i_28_n_3\
    );
\add_ln840_35_reg_6620[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_35_reg_6620[2]_i_9_n_3\
    );
\add_ln840_35_reg_6620_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_35_fu_4816_p2(0),
      Q => add_ln840_35_reg_6620(0),
      R => '0'
    );
\add_ln840_35_reg_6620_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_35_fu_4816_p2(1),
      Q => add_ln840_35_reg_6620(1),
      R => '0'
    );
\add_ln840_35_reg_6620_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_35_fu_4816_p2(2),
      Q => add_ln840_35_reg_6620(2),
      R => '0'
    );
\add_ln840_39_reg_6625[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_39_reg_6625[2]_i_15_n_3\
    );
\add_ln840_39_reg_6625[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_39_reg_6625[2]_i_22_n_3\
    );
\add_ln840_39_reg_6625[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_39_reg_6625[2]_i_28_n_3\
    );
\add_ln840_39_reg_6625[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_39_reg_6625[2]_i_9_n_3\
    );
\add_ln840_39_reg_6625_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_39_fu_4842_p2(0),
      Q => add_ln840_39_reg_6625(0),
      R => '0'
    );
\add_ln840_39_reg_6625_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_39_fu_4842_p2(1),
      Q => add_ln840_39_reg_6625(1),
      R => '0'
    );
\add_ln840_39_reg_6625_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_39_fu_4842_p2(2),
      Q => add_ln840_39_reg_6625(2),
      R => '0'
    );
\add_ln840_3_reg_6580[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_3_reg_6580[1]_i_11_n_3\
    );
\add_ln840_3_reg_6580[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_3_reg_6580[1]_i_12_n_3\
    );
\add_ln840_3_reg_6580[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_3_reg_6580[1]_i_6_n_3\
    );
\add_ln840_3_reg_6580[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_3_reg_6580[1]_i_7_n_3\
    );
\add_ln840_3_reg_6580_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_3_fu_4608_p2(0),
      Q => add_ln840_3_reg_6580(0),
      R => '0'
    );
\add_ln840_3_reg_6580_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_3_fu_4608_p2(1),
      Q => add_ln840_3_reg_6580(1),
      R => '0'
    );
\add_ln840_42_reg_6630[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_42_reg_6630[2]_i_10_n_3\
    );
\add_ln840_42_reg_6630[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_42_reg_6630[2]_i_21_n_3\
    );
\add_ln840_42_reg_6630[2]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_42_reg_6630[2]_i_28_n_3\
    );
\add_ln840_42_reg_6630_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_42_fu_4868_p2(0),
      Q => add_ln840_42_reg_6630(0),
      R => '0'
    );
\add_ln840_42_reg_6630_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_42_fu_4868_p2(1),
      Q => add_ln840_42_reg_6630(1),
      R => '0'
    );
\add_ln840_42_reg_6630_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_42_fu_4868_p2(2),
      Q => add_ln840_42_reg_6630(2),
      R => '0'
    );
\add_ln840_44_reg_6750[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_35_reg_6620(0),
      I1 => add_ln840_39_reg_6625(0),
      I2 => add_ln840_32_reg_6615(0),
      I3 => add_ln840_42_reg_6630(0),
      O => add_ln840_44_fu_5493_p2(0)
    );
\add_ln840_44_reg_6750[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81177EE8"
    )
        port map (
      I0 => add_ln840_42_reg_6630(0),
      I1 => add_ln840_35_reg_6620(0),
      I2 => add_ln840_32_reg_6615(0),
      I3 => add_ln840_39_reg_6625(0),
      I4 => \add_ln840_44_reg_6750[1]_i_2_n_3\,
      O => add_ln840_44_fu_5493_p2(1)
    );
\add_ln840_44_reg_6750[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_35_reg_6620(1),
      I1 => add_ln840_39_reg_6625(1),
      I2 => add_ln840_32_reg_6615(1),
      I3 => add_ln840_42_reg_6630(1),
      O => \add_ln840_44_reg_6750[1]_i_2_n_3\
    );
\add_ln840_44_reg_6750[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699666666666"
    )
        port map (
      I0 => \add_ln840_44_reg_6750[2]_i_2_n_3\,
      I1 => \add_ln840_44_reg_6750[2]_i_3_n_3\,
      I2 => add_ln840_35_reg_6620(1),
      I3 => add_ln840_39_reg_6625(1),
      I4 => add_ln840_32_reg_6615(1),
      I5 => add_ln840_42_reg_6630(1),
      O => add_ln840_44_fu_5493_p2(2)
    );
\add_ln840_44_reg_6750[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEE88000"
    )
        port map (
      I0 => add_ln840_42_reg_6630(0),
      I1 => add_ln840_35_reg_6620(0),
      I2 => add_ln840_39_reg_6625(0),
      I3 => add_ln840_32_reg_6615(0),
      I4 => \add_ln840_44_reg_6750[1]_i_2_n_3\,
      O => \add_ln840_44_reg_6750[2]_i_2_n_3\
    );
\add_ln840_44_reg_6750[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_42_reg_6630(2),
      I1 => add_ln840_32_reg_6615(2),
      I2 => add_ln840_39_reg_6625(2),
      I3 => add_ln840_35_reg_6620(2),
      I4 => \add_ln840_44_reg_6750[4]_i_3_n_3\,
      O => \add_ln840_44_reg_6750[2]_i_3_n_3\
    );
\add_ln840_44_reg_6750[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99595569556566A"
    )
        port map (
      I0 => \add_ln840_44_reg_6750[4]_i_2_n_3\,
      I1 => add_ln840_35_reg_6620(2),
      I2 => add_ln840_39_reg_6625(2),
      I3 => add_ln840_32_reg_6615(2),
      I4 => add_ln840_42_reg_6630(2),
      I5 => \add_ln840_44_reg_6750[4]_i_3_n_3\,
      O => add_ln840_44_fu_5493_p2(3)
    );
\add_ln840_44_reg_6750[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAA8EAA8A880"
    )
        port map (
      I0 => \add_ln840_44_reg_6750[4]_i_2_n_3\,
      I1 => add_ln840_35_reg_6620(2),
      I2 => add_ln840_32_reg_6615(2),
      I3 => add_ln840_39_reg_6625(2),
      I4 => \add_ln840_44_reg_6750[4]_i_3_n_3\,
      I5 => add_ln840_42_reg_6630(2),
      O => add_ln840_44_fu_5493_p2(4)
    );
\add_ln840_44_reg_6750[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEAAAA82280000"
    )
        port map (
      I0 => \add_ln840_44_reg_6750[2]_i_2_n_3\,
      I1 => add_ln840_35_reg_6620(1),
      I2 => add_ln840_39_reg_6625(1),
      I3 => add_ln840_32_reg_6615(1),
      I4 => add_ln840_42_reg_6630(1),
      I5 => \add_ln840_44_reg_6750[2]_i_3_n_3\,
      O => \add_ln840_44_reg_6750[4]_i_2_n_3\
    );
\add_ln840_44_reg_6750[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_35_reg_6620(1),
      I1 => add_ln840_32_reg_6615(1),
      I2 => add_ln840_39_reg_6625(1),
      O => \add_ln840_44_reg_6750[4]_i_3_n_3\
    );
\add_ln840_44_reg_6750_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_44_fu_5493_p2(0),
      Q => add_ln840_44_reg_6750(0),
      R => '0'
    );
\add_ln840_44_reg_6750_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_44_fu_5493_p2(1),
      Q => add_ln840_44_reg_6750(1),
      R => '0'
    );
\add_ln840_44_reg_6750_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_44_fu_5493_p2(2),
      Q => add_ln840_44_reg_6750(2),
      R => '0'
    );
\add_ln840_44_reg_6750_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_44_fu_5493_p2(3),
      Q => add_ln840_44_reg_6750(3),
      R => '0'
    );
\add_ln840_44_reg_6750_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_44_fu_5493_p2(4),
      Q => add_ln840_44_reg_6750(4),
      R => '0'
    );
\add_ln840_47_reg_6635[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_47_reg_6635[2]_i_27_n_3\
    );
\add_ln840_47_reg_6635[2]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_47_reg_6635[2]_i_34_n_3\
    );
\add_ln840_47_reg_6635_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_47_fu_4894_p2(0),
      Q => add_ln840_47_reg_6635(0),
      R => '0'
    );
\add_ln840_47_reg_6635_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_47_fu_4894_p2(1),
      Q => add_ln840_47_reg_6635(1),
      R => '0'
    );
\add_ln840_47_reg_6635_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_47_fu_4894_p2(2),
      Q => add_ln840_47_reg_6635(2),
      R => '0'
    );
\add_ln840_50_reg_6640_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_50_fu_4920_p2(0),
      Q => add_ln840_50_reg_6640(0),
      R => '0'
    );
\add_ln840_50_reg_6640_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_50_fu_4920_p2(1),
      Q => add_ln840_50_reg_6640(1),
      R => '0'
    );
\add_ln840_50_reg_6640_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_50_fu_4920_p2(2),
      Q => add_ln840_50_reg_6640(2),
      R => '0'
    );
\add_ln840_54_reg_6645[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_54_reg_6645[2]_i_11_n_3\
    );
\add_ln840_54_reg_6645[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_54_reg_6645[2]_i_26_n_3\
    );
\add_ln840_54_reg_6645_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_54_fu_4946_p2(0),
      Q => add_ln840_54_reg_6645(0),
      R => '0'
    );
\add_ln840_54_reg_6645_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_54_fu_4946_p2(1),
      Q => add_ln840_54_reg_6645(1),
      R => '0'
    );
\add_ln840_54_reg_6645_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_54_fu_4946_p2(2),
      Q => add_ln840_54_reg_6645(2),
      R => '0'
    );
\add_ln840_57_reg_6650_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_57_fu_4972_p2(0),
      Q => add_ln840_57_reg_6650(0),
      R => '0'
    );
\add_ln840_57_reg_6650_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_57_fu_4972_p2(1),
      Q => add_ln840_57_reg_6650(1),
      R => '0'
    );
\add_ln840_57_reg_6650_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_57_fu_4972_p2(2),
      Q => add_ln840_57_reg_6650(2),
      R => '0'
    );
\add_ln840_59_reg_6755[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_50_reg_6640(0),
      I1 => add_ln840_54_reg_6645(0),
      I2 => add_ln840_47_reg_6635(0),
      I3 => add_ln840_57_reg_6650(0),
      O => add_ln840_59_fu_5531_p2(0)
    );
\add_ln840_59_reg_6755[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81177EE8"
    )
        port map (
      I0 => add_ln840_57_reg_6650(0),
      I1 => add_ln840_50_reg_6640(0),
      I2 => add_ln840_47_reg_6635(0),
      I3 => add_ln840_54_reg_6645(0),
      I4 => \add_ln840_59_reg_6755[1]_i_2_n_3\,
      O => add_ln840_59_fu_5531_p2(1)
    );
\add_ln840_59_reg_6755[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln840_50_reg_6640(1),
      I1 => add_ln840_54_reg_6645(1),
      I2 => add_ln840_47_reg_6635(1),
      I3 => add_ln840_57_reg_6650(1),
      O => \add_ln840_59_reg_6755[1]_i_2_n_3\
    );
\add_ln840_59_reg_6755[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699666666666"
    )
        port map (
      I0 => \add_ln840_59_reg_6755[2]_i_2_n_3\,
      I1 => \add_ln840_59_reg_6755[2]_i_3_n_3\,
      I2 => add_ln840_50_reg_6640(1),
      I3 => add_ln840_54_reg_6645(1),
      I4 => add_ln840_47_reg_6635(1),
      I5 => add_ln840_57_reg_6650(1),
      O => add_ln840_59_fu_5531_p2(2)
    );
\add_ln840_59_reg_6755[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEE88000"
    )
        port map (
      I0 => add_ln840_57_reg_6650(0),
      I1 => add_ln840_50_reg_6640(0),
      I2 => add_ln840_54_reg_6645(0),
      I3 => add_ln840_47_reg_6635(0),
      I4 => \add_ln840_59_reg_6755[1]_i_2_n_3\,
      O => \add_ln840_59_reg_6755[2]_i_2_n_3\
    );
\add_ln840_59_reg_6755[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_57_reg_6650(2),
      I1 => add_ln840_47_reg_6635(2),
      I2 => add_ln840_54_reg_6645(2),
      I3 => add_ln840_50_reg_6640(2),
      I4 => \add_ln840_59_reg_6755[4]_i_3_n_3\,
      O => \add_ln840_59_reg_6755[2]_i_3_n_3\
    );
\add_ln840_59_reg_6755[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99595569556566A"
    )
        port map (
      I0 => \add_ln840_59_reg_6755[4]_i_2_n_3\,
      I1 => add_ln840_50_reg_6640(2),
      I2 => add_ln840_54_reg_6645(2),
      I3 => add_ln840_47_reg_6635(2),
      I4 => add_ln840_57_reg_6650(2),
      I5 => \add_ln840_59_reg_6755[4]_i_3_n_3\,
      O => add_ln840_59_fu_5531_p2(3)
    );
\add_ln840_59_reg_6755[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAA8EAA8A880"
    )
        port map (
      I0 => \add_ln840_59_reg_6755[4]_i_2_n_3\,
      I1 => add_ln840_50_reg_6640(2),
      I2 => add_ln840_47_reg_6635(2),
      I3 => add_ln840_54_reg_6645(2),
      I4 => \add_ln840_59_reg_6755[4]_i_3_n_3\,
      I5 => add_ln840_57_reg_6650(2),
      O => add_ln840_59_fu_5531_p2(4)
    );
\add_ln840_59_reg_6755[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBEAAAA82280000"
    )
        port map (
      I0 => \add_ln840_59_reg_6755[2]_i_2_n_3\,
      I1 => add_ln840_50_reg_6640(1),
      I2 => add_ln840_54_reg_6645(1),
      I3 => add_ln840_47_reg_6635(1),
      I4 => add_ln840_57_reg_6650(1),
      I5 => \add_ln840_59_reg_6755[2]_i_3_n_3\,
      O => \add_ln840_59_reg_6755[4]_i_2_n_3\
    );
\add_ln840_59_reg_6755[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_50_reg_6640(1),
      I1 => add_ln840_47_reg_6635(1),
      I2 => add_ln840_54_reg_6645(1),
      O => \add_ln840_59_reg_6755[4]_i_3_n_3\
    );
\add_ln840_59_reg_6755_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_59_fu_5531_p2(0),
      Q => add_ln840_59_reg_6755(0),
      R => '0'
    );
\add_ln840_59_reg_6755_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_59_fu_5531_p2(1),
      Q => add_ln840_59_reg_6755(1),
      R => '0'
    );
\add_ln840_59_reg_6755_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_59_fu_5531_p2(2),
      Q => add_ln840_59_reg_6755(2),
      R => '0'
    );
\add_ln840_59_reg_6755_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_59_fu_5531_p2(3),
      Q => add_ln840_59_reg_6755(3),
      R => '0'
    );
\add_ln840_59_reg_6755_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_59_fu_5531_p2(4),
      Q => add_ln840_59_reg_6755(4),
      R => '0'
    );
\add_ln840_61_reg_6770[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_59_reg_6755(0),
      I1 => add_ln840_44_reg_6750(0),
      I2 => add_ln840_27_reg_6745(0),
      I3 => add_ln840_20_reg_6740(0),
      I4 => add_ln840_13_reg_6735(0),
      O => add_ln840_61_fu_5754_p2(0)
    );
\add_ln840_61_reg_6770[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln840_59_reg_6755(0),
      I1 => zext_ln840_26_fu_5738_p1(0),
      I2 => add_ln840_44_reg_6750(0),
      I3 => zext_ln840_26_fu_5738_p1(1),
      I4 => add_ln840_44_reg_6750(1),
      I5 => add_ln840_59_reg_6755(1),
      O => add_ln840_61_fu_5754_p2(1)
    );
\add_ln840_61_reg_6770[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_27_reg_6745(0),
      I1 => add_ln840_20_reg_6740(0),
      I2 => add_ln840_13_reg_6735(0),
      O => zext_ln840_26_fu_5738_p1(0)
    );
\add_ln840_61_reg_6770[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9336366C"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[2]_i_2_n_3\,
      I1 => \add_ln840_61_reg_6770[2]_i_3_n_3\,
      I2 => add_ln840_44_reg_6750(1),
      I3 => zext_ln840_26_fu_5738_p1(1),
      I4 => add_ln840_59_reg_6755(1),
      O => add_ln840_61_fu_5754_p2(2)
    );
\add_ln840_61_reg_6770[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => add_ln840_44_reg_6750(0),
      I1 => add_ln840_13_reg_6735(0),
      I2 => add_ln840_20_reg_6740(0),
      I3 => add_ln840_27_reg_6745(0),
      I4 => add_ln840_59_reg_6755(0),
      O => \add_ln840_61_reg_6770[2]_i_2_n_3\
    );
\add_ln840_61_reg_6770[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_59_reg_6755(2),
      I1 => add_ln840_44_reg_6750(2),
      I2 => zext_ln840_26_fu_5738_p1(2),
      O => \add_ln840_61_reg_6770[2]_i_3_n_3\
    );
\add_ln840_61_reg_6770[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln840_27_reg_6745(0),
      I1 => add_ln840_13_reg_6735(0),
      I2 => add_ln840_20_reg_6740(0),
      I3 => add_ln840_13_reg_6735(1),
      I4 => add_ln840_20_reg_6740(1),
      I5 => add_ln840_27_reg_6745(1),
      O => zext_ln840_26_fu_5738_p1(1)
    );
\add_ln840_61_reg_6770[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[3]_i_2_n_3\,
      I1 => add_ln840_59_reg_6755(3),
      I2 => add_ln840_44_reg_6750(3),
      I3 => zext_ln840_26_fu_5738_p1(3),
      I4 => \add_ln840_61_reg_6770[3]_i_4_n_3\,
      O => add_ln840_61_fu_5754_p2(3)
    );
\add_ln840_61_reg_6770[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAA8A880"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[2]_i_3_n_3\,
      I1 => add_ln840_59_reg_6755(1),
      I2 => zext_ln840_26_fu_5738_p1(1),
      I3 => add_ln840_44_reg_6750(1),
      I4 => \add_ln840_61_reg_6770[2]_i_2_n_3\,
      O => \add_ln840_61_reg_6770[3]_i_2_n_3\
    );
\add_ln840_61_reg_6770[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[5]_i_10_n_3\,
      I1 => \add_ln840_61_reg_6770[3]_i_5_n_3\,
      I2 => add_ln840_20_reg_6740(2),
      I3 => add_ln840_13_reg_6735(2),
      I4 => add_ln840_27_reg_6745(2),
      O => zext_ln840_26_fu_5738_p1(3)
    );
\add_ln840_61_reg_6770[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_44_reg_6750(2),
      I1 => zext_ln840_26_fu_5738_p1(2),
      I2 => add_ln840_59_reg_6755(2),
      O => \add_ln840_61_reg_6770[3]_i_4_n_3\
    );
\add_ln840_61_reg_6770[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_27_reg_6745(3),
      I1 => add_ln840_20_reg_6740(3),
      I2 => add_ln840_13_reg_6735(3),
      O => \add_ln840_61_reg_6770[3]_i_5_n_3\
    );
\add_ln840_61_reg_6770[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_59_reg_6755(4),
      I1 => add_ln840_44_reg_6750(4),
      I2 => zext_ln840_26_fu_5738_p1(4),
      I3 => \add_ln840_61_reg_6770[5]_i_3_n_3\,
      I4 => \add_ln840_61_reg_6770[5]_i_4_n_3\,
      O => add_ln840_61_fu_5754_p2(4)
    );
\add_ln840_61_reg_6770[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444040404"
    )
        port map (
      I0 => icmp_ln295_reg_5800_pp0_iter3_reg,
      I1 => ap_CS_iter4_fsm_state5,
      I2 => \^ap_cs_iter5_fsm_state6\,
      I3 => Q(2),
      I4 => out_V_TREADY_int_regslice,
      I5 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      O => add_ln840_61_reg_67700
    );
\add_ln840_61_reg_6770[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => add_ln840_13_reg_6735(2),
      I1 => add_ln840_20_reg_6740(2),
      I2 => add_ln840_27_reg_6745(2),
      I3 => \add_ln840_61_reg_6770[5]_i_14_n_3\,
      I4 => \add_ln840_61_reg_6770[5]_i_12_n_3\,
      O => \add_ln840_61_reg_6770[5]_i_10_n_3\
    );
\add_ln840_61_reg_6770[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_20_reg_6740(2),
      I1 => add_ln840_13_reg_6735(2),
      I2 => add_ln840_27_reg_6745(2),
      O => \add_ln840_61_reg_6770[5]_i_11_n_3\
    );
\add_ln840_61_reg_6770[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696960096000000"
    )
        port map (
      I0 => add_ln840_13_reg_6735(1),
      I1 => add_ln840_20_reg_6740(1),
      I2 => add_ln840_27_reg_6745(1),
      I3 => add_ln840_27_reg_6745(0),
      I4 => add_ln840_13_reg_6735(0),
      I5 => add_ln840_20_reg_6740(0),
      O => \add_ln840_61_reg_6770[5]_i_12_n_3\
    );
\add_ln840_61_reg_6770[5]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_27_reg_6745(2),
      I1 => add_ln840_20_reg_6740(2),
      I2 => add_ln840_13_reg_6735(2),
      O => \add_ln840_61_reg_6770[5]_i_13_n_3\
    );
\add_ln840_61_reg_6770[5]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_20_reg_6740(1),
      I1 => add_ln840_13_reg_6735(1),
      I2 => add_ln840_27_reg_6745(1),
      O => \add_ln840_61_reg_6770[5]_i_14_n_3\
    );
\add_ln840_61_reg_6770[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[5]_i_3_n_3\,
      I1 => \add_ln840_61_reg_6770[5]_i_4_n_3\,
      I2 => add_ln840_59_reg_6755(4),
      I3 => zext_ln840_26_fu_5738_p1(4),
      I4 => add_ln840_44_reg_6750(4),
      O => add_ln840_61_fu_5754_p2(5)
    );
\add_ln840_61_reg_6770[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAA8EAA8A880"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[5]_i_6_n_3\,
      I1 => add_ln840_59_reg_6755(2),
      I2 => zext_ln840_26_fu_5738_p1(2),
      I3 => add_ln840_44_reg_6750(2),
      I4 => \add_ln840_61_reg_6770[5]_i_8_n_3\,
      I5 => \add_ln840_61_reg_6770[5]_i_9_n_3\,
      O => \add_ln840_61_reg_6770[5]_i_3_n_3\
    );
\add_ln840_61_reg_6770[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_44_reg_6750(3),
      I1 => zext_ln840_26_fu_5738_p1(3),
      I2 => add_ln840_59_reg_6755(3),
      O => \add_ln840_61_reg_6770[5]_i_4_n_3\
    );
\add_ln840_61_reg_6770[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[5]_i_10_n_3\,
      I1 => \add_ln840_61_reg_6770[5]_i_11_n_3\,
      I2 => add_ln840_27_reg_6745(3),
      I3 => add_ln840_13_reg_6735(3),
      I4 => add_ln840_20_reg_6740(3),
      O => zext_ln840_26_fu_5738_p1(4)
    );
\add_ln840_61_reg_6770[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => add_ln840_59_reg_6755(3),
      I1 => add_ln840_44_reg_6750(3),
      I2 => \add_ln840_61_reg_6770[5]_i_10_n_3\,
      I3 => \add_ln840_61_reg_6770[3]_i_5_n_3\,
      I4 => \add_ln840_61_reg_6770[5]_i_11_n_3\,
      O => \add_ln840_61_reg_6770[5]_i_6_n_3\
    );
\add_ln840_61_reg_6770[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_61_reg_6770[5]_i_12_n_3\,
      I1 => \add_ln840_61_reg_6770[5]_i_13_n_3\,
      I2 => add_ln840_20_reg_6740(1),
      I3 => add_ln840_13_reg_6735(1),
      I4 => add_ln840_27_reg_6745(1),
      O => zext_ln840_26_fu_5738_p1(2)
    );
\add_ln840_61_reg_6770[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696960096000000"
    )
        port map (
      I0 => zext_ln840_26_fu_5738_p1(1),
      I1 => add_ln840_44_reg_6750(1),
      I2 => add_ln840_59_reg_6755(1),
      I3 => add_ln840_59_reg_6755(0),
      I4 => zext_ln840_26_fu_5738_p1(0),
      I5 => add_ln840_44_reg_6750(0),
      O => \add_ln840_61_reg_6770[5]_i_8_n_3\
    );
\add_ln840_61_reg_6770[5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_44_reg_6750(1),
      I1 => zext_ln840_26_fu_5738_p1(1),
      I2 => add_ln840_59_reg_6755(1),
      O => \add_ln840_61_reg_6770[5]_i_9_n_3\
    );
\add_ln840_61_reg_6770_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(0),
      Q => add_ln840_61_reg_6770(0),
      R => '0'
    );
\add_ln840_61_reg_6770_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(1),
      Q => add_ln840_61_reg_6770(1),
      R => '0'
    );
\add_ln840_61_reg_6770_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(2),
      Q => add_ln840_61_reg_6770(2),
      R => '0'
    );
\add_ln840_61_reg_6770_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(3),
      Q => add_ln840_61_reg_6770(3),
      R => '0'
    );
\add_ln840_61_reg_6770_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(4),
      Q => add_ln840_61_reg_6770(4),
      R => '0'
    );
\add_ln840_61_reg_6770_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_61_reg_67700,
      D => add_ln840_61_fu_5754_p2(5),
      Q => add_ln840_61_reg_6770(5),
      R => '0'
    );
\add_ln840_64_reg_6655[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444040404"
    )
        port map (
      I0 => icmp_ln295_reg_5800_pp0_iter1_reg,
      I1 => ap_CS_iter2_fsm_state3,
      I2 => \^ap_cs_iter5_fsm_state6\,
      I3 => Q(2),
      I4 => out_V_TREADY_int_regslice,
      I5 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      O => add_ln840_102_reg_67050
    );
\add_ln840_64_reg_6655[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_64_reg_6655[2]_i_12_n_3\
    );
\add_ln840_64_reg_6655[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_64_reg_6655[2]_i_19_n_3\
    );
\add_ln840_64_reg_6655_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_64_fu_4998_p2(0),
      Q => add_ln840_64_reg_6655(0),
      R => '0'
    );
\add_ln840_64_reg_6655_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_64_fu_4998_p2(1),
      Q => add_ln840_64_reg_6655(1),
      R => '0'
    );
\add_ln840_64_reg_6655_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_64_fu_4998_p2(2),
      Q => add_ln840_64_reg_6655(2),
      R => '0'
    );
\add_ln840_67_reg_6660_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_67_fu_5024_p2(0),
      Q => add_ln840_67_reg_6660(0),
      R => '0'
    );
\add_ln840_67_reg_6660_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_67_fu_5024_p2(1),
      Q => add_ln840_67_reg_6660(1),
      R => '0'
    );
\add_ln840_67_reg_6660_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_67_fu_5024_p2(2),
      Q => add_ln840_67_reg_6660(2),
      R => '0'
    );
\add_ln840_71_reg_6665_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_71_fu_5050_p2(0),
      Q => add_ln840_71_reg_6665(0),
      R => '0'
    );
\add_ln840_71_reg_6665_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_71_fu_5050_p2(1),
      Q => add_ln840_71_reg_6665(1),
      R => '0'
    );
\add_ln840_71_reg_6665_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_71_fu_5050_p2(2),
      Q => add_ln840_71_reg_6665(2),
      R => '0'
    );
\add_ln840_74_reg_6670[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_74_reg_6670[2]_i_10_n_3\
    );
\add_ln840_74_reg_6670[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_74_reg_6670[2]_i_17_n_3\
    );
\add_ln840_74_reg_6670[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_74_reg_6670[2]_i_23_n_3\
    );
\add_ln840_74_reg_6670[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_74_reg_6670[2]_i_24_n_3\
    );
\add_ln840_74_reg_6670[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_74_reg_6670[2]_i_29_n_3\
    );
\add_ln840_74_reg_6670[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_74_reg_6670[2]_i_30_n_3\
    );
\add_ln840_74_reg_6670_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_74_fu_5076_p2(0),
      Q => add_ln840_74_reg_6670(0),
      R => '0'
    );
\add_ln840_74_reg_6670_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_74_fu_5076_p2(1),
      Q => add_ln840_74_reg_6670(1),
      R => '0'
    );
\add_ln840_74_reg_6670_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_74_fu_5076_p2(2),
      Q => add_ln840_74_reg_6670(2),
      R => '0'
    );
\add_ln840_79_reg_6675[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_79_reg_6675[2]_i_15_n_3\
    );
\add_ln840_79_reg_6675[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_79_reg_6675[2]_i_22_n_3\
    );
\add_ln840_79_reg_6675[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_79_reg_6675[2]_i_29_n_3\
    );
\add_ln840_79_reg_6675[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_79_reg_6675[2]_i_9_n_3\
    );
\add_ln840_79_reg_6675_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_79_fu_5102_p2(0),
      Q => add_ln840_79_reg_6675(0),
      R => '0'
    );
\add_ln840_79_reg_6675_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_79_fu_5102_p2(1),
      Q => add_ln840_79_reg_6675(1),
      R => '0'
    );
\add_ln840_79_reg_6675_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_79_fu_5102_p2(2),
      Q => add_ln840_79_reg_6675(2),
      R => '0'
    );
\add_ln840_82_reg_6680[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_82_reg_6680[2]_i_11_n_3\
    );
\add_ln840_82_reg_6680[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_82_reg_6680[2]_i_24_n_3\
    );
\add_ln840_82_reg_6680[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_82_reg_6680[2]_i_30_n_3\
    );
\add_ln840_82_reg_6680_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_82_fu_5128_p2(0),
      Q => add_ln840_82_reg_6680(0),
      R => '0'
    );
\add_ln840_82_reg_6680_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_82_fu_5128_p2(1),
      Q => add_ln840_82_reg_6680(1),
      R => '0'
    );
\add_ln840_82_reg_6680_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_82_fu_5128_p2(2),
      Q => add_ln840_82_reg_6680(2),
      R => '0'
    );
\add_ln840_86_reg_6685_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_86_fu_5154_p2(0),
      Q => add_ln840_86_reg_6685(0),
      R => '0'
    );
\add_ln840_86_reg_6685_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_86_fu_5154_p2(1),
      Q => add_ln840_86_reg_6685(1),
      R => '0'
    );
\add_ln840_86_reg_6685_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_86_fu_5154_p2(2),
      Q => add_ln840_86_reg_6685(2),
      R => '0'
    );
\add_ln840_89_reg_6690[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_89_reg_6690[2]_i_15_n_3\
    );
\add_ln840_89_reg_6690_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_89_fu_5180_p2(0),
      Q => add_ln840_89_reg_6690(0),
      R => '0'
    );
\add_ln840_89_reg_6690_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_89_fu_5180_p2(1),
      Q => add_ln840_89_reg_6690(1),
      R => '0'
    );
\add_ln840_89_reg_6690_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_89_fu_5180_p2(2),
      Q => add_ln840_89_reg_6690(2),
      R => '0'
    );
\add_ln840_8_reg_6585[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_8_reg_6585[2]_i_10_n_3\
    );
\add_ln840_8_reg_6585[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_8_reg_6585[2]_i_14_n_3\
    );
\add_ln840_8_reg_6585[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(3),
      I1 => inElem_reg_5804_pp0_iter1_reg(2),
      O => \add_ln840_8_reg_6585[2]_i_16_n_3\
    );
\add_ln840_8_reg_6585[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_8_reg_6585[2]_i_20_n_3\
    );
\add_ln840_8_reg_6585[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_8_reg_6585[2]_i_21_n_3\
    );
\add_ln840_8_reg_6585[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_8_reg_6585[2]_i_26_n_3\
    );
\add_ln840_8_reg_6585[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(5),
      I1 => inElem_reg_5804_pp0_iter1_reg(4),
      O => \add_ln840_8_reg_6585[2]_i_27_n_3\
    );
\add_ln840_8_reg_6585[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inElem_reg_5804_pp0_iter1_reg(6),
      I1 => inElem_reg_5804_pp0_iter1_reg(7),
      O => \add_ln840_8_reg_6585[2]_i_8_n_3\
    );
\add_ln840_8_reg_6585_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_8_fu_4634_p2(0),
      Q => add_ln840_8_reg_6585(0),
      R => '0'
    );
\add_ln840_8_reg_6585_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_8_fu_4634_p2(1),
      Q => add_ln840_8_reg_6585(1),
      R => '0'
    );
\add_ln840_8_reg_6585_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_8_fu_4634_p2(2),
      Q => add_ln840_8_reg_6585(2),
      R => '0'
    );
\add_ln840_92_reg_6760[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[1]_i_2_n_3\,
      I1 => add_ln840_89_reg_6690(0),
      I2 => add_ln840_74_reg_6670(0),
      I3 => add_ln840_67_reg_6660(0),
      I4 => add_ln840_71_reg_6665(0),
      I5 => add_ln840_64_reg_6655(0),
      O => add_ln840_92_fu_5621_p2(0)
    );
\add_ln840_92_reg_6760[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[2]_i_3_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_4_n_3\,
      I2 => add_ln840_89_reg_6690(0),
      I3 => \add_ln840_92_reg_6760[1]_i_2_n_3\,
      I4 => add_ln840_74_reg_6670(0),
      O => \add_ln840_92_reg_6760[1]_i_1_n_3\
    );
\add_ln840_92_reg_6760[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => add_ln840_79_reg_6675(0),
      I1 => add_ln840_82_reg_6680(0),
      I2 => add_ln840_86_reg_6685(0),
      O => \add_ln840_92_reg_6760[1]_i_2_n_3\
    );
\add_ln840_92_reg_6760[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[2]_i_2_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_3_n_3\,
      I2 => \add_ln840_92_reg_6760[2]_i_4_n_3\,
      I3 => \add_ln840_92_reg_6760[2]_i_5_n_3\,
      I4 => \add_ln840_92_reg_6760[2]_i_6_n_3\,
      O => add_ln840_92_fu_5621_p2(2)
    );
\add_ln840_92_reg_6760[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14417DD7"
    )
        port map (
      I0 => add_ln840_89_reg_6690(0),
      I1 => add_ln840_86_reg_6685(0),
      I2 => add_ln840_82_reg_6680(0),
      I3 => add_ln840_79_reg_6675(0),
      I4 => add_ln840_74_reg_6670(0),
      O => \add_ln840_92_reg_6760[2]_i_2_n_3\
    );
\add_ln840_92_reg_6760[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900006900696900"
    )
        port map (
      I0 => add_ln840_74_reg_6670(0),
      I1 => add_ln840_89_reg_6690(0),
      I2 => \add_ln840_92_reg_6760[1]_i_2_n_3\,
      I3 => add_ln840_64_reg_6655(0),
      I4 => add_ln840_71_reg_6665(0),
      I5 => add_ln840_67_reg_6660(0),
      O => \add_ln840_92_reg_6760[2]_i_3_n_3\
    );
\add_ln840_92_reg_6760[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[2]_i_7_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_8_n_3\,
      I2 => add_ln840_64_reg_6655(0),
      I3 => add_ln840_71_reg_6665(0),
      I4 => add_ln840_67_reg_6660(0),
      O => \add_ln840_92_reg_6760[2]_i_4_n_3\
    );
\add_ln840_92_reg_6760[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[3]_i_4_n_3\,
      I1 => \add_ln840_92_reg_6760[3]_i_2_n_3\,
      I2 => \add_ln840_92_reg_6760[3]_i_3_n_3\,
      O => \add_ln840_92_reg_6760[2]_i_5_n_3\
    );
\add_ln840_92_reg_6760[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11171777"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[2]_i_7_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_8_n_3\,
      I2 => add_ln840_64_reg_6655(0),
      I3 => add_ln840_71_reg_6665(0),
      I4 => add_ln840_67_reg_6660(0),
      O => \add_ln840_92_reg_6760[2]_i_6_n_3\
    );
\add_ln840_92_reg_6760[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => add_ln840_89_reg_6690(1),
      I1 => add_ln840_74_reg_6670(1),
      I2 => \add_ln840_92_reg_6760[3]_i_8_n_3\,
      I3 => add_ln840_79_reg_6675(1),
      I4 => add_ln840_82_reg_6680(1),
      I5 => add_ln840_86_reg_6685(1),
      O => \add_ln840_92_reg_6760[2]_i_7_n_3\
    );
\add_ln840_92_reg_6760[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_86_reg_6685(0),
      I1 => add_ln840_82_reg_6680(0),
      I2 => add_ln840_79_reg_6675(0),
      O => \add_ln840_92_reg_6760[2]_i_8_n_3\
    );
\add_ln840_92_reg_6760[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[3]_i_2_n_3\,
      I1 => \add_ln840_92_reg_6760[3]_i_3_n_3\,
      I2 => \add_ln840_92_reg_6760[3]_i_4_n_3\,
      I3 => \add_ln840_92_reg_6760[3]_i_5_n_3\,
      I4 => \add_ln840_92_reg_6760[3]_i_6_n_3\,
      O => add_ln840_92_fu_5621_p2(3)
    );
\add_ln840_92_reg_6760[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => add_ln840_67_reg_6660(1),
      I1 => add_ln840_71_reg_6665(1),
      I2 => add_ln840_64_reg_6655(1),
      I3 => add_ln840_82_reg_6680(1),
      I4 => add_ln840_86_reg_6685(1),
      I5 => add_ln840_79_reg_6675(1),
      O => \add_ln840_92_reg_6760[3]_i_2_n_3\
    );
\add_ln840_92_reg_6760[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => add_ln840_74_reg_6670(2),
      I1 => add_ln840_89_reg_6690(2),
      I2 => add_ln840_74_reg_6670(1),
      I3 => add_ln840_89_reg_6690(1),
      I4 => \add_ln840_92_reg_6760[3]_i_7_n_3\,
      O => \add_ln840_92_reg_6760[3]_i_3_n_3\
    );
\add_ln840_92_reg_6760[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"099F9F099F09099F"
    )
        port map (
      I0 => add_ln840_74_reg_6670(1),
      I1 => add_ln840_89_reg_6690(1),
      I2 => \add_ln840_92_reg_6760[3]_i_8_n_3\,
      I3 => add_ln840_79_reg_6675(1),
      I4 => add_ln840_82_reg_6680(1),
      I5 => add_ln840_86_reg_6685(1),
      O => \add_ln840_92_reg_6760[3]_i_4_n_3\
    );
\add_ln840_92_reg_6760[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008E8EFF"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[2]_i_4_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_3_n_3\,
      I2 => \add_ln840_92_reg_6760[2]_i_2_n_3\,
      I3 => \add_ln840_92_reg_6760[2]_i_6_n_3\,
      I4 => \add_ln840_92_reg_6760[2]_i_5_n_3\,
      O => \add_ln840_92_reg_6760[3]_i_5_n_3\
    );
\add_ln840_92_reg_6760[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA959555556A6AAA"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_7_n_3\,
      I1 => add_ln840_74_reg_6670(1),
      I2 => add_ln840_89_reg_6690(1),
      I3 => add_ln840_74_reg_6670(2),
      I4 => add_ln840_89_reg_6690(2),
      I5 => \add_ln840_92_reg_6760[5]_i_6_n_3\,
      O => \add_ln840_92_reg_6760[3]_i_6_n_3\
    );
\add_ln840_92_reg_6760[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => add_ln840_64_reg_6655(2),
      I1 => add_ln840_67_reg_6660(2),
      I2 => add_ln840_71_reg_6665(2),
      I3 => add_ln840_79_reg_6675(2),
      I4 => add_ln840_82_reg_6680(2),
      I5 => add_ln840_86_reg_6685(2),
      O => \add_ln840_92_reg_6760[3]_i_7_n_3\
    );
\add_ln840_92_reg_6760[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_64_reg_6655(1),
      I1 => add_ln840_67_reg_6660(1),
      I2 => add_ln840_71_reg_6665(1),
      O => \add_ln840_92_reg_6760[3]_i_8_n_3\
    );
\add_ln840_92_reg_6760[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_5_n_3\,
      I1 => \add_ln840_92_reg_6760[5]_i_4_n_3\,
      I2 => \add_ln840_92_reg_6760[5]_i_3_n_3\,
      O => add_ln840_92_fu_5621_p2(4)
    );
\add_ln840_92_reg_6760[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444040404"
    )
        port map (
      I0 => icmp_ln295_reg_5800_pp0_iter2_reg,
      I1 => ap_CS_iter3_fsm_state4,
      I2 => \^ap_cs_iter5_fsm_state6\,
      I3 => Q(2),
      I4 => out_V_TREADY_int_regslice,
      I5 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      O => add_ln840_123_reg_67650
    );
\add_ln840_92_reg_6760[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9600FF96"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_13_n_3\,
      I1 => \add_ln840_92_reg_6760[2]_i_8_n_3\,
      I2 => \add_ln840_92_reg_6760[2]_i_7_n_3\,
      I3 => \add_ln840_92_reg_6760[2]_i_3_n_3\,
      I4 => \add_ln840_92_reg_6760[2]_i_2_n_3\,
      O => \add_ln840_92_reg_6760[5]_i_10_n_3\
    );
\add_ln840_92_reg_6760[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => add_ln840_89_reg_6690(1),
      I1 => add_ln840_74_reg_6670(1),
      I2 => add_ln840_89_reg_6690(2),
      I3 => add_ln840_74_reg_6670(2),
      O => \add_ln840_92_reg_6760[5]_i_11_n_3\
    );
\add_ln840_92_reg_6760[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln840_64_reg_6655(2),
      I1 => add_ln840_67_reg_6660(2),
      I2 => add_ln840_71_reg_6665(2),
      O => \add_ln840_92_reg_6760[5]_i_12_n_3\
    );
\add_ln840_92_reg_6760[5]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_64_reg_6655(0),
      I1 => add_ln840_71_reg_6665(0),
      I2 => add_ln840_67_reg_6660(0),
      O => \add_ln840_92_reg_6760[5]_i_13_n_3\
    );
\add_ln840_92_reg_6760[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_3_n_3\,
      I1 => \add_ln840_92_reg_6760[5]_i_4_n_3\,
      I2 => \add_ln840_92_reg_6760[5]_i_5_n_3\,
      O => add_ln840_92_fu_5621_p2(5)
    );
\add_ln840_92_reg_6760[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077F0000FFFF077F"
    )
        port map (
      I0 => add_ln840_74_reg_6670(1),
      I1 => add_ln840_89_reg_6690(1),
      I2 => add_ln840_74_reg_6670(2),
      I3 => add_ln840_89_reg_6690(2),
      I4 => \add_ln840_92_reg_6760[5]_i_6_n_3\,
      I5 => \add_ln840_92_reg_6760[5]_i_7_n_3\,
      O => \add_ln840_92_reg_6760[5]_i_3_n_3\
    );
\add_ln840_92_reg_6760[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"022AABBF"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_8_n_3\,
      I1 => add_ln840_82_reg_6680(2),
      I2 => add_ln840_86_reg_6685(2),
      I3 => add_ln840_79_reg_6675(2),
      I4 => \add_ln840_92_reg_6760[5]_i_9_n_3\,
      O => \add_ln840_92_reg_6760[5]_i_4_n_3\
    );
\add_ln840_92_reg_6760[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"571515017F575715"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[3]_i_6_n_3\,
      I1 => \add_ln840_92_reg_6760[3]_i_4_n_3\,
      I2 => \add_ln840_92_reg_6760[3]_i_3_n_3\,
      I3 => \add_ln840_92_reg_6760[3]_i_2_n_3\,
      I4 => \add_ln840_92_reg_6760[5]_i_10_n_3\,
      I5 => \add_ln840_92_reg_6760[2]_i_6_n_3\,
      O => \add_ln840_92_reg_6760[5]_i_5_n_3\
    );
\add_ln840_92_reg_6760[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_8_n_3\,
      I1 => \add_ln840_92_reg_6760[5]_i_9_n_3\,
      I2 => add_ln840_79_reg_6675(2),
      I3 => add_ln840_86_reg_6685(2),
      I4 => add_ln840_82_reg_6680(2),
      O => \add_ln840_92_reg_6760[5]_i_6_n_3\
    );
\add_ln840_92_reg_6760[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \add_ln840_92_reg_6760[5]_i_11_n_3\,
      I1 => add_ln840_86_reg_6685(2),
      I2 => add_ln840_82_reg_6680(2),
      I3 => add_ln840_79_reg_6675(2),
      I4 => \add_ln840_92_reg_6760[5]_i_12_n_3\,
      O => \add_ln840_92_reg_6760[5]_i_7_n_3\
    );
\add_ln840_92_reg_6760[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => add_ln840_67_reg_6660(1),
      I1 => add_ln840_71_reg_6665(1),
      I2 => add_ln840_64_reg_6655(1),
      I3 => add_ln840_82_reg_6680(1),
      I4 => add_ln840_86_reg_6685(1),
      I5 => add_ln840_79_reg_6675(1),
      O => \add_ln840_92_reg_6760[5]_i_8_n_3\
    );
\add_ln840_92_reg_6760[5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln840_64_reg_6655(2),
      I1 => add_ln840_71_reg_6665(2),
      I2 => add_ln840_67_reg_6660(2),
      O => \add_ln840_92_reg_6760[5]_i_9_n_3\
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(0),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(0),
      R => '0'
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(1),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(1),
      R => '0'
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(2),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(2),
      R => '0'
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(3),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(3),
      R => '0'
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(4),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(4),
      R => '0'
    );
\add_ln840_92_reg_6760_pp0_iter4_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => add_ln840_92_reg_6760(5),
      Q => add_ln840_92_reg_6760_pp0_iter4_reg(5),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_92_fu_5621_p2(0),
      Q => add_ln840_92_reg_6760(0),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => \add_ln840_92_reg_6760[1]_i_1_n_3\,
      Q => add_ln840_92_reg_6760(1),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_92_fu_5621_p2(2),
      Q => add_ln840_92_reg_6760(2),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_92_fu_5621_p2(3),
      Q => add_ln840_92_reg_6760(3),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_92_fu_5621_p2(4),
      Q => add_ln840_92_reg_6760(4),
      R => '0'
    );
\add_ln840_92_reg_6760_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_123_reg_67650,
      D => add_ln840_92_fu_5621_p2(5),
      Q => add_ln840_92_reg_6760(5),
      R => '0'
    );
\add_ln840_95_reg_6695_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_95_fu_5206_p2(0),
      Q => add_ln840_95_reg_6695(0),
      R => '0'
    );
\add_ln840_95_reg_6695_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_95_fu_5206_p2(1),
      Q => add_ln840_95_reg_6695(1),
      R => '0'
    );
\add_ln840_95_reg_6695_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_95_fu_5206_p2(2),
      Q => add_ln840_95_reg_6695(2),
      R => '0'
    );
\add_ln840_98_reg_6700_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_98_fu_5232_p2(0),
      Q => add_ln840_98_reg_6700(0),
      R => '0'
    );
\add_ln840_98_reg_6700_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_98_fu_5232_p2(1),
      Q => add_ln840_98_reg_6700(1),
      R => '0'
    );
\add_ln840_98_reg_6700_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln840_102_reg_67050,
      D => add_ln840_98_fu_5232_p2(2),
      Q => add_ln840_98_reg_6700(2),
      R => '0'
    );
\ap_CS_iter1_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_iter1_fsm(1),
      Q => ap_CS_iter1_fsm_state2,
      R => \^ap_rst_n_inv\
    );
\ap_CS_iter2_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCACACACCCCCCCC"
    )
        port map (
      I0 => ap_CS_iter2_fsm_state3,
      I1 => ap_CS_iter1_fsm_state2,
      I2 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I3 => out_V_TREADY_int_regslice,
      I4 => Q(2),
      I5 => \^ap_cs_iter5_fsm_state6\,
      O => ap_NS_iter2_fsm(1)
    );
\ap_CS_iter2_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_iter2_fsm(1),
      Q => ap_CS_iter2_fsm_state3,
      R => \^ap_rst_n_inv\
    );
\ap_CS_iter3_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAA888AAAA"
    )
        port map (
      I0 => ap_CS_iter2_fsm_state3,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I2 => out_V_TREADY_int_regslice,
      I3 => Q(2),
      I4 => \^ap_cs_iter5_fsm_state6\,
      I5 => ap_CS_iter3_fsm_state4,
      O => ap_NS_iter3_fsm(1)
    );
\ap_CS_iter3_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_iter3_fsm(1),
      Q => ap_CS_iter3_fsm_state4,
      R => \^ap_rst_n_inv\
    );
\ap_CS_iter4_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAA888AAAA"
    )
        port map (
      I0 => ap_CS_iter3_fsm_state4,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I2 => out_V_TREADY_int_regslice,
      I3 => Q(2),
      I4 => \^ap_cs_iter5_fsm_state6\,
      I5 => ap_CS_iter4_fsm_state5,
      O => ap_NS_iter4_fsm(1)
    );
\ap_CS_iter4_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_iter4_fsm(1),
      Q => ap_CS_iter4_fsm_state5,
      R => \^ap_rst_n_inv\
    );
\ap_CS_iter5_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEEE"
    )
        port map (
      I0 => ap_CS_iter4_fsm_state5,
      I1 => \^ap_cs_iter5_fsm_state6\,
      I2 => Q(2),
      I3 => out_V_TREADY_int_regslice,
      I4 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      O => ap_NS_iter5_fsm(1)
    );
\ap_CS_iter5_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_iter5_fsm(1),
      Q => \^ap_cs_iter5_fsm_state6\,
      R => \^ap_rst_n_inv\
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_19,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => ap_loop_exit_ready_pp0_iter1_reg,
      Q => ap_loop_exit_ready_pp0_iter2_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter3_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => flow_control_loop_pipe_sequential_init_U_n_6,
      I2 => ap_CS_iter2_fsm_state3,
      I3 => ap_loop_exit_ready_pp0_iter3_reg,
      O => ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter3_reg_i_1_n_3,
      Q => ap_loop_exit_ready_pp0_iter3_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter4_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter3_reg,
      I1 => flow_control_loop_pipe_sequential_init_U_n_6,
      I2 => ap_CS_iter3_fsm_state4,
      I3 => ap_loop_exit_ready_pp0_iter4_reg,
      O => ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3
    );
ap_loop_exit_ready_pp0_iter4_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter4_reg_i_1_n_3,
      Q => ap_loop_exit_ready_pp0_iter4_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter5_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFA200"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter4_reg,
      I1 => \^ap_cs_iter5_fsm_state6\,
      I2 => ap_loop_exit_ready_pp0_iter5_reg_reg_0,
      I3 => ap_CS_iter4_fsm_state5,
      I4 => ap_loop_exit_ready_pp0_iter5_reg,
      O => ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3
    );
ap_loop_exit_ready_pp0_iter5_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter5_reg_i_1_n_3,
      Q => ap_loop_exit_ready_pp0_iter5_reg,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init
     port map (
      D(0) => p_0_in(0),
      E(0) => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => flow_control_loop_pipe_sequential_init_U_n_5,
      \ap_CS_fsm_reg[0]\(1 downto 0) => D(1 downto 0),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_iter1_fsm_reg[1]\ => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      \ap_CS_iter1_fsm_reg[1]_0\ => \^ap_cs_iter5_fsm_state6\,
      ap_CS_iter1_fsm_state2 => ap_CS_iter1_fsm_state2,
      ap_NS_fsm10_out => ap_NS_fsm10_out,
      ap_NS_iter1_fsm(0) => ap_NS_iter1_fsm(1),
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_exit_ready_pp0_iter5_reg => ap_loop_exit_ready_pp0_iter5_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => \^ap_rst_n_inv\,
      grp_Thresholding_Batch_fu_546_ap_start_reg => grp_Thresholding_Batch_fu_546_ap_start_reg,
      grp_Thresholding_Batch_fu_546_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_19,
      grp_Thresholding_Batch_fu_546_ap_start_reg_reg_0 => flow_control_loop_pipe_sequential_init_U_n_20,
      i_2_fu_2007_p2(8 downto 0) => i_2_fu_2007_p2(9 downto 1),
      \i_fu_320_reg[0]\ => \i_fu_320[0]_i_5_n_3\,
      \i_fu_320_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_17,
      \i_fu_320_reg[4]\ => \i_fu_320_reg_n_3_[3]\,
      \i_fu_320_reg[4]_0\ => \i_fu_320_reg_n_3_[1]\,
      \i_fu_320_reg[4]_1\(0) => \i_fu_320_reg_n_3_[0]\,
      \i_fu_320_reg[4]_2\ => \i_fu_320_reg_n_3_[2]\,
      \i_fu_320_reg[4]_3\ => \i_fu_320_reg_n_3_[4]\,
      \i_fu_320_reg[5]\ => \i_fu_320_reg_n_3_[5]\,
      \i_fu_320_reg[9]\ => \i_fu_320_reg_n_3_[8]\,
      \i_fu_320_reg[9]_0\ => \i_fu_320_reg_n_3_[7]\,
      \i_fu_320_reg[9]_1\ => \i_fu_320_reg_n_3_[6]\,
      \i_fu_320_reg[9]_2\ => \i_fu_320_reg_n_3_[9]\,
      icmp_ln295_reg_5800 => icmp_ln295_reg_5800,
      \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_6,
      in0_V_TVALID_int_regslice => in0_V_TVALID_int_regslice,
      \nf_1_fu_316_reg_rep[6]\ => \nf_1_fu_316_rep[9]_i_4_n_3\,
      out_V_TREADY_int_regslice => out_V_TREADY_int_regslice
    );
\i_fu_320[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => flow_control_loop_pipe_sequential_init_U_n_17,
      I1 => \i_fu_320_reg_n_3_[7]\,
      I2 => \i_fu_320_reg_n_3_[6]\,
      I3 => \i_fu_320_reg_n_3_[4]\,
      I4 => \i_fu_320_reg_n_3_[5]\,
      O => \i_fu_320[0]_i_5_n_3\
    );
\i_fu_320_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => p_0_in(0),
      Q => \i_fu_320_reg_n_3_[0]\,
      R => '0'
    );
\i_fu_320_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(1),
      Q => \i_fu_320_reg_n_3_[1]\,
      R => '0'
    );
\i_fu_320_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(2),
      Q => \i_fu_320_reg_n_3_[2]\,
      R => '0'
    );
\i_fu_320_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(3),
      Q => \i_fu_320_reg_n_3_[3]\,
      R => '0'
    );
\i_fu_320_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(4),
      Q => \i_fu_320_reg_n_3_[4]\,
      R => '0'
    );
\i_fu_320_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(5),
      Q => \i_fu_320_reg_n_3_[5]\,
      R => '0'
    );
\i_fu_320_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(6),
      Q => \i_fu_320_reg_n_3_[6]\,
      R => '0'
    );
\i_fu_320_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(7),
      Q => \i_fu_320_reg_n_3_[7]\,
      R => '0'
    );
\i_fu_320_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(8),
      Q => \i_fu_320_reg_n_3_[8]\,
      R => '0'
    );
\i_fu_320_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => i_2_fu_2007_p2(9),
      Q => \i_fu_320_reg_n_3_[9]\,
      R => '0'
    );
\icmp_ln295_reg_5800_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => icmp_ln295_reg_5800,
      Q => icmp_ln295_reg_5800_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => icmp_ln295_reg_5800_pp0_iter1_reg,
      I1 => flow_control_loop_pipe_sequential_init_U_n_6,
      I2 => ap_CS_iter2_fsm_state3,
      I3 => icmp_ln295_reg_5800_pp0_iter2_reg,
      O => \icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3\
    );
\icmp_ln295_reg_5800_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln295_reg_5800_pp0_iter2_reg[0]_i_1_n_3\,
      Q => icmp_ln295_reg_5800_pp0_iter2_reg,
      R => '0'
    );
\icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => icmp_ln295_reg_5800_pp0_iter2_reg,
      I1 => flow_control_loop_pipe_sequential_init_U_n_6,
      I2 => ap_CS_iter3_fsm_state4,
      I3 => icmp_ln295_reg_5800_pp0_iter3_reg,
      O => \icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3\
    );
\icmp_ln295_reg_5800_pp0_iter3_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln295_reg_5800_pp0_iter3_reg[0]_i_1_n_3\,
      Q => icmp_ln295_reg_5800_pp0_iter3_reg,
      R => '0'
    );
\icmp_ln295_reg_5800_pp0_iter4_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD50000"
    )
        port map (
      I0 => \^ap_cs_iter5_fsm_state6\,
      I1 => Q(2),
      I2 => out_V_TREADY_int_regslice,
      I3 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I4 => ap_CS_iter4_fsm_state5,
      O => ap_NS_iter5_fsm1
    );
\icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_iter5_fsm1,
      D => icmp_ln295_reg_5800_pp0_iter3_reg,
      Q => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      R => '0'
    );
\icmp_ln295_reg_5800_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_20,
      Q => icmp_ln295_reg_5800,
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(0),
      Q => inElem_reg_5804_pp0_iter1_reg(0),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(1),
      Q => inElem_reg_5804_pp0_iter1_reg(1),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(2),
      Q => inElem_reg_5804_pp0_iter1_reg(2),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(3),
      Q => inElem_reg_5804_pp0_iter1_reg(3),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[3]_rep\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(3),
      Q => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(4),
      Q => inElem_reg_5804_pp0_iter1_reg(4),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(5),
      Q => inElem_reg_5804_pp0_iter1_reg(5),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[5]_rep\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(5),
      Q => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(6),
      Q => inElem_reg_5804_pp0_iter1_reg(6),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(7),
      Q => inElem_reg_5804_pp0_iter1_reg(7),
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(7),
      Q => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3\,
      R => '0'
    );
\inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_ZL7threshs_128_ce0,
      D => inElem_reg_5804(7),
      Q => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3\,
      R => '0'
    );
\inElem_reg_5804_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(0),
      Q => inElem_reg_5804(0),
      R => '0'
    );
\inElem_reg_5804_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(1),
      Q => inElem_reg_5804(1),
      R => '0'
    );
\inElem_reg_5804_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(2),
      Q => inElem_reg_5804(2),
      R => '0'
    );
\inElem_reg_5804_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(3),
      Q => inElem_reg_5804(3),
      R => '0'
    );
\inElem_reg_5804_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(4),
      Q => inElem_reg_5804(4),
      R => '0'
    );
\inElem_reg_5804_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(5),
      Q => inElem_reg_5804(5),
      R => '0'
    );
\inElem_reg_5804_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(6),
      Q => inElem_reg_5804(6),
      R => '0'
    );
\inElem_reg_5804_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_thresholding_batch_fu_546_in0_v_tready\,
      D => \inElem_reg_5804_reg[7]_0\(7),
      Q => inElem_reg_5804(7),
      R => '0'
    );
\nf_1_fu_316[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nf_1_fu_316_reg(0),
      O => nf_fu_2152_p2(0)
    );
\nf_1_fu_316_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[0]_i_1_n_10\,
      Q => nf_1_fu_316_reg(0),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nf_1_fu_316_reg[0]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[0]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[0]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[0]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \nf_1_fu_316_reg[0]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[0]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[0]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[0]_i_1_n_10\,
      S(3 downto 1) => nf_1_fu_316_reg(3 downto 1),
      S(0) => nf_fu_2152_p2(0)
    );
\nf_1_fu_316_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[8]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(10),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[8]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(11),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[12]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__1\(12),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[8]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[12]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[12]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[12]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[12]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[12]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[12]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[12]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[12]_i_1_n_10\,
      S(3 downto 0) => \nf_1_fu_316_reg__1\(15 downto 12)
    );
\nf_1_fu_316_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[12]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__1\(13),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[12]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(14),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[12]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(15),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[16]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__1\(16),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[12]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[16]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[16]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[16]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[16]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[16]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[16]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[16]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[16]_i_1_n_10\,
      S(3 downto 0) => \nf_1_fu_316_reg__1\(19 downto 16)
    );
\nf_1_fu_316_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[16]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__1\(17),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[16]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(18),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[16]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(19),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[0]_i_1_n_9\,
      Q => nf_1_fu_316_reg(1),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[20]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__1\(20),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[16]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[20]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[20]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[20]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[20]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[20]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[20]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[20]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[20]_i_1_n_10\,
      S(3 downto 0) => \nf_1_fu_316_reg__1\(23 downto 20)
    );
\nf_1_fu_316_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[20]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__1\(21),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[20]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(22),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[20]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(23),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[24]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__1\(24),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[20]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[24]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[24]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[24]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[24]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[24]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[24]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[24]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[24]_i_1_n_10\,
      S(3 downto 0) => \nf_1_fu_316_reg__1\(27 downto 24)
    );
\nf_1_fu_316_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[24]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__1\(25),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[24]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(26),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[24]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(27),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[28]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__1\(28),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[24]_i_1_n_3\,
      CO(3) => \NLW_nf_1_fu_316_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \nf_1_fu_316_reg[28]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[28]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[28]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[28]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[28]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[28]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[28]_i_1_n_10\,
      S(3 downto 0) => \nf_1_fu_316_reg__1\(31 downto 28)
    );
\nf_1_fu_316_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[28]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__1\(29),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[0]_i_1_n_8\,
      Q => nf_1_fu_316_reg(2),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[28]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__1\(30),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[28]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__1\(31),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[0]_i_1_n_7\,
      Q => nf_1_fu_316_reg(3),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[4]_i_1_n_10\,
      Q => nf_1_fu_316_reg(4),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[0]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[4]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[4]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[4]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[4]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[4]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[4]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[4]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[4]_i_1_n_10\,
      S(3 downto 2) => \nf_1_fu_316_reg__0\(7 downto 6),
      S(1 downto 0) => nf_1_fu_316_reg(5 downto 4)
    );
\nf_1_fu_316_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[4]_i_1_n_9\,
      Q => nf_1_fu_316_reg(5),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[4]_i_1_n_8\,
      Q => \nf_1_fu_316_reg__0\(6),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[4]_i_1_n_7\,
      Q => \nf_1_fu_316_reg__0\(7),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[8]_i_1_n_10\,
      Q => \nf_1_fu_316_reg__0\(8),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg[4]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg[8]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg[8]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg[8]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg[8]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \nf_1_fu_316_reg[8]_i_1_n_7\,
      O(2) => \nf_1_fu_316_reg[8]_i_1_n_8\,
      O(1) => \nf_1_fu_316_reg[8]_i_1_n_9\,
      O(0) => \nf_1_fu_316_reg[8]_i_1_n_10\,
      S(3 downto 2) => \nf_1_fu_316_reg__1\(11 downto 10),
      S(1 downto 0) => \nf_1_fu_316_reg__0\(9 downto 8)
    );
\nf_1_fu_316_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_1_fu_316_reg[8]_i_1_n_9\,
      Q => \nf_1_fu_316_reg__0\(9),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_fu_2152_p2__0\(6),
      Q => nf_1_fu_316(6),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg_rep[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_fu_2152_p2__0\(7),
      Q => nf_1_fu_316(7),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg_rep[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_fu_2152_p2__0\(8),
      Q => nf_1_fu_316(8),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg_rep[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[8]_i_2_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[8]_i_1_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[8]_i_1_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[8]_i_1_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[8]_i_1_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \nf_fu_2152_p2__0\(8 downto 6),
      O(0) => nf_fu_2152_p2(5),
      S(3 downto 1) => \nf_1_fu_316_reg__0\(8 downto 6),
      S(0) => nf_1_fu_316_reg(5)
    );
\nf_1_fu_316_reg_rep[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nf_1_fu_316_reg_rep[8]_i_2_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[8]_i_2_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[8]_i_2_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[8]_i_2_n_6\,
      CYINIT => nf_1_fu_316_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => nf_fu_2152_p2(4 downto 1),
      S(3 downto 0) => nf_1_fu_316_reg(4 downto 1)
    );
\nf_1_fu_316_reg_rep[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => nf_1_fu_3160,
      D => \nf_fu_2152_p2__0\(9),
      Q => nf_1_fu_316(9),
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\nf_1_fu_316_reg_rep[9]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[9]_i_14_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[9]_i_11_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[9]_i_11_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_11_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_11_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => nf_fu_2152_p2(24 downto 21),
      S(3 downto 0) => \nf_1_fu_316_reg__1\(24 downto 21)
    );
\nf_1_fu_316_reg_rep[9]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[9]_i_11_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[9]_i_12_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[9]_i_12_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_12_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_12_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => nf_fu_2152_p2(28 downto 25),
      S(3 downto 0) => \nf_1_fu_316_reg__1\(28 downto 25)
    );
\nf_1_fu_316_reg_rep[9]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[9]_i_12_n_3\,
      CO(3 downto 2) => \NLW_nf_1_fu_316_reg_rep[9]_i_13_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_13_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_13_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_nf_1_fu_316_reg_rep[9]_i_13_O_UNCONNECTED\(3),
      O(2 downto 0) => nf_fu_2152_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \nf_1_fu_316_reg__1\(31 downto 29)
    );
\nf_1_fu_316_reg_rep[9]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[9]_i_15_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[9]_i_14_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[9]_i_14_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_14_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_14_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => nf_fu_2152_p2(20 downto 17),
      S(3 downto 0) => \nf_1_fu_316_reg__1\(20 downto 17)
    );
\nf_1_fu_316_reg_rep[9]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[9]_i_3_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[9]_i_15_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[9]_i_15_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_15_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_15_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => nf_fu_2152_p2(16 downto 13),
      S(3 downto 0) => \nf_1_fu_316_reg__1\(16 downto 13)
    );
\nf_1_fu_316_reg_rep[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \nf_1_fu_316_reg_rep[8]_i_1_n_3\,
      CO(3) => \nf_1_fu_316_reg_rep[9]_i_3_n_3\,
      CO(2) => \nf_1_fu_316_reg_rep[9]_i_3_n_4\,
      CO(1) => \nf_1_fu_316_reg_rep[9]_i_3_n_5\,
      CO(0) => \nf_1_fu_316_reg_rep[9]_i_3_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => nf_fu_2152_p2(12 downto 10),
      O(0) => \nf_fu_2152_p2__0\(9),
      S(3 downto 1) => \nf_1_fu_316_reg__1\(12 downto 10),
      S(0) => \nf_1_fu_316_reg__0\(9)
    );
\nf_1_fu_316_rep[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \nf_fu_2152_p2__0\(6),
      I1 => \nf_fu_2152_p2__0\(7),
      I2 => nf_fu_2152_p2(4),
      I3 => nf_fu_2152_p2(5),
      I4 => \nf_fu_2152_p2__0\(8),
      I5 => \nf_fu_2152_p2__0\(9),
      O => \nf_1_fu_316_rep[9]_i_10_n_3\
    );
\nf_1_fu_316_rep[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A888AAAA"
    )
        port map (
      I0 => ap_CS_iter1_fsm_state2,
      I1 => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\,
      I2 => out_V_TREADY_int_regslice,
      I3 => Q(2),
      I4 => \^ap_cs_iter5_fsm_state6\,
      I5 => icmp_ln295_reg_5800,
      O => nf_1_fu_3160
    );
\nf_1_fu_316_rep[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \nf_1_fu_316_rep[9]_i_5_n_3\,
      I1 => \nf_1_fu_316_rep[9]_i_6_n_3\,
      I2 => \nf_1_fu_316_rep[9]_i_7_n_3\,
      I3 => \nf_1_fu_316_rep[9]_i_8_n_3\,
      I4 => \nf_1_fu_316_rep[9]_i_9_n_3\,
      I5 => \nf_1_fu_316_rep[9]_i_10_n_3\,
      O => \nf_1_fu_316_rep[9]_i_4_n_3\
    );
\nf_1_fu_316_rep[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => nf_fu_2152_p2(24),
      I1 => nf_fu_2152_p2(25),
      I2 => nf_fu_2152_p2(22),
      I3 => nf_fu_2152_p2(23),
      I4 => nf_fu_2152_p2(27),
      I5 => nf_fu_2152_p2(26),
      O => \nf_1_fu_316_rep[9]_i_5_n_3\
    );
\nf_1_fu_316_rep[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => nf_fu_2152_p2(30),
      I1 => nf_fu_2152_p2(31),
      I2 => nf_fu_2152_p2(28),
      I3 => nf_fu_2152_p2(29),
      I4 => icmp_ln295_reg_5800,
      I5 => nf_1_fu_316_reg(0),
      O => \nf_1_fu_316_rep[9]_i_6_n_3\
    );
\nf_1_fu_316_rep[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => nf_fu_2152_p2(18),
      I1 => nf_fu_2152_p2(19),
      I2 => nf_fu_2152_p2(16),
      I3 => nf_fu_2152_p2(17),
      I4 => nf_fu_2152_p2(21),
      I5 => nf_fu_2152_p2(20),
      O => \nf_1_fu_316_rep[9]_i_7_n_3\
    );
\nf_1_fu_316_rep[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => nf_fu_2152_p2(1),
      I1 => nf_fu_2152_p2(2),
      I2 => nf_fu_2152_p2(3),
      I3 => p_ZL7threshs_128_ce0,
      O => \nf_1_fu_316_rep[9]_i_8_n_3\
    );
\nf_1_fu_316_rep[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => nf_fu_2152_p2(12),
      I1 => nf_fu_2152_p2(13),
      I2 => nf_fu_2152_p2(10),
      I3 => nf_fu_2152_p2(11),
      I4 => nf_fu_2152_p2(15),
      I5 => nf_fu_2152_p2(14),
      O => \nf_1_fu_316_rep[9]_i_9_n_3\
    );
\p_0_out/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => nf_1_fu_316(8),
      I1 => nf_1_fu_316(6),
      I2 => nf_1_fu_316(7),
      I3 => nf_1_fu_316(9),
      O => \p_0_out/i__n_3\
    );
p_ZL7threshs_128_U: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_128_ROM_2P_LUTRAM_1R
     port map (
      CO(0) => icmp_ln1039_8_fu_2353_p2,
      Q(4 downto 0) => inElem_reg_5804_pp0_iter1_reg(4 downto 0),
      S(1) => \add_ln840_8_reg_6585[2]_i_20_n_3\,
      S(0) => \add_ln840_8_reg_6585[2]_i_21_n_3\,
      \add_ln840_35_reg_6620_reg[0]\(0) => \add_ln840_35_reg_6620[2]_i_21_n_3\,
      \add_ln840_35_reg_6620_reg[2]_i_4_0\ => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      \add_ln840_35_reg_6620_reg[2]_i_4_1\ => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      ap_clk => ap_clk,
      \inElem_reg_5804_pp0_iter1_reg_reg[4]\(0) => icmp_ln1039_36_fu_2945_p2,
      p_ZL7threshs_128_ce0 => p_ZL7threshs_128_ce0,
      \q0_reg[0]_0\ => p_ZL7threshs_128_U_n_3,
      \q0_reg[0]_1\ => \p_0_out/i__n_3\
    );
p_ZL7threshs_130_U: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_130_ROM_2P_LUTRAM_1R
     port map (
      CO(0) => icmp_ln1039_8_fu_2353_p2,
      D(1 downto 0) => add_ln840_1_fu_4596_p2(1 downto 0),
      Q(0) => Q(2),
      S(0) => \add_ln840_64_reg_6655[2]_i_19_n_3\,
      \add_ln840_102_reg_6705_reg[2]\(0) => \add_ln840_102_reg_6705[2]_i_27_n_3\,
      \add_ln840_102_reg_6705_reg[2]_0\(0) => \add_ln840_102_reg_6705[2]_i_34_n_3\,
      \add_ln840_102_reg_6705_reg[2]_i_5_0\(2 downto 0) => add_ln840_102_fu_5258_p2(2 downto 0),
      \add_ln840_105_reg_6710_reg[2]_i_5_0\(2 downto 0) => add_ln840_105_fu_5284_p2(2 downto 0),
      \add_ln840_110_reg_6715_reg[2]\(1) => \add_ln840_110_reg_6715[2]_i_20_n_3\,
      \add_ln840_110_reg_6715_reg[2]\(0) => \add_ln840_110_reg_6715[2]_i_21_n_3\,
      \add_ln840_110_reg_6715_reg[2]_0\(0) => \add_ln840_110_reg_6715[2]_i_15_n_3\,
      \add_ln840_110_reg_6715_reg[2]_1\(1) => \add_ln840_110_reg_6715[2]_i_9_n_3\,
      \add_ln840_110_reg_6715_reg[2]_1\(0) => \add_ln840_110_reg_6715[2]_i_10_n_3\,
      \add_ln840_110_reg_6715_reg[2]_i_5_0\(2 downto 0) => add_ln840_110_fu_5310_p2(2 downto 0),
      \add_ln840_113_reg_6720_reg[2]\(0) => \add_ln840_113_reg_6720[2]_i_23_n_3\,
      \add_ln840_113_reg_6720_reg[2]_0\(0) => \add_ln840_113_reg_6720[2]_i_17_n_3\,
      \add_ln840_113_reg_6720_reg[2]_1\(0) => \add_ln840_113_reg_6720[2]_i_29_n_3\,
      \add_ln840_113_reg_6720_reg[2]_2\(0) => \add_ln840_113_reg_6720[2]_i_10_n_3\,
      \add_ln840_113_reg_6720_reg[2]_i_2_0\ => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep__0_n_3\,
      \add_ln840_113_reg_6720_reg[2]_i_2_1\ => \inElem_reg_5804_pp0_iter1_reg_reg[3]_rep_n_3\,
      \add_ln840_113_reg_6720_reg[2]_i_5_0\(2 downto 0) => add_ln840_113_fu_5336_p2(2 downto 0),
      \add_ln840_117_reg_6725_reg[2]\(0) => \add_ln840_117_reg_6725[2]_i_21_n_3\,
      \add_ln840_117_reg_6725_reg[2]_0\(0) => \add_ln840_117_reg_6725[2]_i_15_n_3\,
      \add_ln840_117_reg_6725_reg[2]_1\(0) => \add_ln840_117_reg_6725[2]_i_28_n_3\,
      \add_ln840_117_reg_6725_reg[2]_i_2_0\ => \inElem_reg_5804_pp0_iter1_reg_reg[5]_rep_n_3\,
      \add_ln840_117_reg_6725_reg[2]_i_5_0\(2 downto 0) => add_ln840_117_fu_5362_p2(2 downto 0),
      \add_ln840_11_reg_6590_reg[2]\(0) => \add_ln840_11_reg_6590[2]_i_21_n_3\,
      \add_ln840_11_reg_6590_reg[2]_0\(0) => \add_ln840_11_reg_6590[2]_i_14_n_3\,
      \add_ln840_11_reg_6590_reg[2]_1\(0) => \add_ln840_11_reg_6590[2]_i_27_n_3\,
      \add_ln840_11_reg_6590_reg[2]_2\(0) => \add_ln840_11_reg_6590[2]_i_8_n_3\,
      \add_ln840_11_reg_6590_reg[2]_i_5_0\(2 downto 0) => add_ln840_11_fu_4660_p2(2 downto 0),
      \add_ln840_120_reg_6730_reg[2]_i_5_0\(2 downto 0) => add_ln840_120_fu_5388_p2(2 downto 0),
      \add_ln840_16_reg_6595_reg[2]\(0) => \add_ln840_16_reg_6595[2]_i_19_n_3\,
      \add_ln840_16_reg_6595_reg[2]_0\(0) => \add_ln840_16_reg_6595[2]_i_14_n_3\,
      \add_ln840_16_reg_6595_reg[2]_1\(0) => \add_ln840_16_reg_6595[2]_i_26_n_3\,
      \add_ln840_16_reg_6595_reg[2]_2\(0) => \add_ln840_16_reg_6595[2]_i_9_n_3\,
      \add_ln840_16_reg_6595_reg[2]_i_5_0\(2 downto 0) => add_ln840_16_fu_4686_p2(2 downto 0),
      \add_ln840_19_reg_6600_reg[2]\(0) => \add_ln840_19_reg_6600[2]_i_22_n_3\,
      \add_ln840_19_reg_6600_reg[2]_0\(0) => \add_ln840_19_reg_6600[2]_i_16_n_3\,
      \add_ln840_19_reg_6600_reg[2]_1\(1) => \add_ln840_19_reg_6600[2]_i_27_n_3\,
      \add_ln840_19_reg_6600_reg[2]_1\(0) => \add_ln840_19_reg_6600[2]_i_29_n_3\,
      \add_ln840_19_reg_6600_reg[2]_2\(0) => \add_ln840_19_reg_6600[2]_i_9_n_3\,
      \add_ln840_19_reg_6600_reg[2]_i_5_0\(2 downto 0) => add_ln840_19_fu_4712_p2(2 downto 0),
      \add_ln840_1_reg_6570_reg[0]\ => \add_ln840_1_reg_6570[1]_i_3_n_3\,
      \add_ln840_1_reg_6570_reg[0]_0\ => p_ZL7threshs_128_U_n_3,
      \add_ln840_23_reg_6605_reg[2]\(0) => \add_ln840_23_reg_6605[2]_i_21_n_3\,
      \add_ln840_23_reg_6605_reg[2]_0\(0) => \add_ln840_23_reg_6605[2]_i_14_n_3\,
      \add_ln840_23_reg_6605_reg[2]_1\(0) => \add_ln840_23_reg_6605[2]_i_28_n_3\,
      \add_ln840_23_reg_6605_reg[2]_2\(0) => \add_ln840_23_reg_6605[2]_i_8_n_3\,
      \add_ln840_23_reg_6605_reg[2]_i_5_0\(2 downto 0) => add_ln840_23_fu_4738_p2(2 downto 0),
      \add_ln840_26_reg_6610_reg[2]\(1) => \add_ln840_26_reg_6610[2]_i_21_n_3\,
      \add_ln840_26_reg_6610_reg[2]\(0) => \add_ln840_26_reg_6610[2]_i_23_n_3\,
      \add_ln840_26_reg_6610_reg[2]_0\(0) => \add_ln840_26_reg_6610[2]_i_15_n_3\,
      \add_ln840_26_reg_6610_reg[2]_1\(0) => \add_ln840_26_reg_6610[2]_i_26_n_3\,
      \add_ln840_26_reg_6610_reg[2]_2\(1) => \add_ln840_26_reg_6610[2]_i_8_n_3\,
      \add_ln840_26_reg_6610_reg[2]_2\(0) => \add_ln840_26_reg_6610[2]_i_10_n_3\,
      \add_ln840_26_reg_6610_reg[2]_i_5_0\(2 downto 0) => add_ln840_26_fu_4764_p2(2 downto 0),
      \add_ln840_2_reg_6575_reg[0]\ => \add_ln840_2_reg_6575[1]_i_2_n_3\,
      \add_ln840_2_reg_6575_reg[1]\(1) => \add_ln840_2_reg_6575[1]_i_5_n_3\,
      \add_ln840_2_reg_6575_reg[1]\(0) => \add_ln840_2_reg_6575[1]_i_6_n_3\,
      \add_ln840_32_reg_6615_reg[2]\(0) => \add_ln840_32_reg_6615[2]_i_20_n_3\,
      \add_ln840_32_reg_6615_reg[2]_0\(0) => \add_ln840_32_reg_6615[2]_i_15_n_3\,
      \add_ln840_32_reg_6615_reg[2]_1\(0) => \add_ln840_32_reg_6615[2]_i_26_n_3\,
      \add_ln840_32_reg_6615_reg[2]_2\(0) => \add_ln840_32_reg_6615[2]_i_9_n_3\,
      \add_ln840_32_reg_6615_reg[2]_i_5_0\(2 downto 0) => add_ln840_32_fu_4790_p2(2 downto 0),
      \add_ln840_35_reg_6620_reg[0]\(0) => icmp_ln1039_36_fu_2945_p2,
      \add_ln840_35_reg_6620_reg[2]\(1) => \add_ln840_35_reg_6620[2]_i_15_n_3\,
      \add_ln840_35_reg_6620_reg[2]\(0) => \add_ln840_35_reg_6620[2]_i_16_n_3\,
      \add_ln840_35_reg_6620_reg[2]_0\(0) => \add_ln840_35_reg_6620[2]_i_28_n_3\,
      \add_ln840_35_reg_6620_reg[2]_1\(1) => \add_ln840_35_reg_6620[2]_i_9_n_3\,
      \add_ln840_35_reg_6620_reg[2]_1\(0) => \add_ln840_35_reg_6620[2]_i_10_n_3\,
      \add_ln840_35_reg_6620_reg[2]_i_5_0\(2 downto 0) => add_ln840_35_fu_4816_p2(2 downto 0),
      \add_ln840_39_reg_6625_reg[2]\(0) => \add_ln840_39_reg_6625[2]_i_22_n_3\,
      \add_ln840_39_reg_6625_reg[2]_0\(0) => \add_ln840_39_reg_6625[2]_i_15_n_3\,
      \add_ln840_39_reg_6625_reg[2]_1\(0) => \add_ln840_39_reg_6625[2]_i_28_n_3\,
      \add_ln840_39_reg_6625_reg[2]_2\(0) => \add_ln840_39_reg_6625[2]_i_9_n_3\,
      \add_ln840_39_reg_6625_reg[2]_i_5_0\(2 downto 0) => add_ln840_39_fu_4842_p2(2 downto 0),
      \add_ln840_3_reg_6580_reg[0]\(1) => \add_ln840_3_reg_6580[1]_i_11_n_3\,
      \add_ln840_3_reg_6580_reg[0]\(0) => \add_ln840_3_reg_6580[1]_i_12_n_3\,
      \add_ln840_3_reg_6580_reg[0]_0\(1) => \add_ln840_3_reg_6580[1]_i_6_n_3\,
      \add_ln840_3_reg_6580_reg[0]_0\(0) => \add_ln840_3_reg_6580[1]_i_7_n_3\,
      \add_ln840_3_reg_6580_reg[1]_i_3_0\(1 downto 0) => add_ln840_3_fu_4608_p2(1 downto 0),
      \add_ln840_42_reg_6630_reg[2]\(0) => \add_ln840_42_reg_6630[2]_i_21_n_3\,
      \add_ln840_42_reg_6630_reg[2]_0\(0) => \add_ln840_42_reg_6630[2]_i_28_n_3\,
      \add_ln840_42_reg_6630_reg[2]_1\(0) => \add_ln840_42_reg_6630[2]_i_10_n_3\,
      \add_ln840_42_reg_6630_reg[2]_i_5_0\(2 downto 0) => add_ln840_42_fu_4868_p2(2 downto 0),
      \add_ln840_47_reg_6635_reg[2]\(0) => \add_ln840_47_reg_6635[2]_i_27_n_3\,
      \add_ln840_47_reg_6635_reg[2]_0\(0) => \add_ln840_47_reg_6635[2]_i_34_n_3\,
      \add_ln840_47_reg_6635_reg[2]_i_5_0\(2 downto 0) => add_ln840_47_fu_4894_p2(2 downto 0),
      \add_ln840_50_reg_6640_reg[2]_i_5_0\(2 downto 0) => add_ln840_50_fu_4920_p2(2 downto 0),
      \add_ln840_54_reg_6645_reg[2]\(0) => \add_ln840_54_reg_6645[2]_i_26_n_3\,
      \add_ln840_54_reg_6645_reg[2]_0\(0) => \add_ln840_54_reg_6645[2]_i_11_n_3\,
      \add_ln840_54_reg_6645_reg[2]_i_5_0\(2 downto 0) => add_ln840_54_fu_4946_p2(2 downto 0),
      \add_ln840_57_reg_6650_reg[2]_i_5_0\(2 downto 0) => add_ln840_57_fu_4972_p2(2 downto 0),
      \add_ln840_57_reg_6650_reg[2]_i_5_1\(7 downto 0) => inElem_reg_5804_pp0_iter1_reg(7 downto 0),
      \add_ln840_64_reg_6655_reg[2]\(0) => \add_ln840_64_reg_6655[2]_i_12_n_3\,
      \add_ln840_64_reg_6655_reg[2]_i_6_0\(2 downto 0) => add_ln840_64_fu_4998_p2(2 downto 0),
      \add_ln840_67_reg_6660_reg[2]_i_5_0\(2 downto 0) => add_ln840_67_fu_5024_p2(2 downto 0),
      \add_ln840_71_reg_6665_reg[0]\ => \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep_n_3\,
      \add_ln840_74_reg_6670_reg[2]\(1) => \add_ln840_74_reg_6670[2]_i_23_n_3\,
      \add_ln840_74_reg_6670_reg[2]\(0) => \add_ln840_74_reg_6670[2]_i_24_n_3\,
      \add_ln840_74_reg_6670_reg[2]_0\(0) => \add_ln840_74_reg_6670[2]_i_17_n_3\,
      \add_ln840_74_reg_6670_reg[2]_1\(1) => \add_ln840_74_reg_6670[2]_i_29_n_3\,
      \add_ln840_74_reg_6670_reg[2]_1\(0) => \add_ln840_74_reg_6670[2]_i_30_n_3\,
      \add_ln840_74_reg_6670_reg[2]_2\(0) => \add_ln840_74_reg_6670[2]_i_10_n_3\,
      \add_ln840_74_reg_6670_reg[2]_i_5_0\(2 downto 0) => add_ln840_74_fu_5076_p2(2 downto 0),
      \add_ln840_79_reg_6675_reg[2]\(0) => \add_ln840_79_reg_6675[2]_i_22_n_3\,
      \add_ln840_79_reg_6675_reg[2]_0\(0) => \add_ln840_79_reg_6675[2]_i_15_n_3\,
      \add_ln840_79_reg_6675_reg[2]_1\(0) => \add_ln840_79_reg_6675[2]_i_29_n_3\,
      \add_ln840_79_reg_6675_reg[2]_2\(0) => \add_ln840_79_reg_6675[2]_i_9_n_3\,
      \add_ln840_79_reg_6675_reg[2]_i_5_0\(2 downto 0) => add_ln840_79_fu_5102_p2(2 downto 0),
      \add_ln840_82_reg_6680_reg[2]\(0) => \add_ln840_82_reg_6680[2]_i_24_n_3\,
      \add_ln840_82_reg_6680_reg[2]_0\(0) => \add_ln840_82_reg_6680[2]_i_30_n_3\,
      \add_ln840_82_reg_6680_reg[2]_1\(0) => \add_ln840_82_reg_6680[2]_i_11_n_3\,
      \add_ln840_82_reg_6680_reg[2]_i_5_0\(2 downto 0) => add_ln840_82_fu_5128_p2(2 downto 0),
      \add_ln840_86_reg_6685_reg[2]_i_5_0\(2 downto 0) => add_ln840_86_fu_5154_p2(2 downto 0),
      \add_ln840_89_reg_6690_reg[2]\(0) => \add_ln840_89_reg_6690[2]_i_15_n_3\,
      \add_ln840_89_reg_6690_reg[2]_i_5_0\(2 downto 0) => add_ln840_89_fu_5180_p2(2 downto 0),
      \add_ln840_8_reg_6585_reg[2]\(1) => \add_ln840_8_reg_6585[2]_i_14_n_3\,
      \add_ln840_8_reg_6585_reg[2]\(0) => \add_ln840_8_reg_6585[2]_i_16_n_3\,
      \add_ln840_8_reg_6585_reg[2]_0\(1) => \add_ln840_8_reg_6585[2]_i_26_n_3\,
      \add_ln840_8_reg_6585_reg[2]_0\(0) => \add_ln840_8_reg_6585[2]_i_27_n_3\,
      \add_ln840_8_reg_6585_reg[2]_1\(1) => \add_ln840_8_reg_6585[2]_i_8_n_3\,
      \add_ln840_8_reg_6585_reg[2]_1\(0) => \add_ln840_8_reg_6585[2]_i_10_n_3\,
      \add_ln840_8_reg_6585_reg[2]_i_5_0\(2 downto 0) => add_ln840_8_fu_4634_p2(2 downto 0),
      \add_ln840_95_reg_6695_reg[2]_i_5_0\(2 downto 0) => add_ln840_95_fu_5206_p2(2 downto 0),
      \add_ln840_98_reg_6700_reg[2]_i_5_0\(2 downto 0) => add_ln840_98_fu_5232_p2(2 downto 0),
      ap_CS_iter1_fsm_state2 => ap_CS_iter1_fsm_state2,
      ap_clk => ap_clk,
      \inElem_reg_5804_pp0_iter1_reg_reg[1]\(1 downto 0) => add_ln840_2_fu_4602_p2(1 downto 0),
      \inElem_reg_5804_pp0_iter1_reg_reg[7]_rep\(2 downto 0) => add_ln840_71_fu_5050_p2(2 downto 0),
      \out\(3 downto 0) => \nf_1_fu_316_reg__0\(9 downto 6),
      out_V_TREADY_int_regslice => out_V_TREADY_int_regslice,
      p_ZL7threshs_128_ce0 => p_ZL7threshs_128_ce0,
      \q0_reg[0]_0\ => \^ap_cs_iter5_fsm_state6\,
      \q0_reg[0]_1\ => \^icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in0_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in0_V_TVALID : in STD_LOGIC;
    in0_V_TREADY : out STD_LOGIC;
    out_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_V_TVALID : out STD_LOGIC;
    out_V_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "Thresholding_Batch_0";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 : entity is "yes";
end finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0 is
  signal \<const0>\ : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_3_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_iter5_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_NS_fsm10_out : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_ap_start_reg : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_in0_V_TREADY : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_n_10 : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_n_11 : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_n_5 : STD_LOGIC;
  signal grp_Thresholding_Batch_fu_546_out_V_TDATA : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal grp_Thresholding_Batch_fu_546_out_V_TVALID : STD_LOGIC;
  signal in0_V_TDATA_int_regslice : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in0_V_TVALID_int_regslice : STD_LOGIC;
  signal \^out_v_tdata\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal out_V_TREADY_int_regslice : STD_LOGIC;
  signal regslice_both_out_V_U_n_6 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
begin
  out_V_TDATA(7) <= \<const0>\;
  out_V_TDATA(6 downto 0) <= \^out_v_tdata\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state2,
      I2 => ap_CS_fsm_state4,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_3_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
grp_Thresholding_Batch_fu_546: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_Thresholding_Batch
     port map (
      B_V_data_1_sel_wr => B_V_data_1_sel_wr,
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      Q(2) => ap_CS_fsm_state3,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_3_[0]\,
      \ap_CS_fsm_reg[1]\ => grp_Thresholding_Batch_fu_546_n_10,
      ap_CS_iter5_fsm_state6 => ap_CS_iter5_fsm_state6,
      ap_NS_fsm10_out => ap_NS_fsm10_out,
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter5_reg_reg_0 => regslice_both_out_V_U_n_6,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_Thresholding_Batch_fu_546_ap_start_reg => grp_Thresholding_Batch_fu_546_ap_start_reg,
      grp_Thresholding_Batch_fu_546_in0_V_TREADY => grp_Thresholding_Batch_fu_546_in0_V_TREADY,
      grp_Thresholding_Batch_fu_546_out_V_TVALID => grp_Thresholding_Batch_fu_546_out_V_TVALID,
      \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_0\ => grp_Thresholding_Batch_fu_546_n_5,
      \icmp_ln295_reg_5800_pp0_iter4_reg_reg[0]_1\ => grp_Thresholding_Batch_fu_546_n_11,
      in0_V_TVALID_int_regslice => in0_V_TVALID_int_regslice,
      \inElem_reg_5804_reg[7]_0\(7 downto 0) => in0_V_TDATA_int_regslice(7 downto 0),
      out_V_TREADY_int_regslice => out_V_TREADY_int_regslice,
      result_V_2_fu_5775_p2(6 downto 0) => grp_Thresholding_Batch_fu_546_out_V_TDATA(6 downto 0)
    );
grp_Thresholding_Batch_fu_546_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_Thresholding_Batch_fu_546_n_10,
      Q => grp_Thresholding_Batch_fu_546_ap_start_reg,
      R => ap_rst_n_inv
    );
regslice_both_in0_V_U: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both
     port map (
      \B_V_data_1_payload_B_reg[7]_0\(7 downto 0) => in0_V_TDATA_int_regslice(7 downto 0),
      \B_V_data_1_state_reg[1]_0\ => in0_V_TREADY,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_Thresholding_Batch_fu_546_in0_V_TREADY => grp_Thresholding_Batch_fu_546_in0_V_TREADY,
      in0_V_TDATA(7 downto 0) => in0_V_TDATA(7 downto 0),
      in0_V_TVALID => in0_V_TVALID,
      in0_V_TVALID_int_regslice => in0_V_TVALID_int_regslice
    );
regslice_both_out_V_U: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0_regslice_both_0
     port map (
      \B_V_data_1_payload_A_reg[6]_0\(6 downto 0) => grp_Thresholding_Batch_fu_546_out_V_TDATA(6 downto 0),
      B_V_data_1_sel_wr => B_V_data_1_sel_wr,
      B_V_data_1_sel_wr_reg_0 => grp_Thresholding_Batch_fu_546_n_11,
      \B_V_data_1_state_reg[0]_0\ => out_V_TVALID,
      \B_V_data_1_state_reg[1]_0\ => grp_Thresholding_Batch_fu_546_n_5,
      D(0) => ap_NS_fsm(0),
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[2]\ => regslice_both_out_V_U_n_6,
      ap_CS_iter5_fsm_state6 => ap_CS_iter5_fsm_state6,
      ap_NS_fsm10_out => ap_NS_fsm10_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_Thresholding_Batch_fu_546_out_V_TVALID => grp_Thresholding_Batch_fu_546_out_V_TVALID,
      out_V_TDATA(6 downto 0) => \^out_v_tdata\(6 downto 0),
      out_V_TREADY => out_V_TREADY,
      out_V_TREADY_int_regslice => out_V_TREADY_int_regslice
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity finn_design_Thresholding_Batch_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in0_V_TVALID : in STD_LOGIC;
    in0_V_TREADY : out STD_LOGIC;
    in0_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_V_TVALID : out STD_LOGIC;
    out_V_TREADY : in STD_LOGIC;
    out_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of finn_design_Thresholding_Batch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of finn_design_Thresholding_Batch_0_0 : entity is "finn_design_Thresholding_Batch_0_0,Thresholding_Batch_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of finn_design_Thresholding_Batch_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of finn_design_Thresholding_Batch_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of finn_design_Thresholding_Batch_0_0 : entity is "Thresholding_Batch_0,Vivado 2022.2.2";
  attribute hls_module : string;
  attribute hls_module of finn_design_Thresholding_Batch_0_0 : entity is "yes";
end finn_design_Thresholding_Batch_0_0;

architecture STRUCTURE of finn_design_Thresholding_Batch_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^out_v_tdata\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_out_V_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in0_V:out_V, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in0_V_TREADY : signal is "xilinx.com:interface:axis:1.0 in0_V TREADY";
  attribute X_INTERFACE_INFO of in0_V_TVALID : signal is "xilinx.com:interface:axis:1.0 in0_V TVALID";
  attribute X_INTERFACE_INFO of out_V_TREADY : signal is "xilinx.com:interface:axis:1.0 out_V TREADY";
  attribute X_INTERFACE_INFO of out_V_TVALID : signal is "xilinx.com:interface:axis:1.0 out_V TVALID";
  attribute X_INTERFACE_INFO of in0_V_TDATA : signal is "xilinx.com:interface:axis:1.0 in0_V TDATA";
  attribute X_INTERFACE_PARAMETER of in0_V_TDATA : signal is "XIL_INTERFACENAME in0_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000.000000, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_V_TDATA : signal is "xilinx.com:interface:axis:1.0 out_V TDATA";
  attribute X_INTERFACE_PARAMETER of out_V_TDATA : signal is "XIL_INTERFACENAME out_V, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000.000000, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0";
begin
  out_V_TDATA(7) <= \<const0>\;
  out_V_TDATA(6 downto 0) <= \^out_v_tdata\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.finn_design_Thresholding_Batch_0_0_Thresholding_Batch_0
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in0_V_TDATA(7 downto 0) => in0_V_TDATA(7 downto 0),
      in0_V_TREADY => in0_V_TREADY,
      in0_V_TVALID => in0_V_TVALID,
      out_V_TDATA(7) => NLW_inst_out_V_TDATA_UNCONNECTED(7),
      out_V_TDATA(6 downto 0) => \^out_v_tdata\(6 downto 0),
      out_V_TREADY => out_V_TREADY,
      out_V_TVALID => out_V_TVALID
    );
end STRUCTURE;
