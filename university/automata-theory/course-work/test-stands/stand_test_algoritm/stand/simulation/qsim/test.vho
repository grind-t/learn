-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/14/2020 15:18:58"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test_alg IS
    PORT (
	defect : OUT std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	okey : OUT std_logic;
	finish : OUT std_logic;
	rez_test : OUT std_logic_vector(7 DOWNTO 0);
	rez_true : OUT std_logic_vector(7 DOWNTO 0);
	x : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END test_alg;

-- Design Ports Information
-- defect	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- okey	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[7]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_alg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_defect : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_okey : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL ww_rez_test : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rez_true : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \defect~output_o\ : std_logic;
SIGNAL \okey~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \rez_test[7]~output_o\ : std_logic;
SIGNAL \rez_test[6]~output_o\ : std_logic;
SIGNAL \rez_test[5]~output_o\ : std_logic;
SIGNAL \rez_test[4]~output_o\ : std_logic;
SIGNAL \rez_test[3]~output_o\ : std_logic;
SIGNAL \rez_test[2]~output_o\ : std_logic;
SIGNAL \rez_test[1]~output_o\ : std_logic;
SIGNAL \rez_test[0]~output_o\ : std_logic;
SIGNAL \rez_true[7]~output_o\ : std_logic;
SIGNAL \rez_true[6]~output_o\ : std_logic;
SIGNAL \rez_true[5]~output_o\ : std_logic;
SIGNAL \rez_true[4]~output_o\ : std_logic;
SIGNAL \rez_true[3]~output_o\ : std_logic;
SIGNAL \rez_true[2]~output_o\ : std_logic;
SIGNAL \rez_true[1]~output_o\ : std_logic;
SIGNAL \rez_true[0]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|cnt[1]~12\ : std_logic;
SIGNAL \inst|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst|cnt[2]~14\ : std_logic;
SIGNAL \inst|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst|cnt[3]~16\ : std_logic;
SIGNAL \inst|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst|cnt[4]~18\ : std_logic;
SIGNAL \inst|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst|cnt[5]~20\ : std_logic;
SIGNAL \inst|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst|cnt[6]~22\ : std_logic;
SIGNAL \inst|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cnt[7]~10_combout\ : std_logic;
SIGNAL \inst|cnt[0]~9\ : std_logic;
SIGNAL \inst|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst26|xp[1]~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst26|xp[3]~0_combout\ : std_logic;
SIGNAL \inst26|xp[2]~1_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst26|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|rb[2]~1_combout\ : std_logic;
SIGNAL \inst6|rb[3]~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst26|Equal0~0_combout\ : std_logic;
SIGNAL \inst26|rez_true[7]~3_combout\ : std_logic;
SIGNAL \inst26|process_0~0_combout\ : std_logic;
SIGNAL \inst26|Add2~0_combout\ : std_logic;
SIGNAL \inst26|Add2~2\ : std_logic;
SIGNAL \inst26|Add2~4\ : std_logic;
SIGNAL \inst26|Add2~6\ : std_logic;
SIGNAL \inst26|Add2~7_combout\ : std_logic;
SIGNAL \inst26|Add2~8\ : std_logic;
SIGNAL \inst26|Add2~9_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~2\ : std_logic;
SIGNAL \inst6|Add0~4\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~7_combout\ : std_logic;
SIGNAL \inst6|Add0~5_combout\ : std_logic;
SIGNAL \inst6|rc~1_combout\ : std_logic;
SIGNAL \inst6|Add0~3_combout\ : std_logic;
SIGNAL \inst6|rc~2_combout\ : std_logic;
SIGNAL \inst6|rc~3_combout\ : std_logic;
SIGNAL \inst6|Add0~1_combout\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add2~27_combout\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add2~28_combout\ : std_logic;
SIGNAL \inst6|Add3~1\ : std_logic;
SIGNAL \inst6|Add3~2_combout\ : std_logic;
SIGNAL \inst6|Add3~16_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|Add4~14_combout\ : std_logic;
SIGNAL \inst6|Add0~8\ : std_logic;
SIGNAL \inst6|Add0~9_combout\ : std_logic;
SIGNAL \inst6|rc~0_combout\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add2~26_combout\ : std_logic;
SIGNAL \inst6|Add3~3\ : std_logic;
SIGNAL \inst6|Add3~4_combout\ : std_logic;
SIGNAL \inst6|Add3~15_combout\ : std_logic;
SIGNAL \inst6|Add4~1\ : std_logic;
SIGNAL \inst6|Add4~2_combout\ : std_logic;
SIGNAL \inst6|Add4~13_combout\ : std_logic;
SIGNAL \inst24|Equal0~0_combout\ : std_logic;
SIGNAL \inst26|Add2~10\ : std_logic;
SIGNAL \inst26|Add2~11_combout\ : std_logic;
SIGNAL \inst26|Add2~12\ : std_logic;
SIGNAL \inst26|Add2~13_combout\ : std_logic;
SIGNAL \inst6|Add2~19\ : std_logic;
SIGNAL \inst6|Add2~21\ : std_logic;
SIGNAL \inst6|Add2~22_combout\ : std_logic;
SIGNAL \inst6|Add2~24_combout\ : std_logic;
SIGNAL \inst6|Add2~20_combout\ : std_logic;
SIGNAL \inst6|Add2~25_combout\ : std_logic;
SIGNAL \inst6|Add3~5\ : std_logic;
SIGNAL \inst6|Add3~7\ : std_logic;
SIGNAL \inst6|Add3~8_combout\ : std_logic;
SIGNAL \inst6|Add3~13_combout\ : std_logic;
SIGNAL \inst6|Add3~6_combout\ : std_logic;
SIGNAL \inst6|Add3~14_combout\ : std_logic;
SIGNAL \inst6|Add4~3\ : std_logic;
SIGNAL \inst6|Add4~5\ : std_logic;
SIGNAL \inst6|Add4~6_combout\ : std_logic;
SIGNAL \inst6|Add4~11_combout\ : std_logic;
SIGNAL \inst6|Add4~4_combout\ : std_logic;
SIGNAL \inst6|Add4~12_combout\ : std_logic;
SIGNAL \inst24|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Add3~0_combout\ : std_logic;
SIGNAL \inst6|Add3~17_combout\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|Add2~29_combout\ : std_logic;
SIGNAL \inst6|c[0]~0_combout\ : std_logic;
SIGNAL \inst26|Add2~1_combout\ : std_logic;
SIGNAL \inst26|Add2~3_combout\ : std_logic;
SIGNAL \inst24|Equal0~2_combout\ : std_logic;
SIGNAL \inst26|Add2~5_combout\ : std_logic;
SIGNAL \inst24|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|Add3~9\ : std_logic;
SIGNAL \inst6|Add3~10_combout\ : std_logic;
SIGNAL \inst6|Add3~12_combout\ : std_logic;
SIGNAL \inst6|Add4~7\ : std_logic;
SIGNAL \inst6|Add4~8_combout\ : std_logic;
SIGNAL \inst6|Add4~10_combout\ : std_logic;
SIGNAL \inst24|Equal0~4_combout\ : std_logic;
SIGNAL \inst24|defect~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst24|defect~q\ : std_logic;
SIGNAL \inst24|Equal0~5_combout\ : std_logic;
SIGNAL \inst24|okey~q\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst26|rez_true[7]~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst26|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst26|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst24|ALT_INV_okey~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

defect <= ww_defect;
ww_reset <= reset;
ww_clk <= clk;
okey <= ww_okey;
finish <= ww_finish;
rez_test <= ww_rez_test;
rez_true <= ww_rez_true;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\inst24|ALT_INV_okey~q\ <= NOT \inst24|okey~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\defect~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|defect~q\,
	devoe => ww_devoe,
	o => \defect~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\okey~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_okey~q\,
	devoe => ww_devoe,
	o => \okey~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\finish~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\rez_test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add4~10_combout\,
	devoe => ww_devoe,
	o => \rez_test[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\rez_test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add4~11_combout\,
	devoe => ww_devoe,
	o => \rez_test[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\rez_test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add4~12_combout\,
	devoe => ww_devoe,
	o => \rez_test[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\rez_test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add4~13_combout\,
	devoe => ww_devoe,
	o => \rez_test[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\rez_test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add4~14_combout\,
	devoe => ww_devoe,
	o => \rez_test[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\rez_test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add3~17_combout\,
	devoe => ww_devoe,
	o => \rez_test[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\rez_test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Add2~29_combout\,
	devoe => ww_devoe,
	o => \rez_test[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\rez_test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|c[0]~0_combout\,
	devoe => ww_devoe,
	o => \rez_test[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\rez_true[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|rez_true[7]~2_combout\,
	devoe => ww_devoe,
	o => \rez_true[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\rez_true[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~13_combout\,
	devoe => ww_devoe,
	o => \rez_true[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\rez_true[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~11_combout\,
	devoe => ww_devoe,
	o => \rez_true[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\rez_true[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~9_combout\,
	devoe => ww_devoe,
	o => \rez_true[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\rez_true[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~7_combout\,
	devoe => ww_devoe,
	o => \rez_true[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\rez_true[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~5_combout\,
	devoe => ww_devoe,
	o => \rez_true[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\rez_true[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~3_combout\,
	devoe => ww_devoe,
	o => \rez_true[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\rez_true[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~1_combout\,
	devoe => ww_devoe,
	o => \rez_true[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(3),
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(2),
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(1),
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(0),
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(7),
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(6),
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(5),
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(4),
	devoe => ww_devoe,
	o => \y[0]~output_o\);

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

-- Location: LCCOMB_X24_Y17_N16
\inst|cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~8_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~9\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~8_combout\,
	cout => \inst|cnt[0]~9\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y17_N18
\inst|cnt[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~11_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~9\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~9\) # (GND)))
-- \inst|cnt[1]~12\ = CARRY((!\inst|cnt[0]~9\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~9\,
	combout => \inst|cnt[1]~11_combout\,
	cout => \inst|cnt[1]~12\);

-- Location: LCCOMB_X24_Y17_N20
\inst|cnt[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~13_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~12\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~12\ & VCC))
-- \inst|cnt[2]~14\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~12\,
	combout => \inst|cnt[2]~13_combout\,
	cout => \inst|cnt[2]~14\);

-- Location: FF_X24_Y17_N21
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[2]~13_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X24_Y17_N22
\inst|cnt[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~15_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~14\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~14\) # (GND)))
-- \inst|cnt[3]~16\ = CARRY((!\inst|cnt[2]~14\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~14\,
	combout => \inst|cnt[3]~15_combout\,
	cout => \inst|cnt[3]~16\);

-- Location: FF_X24_Y17_N23
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[3]~15_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X24_Y17_N24
\inst|cnt[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~17_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~16\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~16\ & VCC))
-- \inst|cnt[4]~18\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~16\,
	combout => \inst|cnt[4]~17_combout\,
	cout => \inst|cnt[4]~18\);

-- Location: FF_X24_Y17_N25
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[4]~17_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X24_Y17_N26
\inst|cnt[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~19_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~18\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~18\) # (GND)))
-- \inst|cnt[5]~20\ = CARRY((!\inst|cnt[4]~18\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~18\,
	combout => \inst|cnt[5]~19_combout\,
	cout => \inst|cnt[5]~20\);

-- Location: FF_X24_Y17_N27
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[5]~19_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X24_Y17_N28
\inst|cnt[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~21_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~20\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~20\ & VCC))
-- \inst|cnt[6]~22\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~20\,
	combout => \inst|cnt[6]~21_combout\,
	cout => \inst|cnt[6]~22\);

-- Location: FF_X24_Y17_N29
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[6]~21_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X24_Y17_N30
\inst|cnt[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~23_combout\ = \inst|cnt[6]~22\ $ (\inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt\(7),
	cin => \inst|cnt[6]~22\,
	combout => \inst|cnt[7]~23_combout\);

-- Location: FF_X24_Y17_N31
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[7]~23_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X23_Y17_N30
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|cnt\(3) & (\inst|cnt\(5) & (\inst|cnt\(7) & \inst|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(7),
	datad => \inst|cnt\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(2) & (\inst|cnt\(1) & (\inst|cnt\(4) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst|cnt[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~10_combout\ = (\reset~input_o\) # ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt[7]~10_combout\);

-- Location: FF_X24_Y17_N17
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~8_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: FF_X24_Y17_N19
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~11_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X23_Y17_N6
\inst26|xp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[1]~2_combout\ = \inst|cnt\(1) $ (((\inst|cnt\(0) & \inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(3),
	combout => \inst26|xp[1]~2_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst26|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|cs2a[1]~0_combout\ = \inst|cnt\(6) $ (((\inst|cnt\(5) & ((\inst|cnt\(4)) # (!\inst|cnt\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(6),
	combout => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst26|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(5) = (\inst|cnt\(7) & (!\inst|cnt\(6) & ((!\inst|cnt\(4)) # (!\inst|cnt\(5))))) # (!\inst|cnt\(7) & (\inst|cnt\(5) & ((\inst|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(6),
	combout => \inst26|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X23_Y17_N26
\inst26|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(1) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst26|xp[1]~2_combout\ $ (((\inst26|Mult0|auto_generated|le4a\(5)))))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\inst|cnt\(0) & 
-- \inst26|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|xp[1]~2_combout\,
	datab => \inst|cnt\(0),
	datac => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \inst26|Mult0|auto_generated|le4a\(5),
	combout => \inst26|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X24_Y17_N14
\inst26|xp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[3]~0_combout\ = (\inst|cnt\(3) & (!\inst|cnt\(0) & (!\inst|cnt\(1) & !\inst|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst26|xp[3]~0_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst26|xp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[2]~1_combout\ = \inst|cnt\(2) $ (((\inst|cnt\(3) & ((\inst|cnt\(1)) # (\inst|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(3),
	combout => \inst26|xp[2]~1_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst26|Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(5) = \inst|cnt\(5) $ (((\inst|cnt\(7) & \inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X22_Y17_N24
\inst26|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(3) = (\inst|cnt\(4) & (\inst26|xp[3]~0_combout\ $ (((\inst26|Mult0|auto_generated|le3a\(5)))))) # (!\inst|cnt\(4) & (((!\inst26|xp[2]~1_combout\ & \inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|xp[3]~0_combout\,
	datac => \inst26|xp[2]~1_combout\,
	datad => \inst26|Mult0|auto_generated|le3a\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X22_Y17_N26
\inst26|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(2) = (\inst|cnt\(4) & ((\inst26|xp[2]~1_combout\ $ (\inst26|Mult0|auto_generated|le3a\(5))))) # (!\inst|cnt\(4) & (!\inst26|xp[1]~2_combout\ & ((\inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|xp[1]~2_combout\,
	datab => \inst|cnt\(4),
	datac => \inst26|xp[2]~1_combout\,
	datad => \inst26|Mult0|auto_generated|le3a\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X22_Y17_N0
\inst26|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~0_combout\ = (\inst26|Mult0|auto_generated|le3a\(2) & (\inst26|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst26|Mult0|auto_generated|le3a\(2) & (\inst26|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst26|Mult0|auto_generated|op_1~1\ = CARRY((\inst26|Mult0|auto_generated|le3a\(2) & \inst26|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(2),
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst26|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y17_N2
\inst26|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~2_combout\ = (\inst26|Mult0|auto_generated|le3a\(3) & (!\inst26|Mult0|auto_generated|op_1~1\)) # (!\inst26|Mult0|auto_generated|le3a\(3) & ((\inst26|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst26|Mult0|auto_generated|op_1~3\ = CARRY((!\inst26|Mult0|auto_generated|op_1~1\) # (!\inst26|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~1\,
	combout => \inst26|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y17_N4
\inst26|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(0) = \inst26|Mult0|auto_generated|le4a\(5) $ (((\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|cnt\(0),
	datad => \inst26|Mult0|auto_generated|le4a\(5),
	combout => \inst26|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X23_Y17_N10
\inst26|Mult0|auto_generated|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|_~12_combout\ = (!\inst|cnt\(0) & (!\inst|cnt\(4) & \inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(5),
	combout => \inst26|Mult0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst26|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(1) = (\inst26|Mult0|auto_generated|_~12_combout\) # ((\inst|cnt\(4) & (\inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|xp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst26|Mult0|auto_generated|_~12_combout\,
	datad => \inst26|xp[1]~2_combout\,
	combout => \inst26|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X23_Y17_N0
\inst26|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(0) = \inst|cnt\(5) $ (((\inst|cnt\(4) & (\inst|cnt\(7) $ (\inst|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(0),
	combout => \inst26|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X21_Y18_N2
\inst26|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~0_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (\inst26|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst26|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst26|Mult0|auto_generated|op_3~1\ = CARRY((\inst26|Mult0|auto_generated|le3a\(5) & \inst26|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst26|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst26|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X21_Y18_N4
\inst26|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~2_combout\ = (\inst26|Mult0|auto_generated|le3a\(1) & (!\inst26|Mult0|auto_generated|op_3~1\)) # (!\inst26|Mult0|auto_generated|le3a\(1) & ((\inst26|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst26|Mult0|auto_generated|op_3~3\ = CARRY((!\inst26|Mult0|auto_generated|op_3~1\) # (!\inst26|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~1\,
	combout => \inst26|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X21_Y18_N6
\inst26|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~4_combout\ = ((\inst26|Mult0|auto_generated|le4a\(0) $ (\inst26|Mult0|auto_generated|op_1~0_combout\ $ (!\inst26|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~5\ = CARRY((\inst26|Mult0|auto_generated|le4a\(0) & ((\inst26|Mult0|auto_generated|op_1~0_combout\) # (!\inst26|Mult0|auto_generated|op_3~3\))) # (!\inst26|Mult0|auto_generated|le4a\(0) & 
-- (\inst26|Mult0|auto_generated|op_1~0_combout\ & !\inst26|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le4a\(0),
	datab => \inst26|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~3\,
	combout => \inst26|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X21_Y18_N8
\inst26|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~6_combout\ = (\inst26|Mult0|auto_generated|le4a\(1) & ((\inst26|Mult0|auto_generated|op_1~2_combout\ & (\inst26|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst26|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst26|Mult0|auto_generated|op_3~5\)))) # (!\inst26|Mult0|auto_generated|le4a\(1) & ((\inst26|Mult0|auto_generated|op_1~2_combout\ & (!\inst26|Mult0|auto_generated|op_3~5\)) # (!\inst26|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\inst26|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \inst26|Mult0|auto_generated|op_3~7\ = CARRY((\inst26|Mult0|auto_generated|le4a\(1) & (!\inst26|Mult0|auto_generated|op_1~2_combout\ & !\inst26|Mult0|auto_generated|op_3~5\)) # (!\inst26|Mult0|auto_generated|le4a\(1) & 
-- ((!\inst26|Mult0|auto_generated|op_3~5\) # (!\inst26|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le4a\(1),
	datab => \inst26|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~5\,
	combout => \inst26|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X21_Y18_N28
\inst26|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Equal0~1_combout\ = (!\inst26|Mult0|auto_generated|op_3~0_combout\ & (!\inst26|Mult0|auto_generated|op_3~2_combout\ & (!\inst26|Mult0|auto_generated|op_3~6_combout\ & !\inst26|Mult0|auto_generated|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~0_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~2_combout\,
	datac => \inst26|Mult0|auto_generated|op_3~6_combout\,
	datad => \inst26|Mult0|auto_generated|op_3~4_combout\,
	combout => \inst26|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst6|rb[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rb[2]~1_combout\ = \inst|cnt\(6) $ (((\inst|cnt\(7) & ((\inst|cnt\(4)) # (\inst|cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(6),
	datad => \inst|cnt\(5),
	combout => \inst6|rb[2]~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst6|rb[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rb[3]~2_combout\ = (!\inst|cnt\(6) & (\inst|cnt\(7) & (!\inst|cnt\(4) & !\inst|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(5),
	combout => \inst6|rb[3]~2_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst26|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(1) = (\inst26|xp[1]~2_combout\ & ((\inst6|rb[3]~2_combout\) # ((\inst26|Mult0|auto_generated|le3a\(5) & \inst6|rb[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|xp[1]~2_combout\,
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst6|rb[2]~1_combout\,
	datad => \inst6|rb[3]~2_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X23_Y17_N28
\inst26|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(3) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst26|xp[3]~0_combout\ $ (\inst26|Mult0|auto_generated|le4a\(5))))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\inst26|xp[2]~1_combout\ & 
-- ((\inst26|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst26|xp[2]~1_combout\,
	datac => \inst26|xp[3]~0_combout\,
	datad => \inst26|Mult0|auto_generated|le4a\(5),
	combout => \inst26|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X23_Y17_N20
\inst26|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(2) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst26|xp[2]~1_combout\ $ (\inst26|Mult0|auto_generated|le4a\(5))))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\inst26|xp[1]~2_combout\ & 
-- ((\inst26|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst26|xp[1]~2_combout\,
	datac => \inst26|xp[2]~1_combout\,
	datad => \inst26|Mult0|auto_generated|le4a\(5),
	combout => \inst26|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X22_Y17_N14
\inst26|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(4) = (\inst|cnt\(4) & (\inst|cnt\(7) $ (((\inst|cnt\(5)))))) # (!\inst|cnt\(4) & (((!\inst26|xp[3]~0_combout\ & \inst|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(7),
	datac => \inst26|xp[3]~0_combout\,
	datad => \inst|cnt\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X22_Y17_N4
\inst26|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~4_combout\ = ((\inst26|Mult0|auto_generated|le4a\(2) $ (\inst26|Mult0|auto_generated|le3a\(4) $ (!\inst26|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_1~5\ = CARRY((\inst26|Mult0|auto_generated|le4a\(2) & ((\inst26|Mult0|auto_generated|le3a\(4)) # (!\inst26|Mult0|auto_generated|op_1~3\))) # (!\inst26|Mult0|auto_generated|le4a\(2) & (\inst26|Mult0|auto_generated|le3a\(4) & 
-- !\inst26|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le4a\(2),
	datab => \inst26|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~3\,
	combout => \inst26|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y17_N6
\inst26|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~6_combout\ = (\inst26|Mult0|auto_generated|le5a\(1) & ((\inst26|Mult0|auto_generated|le4a\(3) & (\inst26|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst26|Mult0|auto_generated|le4a\(3) & 
-- (!\inst26|Mult0|auto_generated|op_1~5\)))) # (!\inst26|Mult0|auto_generated|le5a\(1) & ((\inst26|Mult0|auto_generated|le4a\(3) & (!\inst26|Mult0|auto_generated|op_1~5\)) # (!\inst26|Mult0|auto_generated|le4a\(3) & ((\inst26|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \inst26|Mult0|auto_generated|op_1~7\ = CARRY((\inst26|Mult0|auto_generated|le5a\(1) & (!\inst26|Mult0|auto_generated|le4a\(3) & !\inst26|Mult0|auto_generated|op_1~5\)) # (!\inst26|Mult0|auto_generated|le5a\(1) & ((!\inst26|Mult0|auto_generated|op_1~5\) # 
-- (!\inst26|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(1),
	datab => \inst26|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~5\,
	combout => \inst26|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X21_Y18_N22
\inst26|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(0) = (\inst|cnt\(0) & ((\inst6|rb[3]~2_combout\) # ((\inst26|Mult0|auto_generated|le3a\(5) & \inst6|rb[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst|cnt\(0),
	datac => \inst6|rb[3]~2_combout\,
	datad => \inst6|rb[2]~1_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X21_Y18_N10
\inst26|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~8_combout\ = ((\inst26|Mult0|auto_generated|le5a\(0) $ (\inst26|Mult0|auto_generated|op_1~4_combout\ $ (!\inst26|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~9\ = CARRY((\inst26|Mult0|auto_generated|le5a\(0) & ((\inst26|Mult0|auto_generated|op_1~4_combout\) # (!\inst26|Mult0|auto_generated|op_3~7\))) # (!\inst26|Mult0|auto_generated|le5a\(0) & 
-- (\inst26|Mult0|auto_generated|op_1~4_combout\ & !\inst26|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(0),
	datab => \inst26|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~7\,
	combout => \inst26|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X21_Y18_N12
\inst26|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~10_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~6_combout\ & (\inst26|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst26|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\inst26|Mult0|auto_generated|op_3~9\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~6_combout\ & (!\inst26|Mult0|auto_generated|op_3~9\)) # (!\inst26|Mult0|auto_generated|op_1~6_combout\ & 
-- ((\inst26|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst26|Mult0|auto_generated|op_3~11\ = CARRY((\inst26|Mult0|auto_generated|le3a\(5) & (!\inst26|Mult0|auto_generated|op_1~6_combout\ & !\inst26|Mult0|auto_generated|op_3~9\)) # (!\inst26|Mult0|auto_generated|le3a\(5) & 
-- ((!\inst26|Mult0|auto_generated|op_3~9\) # (!\inst26|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst26|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~9\,
	combout => \inst26|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y17_N12
\inst26|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(2) = (\inst26|xp[2]~1_combout\ & ((\inst6|rb[3]~2_combout\) # ((\inst6|rb[2]~1_combout\ & \inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rb[2]~1_combout\,
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst26|xp[2]~1_combout\,
	datad => \inst6|rb[3]~2_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X23_Y17_N8
\inst26|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(4) = (\inst26|Mult0|auto_generated|le4a\(5) & ((\inst26|Mult0|auto_generated|cs2a[1]~0_combout\) # (!\inst26|xp[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datac => \inst26|xp[3]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X22_Y17_N8
\inst26|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~8_combout\ = ((\inst26|Mult0|auto_generated|le5a\(2) $ (\inst26|Mult0|auto_generated|le4a\(4) $ (!\inst26|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_1~9\ = CARRY((\inst26|Mult0|auto_generated|le5a\(2) & ((\inst26|Mult0|auto_generated|le4a\(4)) # (!\inst26|Mult0|auto_generated|op_1~7\))) # (!\inst26|Mult0|auto_generated|le5a\(2) & (\inst26|Mult0|auto_generated|le4a\(4) & 
-- !\inst26|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(2),
	datab => \inst26|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~7\,
	combout => \inst26|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X21_Y18_N14
\inst26|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~12_combout\ = ((\inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|Mult0|auto_generated|op_1~8_combout\ $ (!\inst26|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~13\ = CARRY((\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~8_combout\) # (!\inst26|Mult0|auto_generated|op_3~11\))) # (!\inst26|Mult0|auto_generated|le3a\(5) & 
-- (\inst26|Mult0|auto_generated|op_1~8_combout\ & !\inst26|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst26|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~11\,
	combout => \inst26|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X22_Y17_N18
\inst26|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(3) = (\inst26|xp[3]~0_combout\ & ((\inst6|rb[3]~2_combout\) # ((\inst6|rb[2]~1_combout\ & \inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rb[2]~1_combout\,
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst26|xp[3]~0_combout\,
	datad => \inst6|rb[3]~2_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X22_Y17_N10
\inst26|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~10_combout\ = \inst26|Mult0|auto_generated|le4a\(5) $ (\inst26|Mult0|auto_generated|op_1~9\ $ (!\inst26|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|Mult0|auto_generated|le5a\(3),
	cin => \inst26|Mult0|auto_generated|op_1~9\,
	combout => \inst26|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst26|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~14_combout\ = \inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|Mult0|auto_generated|op_3~13\ $ (!\inst26|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst26|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst26|Mult0|auto_generated|op_3~13\,
	combout => \inst26|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X21_Y18_N18
\inst26|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Equal0~0_combout\ = (!\inst26|Mult0|auto_generated|op_3~10_combout\ & (!\inst26|Mult0|auto_generated|op_3~12_combout\ & (!\inst26|Mult0|auto_generated|op_3~8_combout\ & !\inst26|Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst26|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst26|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst26|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst26|rez_true[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|rez_true[7]~3_combout\ = (\inst26|Equal0~1_combout\ & ((\inst26|Equal0~0_combout\) # (\inst|cnt\(3) $ (!\inst|cnt\(7))))) # (!\inst26|Equal0~1_combout\ & (\inst|cnt\(3) $ ((!\inst|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst26|Equal0~1_combout\,
	datac => \inst|cnt\(7),
	datad => \inst26|Equal0~0_combout\,
	combout => \inst26|rez_true[7]~3_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst26|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|process_0~0_combout\ = \inst|cnt\(7) $ (\inst|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datad => \inst|cnt\(3),
	combout => \inst26|process_0~0_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst26|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~0_combout\ = \inst26|Mult0|auto_generated|op_3~0_combout\ $ ((((\inst26|Equal0~1_combout\ & \inst26|Equal0~0_combout\)) # (!\inst26|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~0_combout\,
	datab => \inst26|Equal0~1_combout\,
	datac => \inst26|process_0~0_combout\,
	datad => \inst26|Equal0~0_combout\,
	combout => \inst26|Add2~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst26|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~1_combout\ = (\inst26|Add2~0_combout\ & (!\inst26|rez_true[7]~3_combout\ & VCC)) # (!\inst26|Add2~0_combout\ & (\inst26|rez_true[7]~3_combout\ $ (GND)))
-- \inst26|Add2~2\ = CARRY((!\inst26|Add2~0_combout\ & !\inst26|rez_true[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add2~0_combout\,
	datab => \inst26|rez_true[7]~3_combout\,
	datad => VCC,
	combout => \inst26|Add2~1_combout\,
	cout => \inst26|Add2~2\);

-- Location: LCCOMB_X22_Y18_N6
\inst26|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~3_combout\ = (\inst26|Add2~2\ & (\inst26|Mult0|auto_generated|op_3~2_combout\ $ ((\inst26|rez_true[7]~3_combout\)))) # (!\inst26|Add2~2\ & ((\inst26|Mult0|auto_generated|op_3~2_combout\ $ (!\inst26|rez_true[7]~3_combout\)) # (GND)))
-- \inst26|Add2~4\ = CARRY((\inst26|Mult0|auto_generated|op_3~2_combout\ $ (\inst26|rez_true[7]~3_combout\)) # (!\inst26|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst26|rez_true[7]~3_combout\,
	datad => VCC,
	cin => \inst26|Add2~2\,
	combout => \inst26|Add2~3_combout\,
	cout => \inst26|Add2~4\);

-- Location: LCCOMB_X22_Y18_N8
\inst26|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~5_combout\ = (\inst26|Add2~4\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~4_combout\)))) # (!\inst26|Add2~4\ & (\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~4_combout\ $ (GND))))
-- \inst26|Add2~6\ = CARRY((!\inst26|Add2~4\ & (\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \inst26|Add2~4\,
	combout => \inst26|Add2~5_combout\,
	cout => \inst26|Add2~6\);

-- Location: LCCOMB_X22_Y18_N10
\inst26|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~7_combout\ = (\inst26|Add2~6\ & (\inst26|Mult0|auto_generated|op_3~6_combout\ $ ((\inst26|rez_true[7]~3_combout\)))) # (!\inst26|Add2~6\ & ((\inst26|Mult0|auto_generated|op_3~6_combout\ $ (!\inst26|rez_true[7]~3_combout\)) # (GND)))
-- \inst26|Add2~8\ = CARRY((\inst26|Mult0|auto_generated|op_3~6_combout\ $ (\inst26|rez_true[7]~3_combout\)) # (!\inst26|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~6_combout\,
	datab => \inst26|rez_true[7]~3_combout\,
	datad => VCC,
	cin => \inst26|Add2~6\,
	combout => \inst26|Add2~7_combout\,
	cout => \inst26|Add2~8\);

-- Location: LCCOMB_X22_Y18_N12
\inst26|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~9_combout\ = (\inst26|Add2~8\ & ((\inst26|Mult0|auto_generated|op_3~8_combout\ $ (!\inst26|rez_true[7]~3_combout\)))) # (!\inst26|Add2~8\ & (\inst26|Mult0|auto_generated|op_3~8_combout\ $ (\inst26|rez_true[7]~3_combout\ $ (GND))))
-- \inst26|Add2~10\ = CARRY((!\inst26|Add2~8\ & (\inst26|Mult0|auto_generated|op_3~8_combout\ $ (!\inst26|rez_true[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst26|rez_true[7]~3_combout\,
	datad => VCC,
	cin => \inst26|Add2~8\,
	combout => \inst26|Add2~9_combout\,
	cout => \inst26|Add2~10\);

-- Location: LCCOMB_X24_Y17_N0
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst|cnt\(7) $ (\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(7),
	datad => \inst|cnt\(0),
	combout => \inst6|Add0~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst6|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_combout\ = (\inst|cnt\(7) & (\inst6|Add0~0_combout\ $ (VCC))) # (!\inst|cnt\(7) & (\inst6|Add0~0_combout\ & VCC))
-- \inst6|Add0~2\ = CARRY((\inst|cnt\(7) & \inst6|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst6|Add0~0_combout\,
	datad => VCC,
	combout => \inst6|Add0~1_combout\,
	cout => \inst6|Add0~2\);

-- Location: LCCOMB_X24_Y17_N4
\inst6|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~3_combout\ = (\inst6|Add0~2\ & (\inst|cnt\(7) $ ((!\inst|cnt\(1))))) # (!\inst6|Add0~2\ & ((\inst|cnt\(7) $ (\inst|cnt\(1))) # (GND)))
-- \inst6|Add0~4\ = CARRY((\inst|cnt\(7) $ (!\inst|cnt\(1))) # (!\inst6|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst6|Add0~2\,
	combout => \inst6|Add0~3_combout\,
	cout => \inst6|Add0~4\);

-- Location: LCCOMB_X24_Y17_N6
\inst6|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_combout\ = (\inst6|Add0~4\ & ((\inst|cnt\(7) $ (\inst|cnt\(2))))) # (!\inst6|Add0~4\ & (\inst|cnt\(7) $ (\inst|cnt\(2) $ (VCC))))
-- \inst6|Add0~6\ = CARRY((!\inst6|Add0~4\ & (\inst|cnt\(7) $ (\inst|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst6|Add0~4\,
	combout => \inst6|Add0~5_combout\,
	cout => \inst6|Add0~6\);

-- Location: LCCOMB_X24_Y17_N8
\inst6|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~7_combout\ = (\inst6|Add0~6\ & (\inst|cnt\(3) $ ((!\inst|cnt\(7))))) # (!\inst6|Add0~6\ & ((\inst|cnt\(3) $ (\inst|cnt\(7))) # (GND)))
-- \inst6|Add0~8\ = CARRY((\inst|cnt\(3) $ (!\inst|cnt\(7))) # (!\inst6|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(7),
	datad => VCC,
	cin => \inst6|Add0~6\,
	combout => \inst6|Add0~7_combout\,
	cout => \inst6|Add0~8\);

-- Location: LCCOMB_X25_Y18_N2
\inst6|rc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rc~1_combout\ = (\inst|cnt\(4) & \inst6|Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => \inst6|Add0~7_combout\,
	combout => \inst6|rc~1_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst6|rc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rc~2_combout\ = (\inst|cnt\(4) & \inst6|Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => \inst6|Add0~5_combout\,
	combout => \inst6|rc~2_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst6|rc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rc~3_combout\ = (\inst|cnt\(4) & \inst6|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => \inst6|Add0~3_combout\,
	combout => \inst6|rc~3_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst6|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|rc~3_combout\ & (\inst6|Add0~1_combout\ $ (VCC))) # (!\inst6|rc~3_combout\ & (\inst6|Add0~1_combout\ & VCC))
-- \inst6|Add2~13\ = CARRY((\inst6|rc~3_combout\ & \inst6|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rc~3_combout\,
	datab => \inst6|Add0~1_combout\,
	datad => VCC,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X25_Y18_N16
\inst6|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~14_combout\ = (\inst6|Add0~3_combout\ & ((\inst6|rc~2_combout\ & (\inst6|Add2~13\ & VCC)) # (!\inst6|rc~2_combout\ & (!\inst6|Add2~13\)))) # (!\inst6|Add0~3_combout\ & ((\inst6|rc~2_combout\ & (!\inst6|Add2~13\)) # (!\inst6|rc~2_combout\ & 
-- ((\inst6|Add2~13\) # (GND)))))
-- \inst6|Add2~15\ = CARRY((\inst6|Add0~3_combout\ & (!\inst6|rc~2_combout\ & !\inst6|Add2~13\)) # (!\inst6|Add0~3_combout\ & ((!\inst6|Add2~13\) # (!\inst6|rc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~3_combout\,
	datab => \inst6|rc~2_combout\,
	datad => VCC,
	cin => \inst6|Add2~13\,
	combout => \inst6|Add2~14_combout\,
	cout => \inst6|Add2~15\);

-- Location: LCCOMB_X25_Y18_N18
\inst6|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~16_combout\ = ((\inst6|Add0~5_combout\ $ (\inst6|rc~1_combout\ $ (!\inst6|Add2~15\)))) # (GND)
-- \inst6|Add2~17\ = CARRY((\inst6|Add0~5_combout\ & ((\inst6|rc~1_combout\) # (!\inst6|Add2~15\))) # (!\inst6|Add0~5_combout\ & (\inst6|rc~1_combout\ & !\inst6|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~5_combout\,
	datab => \inst6|rc~1_combout\,
	datad => VCC,
	cin => \inst6|Add2~15\,
	combout => \inst6|Add2~16_combout\,
	cout => \inst6|Add2~17\);

-- Location: LCCOMB_X25_Y18_N10
\inst6|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~27_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~16_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst6|Add0~7_combout\ & (\inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~7_combout\,
	datab => \inst|cnt\(4),
	datac => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst6|Add2~16_combout\,
	combout => \inst6|Add2~27_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst6|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~28_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~14_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst6|Add0~5_combout\ & (\inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~5_combout\,
	datab => \inst|cnt\(4),
	datac => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst6|Add2~14_combout\,
	combout => \inst6|Add2~28_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst6|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~0_combout\ = (\inst6|Add0~1_combout\ & (\inst6|Add2~28_combout\ $ (VCC))) # (!\inst6|Add0~1_combout\ & (\inst6|Add2~28_combout\ & VCC))
-- \inst6|Add3~1\ = CARRY((\inst6|Add0~1_combout\ & \inst6|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~1_combout\,
	datab => \inst6|Add2~28_combout\,
	datad => VCC,
	combout => \inst6|Add3~0_combout\,
	cout => \inst6|Add3~1\);

-- Location: LCCOMB_X24_Y18_N20
\inst6|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~2_combout\ = (\inst6|Add0~3_combout\ & ((\inst6|Add2~27_combout\ & (\inst6|Add3~1\ & VCC)) # (!\inst6|Add2~27_combout\ & (!\inst6|Add3~1\)))) # (!\inst6|Add0~3_combout\ & ((\inst6|Add2~27_combout\ & (!\inst6|Add3~1\)) # 
-- (!\inst6|Add2~27_combout\ & ((\inst6|Add3~1\) # (GND)))))
-- \inst6|Add3~3\ = CARRY((\inst6|Add0~3_combout\ & (!\inst6|Add2~27_combout\ & !\inst6|Add3~1\)) # (!\inst6|Add0~3_combout\ & ((!\inst6|Add3~1\) # (!\inst6|Add2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~3_combout\,
	datab => \inst6|Add2~27_combout\,
	datad => VCC,
	cin => \inst6|Add3~1\,
	combout => \inst6|Add3~2_combout\,
	cout => \inst6|Add3~3\);

-- Location: LCCOMB_X24_Y18_N30
\inst6|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~16_combout\ = (\inst6|rb[2]~1_combout\ & ((\inst6|Add3~2_combout\))) # (!\inst6|rb[2]~1_combout\ & (\inst6|Add2~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[2]~1_combout\,
	datac => \inst6|Add2~27_combout\,
	datad => \inst6|Add3~2_combout\,
	combout => \inst6|Add3~16_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst6|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = (\inst6|Add3~16_combout\ & (\inst6|Add0~1_combout\ $ (VCC))) # (!\inst6|Add3~16_combout\ & (\inst6|Add0~1_combout\ & VCC))
-- \inst6|Add4~1\ = CARRY((\inst6|Add3~16_combout\ & \inst6|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~16_combout\,
	datab => \inst6|Add0~1_combout\,
	datad => VCC,
	combout => \inst6|Add4~0_combout\,
	cout => \inst6|Add4~1\);

-- Location: LCCOMB_X23_Y18_N20
\inst6|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~14_combout\ = (\inst6|rb[3]~2_combout\ & (\inst6|Add4~0_combout\)) # (!\inst6|rb[3]~2_combout\ & ((\inst6|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rb[3]~2_combout\,
	datac => \inst6|Add4~0_combout\,
	datad => \inst6|Add3~16_combout\,
	combout => \inst6|Add4~14_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst6|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_combout\ = \inst|cnt\(3) $ (\inst6|Add0~8\ $ (!\inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => \inst|cnt\(7),
	cin => \inst6|Add0~8\,
	combout => \inst6|Add0~9_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst6|rc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rc~0_combout\ = (\inst|cnt\(4) & \inst6|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => \inst6|Add0~9_combout\,
	combout => \inst6|rc~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst6|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = (\inst6|Add0~7_combout\ & ((\inst6|rc~0_combout\ & (\inst6|Add2~17\ & VCC)) # (!\inst6|rc~0_combout\ & (!\inst6|Add2~17\)))) # (!\inst6|Add0~7_combout\ & ((\inst6|rc~0_combout\ & (!\inst6|Add2~17\)) # (!\inst6|rc~0_combout\ & 
-- ((\inst6|Add2~17\) # (GND)))))
-- \inst6|Add2~19\ = CARRY((\inst6|Add0~7_combout\ & (!\inst6|rc~0_combout\ & !\inst6|Add2~17\)) # (!\inst6|Add0~7_combout\ & ((!\inst6|Add2~17\) # (!\inst6|rc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~7_combout\,
	datab => \inst6|rc~0_combout\,
	datad => VCC,
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\,
	cout => \inst6|Add2~19\);

-- Location: LCCOMB_X25_Y18_N28
\inst6|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~26_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~18_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst6|Add0~9_combout\ & (\inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~9_combout\,
	datab => \inst|cnt\(4),
	datac => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst6|Add2~18_combout\,
	combout => \inst6|Add2~26_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst6|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~4_combout\ = ((\inst6|Add0~5_combout\ $ (\inst6|Add2~26_combout\ $ (!\inst6|Add3~3\)))) # (GND)
-- \inst6|Add3~5\ = CARRY((\inst6|Add0~5_combout\ & ((\inst6|Add2~26_combout\) # (!\inst6|Add3~3\))) # (!\inst6|Add0~5_combout\ & (\inst6|Add2~26_combout\ & !\inst6|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~5_combout\,
	datab => \inst6|Add2~26_combout\,
	datad => VCC,
	cin => \inst6|Add3~3\,
	combout => \inst6|Add3~4_combout\,
	cout => \inst6|Add3~5\);

-- Location: LCCOMB_X24_Y18_N16
\inst6|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~15_combout\ = (\inst6|rb[2]~1_combout\ & (\inst6|Add3~4_combout\)) # (!\inst6|rb[2]~1_combout\ & ((\inst6|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[2]~1_combout\,
	datac => \inst6|Add3~4_combout\,
	datad => \inst6|Add2~26_combout\,
	combout => \inst6|Add3~15_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst6|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~2_combout\ = (\inst6|Add0~3_combout\ & ((\inst6|Add3~15_combout\ & (\inst6|Add4~1\ & VCC)) # (!\inst6|Add3~15_combout\ & (!\inst6|Add4~1\)))) # (!\inst6|Add0~3_combout\ & ((\inst6|Add3~15_combout\ & (!\inst6|Add4~1\)) # 
-- (!\inst6|Add3~15_combout\ & ((\inst6|Add4~1\) # (GND)))))
-- \inst6|Add4~3\ = CARRY((\inst6|Add0~3_combout\ & (!\inst6|Add3~15_combout\ & !\inst6|Add4~1\)) # (!\inst6|Add0~3_combout\ & ((!\inst6|Add4~1\) # (!\inst6|Add3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~3_combout\,
	datab => \inst6|Add3~15_combout\,
	datad => VCC,
	cin => \inst6|Add4~1\,
	combout => \inst6|Add4~2_combout\,
	cout => \inst6|Add4~3\);

-- Location: LCCOMB_X23_Y18_N18
\inst6|Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~13_combout\ = (\inst6|rb[3]~2_combout\ & ((\inst6|Add4~2_combout\))) # (!\inst6|rb[3]~2_combout\ & (\inst6|Add3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rb[3]~2_combout\,
	datab => \inst6|Add3~15_combout\,
	datad => \inst6|Add4~2_combout\,
	combout => \inst6|Add4~13_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst24|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~0_combout\ = (\inst26|Add2~7_combout\ & (\inst6|Add4~14_combout\ & (\inst26|Add2~9_combout\ $ (!\inst6|Add4~13_combout\)))) # (!\inst26|Add2~7_combout\ & (!\inst6|Add4~14_combout\ & (\inst26|Add2~9_combout\ $ (!\inst6|Add4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add2~7_combout\,
	datab => \inst26|Add2~9_combout\,
	datac => \inst6|Add4~14_combout\,
	datad => \inst6|Add4~13_combout\,
	combout => \inst24|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y18_N14
\inst26|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~11_combout\ = (\inst26|Add2~10\ & (\inst26|Mult0|auto_generated|op_3~10_combout\ $ ((\inst26|rez_true[7]~3_combout\)))) # (!\inst26|Add2~10\ & ((\inst26|Mult0|auto_generated|op_3~10_combout\ $ (!\inst26|rez_true[7]~3_combout\)) # (GND)))
-- \inst26|Add2~12\ = CARRY((\inst26|Mult0|auto_generated|op_3~10_combout\ $ (\inst26|rez_true[7]~3_combout\)) # (!\inst26|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst26|rez_true[7]~3_combout\,
	datad => VCC,
	cin => \inst26|Add2~10\,
	combout => \inst26|Add2~11_combout\,
	cout => \inst26|Add2~12\);

-- Location: LCCOMB_X22_Y18_N16
\inst26|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~13_combout\ = \inst26|Mult0|auto_generated|op_3~12_combout\ $ (\inst26|Add2~12\ $ (\inst26|rez_true[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst26|rez_true[7]~3_combout\,
	cin => \inst26|Add2~12\,
	combout => \inst26|Add2~13_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst6|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~20_combout\ = ((\inst6|Add0~9_combout\ $ (\inst6|rc~0_combout\ $ (!\inst6|Add2~19\)))) # (GND)
-- \inst6|Add2~21\ = CARRY((\inst6|Add0~9_combout\ & ((\inst6|rc~0_combout\) # (!\inst6|Add2~19\))) # (!\inst6|Add0~9_combout\ & (\inst6|rc~0_combout\ & !\inst6|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~9_combout\,
	datab => \inst6|rc~0_combout\,
	datad => VCC,
	cin => \inst6|Add2~19\,
	combout => \inst6|Add2~20_combout\,
	cout => \inst6|Add2~21\);

-- Location: LCCOMB_X25_Y18_N24
\inst6|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~22_combout\ = \inst6|Add0~9_combout\ $ (\inst6|rc~0_combout\ $ (\inst6|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~9_combout\,
	datab => \inst6|rc~0_combout\,
	cin => \inst6|Add2~21\,
	combout => \inst6|Add2~22_combout\);

-- Location: LCCOMB_X25_Y18_N4
\inst6|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~24_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~22_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst6|Add0~9_combout\ & (\inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~9_combout\,
	datab => \inst|cnt\(4),
	datac => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst6|Add2~22_combout\,
	combout => \inst6|Add2~24_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst6|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~25_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~20_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst|cnt\(4) & ((\inst6|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst6|Add2~20_combout\,
	datad => \inst6|Add0~9_combout\,
	combout => \inst6|Add2~25_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst6|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~6_combout\ = (\inst6|Add2~25_combout\ & ((\inst6|Add0~7_combout\ & (\inst6|Add3~5\ & VCC)) # (!\inst6|Add0~7_combout\ & (!\inst6|Add3~5\)))) # (!\inst6|Add2~25_combout\ & ((\inst6|Add0~7_combout\ & (!\inst6|Add3~5\)) # (!\inst6|Add0~7_combout\ 
-- & ((\inst6|Add3~5\) # (GND)))))
-- \inst6|Add3~7\ = CARRY((\inst6|Add2~25_combout\ & (!\inst6|Add0~7_combout\ & !\inst6|Add3~5\)) # (!\inst6|Add2~25_combout\ & ((!\inst6|Add3~5\) # (!\inst6|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~25_combout\,
	datab => \inst6|Add0~7_combout\,
	datad => VCC,
	cin => \inst6|Add3~5\,
	combout => \inst6|Add3~6_combout\,
	cout => \inst6|Add3~7\);

-- Location: LCCOMB_X24_Y18_N26
\inst6|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~8_combout\ = ((\inst6|Add2~24_combout\ $ (\inst6|Add0~9_combout\ $ (!\inst6|Add3~7\)))) # (GND)
-- \inst6|Add3~9\ = CARRY((\inst6|Add2~24_combout\ & ((\inst6|Add0~9_combout\) # (!\inst6|Add3~7\))) # (!\inst6|Add2~24_combout\ & (\inst6|Add0~9_combout\ & !\inst6|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~24_combout\,
	datab => \inst6|Add0~9_combout\,
	datad => VCC,
	cin => \inst6|Add3~7\,
	combout => \inst6|Add3~8_combout\,
	cout => \inst6|Add3~9\);

-- Location: LCCOMB_X24_Y18_N12
\inst6|Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~13_combout\ = (\inst6|rb[2]~1_combout\ & (\inst6|Add3~8_combout\)) # (!\inst6|rb[2]~1_combout\ & ((\inst6|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[2]~1_combout\,
	datac => \inst6|Add3~8_combout\,
	datad => \inst6|Add2~24_combout\,
	combout => \inst6|Add3~13_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst6|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~14_combout\ = (\inst6|rb[2]~1_combout\ & ((\inst6|Add3~6_combout\))) # (!\inst6|rb[2]~1_combout\ & (\inst6|Add2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[2]~1_combout\,
	datac => \inst6|Add2~25_combout\,
	datad => \inst6|Add3~6_combout\,
	combout => \inst6|Add3~14_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst6|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~4_combout\ = ((\inst6|Add0~5_combout\ $ (\inst6|Add3~14_combout\ $ (!\inst6|Add4~3\)))) # (GND)
-- \inst6|Add4~5\ = CARRY((\inst6|Add0~5_combout\ & ((\inst6|Add3~14_combout\) # (!\inst6|Add4~3\))) # (!\inst6|Add0~5_combout\ & (\inst6|Add3~14_combout\ & !\inst6|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~5_combout\,
	datab => \inst6|Add3~14_combout\,
	datad => VCC,
	cin => \inst6|Add4~3\,
	combout => \inst6|Add4~4_combout\,
	cout => \inst6|Add4~5\);

-- Location: LCCOMB_X24_Y18_N6
\inst6|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~6_combout\ = (\inst6|Add3~13_combout\ & ((\inst6|Add0~7_combout\ & (\inst6|Add4~5\ & VCC)) # (!\inst6|Add0~7_combout\ & (!\inst6|Add4~5\)))) # (!\inst6|Add3~13_combout\ & ((\inst6|Add0~7_combout\ & (!\inst6|Add4~5\)) # (!\inst6|Add0~7_combout\ 
-- & ((\inst6|Add4~5\) # (GND)))))
-- \inst6|Add4~7\ = CARRY((\inst6|Add3~13_combout\ & (!\inst6|Add0~7_combout\ & !\inst6|Add4~5\)) # (!\inst6|Add3~13_combout\ & ((!\inst6|Add4~5\) # (!\inst6|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~13_combout\,
	datab => \inst6|Add0~7_combout\,
	datad => VCC,
	cin => \inst6|Add4~5\,
	combout => \inst6|Add4~6_combout\,
	cout => \inst6|Add4~7\);

-- Location: LCCOMB_X23_Y18_N8
\inst6|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~11_combout\ = (\inst6|rb[3]~2_combout\ & ((\inst6|Add4~6_combout\))) # (!\inst6|rb[3]~2_combout\ & (\inst6|Add3~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rb[3]~2_combout\,
	datac => \inst6|Add3~13_combout\,
	datad => \inst6|Add4~6_combout\,
	combout => \inst6|Add4~11_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst6|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~12_combout\ = (\inst6|rb[3]~2_combout\ & ((\inst6|Add4~4_combout\))) # (!\inst6|rb[3]~2_combout\ & (\inst6|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[3]~2_combout\,
	datac => \inst6|Add3~14_combout\,
	datad => \inst6|Add4~4_combout\,
	combout => \inst6|Add4~12_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst24|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~1_combout\ = (\inst26|Add2~11_combout\ & (\inst6|Add4~12_combout\ & (\inst26|Add2~13_combout\ $ (!\inst6|Add4~11_combout\)))) # (!\inst26|Add2~11_combout\ & (!\inst6|Add4~12_combout\ & (\inst26|Add2~13_combout\ $ 
-- (!\inst6|Add4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add2~11_combout\,
	datab => \inst26|Add2~13_combout\,
	datac => \inst6|Add4~11_combout\,
	datad => \inst6|Add4~12_combout\,
	combout => \inst24|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst6|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~17_combout\ = (\inst6|rb[2]~1_combout\ & ((\inst6|Add3~0_combout\))) # (!\inst6|rb[2]~1_combout\ & (\inst6|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[2]~1_combout\,
	datac => \inst6|Add2~28_combout\,
	datad => \inst6|Add3~0_combout\,
	combout => \inst6|Add3~17_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst6|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~29_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & (((\inst6|Add2~12_combout\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & (\inst|cnt\(4) & ((\inst6|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datac => \inst6|Add2~12_combout\,
	datad => \inst6|Add0~3_combout\,
	combout => \inst6|Add2~29_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst6|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c[0]~0_combout\ = (\inst|cnt\(4) & \inst6|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(4),
	datad => \inst6|Add0~1_combout\,
	combout => \inst6|c[0]~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst24|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~2_combout\ = (\inst6|Add2~29_combout\ & (\inst26|Add2~3_combout\ & (\inst6|c[0]~0_combout\ $ (!\inst26|Add2~1_combout\)))) # (!\inst6|Add2~29_combout\ & (!\inst26|Add2~3_combout\ & (\inst6|c[0]~0_combout\ $ (!\inst26|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~29_combout\,
	datab => \inst6|c[0]~0_combout\,
	datac => \inst26|Add2~1_combout\,
	datad => \inst26|Add2~3_combout\,
	combout => \inst24|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst24|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~3_combout\ = (\inst24|Equal0~2_combout\ & (\inst6|Add3~17_combout\ $ (!\inst26|Add2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~17_combout\,
	datac => \inst24|Equal0~2_combout\,
	datad => \inst26|Add2~5_combout\,
	combout => \inst24|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst6|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~10_combout\ = \inst6|Add0~9_combout\ $ (\inst6|Add3~9\ $ (\inst6|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~9_combout\,
	datad => \inst6|Add2~24_combout\,
	cin => \inst6|Add3~9\,
	combout => \inst6|Add3~10_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst6|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~12_combout\ = (\inst6|rb[2]~1_combout\ & ((\inst6|Add3~10_combout\))) # (!\inst6|rb[2]~1_combout\ & (\inst6|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~24_combout\,
	datab => \inst6|rb[2]~1_combout\,
	datad => \inst6|Add3~10_combout\,
	combout => \inst6|Add3~12_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst6|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~8_combout\ = \inst6|Add0~9_combout\ $ (\inst6|Add4~7\ $ (!\inst6|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~9_combout\,
	datad => \inst6|Add3~12_combout\,
	cin => \inst6|Add4~7\,
	combout => \inst6|Add4~8_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst6|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~10_combout\ = (\inst6|rb[3]~2_combout\ & ((\inst6|Add4~8_combout\))) # (!\inst6|rb[3]~2_combout\ & (\inst6|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rb[3]~2_combout\,
	datac => \inst6|Add3~12_combout\,
	datad => \inst6|Add4~8_combout\,
	combout => \inst6|Add4~10_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst24|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~4_combout\ = (\inst24|Equal0~3_combout\ & (\inst6|Add4~10_combout\ $ (((!\inst26|Mult0|auto_generated|op_3~14_combout\ & \inst26|rez_true[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst24|Equal0~3_combout\,
	datac => \inst26|rez_true[7]~3_combout\,
	datad => \inst6|Add4~10_combout\,
	combout => \inst24|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst24|defect~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|defect~0_combout\ = (((\inst24|defect~q\) # (!\inst24|Equal0~4_combout\)) # (!\inst24|Equal0~1_combout\)) # (!\inst24|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~0_combout\,
	datab => \inst24|Equal0~1_combout\,
	datac => \inst24|defect~q\,
	datad => \inst24|Equal0~4_combout\,
	combout => \inst24|defect~0_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X22_Y18_N29
\inst24|defect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst24|defect~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|defect~q\);

-- Location: LCCOMB_X22_Y18_N22
\inst24|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~5_combout\ = ((!\inst24|Equal0~4_combout\) # (!\inst24|Equal0~0_combout\)) # (!\inst24|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Equal0~1_combout\,
	datac => \inst24|Equal0~0_combout\,
	datad => \inst24|Equal0~4_combout\,
	combout => \inst24|Equal0~5_combout\);

-- Location: FF_X22_Y18_N23
\inst24|okey\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst24|Equal0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|okey~q\);

-- Location: LCCOMB_X23_Y17_N16
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst26|rez_true[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|rez_true[7]~2_combout\ = (\inst26|Mult0|auto_generated|op_3~14_combout\) # ((\inst26|process_0~0_combout\ & ((!\inst26|Equal0~1_combout\) # (!\inst26|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Equal0~0_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst26|process_0~0_combout\,
	datad => \inst26|Equal0~1_combout\,
	combout => \inst26|rez_true[7]~2_combout\);

ww_defect <= \defect~output_o\;

ww_okey <= \okey~output_o\;

ww_finish <= \finish~output_o\;

ww_rez_test(7) <= \rez_test[7]~output_o\;

ww_rez_test(6) <= \rez_test[6]~output_o\;

ww_rez_test(5) <= \rez_test[5]~output_o\;

ww_rez_test(4) <= \rez_test[4]~output_o\;

ww_rez_test(3) <= \rez_test[3]~output_o\;

ww_rez_test(2) <= \rez_test[2]~output_o\;

ww_rez_test(1) <= \rez_test[1]~output_o\;

ww_rez_test(0) <= \rez_test[0]~output_o\;

ww_rez_true(7) <= \rez_true[7]~output_o\;

ww_rez_true(6) <= \rez_true[6]~output_o\;

ww_rez_true(5) <= \rez_true[5]~output_o\;

ww_rez_true(4) <= \rez_true[4]~output_o\;

ww_rez_true(3) <= \rez_true[3]~output_o\;

ww_rez_true(2) <= \rez_true[2]~output_o\;

ww_rez_true(1) <= \rez_true[1]~output_o\;

ww_rez_true(0) <= \rez_true[0]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(0) <= \y[0]~output_o\;
END structure;


