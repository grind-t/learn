-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/07/2017 09:45:09"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tstand IS
    PORT (
	x2 : OUT std_logic;
	clk : IN std_logic;
	x1 : OUT std_logic;
	rez : OUT std_logic;
	t2 : OUT std_logic;
	clr : IN std_logic;
	en : IN std_logic;
	t1 : OUT std_logic;
	s_true : OUT std_logic_vector(1 DOWNTO 0);
	rez_y : OUT std_logic;
	y3 : OUT std_logic;
	y2 : OUT std_logic;
	y1 : OUT std_logic;
	y_true : OUT std_logic_vector(2 DOWNTO 0);
	rez_mura : OUT std_logic;
	m1 : OUT std_logic;
	m2 : OUT std_logic;
	m3 : OUT std_logic;
	tt1 : OUT std_logic;
	tt2 : OUT std_logic;
	tt3 : OUT std_logic;
	prn : IN std_logic
	);
END tstand;

-- Design Ports Information
-- x2	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t2	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t1	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_true[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_true[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_y	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_true[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_true[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_true[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_mura	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m3	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tt1	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tt2	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tt3	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prn	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tstand IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_rez : std_logic;
SIGNAL ww_t2 : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_t1 : std_logic;
SIGNAL ww_s_true : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rez_y : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y_true : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rez_mura : std_logic;
SIGNAL ww_m1 : std_logic;
SIGNAL ww_m2 : std_logic;
SIGNAL ww_m3 : std_logic;
SIGNAL ww_tt1 : std_logic;
SIGNAL ww_tt2 : std_logic;
SIGNAL ww_tt3 : std_logic;
SIGNAL ww_prn : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \prn~input_o\ : std_logic;
SIGNAL \x2~output_o\ : std_logic;
SIGNAL \x1~output_o\ : std_logic;
SIGNAL \rez~output_o\ : std_logic;
SIGNAL \t2~output_o\ : std_logic;
SIGNAL \t1~output_o\ : std_logic;
SIGNAL \s_true[1]~output_o\ : std_logic;
SIGNAL \s_true[0]~output_o\ : std_logic;
SIGNAL \rez_y~output_o\ : std_logic;
SIGNAL \y3~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y_true[2]~output_o\ : std_logic;
SIGNAL \y_true[1]~output_o\ : std_logic;
SIGNAL \y_true[0]~output_o\ : std_logic;
SIGNAL \rez_mura~output_o\ : std_logic;
SIGNAL \m1~output_o\ : std_logic;
SIGNAL \m2~output_o\ : std_logic;
SIGNAL \m3~output_o\ : std_logic;
SIGNAL \tt1~output_o\ : std_logic;
SIGNAL \tt2~output_o\ : std_logic;
SIGNAL \tt3~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst55|LessThan0~6_combout\ : std_logic;
SIGNAL \inst55|LessThan0~8_combout\ : std_logic;
SIGNAL \inst55|LessThan0~5_combout\ : std_logic;
SIGNAL \inst55|LessThan0~7_combout\ : std_logic;
SIGNAL \inst55|LessThan0~9_combout\ : std_logic;
SIGNAL \inst55|LessThan0~1_combout\ : std_logic;
SIGNAL \inst55|count[1]~31_combout\ : std_logic;
SIGNAL \inst55|LessThan0~10_combout\ : std_logic;
SIGNAL \inst55|LessThan0~0_combout\ : std_logic;
SIGNAL \inst55|LessThan0~3_combout\ : std_logic;
SIGNAL \inst55|LessThan0~2_combout\ : std_logic;
SIGNAL \inst55|LessThan0~4_combout\ : std_logic;
SIGNAL \inst55|count[0]~93_combout\ : std_logic;
SIGNAL \inst55|count[1]~32\ : std_logic;
SIGNAL \inst55|count[2]~33_combout\ : std_logic;
SIGNAL \inst55|count[2]~34\ : std_logic;
SIGNAL \inst55|count[3]~35_combout\ : std_logic;
SIGNAL \inst55|count[3]~36\ : std_logic;
SIGNAL \inst55|count[4]~37_combout\ : std_logic;
SIGNAL \inst55|count[4]~38\ : std_logic;
SIGNAL \inst55|count[5]~39_combout\ : std_logic;
SIGNAL \inst55|count[5]~40\ : std_logic;
SIGNAL \inst55|count[6]~41_combout\ : std_logic;
SIGNAL \inst55|count[6]~42\ : std_logic;
SIGNAL \inst55|count[7]~43_combout\ : std_logic;
SIGNAL \inst55|count[7]~44\ : std_logic;
SIGNAL \inst55|count[8]~45_combout\ : std_logic;
SIGNAL \inst55|count[8]~46\ : std_logic;
SIGNAL \inst55|count[9]~47_combout\ : std_logic;
SIGNAL \inst55|count[9]~48\ : std_logic;
SIGNAL \inst55|count[10]~49_combout\ : std_logic;
SIGNAL \inst55|count[10]~50\ : std_logic;
SIGNAL \inst55|count[11]~51_combout\ : std_logic;
SIGNAL \inst55|count[11]~52\ : std_logic;
SIGNAL \inst55|count[12]~53_combout\ : std_logic;
SIGNAL \inst55|count[12]~54\ : std_logic;
SIGNAL \inst55|count[13]~55_combout\ : std_logic;
SIGNAL \inst55|count[13]~56\ : std_logic;
SIGNAL \inst55|count[14]~57_combout\ : std_logic;
SIGNAL \inst55|count[14]~58\ : std_logic;
SIGNAL \inst55|count[15]~59_combout\ : std_logic;
SIGNAL \inst55|count[15]~60\ : std_logic;
SIGNAL \inst55|count[16]~61_combout\ : std_logic;
SIGNAL \inst55|count[16]~62\ : std_logic;
SIGNAL \inst55|count[17]~63_combout\ : std_logic;
SIGNAL \inst55|count[17]~64\ : std_logic;
SIGNAL \inst55|count[18]~65_combout\ : std_logic;
SIGNAL \inst55|count[18]~66\ : std_logic;
SIGNAL \inst55|count[19]~67_combout\ : std_logic;
SIGNAL \inst55|count[19]~68\ : std_logic;
SIGNAL \inst55|count[20]~69_combout\ : std_logic;
SIGNAL \inst55|count[20]~70\ : std_logic;
SIGNAL \inst55|count[21]~71_combout\ : std_logic;
SIGNAL \inst55|count[21]~72\ : std_logic;
SIGNAL \inst55|count[22]~73_combout\ : std_logic;
SIGNAL \inst55|count[22]~74\ : std_logic;
SIGNAL \inst55|count[23]~75_combout\ : std_logic;
SIGNAL \inst55|count[23]~76\ : std_logic;
SIGNAL \inst55|count[24]~77_combout\ : std_logic;
SIGNAL \inst55|count[24]~78\ : std_logic;
SIGNAL \inst55|count[25]~79_combout\ : std_logic;
SIGNAL \inst55|count[25]~80\ : std_logic;
SIGNAL \inst55|count[26]~81_combout\ : std_logic;
SIGNAL \inst55|count[26]~82\ : std_logic;
SIGNAL \inst55|count[27]~83_combout\ : std_logic;
SIGNAL \inst55|count[27]~84\ : std_logic;
SIGNAL \inst55|count[28]~85_combout\ : std_logic;
SIGNAL \inst55|count[28]~86\ : std_logic;
SIGNAL \inst55|count[29]~87_combout\ : std_logic;
SIGNAL \inst55|count[29]~88\ : std_logic;
SIGNAL \inst55|count[30]~89_combout\ : std_logic;
SIGNAL \inst55|count[30]~90\ : std_logic;
SIGNAL \inst55|count[31]~91_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst55|Equal0~0_combout\ : std_logic;
SIGNAL \inst55|Result~0_combout\ : std_logic;
SIGNAL \inst55|Result~q\ : std_logic;
SIGNAL \inst76|comb~2_combout\ : std_logic;
SIGNAL \inst76|comb~3_combout\ : std_logic;
SIGNAL \inst39|LessThan0~2_combout\ : std_logic;
SIGNAL \inst39|LessThan0~1_combout\ : std_logic;
SIGNAL \inst39|LessThan0~3_combout\ : std_logic;
SIGNAL \inst39|count[1]~31_combout\ : std_logic;
SIGNAL \inst39|LessThan0~0_combout\ : std_logic;
SIGNAL \inst39|LessThan0~4_combout\ : std_logic;
SIGNAL \inst39|LessThan0~8_combout\ : std_logic;
SIGNAL \inst39|LessThan0~6_combout\ : std_logic;
SIGNAL \inst39|LessThan0~7_combout\ : std_logic;
SIGNAL \inst39|LessThan0~5_combout\ : std_logic;
SIGNAL \inst39|LessThan0~9_combout\ : std_logic;
SIGNAL \inst39|count[0]~93_combout\ : std_logic;
SIGNAL \inst39|count[1]~32\ : std_logic;
SIGNAL \inst39|count[2]~33_combout\ : std_logic;
SIGNAL \inst39|count[2]~34\ : std_logic;
SIGNAL \inst39|count[3]~35_combout\ : std_logic;
SIGNAL \inst39|count[3]~36\ : std_logic;
SIGNAL \inst39|count[4]~37_combout\ : std_logic;
SIGNAL \inst39|count[4]~38\ : std_logic;
SIGNAL \inst39|count[5]~39_combout\ : std_logic;
SIGNAL \inst39|count[5]~40\ : std_logic;
SIGNAL \inst39|count[6]~41_combout\ : std_logic;
SIGNAL \inst39|count[6]~42\ : std_logic;
SIGNAL \inst39|count[7]~43_combout\ : std_logic;
SIGNAL \inst39|count[7]~44\ : std_logic;
SIGNAL \inst39|count[8]~45_combout\ : std_logic;
SIGNAL \inst39|count[8]~46\ : std_logic;
SIGNAL \inst39|count[9]~47_combout\ : std_logic;
SIGNAL \inst39|count[9]~48\ : std_logic;
SIGNAL \inst39|count[10]~49_combout\ : std_logic;
SIGNAL \inst39|count[10]~50\ : std_logic;
SIGNAL \inst39|count[11]~51_combout\ : std_logic;
SIGNAL \inst39|count[11]~52\ : std_logic;
SIGNAL \inst39|count[12]~53_combout\ : std_logic;
SIGNAL \inst39|count[12]~54\ : std_logic;
SIGNAL \inst39|count[13]~55_combout\ : std_logic;
SIGNAL \inst39|count[13]~56\ : std_logic;
SIGNAL \inst39|count[14]~57_combout\ : std_logic;
SIGNAL \inst39|count[14]~58\ : std_logic;
SIGNAL \inst39|count[15]~59_combout\ : std_logic;
SIGNAL \inst39|count[15]~60\ : std_logic;
SIGNAL \inst39|count[16]~61_combout\ : std_logic;
SIGNAL \inst39|count[16]~62\ : std_logic;
SIGNAL \inst39|count[17]~63_combout\ : std_logic;
SIGNAL \inst39|count[17]~64\ : std_logic;
SIGNAL \inst39|count[18]~65_combout\ : std_logic;
SIGNAL \inst39|count[18]~66\ : std_logic;
SIGNAL \inst39|count[19]~67_combout\ : std_logic;
SIGNAL \inst39|count[19]~68\ : std_logic;
SIGNAL \inst39|count[20]~69_combout\ : std_logic;
SIGNAL \inst39|count[20]~70\ : std_logic;
SIGNAL \inst39|count[21]~71_combout\ : std_logic;
SIGNAL \inst39|count[21]~72\ : std_logic;
SIGNAL \inst39|count[22]~73_combout\ : std_logic;
SIGNAL \inst39|count[22]~74\ : std_logic;
SIGNAL \inst39|count[23]~75_combout\ : std_logic;
SIGNAL \inst39|count[23]~76\ : std_logic;
SIGNAL \inst39|count[24]~77_combout\ : std_logic;
SIGNAL \inst39|count[24]~78\ : std_logic;
SIGNAL \inst39|count[25]~79_combout\ : std_logic;
SIGNAL \inst39|count[25]~80\ : std_logic;
SIGNAL \inst39|count[26]~81_combout\ : std_logic;
SIGNAL \inst39|count[26]~82\ : std_logic;
SIGNAL \inst39|count[27]~83_combout\ : std_logic;
SIGNAL \inst39|count[27]~84\ : std_logic;
SIGNAL \inst39|count[28]~85_combout\ : std_logic;
SIGNAL \inst39|count[28]~86\ : std_logic;
SIGNAL \inst39|count[29]~87_combout\ : std_logic;
SIGNAL \inst39|count[29]~88\ : std_logic;
SIGNAL \inst39|count[30]~89_combout\ : std_logic;
SIGNAL \inst39|count[30]~90\ : std_logic;
SIGNAL \inst39|count[31]~91_combout\ : std_logic;
SIGNAL \inst39|LessThan0~10_combout\ : std_logic;
SIGNAL \inst76|comb~1_combout\ : std_logic;
SIGNAL \inst76|comb~0_combout\ : std_logic;
SIGNAL \inst41|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst11~0_combout\ : std_logic;
SIGNAL \inst39|Equal0~0_combout\ : std_logic;
SIGNAL \inst39|Result_y~0_combout\ : std_logic;
SIGNAL \inst39|Result_y~q\ : std_logic;
SIGNAL \inst|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst27~0_combout\ : std_logic;
SIGNAL \inst1|inst27~1_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst1|inst33~combout\ : std_logic;
SIGNAL \inst1|inst32~combout\ : std_logic;
SIGNAL \inst78|Equal0~0_combout\ : std_logic;
SIGNAL \inst78|Equal0~1_combout\ : std_logic;
SIGNAL \inst78|Result_mura~0_combout\ : std_logic;
SIGNAL \inst78|Result_mura~q\ : std_logic;
SIGNAL \inst1|inst31~combout\ : std_logic;
SIGNAL \inst55|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst51|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst37|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst76|Yq\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst50|altsyncram_component|auto_generated|q_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst39|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst41|lpm_ff_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst78|ALT_INV_Result_mura~q\ : std_logic;
SIGNAL \inst39|ALT_INV_Result_y~q\ : std_logic;
SIGNAL \inst55|ALT_INV_Result~q\ : std_logic;

BEGIN

x2 <= ww_x2;
ww_clk <= clk;
x1 <= ww_x1;
rez <= ww_rez;
t2 <= ww_t2;
ww_clr <= clr;
ww_en <= en;
t1 <= ww_t1;
s_true <= ww_s_true;
rez_y <= ww_rez_y;
y3 <= ww_y3;
y2 <= ww_y2;
y1 <= ww_y1;
y_true <= ww_y_true;
rez_mura <= ww_rez_mura;
m1 <= ww_m1;
m2 <= ww_m2;
m3 <= ww_m3;
tt1 <= ww_tt1;
tt2 <= ww_tt2;
tt3 <= ww_tt3;
ww_prn <= prn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(6) & \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5) & 
\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4) & \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3) & \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2) & 
\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1) & \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(0));

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\inst50|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst50|altsyncram_component|auto_generated|q_a\(1) & \inst50|altsyncram_component|auto_generated|q_a\(0) & \inst3|altsyncram_component|auto_generated|q_a\(1) & 
\inst3|altsyncram_component|auto_generated|q_a\(0));

\inst50|altsyncram_component|auto_generated|q_a\(0) <= \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst50|altsyncram_component|auto_generated|q_a\(1) <= \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst51|altsyncram_component|auto_generated|q_a\(0) <= \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst51|altsyncram_component|auto_generated|q_a\(1) <= \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst51|altsyncram_component|auto_generated|q_a\(2) <= \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst78|ALT_INV_Result_mura~q\ <= NOT \inst78|Result_mura~q\;
\inst39|ALT_INV_Result_y~q\ <= NOT \inst39|Result_y~q\;
\inst55|ALT_INV_Result~q\ <= NOT \inst55|Result~q\;

-- Location: IOOBUF_X34_Y4_N16
\x2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \x2~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\x1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \x1~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\rez~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst55|ALT_INV_Result~q\,
	devoe => ww_devoe,
	o => \rez~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\t2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~q\,
	devoe => ww_devoe,
	o => \t2~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\t1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \t1~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\s_true[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst50|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \s_true[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\s_true[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst50|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \s_true[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\rez_y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|ALT_INV_Result_y~q\,
	devoe => ww_devoe,
	o => \rez_y~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\y3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst17~0_combout\,
	devoe => ww_devoe,
	o => \y3~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\y2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\y1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst15~0_combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\y_true[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst51|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \y_true[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\y_true[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst51|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \y_true[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\y_true[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst51|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \y_true[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\rez_mura~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst78|ALT_INV_Result_mura~q\,
	devoe => ww_devoe,
	o => \rez_mura~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\m1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst31~combout\,
	devoe => ww_devoe,
	o => \m1~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\m2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst32~combout\,
	devoe => ww_devoe,
	o => \m2~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\m3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst33~combout\,
	devoe => ww_devoe,
	o => \m3~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\tt1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~q\,
	devoe => ww_devoe,
	o => \tt1~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\tt2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~q\,
	devoe => ww_devoe,
	o => \tt2~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\tt3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => \tt3~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y5_N4
\inst37|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X26_Y5_N5
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X26_Y5_N6
\inst37|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X26_Y5_N7
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X26_Y5_N8
\inst37|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X26_Y5_N9
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X26_Y5_N10
\inst37|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3) & (!\inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3) & ((\inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X26_Y5_N11
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X26_Y5_N12
\inst37|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4) & (\inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4) & (!\inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4) & !\inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X26_Y5_N13
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X26_Y5_N14
\inst37|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5) & (!\inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5) & ((\inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X26_Y5_N15
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X26_Y5_N16
\inst37|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ (!\inst37|lpm_counter_component|auto_generated|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(6),
	cin => \inst37|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst37|lpm_counter_component|auto_generated|counter_comb_bita6~combout\);

-- Location: FF_X26_Y5_N17
\inst37|lpm_counter_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst37|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|lpm_counter_component|auto_generated|counter_reg_bit\(6));

-- Location: M9K_X27_Y5_N0
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00030000800030000800020000800010000C00030000800000000400000000000030000000030000800000000C00010000000020000800020000800010000000010000C00020000000000000C00020000000010000800000000C00000000C00000000000010000800030000800000000000010000C00000000C00030000000030000000000000400000000400000000C00030000800030000400020000000010000000010000800000000C00020000C00020000400000000800000000000020000400030000400030000400000000800020000C0001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "test_sequence:inst3|altsyncram:altsyncram_component|altsyncram_ljp3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 2,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N22
\inst55|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~6_combout\ = (!\inst55|count\(20) & (!\inst55|count\(23) & (!\inst55|count\(21) & !\inst55|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(20),
	datab => \inst55|count\(23),
	datac => \inst55|count\(21),
	datad => \inst55|count\(22),
	combout => \inst55|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y8_N2
\inst55|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~8_combout\ = (!\inst55|count\(30) & (!\inst55|count\(29) & !\inst55|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(30),
	datac => \inst55|count\(29),
	datad => \inst55|count\(28),
	combout => \inst55|LessThan0~8_combout\);

-- Location: LCCOMB_X29_Y8_N4
\inst55|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~5_combout\ = (!\inst55|count\(18) & (!\inst55|count\(16) & (!\inst55|count\(17) & !\inst55|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(18),
	datab => \inst55|count\(16),
	datac => \inst55|count\(17),
	datad => \inst55|count\(19),
	combout => \inst55|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y8_N12
\inst55|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~7_combout\ = (!\inst55|count\(26) & (!\inst55|count\(25) & (!\inst55|count\(27) & !\inst55|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(26),
	datab => \inst55|count\(25),
	datac => \inst55|count\(27),
	datad => \inst55|count\(24),
	combout => \inst55|LessThan0~7_combout\);

-- Location: LCCOMB_X29_Y8_N0
\inst55|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~9_combout\ = (\inst55|LessThan0~6_combout\ & (\inst55|LessThan0~8_combout\ & (\inst55|LessThan0~5_combout\ & \inst55|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|LessThan0~6_combout\,
	datab => \inst55|LessThan0~8_combout\,
	datac => \inst55|LessThan0~5_combout\,
	datad => \inst55|LessThan0~7_combout\,
	combout => \inst55|LessThan0~9_combout\);

-- Location: LCCOMB_X29_Y9_N10
\inst55|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~1_combout\ = (!\inst55|count\(7) & (!\inst55|count\(5) & (!\inst55|count\(6) & !\inst55|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(7),
	datab => \inst55|count\(5),
	datac => \inst55|count\(6),
	datad => \inst55|count\(4),
	combout => \inst55|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y9_N2
\inst55|count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[1]~31_combout\ = (\inst55|count\(0) & (\inst55|count\(1) $ (VCC))) # (!\inst55|count\(0) & (\inst55|count\(1) & VCC))
-- \inst55|count[1]~32\ = CARRY((\inst55|count\(0) & \inst55|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(0),
	datab => \inst55|count\(1),
	datad => VCC,
	combout => \inst55|count[1]~31_combout\,
	cout => \inst55|count[1]~32\);

-- Location: LCCOMB_X29_Y9_N16
\inst55|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~10_combout\ = (\inst55|count\(31)) # ((\inst55|LessThan0~9_combout\ & \inst55|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(31),
	datab => \inst55|LessThan0~9_combout\,
	datad => \inst55|LessThan0~4_combout\,
	combout => \inst55|LessThan0~10_combout\);

-- Location: FF_X30_Y9_N3
\inst55|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[1]~31_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(1));

-- Location: LCCOMB_X29_Y9_N8
\inst55|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~0_combout\ = (!\inst55|count\(3) & (!\inst55|count\(0) & (!\inst55|count\(2) & !\inst55|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(3),
	datab => \inst55|count\(0),
	datac => \inst55|count\(2),
	datad => \inst55|count\(1),
	combout => \inst55|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y9_N0
\inst55|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~3_combout\ = (!\inst55|count\(15) & (!\inst55|count\(14) & (!\inst55|count\(13) & !\inst55|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(15),
	datab => \inst55|count\(14),
	datac => \inst55|count\(13),
	datad => \inst55|count\(12),
	combout => \inst55|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y9_N24
\inst55|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~2_combout\ = (!\inst55|count\(10) & (!\inst55|count\(9) & (!\inst55|count\(8) & !\inst55|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(10),
	datab => \inst55|count\(9),
	datac => \inst55|count\(8),
	datad => \inst55|count\(11),
	combout => \inst55|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y9_N18
\inst55|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|LessThan0~4_combout\ = (\inst55|LessThan0~1_combout\ & (\inst55|LessThan0~0_combout\ & (\inst55|LessThan0~3_combout\ & \inst55|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|LessThan0~1_combout\,
	datab => \inst55|LessThan0~0_combout\,
	datac => \inst55|LessThan0~3_combout\,
	datad => \inst55|LessThan0~2_combout\,
	combout => \inst55|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst55|count[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[0]~93_combout\ = \inst55|count\(0) $ (((\inst55|count\(31)) # ((\inst55|LessThan0~9_combout\ & \inst55|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(31),
	datab => \inst55|LessThan0~9_combout\,
	datac => \inst55|count\(0),
	datad => \inst55|LessThan0~4_combout\,
	combout => \inst55|count[0]~93_combout\);

-- Location: FF_X29_Y9_N15
\inst55|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(0));

-- Location: LCCOMB_X30_Y9_N4
\inst55|count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[2]~33_combout\ = (\inst55|count\(2) & (!\inst55|count[1]~32\)) # (!\inst55|count\(2) & ((\inst55|count[1]~32\) # (GND)))
-- \inst55|count[2]~34\ = CARRY((!\inst55|count[1]~32\) # (!\inst55|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(2),
	datad => VCC,
	cin => \inst55|count[1]~32\,
	combout => \inst55|count[2]~33_combout\,
	cout => \inst55|count[2]~34\);

-- Location: FF_X30_Y9_N5
\inst55|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[2]~33_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(2));

-- Location: LCCOMB_X30_Y9_N6
\inst55|count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[3]~35_combout\ = (\inst55|count\(3) & (\inst55|count[2]~34\ $ (GND))) # (!\inst55|count\(3) & (!\inst55|count[2]~34\ & VCC))
-- \inst55|count[3]~36\ = CARRY((\inst55|count\(3) & !\inst55|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(3),
	datad => VCC,
	cin => \inst55|count[2]~34\,
	combout => \inst55|count[3]~35_combout\,
	cout => \inst55|count[3]~36\);

-- Location: FF_X30_Y9_N7
\inst55|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[3]~35_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(3));

-- Location: LCCOMB_X30_Y9_N8
\inst55|count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[4]~37_combout\ = (\inst55|count\(4) & (!\inst55|count[3]~36\)) # (!\inst55|count\(4) & ((\inst55|count[3]~36\) # (GND)))
-- \inst55|count[4]~38\ = CARRY((!\inst55|count[3]~36\) # (!\inst55|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(4),
	datad => VCC,
	cin => \inst55|count[3]~36\,
	combout => \inst55|count[4]~37_combout\,
	cout => \inst55|count[4]~38\);

-- Location: FF_X30_Y9_N9
\inst55|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[4]~37_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(4));

-- Location: LCCOMB_X30_Y9_N10
\inst55|count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[5]~39_combout\ = (\inst55|count\(5) & (\inst55|count[4]~38\ $ (GND))) # (!\inst55|count\(5) & (!\inst55|count[4]~38\ & VCC))
-- \inst55|count[5]~40\ = CARRY((\inst55|count\(5) & !\inst55|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(5),
	datad => VCC,
	cin => \inst55|count[4]~38\,
	combout => \inst55|count[5]~39_combout\,
	cout => \inst55|count[5]~40\);

-- Location: FF_X30_Y9_N11
\inst55|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[5]~39_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(5));

-- Location: LCCOMB_X30_Y9_N12
\inst55|count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[6]~41_combout\ = (\inst55|count\(6) & (!\inst55|count[5]~40\)) # (!\inst55|count\(6) & ((\inst55|count[5]~40\) # (GND)))
-- \inst55|count[6]~42\ = CARRY((!\inst55|count[5]~40\) # (!\inst55|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(6),
	datad => VCC,
	cin => \inst55|count[5]~40\,
	combout => \inst55|count[6]~41_combout\,
	cout => \inst55|count[6]~42\);

-- Location: FF_X30_Y9_N13
\inst55|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[6]~41_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(6));

-- Location: LCCOMB_X30_Y9_N14
\inst55|count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[7]~43_combout\ = (\inst55|count\(7) & (\inst55|count[6]~42\ $ (GND))) # (!\inst55|count\(7) & (!\inst55|count[6]~42\ & VCC))
-- \inst55|count[7]~44\ = CARRY((\inst55|count\(7) & !\inst55|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(7),
	datad => VCC,
	cin => \inst55|count[6]~42\,
	combout => \inst55|count[7]~43_combout\,
	cout => \inst55|count[7]~44\);

-- Location: FF_X30_Y9_N15
\inst55|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[7]~43_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(7));

-- Location: LCCOMB_X30_Y9_N16
\inst55|count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[8]~45_combout\ = (\inst55|count\(8) & (!\inst55|count[7]~44\)) # (!\inst55|count\(8) & ((\inst55|count[7]~44\) # (GND)))
-- \inst55|count[8]~46\ = CARRY((!\inst55|count[7]~44\) # (!\inst55|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(8),
	datad => VCC,
	cin => \inst55|count[7]~44\,
	combout => \inst55|count[8]~45_combout\,
	cout => \inst55|count[8]~46\);

-- Location: FF_X30_Y9_N17
\inst55|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[8]~45_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(8));

-- Location: LCCOMB_X30_Y9_N18
\inst55|count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[9]~47_combout\ = (\inst55|count\(9) & (\inst55|count[8]~46\ $ (GND))) # (!\inst55|count\(9) & (!\inst55|count[8]~46\ & VCC))
-- \inst55|count[9]~48\ = CARRY((\inst55|count\(9) & !\inst55|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(9),
	datad => VCC,
	cin => \inst55|count[8]~46\,
	combout => \inst55|count[9]~47_combout\,
	cout => \inst55|count[9]~48\);

-- Location: FF_X30_Y9_N19
\inst55|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[9]~47_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(9));

-- Location: LCCOMB_X30_Y9_N20
\inst55|count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[10]~49_combout\ = (\inst55|count\(10) & (!\inst55|count[9]~48\)) # (!\inst55|count\(10) & ((\inst55|count[9]~48\) # (GND)))
-- \inst55|count[10]~50\ = CARRY((!\inst55|count[9]~48\) # (!\inst55|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(10),
	datad => VCC,
	cin => \inst55|count[9]~48\,
	combout => \inst55|count[10]~49_combout\,
	cout => \inst55|count[10]~50\);

-- Location: FF_X30_Y9_N21
\inst55|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[10]~49_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(10));

-- Location: LCCOMB_X30_Y9_N22
\inst55|count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[11]~51_combout\ = (\inst55|count\(11) & (\inst55|count[10]~50\ $ (GND))) # (!\inst55|count\(11) & (!\inst55|count[10]~50\ & VCC))
-- \inst55|count[11]~52\ = CARRY((\inst55|count\(11) & !\inst55|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(11),
	datad => VCC,
	cin => \inst55|count[10]~50\,
	combout => \inst55|count[11]~51_combout\,
	cout => \inst55|count[11]~52\);

-- Location: FF_X30_Y9_N23
\inst55|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[11]~51_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(11));

-- Location: LCCOMB_X30_Y9_N24
\inst55|count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[12]~53_combout\ = (\inst55|count\(12) & (!\inst55|count[11]~52\)) # (!\inst55|count\(12) & ((\inst55|count[11]~52\) # (GND)))
-- \inst55|count[12]~54\ = CARRY((!\inst55|count[11]~52\) # (!\inst55|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(12),
	datad => VCC,
	cin => \inst55|count[11]~52\,
	combout => \inst55|count[12]~53_combout\,
	cout => \inst55|count[12]~54\);

-- Location: FF_X30_Y9_N25
\inst55|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[12]~53_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(12));

-- Location: LCCOMB_X30_Y9_N26
\inst55|count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[13]~55_combout\ = (\inst55|count\(13) & (\inst55|count[12]~54\ $ (GND))) # (!\inst55|count\(13) & (!\inst55|count[12]~54\ & VCC))
-- \inst55|count[13]~56\ = CARRY((\inst55|count\(13) & !\inst55|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(13),
	datad => VCC,
	cin => \inst55|count[12]~54\,
	combout => \inst55|count[13]~55_combout\,
	cout => \inst55|count[13]~56\);

-- Location: FF_X30_Y9_N27
\inst55|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[13]~55_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(13));

-- Location: LCCOMB_X30_Y9_N28
\inst55|count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[14]~57_combout\ = (\inst55|count\(14) & (!\inst55|count[13]~56\)) # (!\inst55|count\(14) & ((\inst55|count[13]~56\) # (GND)))
-- \inst55|count[14]~58\ = CARRY((!\inst55|count[13]~56\) # (!\inst55|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(14),
	datad => VCC,
	cin => \inst55|count[13]~56\,
	combout => \inst55|count[14]~57_combout\,
	cout => \inst55|count[14]~58\);

-- Location: FF_X30_Y9_N29
\inst55|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[14]~57_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(14));

-- Location: LCCOMB_X30_Y9_N30
\inst55|count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[15]~59_combout\ = (\inst55|count\(15) & (\inst55|count[14]~58\ $ (GND))) # (!\inst55|count\(15) & (!\inst55|count[14]~58\ & VCC))
-- \inst55|count[15]~60\ = CARRY((\inst55|count\(15) & !\inst55|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(15),
	datad => VCC,
	cin => \inst55|count[14]~58\,
	combout => \inst55|count[15]~59_combout\,
	cout => \inst55|count[15]~60\);

-- Location: FF_X30_Y9_N31
\inst55|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[15]~59_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(15));

-- Location: LCCOMB_X30_Y8_N0
\inst55|count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[16]~61_combout\ = (\inst55|count\(16) & (!\inst55|count[15]~60\)) # (!\inst55|count\(16) & ((\inst55|count[15]~60\) # (GND)))
-- \inst55|count[16]~62\ = CARRY((!\inst55|count[15]~60\) # (!\inst55|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(16),
	datad => VCC,
	cin => \inst55|count[15]~60\,
	combout => \inst55|count[16]~61_combout\,
	cout => \inst55|count[16]~62\);

-- Location: FF_X30_Y8_N1
\inst55|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[16]~61_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(16));

-- Location: LCCOMB_X30_Y8_N2
\inst55|count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[17]~63_combout\ = (\inst55|count\(17) & (\inst55|count[16]~62\ $ (GND))) # (!\inst55|count\(17) & (!\inst55|count[16]~62\ & VCC))
-- \inst55|count[17]~64\ = CARRY((\inst55|count\(17) & !\inst55|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(17),
	datad => VCC,
	cin => \inst55|count[16]~62\,
	combout => \inst55|count[17]~63_combout\,
	cout => \inst55|count[17]~64\);

-- Location: FF_X30_Y8_N3
\inst55|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[17]~63_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(17));

-- Location: LCCOMB_X30_Y8_N4
\inst55|count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[18]~65_combout\ = (\inst55|count\(18) & (!\inst55|count[17]~64\)) # (!\inst55|count\(18) & ((\inst55|count[17]~64\) # (GND)))
-- \inst55|count[18]~66\ = CARRY((!\inst55|count[17]~64\) # (!\inst55|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(18),
	datad => VCC,
	cin => \inst55|count[17]~64\,
	combout => \inst55|count[18]~65_combout\,
	cout => \inst55|count[18]~66\);

-- Location: FF_X30_Y8_N5
\inst55|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[18]~65_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(18));

-- Location: LCCOMB_X30_Y8_N6
\inst55|count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[19]~67_combout\ = (\inst55|count\(19) & (\inst55|count[18]~66\ $ (GND))) # (!\inst55|count\(19) & (!\inst55|count[18]~66\ & VCC))
-- \inst55|count[19]~68\ = CARRY((\inst55|count\(19) & !\inst55|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(19),
	datad => VCC,
	cin => \inst55|count[18]~66\,
	combout => \inst55|count[19]~67_combout\,
	cout => \inst55|count[19]~68\);

-- Location: FF_X30_Y8_N7
\inst55|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[19]~67_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(19));

-- Location: LCCOMB_X30_Y8_N8
\inst55|count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[20]~69_combout\ = (\inst55|count\(20) & (!\inst55|count[19]~68\)) # (!\inst55|count\(20) & ((\inst55|count[19]~68\) # (GND)))
-- \inst55|count[20]~70\ = CARRY((!\inst55|count[19]~68\) # (!\inst55|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(20),
	datad => VCC,
	cin => \inst55|count[19]~68\,
	combout => \inst55|count[20]~69_combout\,
	cout => \inst55|count[20]~70\);

-- Location: FF_X30_Y8_N9
\inst55|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[20]~69_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(20));

-- Location: LCCOMB_X30_Y8_N10
\inst55|count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[21]~71_combout\ = (\inst55|count\(21) & (\inst55|count[20]~70\ $ (GND))) # (!\inst55|count\(21) & (!\inst55|count[20]~70\ & VCC))
-- \inst55|count[21]~72\ = CARRY((\inst55|count\(21) & !\inst55|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(21),
	datad => VCC,
	cin => \inst55|count[20]~70\,
	combout => \inst55|count[21]~71_combout\,
	cout => \inst55|count[21]~72\);

-- Location: FF_X30_Y8_N11
\inst55|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[21]~71_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(21));

-- Location: LCCOMB_X30_Y8_N12
\inst55|count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[22]~73_combout\ = (\inst55|count\(22) & (!\inst55|count[21]~72\)) # (!\inst55|count\(22) & ((\inst55|count[21]~72\) # (GND)))
-- \inst55|count[22]~74\ = CARRY((!\inst55|count[21]~72\) # (!\inst55|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(22),
	datad => VCC,
	cin => \inst55|count[21]~72\,
	combout => \inst55|count[22]~73_combout\,
	cout => \inst55|count[22]~74\);

-- Location: FF_X30_Y8_N13
\inst55|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[22]~73_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(22));

-- Location: LCCOMB_X30_Y8_N14
\inst55|count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[23]~75_combout\ = (\inst55|count\(23) & (\inst55|count[22]~74\ $ (GND))) # (!\inst55|count\(23) & (!\inst55|count[22]~74\ & VCC))
-- \inst55|count[23]~76\ = CARRY((\inst55|count\(23) & !\inst55|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(23),
	datad => VCC,
	cin => \inst55|count[22]~74\,
	combout => \inst55|count[23]~75_combout\,
	cout => \inst55|count[23]~76\);

-- Location: FF_X30_Y8_N15
\inst55|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[23]~75_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(23));

-- Location: LCCOMB_X30_Y8_N16
\inst55|count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[24]~77_combout\ = (\inst55|count\(24) & (!\inst55|count[23]~76\)) # (!\inst55|count\(24) & ((\inst55|count[23]~76\) # (GND)))
-- \inst55|count[24]~78\ = CARRY((!\inst55|count[23]~76\) # (!\inst55|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(24),
	datad => VCC,
	cin => \inst55|count[23]~76\,
	combout => \inst55|count[24]~77_combout\,
	cout => \inst55|count[24]~78\);

-- Location: FF_X30_Y8_N17
\inst55|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[24]~77_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(24));

-- Location: LCCOMB_X30_Y8_N18
\inst55|count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[25]~79_combout\ = (\inst55|count\(25) & (\inst55|count[24]~78\ $ (GND))) # (!\inst55|count\(25) & (!\inst55|count[24]~78\ & VCC))
-- \inst55|count[25]~80\ = CARRY((\inst55|count\(25) & !\inst55|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(25),
	datad => VCC,
	cin => \inst55|count[24]~78\,
	combout => \inst55|count[25]~79_combout\,
	cout => \inst55|count[25]~80\);

-- Location: FF_X30_Y8_N19
\inst55|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[25]~79_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(25));

-- Location: LCCOMB_X30_Y8_N20
\inst55|count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[26]~81_combout\ = (\inst55|count\(26) & (!\inst55|count[25]~80\)) # (!\inst55|count\(26) & ((\inst55|count[25]~80\) # (GND)))
-- \inst55|count[26]~82\ = CARRY((!\inst55|count[25]~80\) # (!\inst55|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(26),
	datad => VCC,
	cin => \inst55|count[25]~80\,
	combout => \inst55|count[26]~81_combout\,
	cout => \inst55|count[26]~82\);

-- Location: FF_X30_Y8_N21
\inst55|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[26]~81_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(26));

-- Location: LCCOMB_X30_Y8_N22
\inst55|count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[27]~83_combout\ = (\inst55|count\(27) & (\inst55|count[26]~82\ $ (GND))) # (!\inst55|count\(27) & (!\inst55|count[26]~82\ & VCC))
-- \inst55|count[27]~84\ = CARRY((\inst55|count\(27) & !\inst55|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(27),
	datad => VCC,
	cin => \inst55|count[26]~82\,
	combout => \inst55|count[27]~83_combout\,
	cout => \inst55|count[27]~84\);

-- Location: FF_X30_Y8_N23
\inst55|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[27]~83_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(27));

-- Location: LCCOMB_X30_Y8_N24
\inst55|count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[28]~85_combout\ = (\inst55|count\(28) & (!\inst55|count[27]~84\)) # (!\inst55|count\(28) & ((\inst55|count[27]~84\) # (GND)))
-- \inst55|count[28]~86\ = CARRY((!\inst55|count[27]~84\) # (!\inst55|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(28),
	datad => VCC,
	cin => \inst55|count[27]~84\,
	combout => \inst55|count[28]~85_combout\,
	cout => \inst55|count[28]~86\);

-- Location: FF_X30_Y8_N25
\inst55|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[28]~85_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(28));

-- Location: LCCOMB_X30_Y8_N26
\inst55|count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[29]~87_combout\ = (\inst55|count\(29) & (\inst55|count[28]~86\ $ (GND))) # (!\inst55|count\(29) & (!\inst55|count[28]~86\ & VCC))
-- \inst55|count[29]~88\ = CARRY((\inst55|count\(29) & !\inst55|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(29),
	datad => VCC,
	cin => \inst55|count[28]~86\,
	combout => \inst55|count[29]~87_combout\,
	cout => \inst55|count[29]~88\);

-- Location: FF_X30_Y8_N27
\inst55|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[29]~87_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(29));

-- Location: LCCOMB_X30_Y8_N28
\inst55|count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[30]~89_combout\ = (\inst55|count\(30) & (!\inst55|count[29]~88\)) # (!\inst55|count\(30) & ((\inst55|count[29]~88\) # (GND)))
-- \inst55|count[30]~90\ = CARRY((!\inst55|count[29]~88\) # (!\inst55|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst55|count\(30),
	datad => VCC,
	cin => \inst55|count[29]~88\,
	combout => \inst55|count[30]~89_combout\,
	cout => \inst55|count[30]~90\);

-- Location: FF_X30_Y8_N29
\inst55|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[30]~89_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(30));

-- Location: LCCOMB_X30_Y8_N30
\inst55|count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|count[31]~91_combout\ = \inst55|count\(31) $ (!\inst55|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(31),
	cin => \inst55|count[30]~90\,
	combout => \inst55|count[31]~91_combout\);

-- Location: FF_X30_Y8_N31
\inst55|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|count[31]~91_combout\,
	ena => \inst55|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|count\(31));

-- Location: LCCOMB_X26_Y9_N6
\inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(0) & ((\inst|inst2~q\) # ((\inst|inst~q\)))) # (!\inst3|altsyncram_component|auto_generated|q_a\(0) & ((\inst|inst~q\ & (!\inst|inst2~q\)) # (!\inst|inst~q\ & 
-- ((\inst3|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|inst2~q\,
	datac => \inst|inst~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y2_N15
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X26_Y9_N7
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X26_Y9_N20
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = \inst|inst2~q\ $ (((\inst3|altsyncram_component|auto_generated|q_a\(0)) # ((\inst|inst~q\ & !\inst3|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst2~0_combout\);

-- Location: FF_X26_Y9_N21
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: M9K_X27_Y9_N0
\inst50|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0007000090003800100005C000E00070000300038001C00038000500054000E000340010",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "romS.mif",
	init_file_layout => "port_a",
	logical_ram_name => "true_S:inst50|altsyncram:altsyncram_component|altsyncram_4g81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 2,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \en~input_o\,
	portaaddr => \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst50|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y9_N28
\inst55|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|Equal0~0_combout\ = (\inst|inst2~q\ & (\inst50|altsyncram_component|auto_generated|q_a\(0) & (\inst|inst~q\ $ (!\inst50|altsyncram_component|auto_generated|q_a\(1))))) # (!\inst|inst2~q\ & (!\inst50|altsyncram_component|auto_generated|q_a\(0) & 
-- (\inst|inst~q\ $ (!\inst50|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst50|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst50|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst55|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y9_N12
\inst55|Result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|Result~0_combout\ = (!\inst55|count\(31) & (!\inst55|Equal0~0_combout\ & ((!\inst55|LessThan0~9_combout\) # (!\inst55|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|count\(31),
	datab => \inst55|LessThan0~4_combout\,
	datac => \inst55|LessThan0~9_combout\,
	datad => \inst55|Equal0~0_combout\,
	combout => \inst55|Result~0_combout\);

-- Location: FF_X28_Y9_N13
\inst55|Result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst55|Result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|Result~q\);

-- Location: LCCOMB_X29_Y9_N4
\inst76|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|comb~2_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(1) & ((\inst|inst2~q\) # ((!\inst3|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst3|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst3|altsyncram_component|auto_generated|q_a\(0)) # (\inst|inst2~q\ $ (\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst76|comb~2_combout\);

-- Location: LCCOMB_X29_Y9_N22
\inst76|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|comb~3_combout\ = (!\inst3|altsyncram_component|auto_generated|q_a\(1) & (!\inst3|altsyncram_component|auto_generated|q_a\(0) & (\inst|inst2~q\ $ (!\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst76|comb~3_combout\);

-- Location: LCCOMB_X29_Y9_N0
\inst76|Yq[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Yq\(2) = (!\inst76|comb~2_combout\ & ((\inst76|comb~3_combout\) # (\inst76|Yq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst76|comb~2_combout\,
	datac => \inst76|comb~3_combout\,
	datad => \inst76|Yq\(2),
	combout => \inst76|Yq\(2));

-- Location: FF_X28_Y9_N23
\inst41|lpm_ff_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst76|Yq\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X31_Y10_N12
\inst39|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~2_combout\ = (!\inst39|count\(10) & (!\inst39|count\(11) & (!\inst39|count\(12) & !\inst39|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(10),
	datab => \inst39|count\(11),
	datac => \inst39|count\(12),
	datad => \inst39|count\(9),
	combout => \inst39|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y10_N2
\inst39|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~1_combout\ = (!\inst39|count\(5) & (!\inst39|count\(7) & (!\inst39|count\(6) & !\inst39|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(5),
	datab => \inst39|count\(7),
	datac => \inst39|count\(6),
	datad => \inst39|count\(8),
	combout => \inst39|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y10_N0
\inst39|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~3_combout\ = (!\inst39|count\(13) & (!\inst39|count\(14) & (!\inst39|count\(15) & !\inst39|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(13),
	datab => \inst39|count\(14),
	datac => \inst39|count\(15),
	datad => \inst39|count\(16),
	combout => \inst39|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y10_N2
\inst39|count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[1]~31_combout\ = (\inst39|count\(0) & (\inst39|count\(1) $ (VCC))) # (!\inst39|count\(0) & (\inst39|count\(1) & VCC))
-- \inst39|count[1]~32\ = CARRY((\inst39|count\(0) & \inst39|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(0),
	datab => \inst39|count\(1),
	datad => VCC,
	combout => \inst39|count[1]~31_combout\,
	cout => \inst39|count[1]~32\);

-- Location: FF_X32_Y10_N3
\inst39|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[1]~31_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(1));

-- Location: LCCOMB_X31_Y10_N0
\inst39|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~0_combout\ = (!\inst39|count\(2) & (!\inst39|count\(4) & (!\inst39|count\(1) & !\inst39|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(2),
	datab => \inst39|count\(4),
	datac => \inst39|count\(1),
	datad => \inst39|count\(3),
	combout => \inst39|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y10_N30
\inst39|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~4_combout\ = (\inst39|LessThan0~2_combout\ & (\inst39|LessThan0~1_combout\ & (\inst39|LessThan0~3_combout\ & \inst39|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|LessThan0~2_combout\,
	datab => \inst39|LessThan0~1_combout\,
	datac => \inst39|LessThan0~3_combout\,
	datad => \inst39|LessThan0~0_combout\,
	combout => \inst39|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y9_N10
\inst39|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~8_combout\ = (!\inst39|count\(29) & !\inst39|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst39|count\(29),
	datad => \inst39|count\(30),
	combout => \inst39|LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y9_N2
\inst39|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~6_combout\ = (!\inst39|count\(23) & (!\inst39|count\(22) & (!\inst39|count\(21) & !\inst39|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(23),
	datab => \inst39|count\(22),
	datac => \inst39|count\(21),
	datad => \inst39|count\(24),
	combout => \inst39|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y9_N8
\inst39|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~7_combout\ = (!\inst39|count\(26) & (!\inst39|count\(27) & (!\inst39|count\(28) & !\inst39|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(26),
	datab => \inst39|count\(27),
	datac => \inst39|count\(28),
	datad => \inst39|count\(25),
	combout => \inst39|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y9_N24
\inst39|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~5_combout\ = (!\inst39|count\(18) & (!\inst39|count\(20) & (!\inst39|count\(19) & !\inst39|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(18),
	datab => \inst39|count\(20),
	datac => \inst39|count\(19),
	datad => \inst39|count\(17),
	combout => \inst39|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y9_N12
\inst39|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~9_combout\ = (\inst39|LessThan0~8_combout\ & (\inst39|LessThan0~6_combout\ & (\inst39|LessThan0~7_combout\ & \inst39|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|LessThan0~8_combout\,
	datab => \inst39|LessThan0~6_combout\,
	datac => \inst39|LessThan0~7_combout\,
	datad => \inst39|LessThan0~5_combout\,
	combout => \inst39|LessThan0~9_combout\);

-- Location: LCCOMB_X31_Y9_N0
\inst39|count[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[0]~93_combout\ = \inst39|count\(0) $ (((\inst39|count\(31)) # ((\inst39|LessThan0~4_combout\ & \inst39|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(31),
	datab => \inst39|LessThan0~4_combout\,
	datac => \inst39|count\(0),
	datad => \inst39|LessThan0~9_combout\,
	combout => \inst39|count[0]~93_combout\);

-- Location: FF_X31_Y9_N1
\inst39|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(0));

-- Location: LCCOMB_X32_Y10_N4
\inst39|count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[2]~33_combout\ = (\inst39|count\(2) & (!\inst39|count[1]~32\)) # (!\inst39|count\(2) & ((\inst39|count[1]~32\) # (GND)))
-- \inst39|count[2]~34\ = CARRY((!\inst39|count[1]~32\) # (!\inst39|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(2),
	datad => VCC,
	cin => \inst39|count[1]~32\,
	combout => \inst39|count[2]~33_combout\,
	cout => \inst39|count[2]~34\);

-- Location: FF_X32_Y10_N5
\inst39|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[2]~33_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(2));

-- Location: LCCOMB_X32_Y10_N6
\inst39|count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[3]~35_combout\ = (\inst39|count\(3) & (\inst39|count[2]~34\ $ (GND))) # (!\inst39|count\(3) & (!\inst39|count[2]~34\ & VCC))
-- \inst39|count[3]~36\ = CARRY((\inst39|count\(3) & !\inst39|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(3),
	datad => VCC,
	cin => \inst39|count[2]~34\,
	combout => \inst39|count[3]~35_combout\,
	cout => \inst39|count[3]~36\);

-- Location: FF_X32_Y10_N7
\inst39|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[3]~35_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(3));

-- Location: LCCOMB_X32_Y10_N8
\inst39|count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[4]~37_combout\ = (\inst39|count\(4) & (!\inst39|count[3]~36\)) # (!\inst39|count\(4) & ((\inst39|count[3]~36\) # (GND)))
-- \inst39|count[4]~38\ = CARRY((!\inst39|count[3]~36\) # (!\inst39|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(4),
	datad => VCC,
	cin => \inst39|count[3]~36\,
	combout => \inst39|count[4]~37_combout\,
	cout => \inst39|count[4]~38\);

-- Location: FF_X32_Y10_N9
\inst39|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[4]~37_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(4));

-- Location: LCCOMB_X32_Y10_N10
\inst39|count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[5]~39_combout\ = (\inst39|count\(5) & (\inst39|count[4]~38\ $ (GND))) # (!\inst39|count\(5) & (!\inst39|count[4]~38\ & VCC))
-- \inst39|count[5]~40\ = CARRY((\inst39|count\(5) & !\inst39|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(5),
	datad => VCC,
	cin => \inst39|count[4]~38\,
	combout => \inst39|count[5]~39_combout\,
	cout => \inst39|count[5]~40\);

-- Location: FF_X32_Y10_N11
\inst39|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[5]~39_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(5));

-- Location: LCCOMB_X32_Y10_N12
\inst39|count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[6]~41_combout\ = (\inst39|count\(6) & (!\inst39|count[5]~40\)) # (!\inst39|count\(6) & ((\inst39|count[5]~40\) # (GND)))
-- \inst39|count[6]~42\ = CARRY((!\inst39|count[5]~40\) # (!\inst39|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(6),
	datad => VCC,
	cin => \inst39|count[5]~40\,
	combout => \inst39|count[6]~41_combout\,
	cout => \inst39|count[6]~42\);

-- Location: FF_X32_Y10_N13
\inst39|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[6]~41_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(6));

-- Location: LCCOMB_X32_Y10_N14
\inst39|count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[7]~43_combout\ = (\inst39|count\(7) & (\inst39|count[6]~42\ $ (GND))) # (!\inst39|count\(7) & (!\inst39|count[6]~42\ & VCC))
-- \inst39|count[7]~44\ = CARRY((\inst39|count\(7) & !\inst39|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(7),
	datad => VCC,
	cin => \inst39|count[6]~42\,
	combout => \inst39|count[7]~43_combout\,
	cout => \inst39|count[7]~44\);

-- Location: FF_X32_Y10_N15
\inst39|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[7]~43_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(7));

-- Location: LCCOMB_X32_Y10_N16
\inst39|count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[8]~45_combout\ = (\inst39|count\(8) & (!\inst39|count[7]~44\)) # (!\inst39|count\(8) & ((\inst39|count[7]~44\) # (GND)))
-- \inst39|count[8]~46\ = CARRY((!\inst39|count[7]~44\) # (!\inst39|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(8),
	datad => VCC,
	cin => \inst39|count[7]~44\,
	combout => \inst39|count[8]~45_combout\,
	cout => \inst39|count[8]~46\);

-- Location: FF_X32_Y10_N17
\inst39|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[8]~45_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(8));

-- Location: LCCOMB_X32_Y10_N18
\inst39|count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[9]~47_combout\ = (\inst39|count\(9) & (\inst39|count[8]~46\ $ (GND))) # (!\inst39|count\(9) & (!\inst39|count[8]~46\ & VCC))
-- \inst39|count[9]~48\ = CARRY((\inst39|count\(9) & !\inst39|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(9),
	datad => VCC,
	cin => \inst39|count[8]~46\,
	combout => \inst39|count[9]~47_combout\,
	cout => \inst39|count[9]~48\);

-- Location: FF_X32_Y10_N19
\inst39|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[9]~47_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(9));

-- Location: LCCOMB_X32_Y10_N20
\inst39|count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[10]~49_combout\ = (\inst39|count\(10) & (!\inst39|count[9]~48\)) # (!\inst39|count\(10) & ((\inst39|count[9]~48\) # (GND)))
-- \inst39|count[10]~50\ = CARRY((!\inst39|count[9]~48\) # (!\inst39|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(10),
	datad => VCC,
	cin => \inst39|count[9]~48\,
	combout => \inst39|count[10]~49_combout\,
	cout => \inst39|count[10]~50\);

-- Location: FF_X32_Y10_N21
\inst39|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[10]~49_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(10));

-- Location: LCCOMB_X32_Y10_N22
\inst39|count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[11]~51_combout\ = (\inst39|count\(11) & (\inst39|count[10]~50\ $ (GND))) # (!\inst39|count\(11) & (!\inst39|count[10]~50\ & VCC))
-- \inst39|count[11]~52\ = CARRY((\inst39|count\(11) & !\inst39|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(11),
	datad => VCC,
	cin => \inst39|count[10]~50\,
	combout => \inst39|count[11]~51_combout\,
	cout => \inst39|count[11]~52\);

-- Location: FF_X32_Y10_N23
\inst39|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[11]~51_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(11));

-- Location: LCCOMB_X32_Y10_N24
\inst39|count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[12]~53_combout\ = (\inst39|count\(12) & (!\inst39|count[11]~52\)) # (!\inst39|count\(12) & ((\inst39|count[11]~52\) # (GND)))
-- \inst39|count[12]~54\ = CARRY((!\inst39|count[11]~52\) # (!\inst39|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(12),
	datad => VCC,
	cin => \inst39|count[11]~52\,
	combout => \inst39|count[12]~53_combout\,
	cout => \inst39|count[12]~54\);

-- Location: FF_X32_Y10_N25
\inst39|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[12]~53_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(12));

-- Location: LCCOMB_X32_Y10_N26
\inst39|count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[13]~55_combout\ = (\inst39|count\(13) & (\inst39|count[12]~54\ $ (GND))) # (!\inst39|count\(13) & (!\inst39|count[12]~54\ & VCC))
-- \inst39|count[13]~56\ = CARRY((\inst39|count\(13) & !\inst39|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(13),
	datad => VCC,
	cin => \inst39|count[12]~54\,
	combout => \inst39|count[13]~55_combout\,
	cout => \inst39|count[13]~56\);

-- Location: FF_X32_Y10_N27
\inst39|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[13]~55_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(13));

-- Location: LCCOMB_X32_Y10_N28
\inst39|count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[14]~57_combout\ = (\inst39|count\(14) & (!\inst39|count[13]~56\)) # (!\inst39|count\(14) & ((\inst39|count[13]~56\) # (GND)))
-- \inst39|count[14]~58\ = CARRY((!\inst39|count[13]~56\) # (!\inst39|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(14),
	datad => VCC,
	cin => \inst39|count[13]~56\,
	combout => \inst39|count[14]~57_combout\,
	cout => \inst39|count[14]~58\);

-- Location: FF_X32_Y10_N29
\inst39|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[14]~57_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(14));

-- Location: LCCOMB_X32_Y10_N30
\inst39|count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[15]~59_combout\ = (\inst39|count\(15) & (\inst39|count[14]~58\ $ (GND))) # (!\inst39|count\(15) & (!\inst39|count[14]~58\ & VCC))
-- \inst39|count[15]~60\ = CARRY((\inst39|count\(15) & !\inst39|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(15),
	datad => VCC,
	cin => \inst39|count[14]~58\,
	combout => \inst39|count[15]~59_combout\,
	cout => \inst39|count[15]~60\);

-- Location: FF_X32_Y10_N31
\inst39|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[15]~59_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(15));

-- Location: LCCOMB_X32_Y9_N0
\inst39|count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[16]~61_combout\ = (\inst39|count\(16) & (!\inst39|count[15]~60\)) # (!\inst39|count\(16) & ((\inst39|count[15]~60\) # (GND)))
-- \inst39|count[16]~62\ = CARRY((!\inst39|count[15]~60\) # (!\inst39|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(16),
	datad => VCC,
	cin => \inst39|count[15]~60\,
	combout => \inst39|count[16]~61_combout\,
	cout => \inst39|count[16]~62\);

-- Location: FF_X32_Y9_N1
\inst39|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[16]~61_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(16));

-- Location: LCCOMB_X32_Y9_N2
\inst39|count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[17]~63_combout\ = (\inst39|count\(17) & (\inst39|count[16]~62\ $ (GND))) # (!\inst39|count\(17) & (!\inst39|count[16]~62\ & VCC))
-- \inst39|count[17]~64\ = CARRY((\inst39|count\(17) & !\inst39|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(17),
	datad => VCC,
	cin => \inst39|count[16]~62\,
	combout => \inst39|count[17]~63_combout\,
	cout => \inst39|count[17]~64\);

-- Location: FF_X32_Y9_N3
\inst39|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[17]~63_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(17));

-- Location: LCCOMB_X32_Y9_N4
\inst39|count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[18]~65_combout\ = (\inst39|count\(18) & (!\inst39|count[17]~64\)) # (!\inst39|count\(18) & ((\inst39|count[17]~64\) # (GND)))
-- \inst39|count[18]~66\ = CARRY((!\inst39|count[17]~64\) # (!\inst39|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(18),
	datad => VCC,
	cin => \inst39|count[17]~64\,
	combout => \inst39|count[18]~65_combout\,
	cout => \inst39|count[18]~66\);

-- Location: FF_X32_Y9_N5
\inst39|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[18]~65_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(18));

-- Location: LCCOMB_X32_Y9_N6
\inst39|count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[19]~67_combout\ = (\inst39|count\(19) & (\inst39|count[18]~66\ $ (GND))) # (!\inst39|count\(19) & (!\inst39|count[18]~66\ & VCC))
-- \inst39|count[19]~68\ = CARRY((\inst39|count\(19) & !\inst39|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(19),
	datad => VCC,
	cin => \inst39|count[18]~66\,
	combout => \inst39|count[19]~67_combout\,
	cout => \inst39|count[19]~68\);

-- Location: FF_X32_Y9_N7
\inst39|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[19]~67_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(19));

-- Location: LCCOMB_X32_Y9_N8
\inst39|count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[20]~69_combout\ = (\inst39|count\(20) & (!\inst39|count[19]~68\)) # (!\inst39|count\(20) & ((\inst39|count[19]~68\) # (GND)))
-- \inst39|count[20]~70\ = CARRY((!\inst39|count[19]~68\) # (!\inst39|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(20),
	datad => VCC,
	cin => \inst39|count[19]~68\,
	combout => \inst39|count[20]~69_combout\,
	cout => \inst39|count[20]~70\);

-- Location: FF_X32_Y9_N9
\inst39|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[20]~69_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(20));

-- Location: LCCOMB_X32_Y9_N10
\inst39|count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[21]~71_combout\ = (\inst39|count\(21) & (\inst39|count[20]~70\ $ (GND))) # (!\inst39|count\(21) & (!\inst39|count[20]~70\ & VCC))
-- \inst39|count[21]~72\ = CARRY((\inst39|count\(21) & !\inst39|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(21),
	datad => VCC,
	cin => \inst39|count[20]~70\,
	combout => \inst39|count[21]~71_combout\,
	cout => \inst39|count[21]~72\);

-- Location: FF_X32_Y9_N11
\inst39|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[21]~71_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(21));

-- Location: LCCOMB_X32_Y9_N12
\inst39|count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[22]~73_combout\ = (\inst39|count\(22) & (!\inst39|count[21]~72\)) # (!\inst39|count\(22) & ((\inst39|count[21]~72\) # (GND)))
-- \inst39|count[22]~74\ = CARRY((!\inst39|count[21]~72\) # (!\inst39|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(22),
	datad => VCC,
	cin => \inst39|count[21]~72\,
	combout => \inst39|count[22]~73_combout\,
	cout => \inst39|count[22]~74\);

-- Location: FF_X32_Y9_N13
\inst39|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[22]~73_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(22));

-- Location: LCCOMB_X32_Y9_N14
\inst39|count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[23]~75_combout\ = (\inst39|count\(23) & (\inst39|count[22]~74\ $ (GND))) # (!\inst39|count\(23) & (!\inst39|count[22]~74\ & VCC))
-- \inst39|count[23]~76\ = CARRY((\inst39|count\(23) & !\inst39|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(23),
	datad => VCC,
	cin => \inst39|count[22]~74\,
	combout => \inst39|count[23]~75_combout\,
	cout => \inst39|count[23]~76\);

-- Location: FF_X32_Y9_N15
\inst39|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[23]~75_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(23));

-- Location: LCCOMB_X32_Y9_N16
\inst39|count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[24]~77_combout\ = (\inst39|count\(24) & (!\inst39|count[23]~76\)) # (!\inst39|count\(24) & ((\inst39|count[23]~76\) # (GND)))
-- \inst39|count[24]~78\ = CARRY((!\inst39|count[23]~76\) # (!\inst39|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(24),
	datad => VCC,
	cin => \inst39|count[23]~76\,
	combout => \inst39|count[24]~77_combout\,
	cout => \inst39|count[24]~78\);

-- Location: FF_X32_Y9_N17
\inst39|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[24]~77_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(24));

-- Location: LCCOMB_X32_Y9_N18
\inst39|count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[25]~79_combout\ = (\inst39|count\(25) & (\inst39|count[24]~78\ $ (GND))) # (!\inst39|count\(25) & (!\inst39|count[24]~78\ & VCC))
-- \inst39|count[25]~80\ = CARRY((\inst39|count\(25) & !\inst39|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(25),
	datad => VCC,
	cin => \inst39|count[24]~78\,
	combout => \inst39|count[25]~79_combout\,
	cout => \inst39|count[25]~80\);

-- Location: FF_X32_Y9_N19
\inst39|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[25]~79_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(25));

-- Location: LCCOMB_X32_Y9_N20
\inst39|count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[26]~81_combout\ = (\inst39|count\(26) & (!\inst39|count[25]~80\)) # (!\inst39|count\(26) & ((\inst39|count[25]~80\) # (GND)))
-- \inst39|count[26]~82\ = CARRY((!\inst39|count[25]~80\) # (!\inst39|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(26),
	datad => VCC,
	cin => \inst39|count[25]~80\,
	combout => \inst39|count[26]~81_combout\,
	cout => \inst39|count[26]~82\);

-- Location: FF_X32_Y9_N21
\inst39|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[26]~81_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(26));

-- Location: LCCOMB_X32_Y9_N22
\inst39|count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[27]~83_combout\ = (\inst39|count\(27) & (\inst39|count[26]~82\ $ (GND))) # (!\inst39|count\(27) & (!\inst39|count[26]~82\ & VCC))
-- \inst39|count[27]~84\ = CARRY((\inst39|count\(27) & !\inst39|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(27),
	datad => VCC,
	cin => \inst39|count[26]~82\,
	combout => \inst39|count[27]~83_combout\,
	cout => \inst39|count[27]~84\);

-- Location: FF_X32_Y9_N23
\inst39|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[27]~83_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(27));

-- Location: LCCOMB_X32_Y9_N24
\inst39|count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[28]~85_combout\ = (\inst39|count\(28) & (!\inst39|count[27]~84\)) # (!\inst39|count\(28) & ((\inst39|count[27]~84\) # (GND)))
-- \inst39|count[28]~86\ = CARRY((!\inst39|count[27]~84\) # (!\inst39|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(28),
	datad => VCC,
	cin => \inst39|count[27]~84\,
	combout => \inst39|count[28]~85_combout\,
	cout => \inst39|count[28]~86\);

-- Location: FF_X32_Y9_N25
\inst39|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[28]~85_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(28));

-- Location: LCCOMB_X32_Y9_N26
\inst39|count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[29]~87_combout\ = (\inst39|count\(29) & (\inst39|count[28]~86\ $ (GND))) # (!\inst39|count\(29) & (!\inst39|count[28]~86\ & VCC))
-- \inst39|count[29]~88\ = CARRY((\inst39|count\(29) & !\inst39|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(29),
	datad => VCC,
	cin => \inst39|count[28]~86\,
	combout => \inst39|count[29]~87_combout\,
	cout => \inst39|count[29]~88\);

-- Location: FF_X32_Y9_N27
\inst39|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[29]~87_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(29));

-- Location: LCCOMB_X32_Y9_N28
\inst39|count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[30]~89_combout\ = (\inst39|count\(30) & (!\inst39|count[29]~88\)) # (!\inst39|count\(30) & ((\inst39|count[29]~88\) # (GND)))
-- \inst39|count[30]~90\ = CARRY((!\inst39|count[29]~88\) # (!\inst39|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst39|count\(30),
	datad => VCC,
	cin => \inst39|count[29]~88\,
	combout => \inst39|count[30]~89_combout\,
	cout => \inst39|count[30]~90\);

-- Location: FF_X32_Y9_N29
\inst39|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[30]~89_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(30));

-- Location: LCCOMB_X32_Y9_N30
\inst39|count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|count[31]~91_combout\ = \inst39|count\(31) $ (!\inst39|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(31),
	cin => \inst39|count[30]~90\,
	combout => \inst39|count[31]~91_combout\);

-- Location: FF_X32_Y9_N31
\inst39|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|count[31]~91_combout\,
	ena => \inst39|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|count\(31));

-- Location: LCCOMB_X31_Y9_N6
\inst39|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~10_combout\ = (\inst39|count\(31)) # ((\inst39|LessThan0~4_combout\ & \inst39|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|count\(31),
	datac => \inst39|LessThan0~4_combout\,
	datad => \inst39|LessThan0~9_combout\,
	combout => \inst39|LessThan0~10_combout\);

-- Location: LCCOMB_X29_Y9_N12
\inst76|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|comb~1_combout\ = (\inst|inst2~q\ & (\inst|inst~q\ & ((!\inst3|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst|inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(1) $ (!\inst3|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst76|comb~1_combout\);

-- Location: LCCOMB_X29_Y9_N26
\inst76|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|comb~0_combout\ = (!\inst3|altsyncram_component|auto_generated|q_a\(0) & ((\inst|inst2~q\ & (\inst|inst~q\)) # (!\inst|inst2~q\ & ((!\inst3|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst76|comb~0_combout\);

-- Location: LCCOMB_X29_Y9_N28
\inst76|Yq[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Yq\(0) = (!\inst76|comb~0_combout\ & ((\inst76|Yq\(0)) # (!\inst76|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst76|comb~1_combout\,
	datac => \inst76|comb~0_combout\,
	datad => \inst76|Yq\(0),
	combout => \inst76|Yq\(0));

-- Location: LCCOMB_X28_Y9_N2
\inst41|lpm_ff_component|dffs[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|lpm_ff_component|dffs[0]~feeder_combout\ = \inst76|Yq\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst76|Yq\(0),
	combout => \inst41|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: FF_X28_Y9_N3
\inst41|lpm_ff_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst41|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X29_Y9_N30
\inst|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~0_combout\ = (!\inst|inst2~q\ & \inst3|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst11~0_combout\);

-- Location: LCCOMB_X29_Y9_N6
\inst76|Yq[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Yq\(1) = (\inst3|altsyncram_component|auto_generated|q_a\(1) & ((\inst76|Yq\(1)) # (!\inst|inst11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~0_combout\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst76|Yq\(1),
	combout => \inst76|Yq\(1));

-- Location: FF_X28_Y9_N1
\inst41|lpm_ff_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst76|Yq\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X28_Y9_N0
\inst39|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Equal0~0_combout\ = (\inst51|altsyncram_component|auto_generated|q_a\(1) & (\inst41|lpm_ff_component|dffs\(1) & (\inst41|lpm_ff_component|dffs\(0) $ (!\inst51|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\inst51|altsyncram_component|auto_generated|q_a\(1) & (!\inst41|lpm_ff_component|dffs\(1) & (\inst41|lpm_ff_component|dffs\(0) $ (!\inst51|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst41|lpm_ff_component|dffs\(0),
	datac => \inst41|lpm_ff_component|dffs\(1),
	datad => \inst51|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst39|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y9_N18
\inst39|Result_y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Result_y~0_combout\ = (!\inst39|LessThan0~10_combout\ & ((\inst41|lpm_ff_component|dffs\(2) $ (\inst51|altsyncram_component|auto_generated|q_a\(2))) # (!\inst39|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|lpm_ff_component|dffs\(2),
	datab => \inst39|LessThan0~10_combout\,
	datac => \inst51|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst39|Equal0~0_combout\,
	combout => \inst39|Result_y~0_combout\);

-- Location: FF_X28_Y9_N19
\inst39|Result_y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst39|Result_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|Result_y~q\);

-- Location: LCCOMB_X26_Y9_N28
\inst|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17~0_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(0)) # ((\inst|inst2~q\ & (!\inst|inst~q\)) # (!\inst|inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|inst2~q\,
	datac => \inst|inst~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|inst17~0_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst|inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15~0_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(1) & (!\inst|inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst3|altsyncram_component|auto_generated|q_a\(1) & 
-- (!\inst3|altsyncram_component|auto_generated|q_a\(0) & (\inst|inst2~q\ $ (!\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst15~0_combout\);

-- Location: LCCOMB_X26_Y9_N2
\inst1|inst27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst27~0_combout\ = (\inst1|inst2~q\ & (((\inst3|altsyncram_component|auto_generated|q_a\(0))) # (!\inst3|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst1|inst2~q\ & ((\inst1|inst~q\) # (\inst3|altsyncram_component|auto_generated|q_a\(1) $ 
-- (\inst3|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst1|inst~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst1|inst27~0_combout\);

-- Location: LCCOMB_X26_Y9_N4
\inst1|inst27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst27~1_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(1) & ((\inst1|inst27~0_combout\) # (\inst3|altsyncram_component|auto_generated|q_a\(0) $ (!\inst1|inst3~q\)))) # (!\inst3|altsyncram_component|auto_generated|q_a\(1) & 
-- (\inst1|inst27~0_combout\ $ (((!\inst3|altsyncram_component|auto_generated|q_a\(0) & \inst1|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst1|inst3~q\,
	datad => \inst1|inst27~0_combout\,
	combout => \inst1|inst27~1_combout\);

-- Location: FF_X26_Y9_N5
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst27~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X26_Y9_N0
\inst1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = (\inst1|inst2~q\ & (((\inst3|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst1|inst2~q\ & ((\inst1|inst3~q\ & ((\inst1|inst~q\) # (\inst3|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst1|inst3~q\ & 
-- (\inst1|inst~q\ & \inst3|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst1|inst3~q\,
	datac => \inst1|inst~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst1|inst3~0_combout\);

-- Location: LCCOMB_X26_Y9_N24
\inst1|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~1_combout\ = (\inst1|inst3~0_combout\) # ((\inst3|altsyncram_component|auto_generated|q_a\(1) & !\inst1|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst1|inst3~q\,
	datad => \inst1|inst3~0_combout\,
	combout => \inst1|inst3~1_combout\);

-- Location: FF_X26_Y9_N25
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst3~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X26_Y9_N16
\inst1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = (\inst3|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|inst2~q\ & ((\inst1|inst3~q\) # (!\inst3|altsyncram_component|auto_generated|q_a\(1))))) # (!\inst3|altsyncram_component|auto_generated|q_a\(0) & ((\inst1|inst2~q\ & 
-- ((\inst3|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst1|inst2~q\ & (\inst1|inst3~q\ & !\inst3|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst1|inst3~q\,
	datac => \inst1|inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst1|inst2~0_combout\);

-- Location: LCCOMB_X26_Y9_N22
\inst1|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~1_combout\ = (\inst1|inst2~0_combout\ & ((\inst1|inst2~q\) # (\inst1|inst3~q\ $ (!\inst1|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~q\,
	datab => \inst1|inst~q\,
	datac => \inst1|inst2~q\,
	datad => \inst1|inst2~0_combout\,
	combout => \inst1|inst2~1_combout\);

-- Location: FF_X26_Y9_N23
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LCCOMB_X26_Y9_N10
\inst1|inst33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst33~combout\ = (\inst1|inst~q\) # ((!\inst1|inst2~q\ & \inst1|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst3~q\,
	combout => \inst1|inst33~combout\);

-- Location: LCCOMB_X26_Y9_N8
\inst1|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst32~combout\ = (\inst1|inst2~q\ & ((!\inst1|inst3~q\))) # (!\inst1|inst2~q\ & (\inst1|inst~q\ & \inst1|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst3~q\,
	combout => \inst1|inst32~combout\);

-- Location: LCCOMB_X26_Y9_N12
\inst78|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst78|Equal0~0_combout\ = \inst51|altsyncram_component|auto_generated|q_a\(2) $ (((\inst1|inst2~q\ & (\inst1|inst3~q\ & \inst1|inst~q\)) # (!\inst1|inst2~q\ & ((!\inst1|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst1|inst3~q\,
	datac => \inst1|inst~q\,
	datad => \inst51|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst78|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\inst78|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst78|Equal0~1_combout\ = (!\inst78|Equal0~0_combout\ & (\inst51|altsyncram_component|auto_generated|q_a\(1) $ (!\inst1|inst32~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst1|inst32~combout\,
	datad => \inst78|Equal0~0_combout\,
	combout => \inst78|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y9_N30
\inst78|Result_mura~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst78|Result_mura~0_combout\ = (!\inst55|LessThan0~10_combout\ & ((\inst1|inst33~combout\ $ (\inst51|altsyncram_component|auto_generated|q_a\(0))) # (!\inst78|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst33~combout\,
	datab => \inst55|LessThan0~10_combout\,
	datac => \inst51|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst78|Equal0~1_combout\,
	combout => \inst78|Result_mura~0_combout\);

-- Location: FF_X26_Y9_N31
\inst78|Result_mura\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst78|Result_mura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst78|Result_mura~q\);

-- Location: LCCOMB_X26_Y9_N14
\inst1|inst31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst31~combout\ = (\inst1|inst2~q\ & (\inst1|inst~q\ & \inst1|inst3~q\)) # (!\inst1|inst2~q\ & (!\inst1|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst3~q\,
	combout => \inst1|inst31~combout\);

-- Location: IOIBUF_X13_Y0_N15
\prn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prn,
	o => \prn~input_o\);

ww_x2 <= \x2~output_o\;

ww_x1 <= \x1~output_o\;

ww_rez <= \rez~output_o\;

ww_t2 <= \t2~output_o\;

ww_t1 <= \t1~output_o\;

ww_s_true(1) <= \s_true[1]~output_o\;

ww_s_true(0) <= \s_true[0]~output_o\;

ww_rez_y <= \rez_y~output_o\;

ww_y3 <= \y3~output_o\;

ww_y2 <= \y2~output_o\;

ww_y1 <= \y1~output_o\;

ww_y_true(2) <= \y_true[2]~output_o\;

ww_y_true(1) <= \y_true[1]~output_o\;

ww_y_true(0) <= \y_true[0]~output_o\;

ww_rez_mura <= \rez_mura~output_o\;

ww_m1 <= \m1~output_o\;

ww_m2 <= \m2~output_o\;

ww_m3 <= \m3~output_o\;

ww_tt1 <= \tt1~output_o\;

ww_tt2 <= \tt2~output_o\;

ww_tt3 <= \tt3~output_o\;
END structure;


