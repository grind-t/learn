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

-- DATE "06/23/2020 22:08:00"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TEST_OY IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sko : BUFFER std_logic;
	sno : BUFFER std_logic;
	okey : BUFFER std_logic;
	defect : BUFFER std_logic;
	finish : BUFFER std_logic;
	real_rez : BUFFER std_logic_vector(7 DOWNTO 0);
	true_rez : BUFFER std_logic_vector(7 DOWNTO 0);
	x : BUFFER std_logic_vector(3 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END TEST_OY;

-- Design Ports Information
-- sko	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- okey	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- defect	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TEST_OY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_okey : std_logic;
SIGNAL ww_defect : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL ww_real_rez : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_true_rez : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \sno~output_o\ : std_logic;
SIGNAL \okey~output_o\ : std_logic;
SIGNAL \defect~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \real_rez[0]~output_o\ : std_logic;
SIGNAL \real_rez[1]~output_o\ : std_logic;
SIGNAL \real_rez[2]~output_o\ : std_logic;
SIGNAL \real_rez[3]~output_o\ : std_logic;
SIGNAL \real_rez[4]~output_o\ : std_logic;
SIGNAL \real_rez[5]~output_o\ : std_logic;
SIGNAL \real_rez[6]~output_o\ : std_logic;
SIGNAL \real_rez[7]~output_o\ : std_logic;
SIGNAL \true_rez[0]~output_o\ : std_logic;
SIGNAL \true_rez[1]~output_o\ : std_logic;
SIGNAL \true_rez[2]~output_o\ : std_logic;
SIGNAL \true_rez[3]~output_o\ : std_logic;
SIGNAL \true_rez[4]~output_o\ : std_logic;
SIGNAL \true_rez[5]~output_o\ : std_logic;
SIGNAL \true_rez[6]~output_o\ : std_logic;
SIGNAL \true_rez[7]~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen_test:cnt[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \gen_test:cnt[6]~2\ : std_logic;
SIGNAL \gen_test:cnt[7]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[7]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \gen_test:cnt[1]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[0]~q\ : std_logic;
SIGNAL \gen_test:cnt[0]~2\ : std_logic;
SIGNAL \gen_test:cnt[1]~2_combout\ : std_logic;
SIGNAL \gen_test:cnt[1]~q\ : std_logic;
SIGNAL \gen_test:cnt[1]~3\ : std_logic;
SIGNAL \gen_test:cnt[2]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[2]~q\ : std_logic;
SIGNAL \gen_test:cnt[2]~2\ : std_logic;
SIGNAL \gen_test:cnt[3]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[3]~q\ : std_logic;
SIGNAL \gen_test:cnt[3]~2\ : std_logic;
SIGNAL \gen_test:cnt[4]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[4]~q\ : std_logic;
SIGNAL \gen_test:cnt[4]~2\ : std_logic;
SIGNAL \gen_test:cnt[5]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[5]~q\ : std_logic;
SIGNAL \gen_test:cnt[5]~2\ : std_logic;
SIGNAL \gen_test:cnt[6]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[6]~q\ : std_logic;
SIGNAL \gen_test~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctl_unit:v_sno~q\ : std_logic;
SIGNAL \sno~0_combout\ : std_logic;
SIGNAL \sno~reg0_q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s0~q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Next_state.s1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s1~q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Next_state.s2~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s2~q\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rb[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rb~3_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra~10_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rb~1_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rb~2_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rb~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|i~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|i~1_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|i~2_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Selector2~1_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s4~q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s5~q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s3~q\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|Next_state.s6~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|state.s6~q\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra~7_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra~8_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra~9_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~1_cout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~3\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~5\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~7\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[4]~3_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~9\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[5]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~11\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[6]~5_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~13\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|ra[7]~6_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[0]~9\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[1]~12\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[2]~13_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[2]~14\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[3]~16\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[4]~17_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[4]~18\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[5]~19_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[5]~20\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[6]~21_combout\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[6]~22\ : std_logic;
SIGNAL \b2v_inst6|unit_OA|rc[7]~23_combout\ : std_logic;
SIGNAL \actual_result:xp[3]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \actual_result:xp[2]~0_combout\ : std_logic;
SIGNAL \actual_result:xp[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|_~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \actual_result~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \actual_result:mbin[7]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \actual_result:mbin[7]~1_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add3~8\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \okey~0_combout\ : std_logic;
SIGNAL \okey~reg0_q\ : std_logic;
SIGNAL \defect~0_combout\ : std_logic;
SIGNAL \defect~1_combout\ : std_logic;
SIGNAL \defect~reg0_q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \actual_result:mbin[7]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst6|unit_OA|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst6|unit_OA|ra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst6|unit_OA|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst6|unit_OA|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst6|unit_YA|ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_okey~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
sko <= ww_sko;
sno <= ww_sno;
okey <= ww_okey;
defect <= ww_defect;
finish <= ww_finish;
real_rez <= ww_real_rez;
true_rez <= ww_true_rez;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\b2v_inst6|unit_YA|ALT_INV_state.s3~q\ <= NOT \b2v_inst6|unit_YA|state.s3~q\;
\ALT_INV_okey~reg0_q\ <= NOT \okey~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y27_N2
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_YA|state.s6~q\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\sno~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sno~reg0_q\,
	devoe => ww_devoe,
	o => \sno~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\okey~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_okey~reg0_q\,
	devoe => ww_devoe,
	o => \okey~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\defect~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \defect~reg0_q\,
	devoe => ww_devoe,
	o => \defect~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\finish~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~2_combout\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\real_rez[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(0),
	devoe => ww_devoe,
	o => \real_rez[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\real_rez[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(1),
	devoe => ww_devoe,
	o => \real_rez[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\real_rez[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(2),
	devoe => ww_devoe,
	o => \real_rez[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\real_rez[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(3),
	devoe => ww_devoe,
	o => \real_rez[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\real_rez[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(4),
	devoe => ww_devoe,
	o => \real_rez[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\real_rez[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(5),
	devoe => ww_devoe,
	o => \real_rez[5]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\real_rez[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(6),
	devoe => ww_devoe,
	o => \real_rez[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\real_rez[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|unit_OA|rc\(7),
	devoe => ww_devoe,
	o => \real_rez[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\true_rez[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~1_combout\,
	devoe => ww_devoe,
	o => \true_rez[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\true_rez[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~3_combout\,
	devoe => ww_devoe,
	o => \true_rez[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\true_rez[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~5_combout\,
	devoe => ww_devoe,
	o => \true_rez[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\true_rez[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~7_combout\,
	devoe => ww_devoe,
	o => \true_rez[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\true_rez[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~9_combout\,
	devoe => ww_devoe,
	o => \true_rez[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\true_rez[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~11_combout\,
	devoe => ww_devoe,
	o => \true_rez[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\true_rez[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~13_combout\,
	devoe => ww_devoe,
	o => \true_rez[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\true_rez[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[7]~2_combout\,
	devoe => ww_devoe,
	o => \true_rez[7]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\x[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[0]~q\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\x[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[1]~q\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\x[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[2]~q\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\x[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[3]~q\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[4]~q\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[5]~q\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[6]~q\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[7]~q\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X30_Y17_N12
\gen_test:cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[0]~1_combout\ = \gen_test:cnt[0]~q\ $ (VCC)
-- \gen_test:cnt[0]~2\ = CARRY(\gen_test:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[0]~q\,
	datad => VCC,
	combout => \gen_test:cnt[0]~1_combout\,
	cout => \gen_test:cnt[0]~2\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X30_Y17_N24
\gen_test:cnt[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[6]~1_combout\ = (\gen_test:cnt[6]~q\ & (\gen_test:cnt[5]~2\ $ (GND))) # (!\gen_test:cnt[6]~q\ & (!\gen_test:cnt[5]~2\ & VCC))
-- \gen_test:cnt[6]~2\ = CARRY((\gen_test:cnt[6]~q\ & !\gen_test:cnt[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[6]~q\,
	datad => VCC,
	cin => \gen_test:cnt[5]~2\,
	combout => \gen_test:cnt[6]~1_combout\,
	cout => \gen_test:cnt[6]~2\);

-- Location: LCCOMB_X30_Y17_N26
\gen_test:cnt[7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[7]~1_combout\ = \gen_test:cnt[6]~2\ $ (\gen_test:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_test:cnt[7]~q\,
	cin => \gen_test:cnt[6]~2\,
	combout => \gen_test:cnt[7]~1_combout\);

-- Location: FF_X30_Y17_N27
\gen_test:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[7]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[7]~q\);

-- Location: LCCOMB_X29_Y18_N26
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\gen_test:cnt[5]~q\ & (\gen_test:cnt[3]~q\ & (\gen_test:cnt[7]~q\ & \gen_test:cnt[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[6]~q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\gen_test:cnt[4]~q\ & (\gen_test:cnt[1]~q\ & (\gen_test:cnt[2]~q\ & \gen_test:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datab => \gen_test:cnt[1]~q\,
	datac => \gen_test:cnt[2]~q\,
	datad => \gen_test:cnt[0]~q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\gen_test:cnt[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[1]~1_combout\ = (\reset~input_o\) # ((\b2v_inst6|unit_YA|state.s6~q\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \reset~input_o\,
	datac => \Equal1~0_combout\,
	datad => \b2v_inst6|unit_YA|state.s6~q\,
	combout => \gen_test:cnt[1]~1_combout\);

-- Location: FF_X30_Y17_N13
\gen_test:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[0]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[0]~q\);

-- Location: LCCOMB_X30_Y17_N14
\gen_test:cnt[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[1]~2_combout\ = (\gen_test:cnt[1]~q\ & (!\gen_test:cnt[0]~2\)) # (!\gen_test:cnt[1]~q\ & ((\gen_test:cnt[0]~2\) # (GND)))
-- \gen_test:cnt[1]~3\ = CARRY((!\gen_test:cnt[0]~2\) # (!\gen_test:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[1]~q\,
	datad => VCC,
	cin => \gen_test:cnt[0]~2\,
	combout => \gen_test:cnt[1]~2_combout\,
	cout => \gen_test:cnt[1]~3\);

-- Location: FF_X30_Y17_N15
\gen_test:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[1]~2_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[1]~q\);

-- Location: LCCOMB_X30_Y17_N16
\gen_test:cnt[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[2]~1_combout\ = (\gen_test:cnt[2]~q\ & (\gen_test:cnt[1]~3\ $ (GND))) # (!\gen_test:cnt[2]~q\ & (!\gen_test:cnt[1]~3\ & VCC))
-- \gen_test:cnt[2]~2\ = CARRY((\gen_test:cnt[2]~q\ & !\gen_test:cnt[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[2]~q\,
	datad => VCC,
	cin => \gen_test:cnt[1]~3\,
	combout => \gen_test:cnt[2]~1_combout\,
	cout => \gen_test:cnt[2]~2\);

-- Location: FF_X30_Y17_N17
\gen_test:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[2]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[2]~q\);

-- Location: LCCOMB_X30_Y17_N18
\gen_test:cnt[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[3]~1_combout\ = (\gen_test:cnt[3]~q\ & (!\gen_test:cnt[2]~2\)) # (!\gen_test:cnt[3]~q\ & ((\gen_test:cnt[2]~2\) # (GND)))
-- \gen_test:cnt[3]~2\ = CARRY((!\gen_test:cnt[2]~2\) # (!\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[3]~q\,
	datad => VCC,
	cin => \gen_test:cnt[2]~2\,
	combout => \gen_test:cnt[3]~1_combout\,
	cout => \gen_test:cnt[3]~2\);

-- Location: FF_X30_Y17_N19
\gen_test:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[3]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[3]~q\);

-- Location: LCCOMB_X30_Y17_N20
\gen_test:cnt[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[4]~1_combout\ = (\gen_test:cnt[4]~q\ & (\gen_test:cnt[3]~2\ $ (GND))) # (!\gen_test:cnt[4]~q\ & (!\gen_test:cnt[3]~2\ & VCC))
-- \gen_test:cnt[4]~2\ = CARRY((\gen_test:cnt[4]~q\ & !\gen_test:cnt[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datad => VCC,
	cin => \gen_test:cnt[3]~2\,
	combout => \gen_test:cnt[4]~1_combout\,
	cout => \gen_test:cnt[4]~2\);

-- Location: FF_X30_Y17_N21
\gen_test:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[4]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[4]~q\);

-- Location: LCCOMB_X30_Y17_N22
\gen_test:cnt[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test:cnt[5]~1_combout\ = (\gen_test:cnt[5]~q\ & (!\gen_test:cnt[4]~2\)) # (!\gen_test:cnt[5]~q\ & ((\gen_test:cnt[4]~2\) # (GND)))
-- \gen_test:cnt[5]~2\ = CARRY((!\gen_test:cnt[4]~2\) # (!\gen_test:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[5]~q\,
	datad => VCC,
	cin => \gen_test:cnt[4]~2\,
	combout => \gen_test:cnt[5]~1_combout\,
	cout => \gen_test:cnt[5]~2\);

-- Location: FF_X30_Y17_N23
\gen_test:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[5]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[5]~q\);

-- Location: FF_X30_Y17_N25
\gen_test:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[6]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[6]~q\);

-- Location: LCCOMB_X29_Y18_N20
\gen_test~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen_test~0_combout\ = ((\Equal1~0_combout\ & \Equal1~1_combout\)) # (!\b2v_inst6|unit_YA|state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \b2v_inst6|unit_YA|state.s6~q\,
	combout => \gen_test~0_combout\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: FF_X29_Y18_N21
\ctl_unit:v_sno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl_unit:v_sno~q\);

-- Location: LCCOMB_X29_Y18_N10
\sno~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sno~0_combout\ = !\ctl_unit:v_sno~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctl_unit:v_sno~q\,
	combout => \sno~0_combout\);

-- Location: FF_X29_Y18_N11
\sno~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sno~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sno~reg0_q\);

-- Location: LCCOMB_X29_Y18_N28
\b2v_inst6|unit_YA|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Selector0~0_combout\ = (!\b2v_inst6|unit_YA|state.s6~q\ & ((\sno~reg0_q\) # (\b2v_inst6|unit_YA|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~reg0_q\,
	datac => \b2v_inst6|unit_YA|state.s0~q\,
	datad => \b2v_inst6|unit_YA|state.s6~q\,
	combout => \b2v_inst6|unit_YA|Selector0~0_combout\);

-- Location: FF_X29_Y18_N29
\b2v_inst6|unit_YA|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s0~q\);

-- Location: LCCOMB_X29_Y18_N22
\b2v_inst6|unit_YA|Next_state.s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Next_state.s1~0_combout\ = (!\b2v_inst6|unit_YA|state.s0~q\ & \sno~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_YA|state.s0~q\,
	datad => \sno~reg0_q\,
	combout => \b2v_inst6|unit_YA|Next_state.s1~0_combout\);

-- Location: FF_X29_Y18_N23
\b2v_inst6|unit_YA|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Next_state.s1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s1~q\);

-- Location: LCCOMB_X27_Y18_N16
\b2v_inst6|unit_YA|Next_state.s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Next_state.s2~0_combout\ = (\b2v_inst6|unit_OA|rb\(3) & \b2v_inst6|unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|unit_OA|rb\(3),
	datad => \b2v_inst6|unit_YA|state.s1~q\,
	combout => \b2v_inst6|unit_YA|Next_state.s2~0_combout\);

-- Location: FF_X27_Y18_N17
\b2v_inst6|unit_YA|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Next_state.s2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s2~q\);

-- Location: LCCOMB_X29_Y18_N24
\b2v_inst6|unit_OA|rb[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rb[0]~4_combout\ = (\b2v_inst6|unit_YA|state.s1~q\ & (\gen_test:cnt[4]~q\)) # (!\b2v_inst6|unit_YA|state.s1~q\ & ((\b2v_inst6|unit_OA|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datac => \b2v_inst6|unit_OA|rb\(0),
	datad => \b2v_inst6|unit_YA|state.s1~q\,
	combout => \b2v_inst6|unit_OA|rb[0]~4_combout\);

-- Location: FF_X29_Y18_N25
\b2v_inst6|unit_OA|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rb[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rb\(0));

-- Location: LCCOMB_X27_Y18_N12
\b2v_inst6|unit_OA|rb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rb~3_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & ((\b2v_inst6|unit_OA|rb\(1) $ (\b2v_inst6|unit_OA|rb\(0))))) # (!\b2v_inst6|unit_YA|state.s2~q\ & (\gen_test:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \b2v_inst6|unit_YA|state.s2~q\,
	datac => \b2v_inst6|unit_OA|rb\(1),
	datad => \b2v_inst6|unit_OA|rb\(0),
	combout => \b2v_inst6|unit_OA|rb~3_combout\);

-- Location: LCCOMB_X27_Y18_N24
\b2v_inst6|unit_OA|ra~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra~10_combout\ = (\b2v_inst6|unit_YA|state.s2~q\) # (\b2v_inst6|unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_YA|state.s2~q\,
	datad => \b2v_inst6|unit_YA|state.s1~q\,
	combout => \b2v_inst6|unit_OA|ra~10_combout\);

-- Location: FF_X27_Y18_N13
\b2v_inst6|unit_OA|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rb~3_combout\,
	ena => \b2v_inst6|unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rb\(1));

-- Location: LCCOMB_X27_Y18_N14
\b2v_inst6|unit_OA|rb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rb~1_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & (\b2v_inst6|unit_OA|rb\(2) $ (((\b2v_inst6|unit_OA|rb\(1)) # (\b2v_inst6|unit_OA|rb\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rb\(1),
	datab => \b2v_inst6|unit_OA|rb\(0),
	datac => \b2v_inst6|unit_OA|rb\(2),
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|rb~1_combout\);

-- Location: LCCOMB_X27_Y18_N22
\b2v_inst6|unit_OA|rb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rb~2_combout\ = (\b2v_inst6|unit_OA|rb~1_combout\) # ((\gen_test:cnt[6]~q\ & !\b2v_inst6|unit_YA|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[6]~q\,
	datac => \b2v_inst6|unit_OA|rb~1_combout\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|rb~2_combout\);

-- Location: FF_X27_Y18_N23
\b2v_inst6|unit_OA|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rb~2_combout\,
	ena => \b2v_inst6|unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rb\(2));

-- Location: LCCOMB_X27_Y18_N10
\b2v_inst6|unit_OA|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add1~0_combout\ = \b2v_inst6|unit_OA|rb\(3) $ (((\b2v_inst6|unit_OA|rb\(2)) # ((\b2v_inst6|unit_OA|rb\(0)) # (\b2v_inst6|unit_OA|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rb\(2),
	datab => \b2v_inst6|unit_OA|rb\(0),
	datac => \b2v_inst6|unit_OA|rb\(3),
	datad => \b2v_inst6|unit_OA|rb\(1),
	combout => \b2v_inst6|unit_OA|Add1~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\b2v_inst6|unit_OA|rb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rb~0_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & (\b2v_inst6|unit_OA|Add1~0_combout\)) # (!\b2v_inst6|unit_YA|state.s2~q\ & ((\gen_test:cnt[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|Add1~0_combout\,
	datab => \gen_test:cnt[7]~q\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|rb~0_combout\);

-- Location: FF_X27_Y18_N31
\b2v_inst6|unit_OA|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rb~0_combout\,
	ena => \b2v_inst6|unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rb\(3));

-- Location: LCCOMB_X26_Y18_N6
\b2v_inst6|unit_OA|i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|i~0_combout\ = (\b2v_inst6|unit_YA|state.s5~q\ & !\b2v_inst6|unit_OA|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_YA|state.s5~q\,
	datac => \b2v_inst6|unit_OA|i\(0),
	combout => \b2v_inst6|unit_OA|i~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\b2v_inst6|unit_OA|i~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|i~1_combout\ = (\b2v_inst6|unit_YA|state.s5~q\) # (\b2v_inst6|unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|unit_YA|state.s5~q\,
	datad => \b2v_inst6|unit_YA|state.s1~q\,
	combout => \b2v_inst6|unit_OA|i~1_combout\);

-- Location: FF_X26_Y18_N7
\b2v_inst6|unit_OA|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|i~0_combout\,
	ena => \b2v_inst6|unit_OA|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|i\(0));

-- Location: LCCOMB_X26_Y18_N24
\b2v_inst6|unit_OA|i~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|i~2_combout\ = (\b2v_inst6|unit_YA|state.s5~q\ & (\b2v_inst6|unit_OA|i\(0) $ (\b2v_inst6|unit_OA|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|i\(0),
	datab => \b2v_inst6|unit_YA|state.s5~q\,
	datac => \b2v_inst6|unit_OA|i\(1),
	combout => \b2v_inst6|unit_OA|i~2_combout\);

-- Location: FF_X26_Y18_N25
\b2v_inst6|unit_OA|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|i~2_combout\,
	ena => \b2v_inst6|unit_OA|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|i\(1));

-- Location: LCCOMB_X27_Y18_N2
\b2v_inst6|unit_OA|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Mux0~0_combout\ = (\b2v_inst6|unit_OA|i\(1) & (((\b2v_inst6|unit_OA|i\(0))))) # (!\b2v_inst6|unit_OA|i\(1) & ((\b2v_inst6|unit_OA|i\(0) & (!\b2v_inst6|unit_OA|rb\(1))) # (!\b2v_inst6|unit_OA|i\(0) & ((!\b2v_inst6|unit_OA|rb\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rb\(1),
	datab => \b2v_inst6|unit_OA|i\(1),
	datac => \b2v_inst6|unit_OA|i\(0),
	datad => \b2v_inst6|unit_OA|rb\(0),
	combout => \b2v_inst6|unit_OA|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y18_N20
\b2v_inst6|unit_OA|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Mux0~1_combout\ = (\b2v_inst6|unit_OA|i\(1) & ((\b2v_inst6|unit_OA|Mux0~0_combout\ & (!\b2v_inst6|unit_OA|rb\(3))) # (!\b2v_inst6|unit_OA|Mux0~0_combout\ & ((!\b2v_inst6|unit_OA|rb\(2)))))) # (!\b2v_inst6|unit_OA|i\(1) & 
-- (((\b2v_inst6|unit_OA|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rb\(3),
	datab => \b2v_inst6|unit_OA|i\(1),
	datac => \b2v_inst6|unit_OA|rb\(2),
	datad => \b2v_inst6|unit_OA|Mux0~0_combout\,
	combout => \b2v_inst6|unit_OA|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\b2v_inst6|unit_YA|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Selector2~1_combout\ = (\b2v_inst6|unit_YA|Selector2~0_combout\ & \b2v_inst6|unit_OA|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|unit_YA|Selector2~0_combout\,
	datad => \b2v_inst6|unit_OA|Mux0~1_combout\,
	combout => \b2v_inst6|unit_YA|Selector2~1_combout\);

-- Location: FF_X27_Y18_N29
\b2v_inst6|unit_YA|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s4~q\);

-- Location: LCCOMB_X27_Y18_N8
\b2v_inst6|unit_YA|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Selector3~0_combout\ = (\b2v_inst6|unit_YA|state.s3~q\ & (((!\b2v_inst6|unit_OA|i\(0))) # (!\b2v_inst6|unit_OA|i\(1)))) # (!\b2v_inst6|unit_YA|state.s3~q\ & (\b2v_inst6|unit_YA|state.s4~q\ & ((!\b2v_inst6|unit_OA|i\(0)) # 
-- (!\b2v_inst6|unit_OA|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s3~q\,
	datab => \b2v_inst6|unit_OA|i\(1),
	datac => \b2v_inst6|unit_OA|i\(0),
	datad => \b2v_inst6|unit_YA|state.s4~q\,
	combout => \b2v_inst6|unit_YA|Selector3~0_combout\);

-- Location: FF_X27_Y18_N9
\b2v_inst6|unit_YA|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s5~q\);

-- Location: LCCOMB_X27_Y18_N4
\b2v_inst6|unit_YA|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Selector2~0_combout\ = (\b2v_inst6|unit_YA|state.s2~q\) # ((\b2v_inst6|unit_YA|state.s5~q\) # ((!\b2v_inst6|unit_OA|rb\(3) & \b2v_inst6|unit_YA|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rb\(3),
	datab => \b2v_inst6|unit_YA|state.s2~q\,
	datac => \b2v_inst6|unit_YA|state.s5~q\,
	datad => \b2v_inst6|unit_YA|state.s1~q\,
	combout => \b2v_inst6|unit_YA|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y18_N6
\b2v_inst6|unit_YA|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Selector1~0_combout\ = (\b2v_inst6|unit_YA|Selector2~0_combout\ & !\b2v_inst6|unit_OA|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|unit_YA|Selector2~0_combout\,
	datad => \b2v_inst6|unit_OA|Mux0~1_combout\,
	combout => \b2v_inst6|unit_YA|Selector1~0_combout\);

-- Location: FF_X27_Y18_N7
\b2v_inst6|unit_YA|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_YA|Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s3~q\);

-- Location: LCCOMB_X27_Y18_N18
\b2v_inst6|unit_YA|Next_state.s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_YA|Next_state.s6~0_combout\ = (\b2v_inst6|unit_OA|i\(0) & (\b2v_inst6|unit_OA|i\(1) & ((\b2v_inst6|unit_YA|state.s3~q\) # (\b2v_inst6|unit_YA|state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s3~q\,
	datab => \b2v_inst6|unit_YA|state.s4~q\,
	datac => \b2v_inst6|unit_OA|i\(0),
	datad => \b2v_inst6|unit_OA|i\(1),
	combout => \b2v_inst6|unit_YA|Next_state.s6~0_combout\);

-- Location: FF_X29_Y18_N17
\b2v_inst6|unit_YA|state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \b2v_inst6|unit_YA|Next_state.s6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_YA|state.s6~q\);

-- Location: LCCOMB_X29_Y18_N18
\b2v_inst6|unit_OA|ra~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra~7_combout\ = (\b2v_inst6|unit_YA|state.s1~q\ & \gen_test:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s1~q\,
	datad => \gen_test:cnt[0]~q\,
	combout => \b2v_inst6|unit_OA|ra~7_combout\);

-- Location: LCCOMB_X30_Y18_N28
\b2v_inst6|unit_OA|ra~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra~8_combout\ = (\b2v_inst6|unit_YA|state.s1~q\) # ((\b2v_inst6|unit_YA|state.s5~q\) # (\b2v_inst6|unit_YA|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_YA|state.s1~q\,
	datac => \b2v_inst6|unit_YA|state.s5~q\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|ra~8_combout\);

-- Location: LCCOMB_X29_Y18_N12
\b2v_inst6|unit_OA|ra~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra~9_combout\ = (\b2v_inst6|unit_OA|ra~7_combout\) # ((\b2v_inst6|unit_OA|ra\(0) & ((\b2v_inst6|unit_YA|state.s2~q\) # (!\b2v_inst6|unit_OA|ra~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s2~q\,
	datab => \b2v_inst6|unit_OA|ra~7_combout\,
	datac => \b2v_inst6|unit_OA|ra\(0),
	datad => \b2v_inst6|unit_OA|ra~8_combout\,
	combout => \b2v_inst6|unit_OA|ra~9_combout\);

-- Location: FF_X29_Y18_N13
\b2v_inst6|unit_OA|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(0));

-- Location: LCCOMB_X30_Y18_N4
\b2v_inst6|unit_OA|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~1_cout\ = CARRY(!\b2v_inst6|unit_OA|ra\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(0),
	datad => VCC,
	cout => \b2v_inst6|unit_OA|Add0~1_cout\);

-- Location: LCCOMB_X30_Y18_N6
\b2v_inst6|unit_OA|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~2_combout\ = (\b2v_inst6|unit_OA|ra\(1) & ((\b2v_inst6|unit_OA|Add0~1_cout\) # (GND))) # (!\b2v_inst6|unit_OA|ra\(1) & (!\b2v_inst6|unit_OA|Add0~1_cout\))
-- \b2v_inst6|unit_OA|Add0~3\ = CARRY((\b2v_inst6|unit_OA|ra\(1)) # (!\b2v_inst6|unit_OA|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_OA|ra\(1),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~1_cout\,
	combout => \b2v_inst6|unit_OA|Add0~2_combout\,
	cout => \b2v_inst6|unit_OA|Add0~3\);

-- Location: LCCOMB_X30_Y18_N24
\b2v_inst6|unit_OA|ra[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[1]~0_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & ((\b2v_inst6|unit_OA|Add0~2_combout\))) # (!\b2v_inst6|unit_YA|state.s2~q\ & (\gen_test:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s2~q\,
	datab => \gen_test:cnt[1]~q\,
	datad => \b2v_inst6|unit_OA|Add0~2_combout\,
	combout => \b2v_inst6|unit_OA|ra[1]~0_combout\);

-- Location: FF_X30_Y18_N25
\b2v_inst6|unit_OA|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[1]~0_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(0),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(1));

-- Location: LCCOMB_X30_Y18_N8
\b2v_inst6|unit_OA|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~4_combout\ = (\b2v_inst6|unit_OA|ra\(2) & (!\b2v_inst6|unit_OA|Add0~3\ & VCC)) # (!\b2v_inst6|unit_OA|ra\(2) & (\b2v_inst6|unit_OA|Add0~3\ $ (GND)))
-- \b2v_inst6|unit_OA|Add0~5\ = CARRY((!\b2v_inst6|unit_OA|ra\(2) & !\b2v_inst6|unit_OA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_OA|ra\(2),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~3\,
	combout => \b2v_inst6|unit_OA|Add0~4_combout\,
	cout => \b2v_inst6|unit_OA|Add0~5\);

-- Location: LCCOMB_X30_Y18_N20
\b2v_inst6|unit_OA|ra[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[2]~1_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & ((\b2v_inst6|unit_OA|Add0~4_combout\))) # (!\b2v_inst6|unit_YA|state.s2~q\ & (\gen_test:cnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[2]~q\,
	datab => \b2v_inst6|unit_OA|Add0~4_combout\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|ra[2]~1_combout\);

-- Location: FF_X30_Y18_N21
\b2v_inst6|unit_OA|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[2]~1_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(1),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(2));

-- Location: LCCOMB_X30_Y18_N10
\b2v_inst6|unit_OA|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~6_combout\ = (\b2v_inst6|unit_OA|ra\(3) & ((\b2v_inst6|unit_OA|Add0~5\) # (GND))) # (!\b2v_inst6|unit_OA|ra\(3) & (!\b2v_inst6|unit_OA|Add0~5\))
-- \b2v_inst6|unit_OA|Add0~7\ = CARRY((\b2v_inst6|unit_OA|ra\(3)) # (!\b2v_inst6|unit_OA|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_OA|ra\(3),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~5\,
	combout => \b2v_inst6|unit_OA|Add0~6_combout\,
	cout => \b2v_inst6|unit_OA|Add0~7\);

-- Location: LCCOMB_X30_Y18_N2
\b2v_inst6|unit_OA|ra[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[3]~2_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & (\b2v_inst6|unit_OA|Add0~6_combout\)) # (!\b2v_inst6|unit_YA|state.s2~q\ & ((\gen_test:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|Add0~6_combout\,
	datab => \gen_test:cnt[3]~q\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|ra[3]~2_combout\);

-- Location: FF_X30_Y18_N3
\b2v_inst6|unit_OA|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[3]~2_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(2),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(3));

-- Location: LCCOMB_X30_Y18_N12
\b2v_inst6|unit_OA|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~8_combout\ = (\b2v_inst6|unit_OA|ra\(4) & (!\b2v_inst6|unit_OA|Add0~7\ & VCC)) # (!\b2v_inst6|unit_OA|ra\(4) & (\b2v_inst6|unit_OA|Add0~7\ $ (GND)))
-- \b2v_inst6|unit_OA|Add0~9\ = CARRY((!\b2v_inst6|unit_OA|ra\(4) & !\b2v_inst6|unit_OA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(4),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~7\,
	combout => \b2v_inst6|unit_OA|Add0~8_combout\,
	cout => \b2v_inst6|unit_OA|Add0~9\);

-- Location: LCCOMB_X30_Y18_N26
\b2v_inst6|unit_OA|ra[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[4]~3_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & (\b2v_inst6|unit_OA|Add0~8_combout\)) # (!\b2v_inst6|unit_YA|state.s2~q\ & ((\gen_test:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|Add0~8_combout\,
	datab => \gen_test:cnt[3]~q\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|ra[4]~3_combout\);

-- Location: FF_X30_Y18_N27
\b2v_inst6|unit_OA|ra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[4]~3_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(3),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(4));

-- Location: LCCOMB_X30_Y18_N14
\b2v_inst6|unit_OA|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~10_combout\ = (\b2v_inst6|unit_OA|ra\(5) & ((\b2v_inst6|unit_OA|Add0~9\) # (GND))) # (!\b2v_inst6|unit_OA|ra\(5) & (!\b2v_inst6|unit_OA|Add0~9\))
-- \b2v_inst6|unit_OA|Add0~11\ = CARRY((\b2v_inst6|unit_OA|ra\(5)) # (!\b2v_inst6|unit_OA|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(5),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~9\,
	combout => \b2v_inst6|unit_OA|Add0~10_combout\,
	cout => \b2v_inst6|unit_OA|Add0~11\);

-- Location: LCCOMB_X30_Y18_N22
\b2v_inst6|unit_OA|ra[5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[5]~4_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & (\b2v_inst6|unit_OA|Add0~10_combout\)) # (!\b2v_inst6|unit_YA|state.s2~q\ & ((\gen_test:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|Add0~10_combout\,
	datab => \gen_test:cnt[3]~q\,
	datad => \b2v_inst6|unit_YA|state.s2~q\,
	combout => \b2v_inst6|unit_OA|ra[5]~4_combout\);

-- Location: FF_X30_Y18_N23
\b2v_inst6|unit_OA|ra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[5]~4_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(4),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(5));

-- Location: LCCOMB_X30_Y18_N16
\b2v_inst6|unit_OA|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~12_combout\ = (\b2v_inst6|unit_OA|ra\(6) & (!\b2v_inst6|unit_OA|Add0~11\ & VCC)) # (!\b2v_inst6|unit_OA|ra\(6) & (\b2v_inst6|unit_OA|Add0~11\ $ (GND)))
-- \b2v_inst6|unit_OA|Add0~13\ = CARRY((!\b2v_inst6|unit_OA|ra\(6) & !\b2v_inst6|unit_OA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(6),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|Add0~11\,
	combout => \b2v_inst6|unit_OA|Add0~12_combout\,
	cout => \b2v_inst6|unit_OA|Add0~13\);

-- Location: LCCOMB_X30_Y18_N30
\b2v_inst6|unit_OA|ra[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[6]~5_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & ((\b2v_inst6|unit_OA|Add0~12_combout\))) # (!\b2v_inst6|unit_YA|state.s2~q\ & (\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s2~q\,
	datab => \gen_test:cnt[3]~q\,
	datad => \b2v_inst6|unit_OA|Add0~12_combout\,
	combout => \b2v_inst6|unit_OA|ra[6]~5_combout\);

-- Location: FF_X30_Y18_N31
\b2v_inst6|unit_OA|ra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[6]~5_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(5),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(6));

-- Location: LCCOMB_X30_Y18_N18
\b2v_inst6|unit_OA|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|Add0~14_combout\ = \b2v_inst6|unit_OA|Add0~13\ $ (!\b2v_inst6|unit_OA|ra\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst6|unit_OA|ra\(7),
	cin => \b2v_inst6|unit_OA|Add0~13\,
	combout => \b2v_inst6|unit_OA|Add0~14_combout\);

-- Location: LCCOMB_X30_Y18_N0
\b2v_inst6|unit_OA|ra[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|ra[7]~6_combout\ = (\b2v_inst6|unit_YA|state.s2~q\ & ((\b2v_inst6|unit_OA|Add0~14_combout\))) # (!\b2v_inst6|unit_YA|state.s2~q\ & (\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s2~q\,
	datab => \gen_test:cnt[3]~q\,
	datad => \b2v_inst6|unit_OA|Add0~14_combout\,
	combout => \b2v_inst6|unit_OA|ra[7]~6_combout\);

-- Location: FF_X30_Y18_N1
\b2v_inst6|unit_OA|ra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|ra[7]~6_combout\,
	asdata => \b2v_inst6|unit_OA|ra\(6),
	sload => \b2v_inst6|unit_YA|state.s5~q\,
	ena => \b2v_inst6|unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|ra\(7));

-- Location: LCCOMB_X31_Y18_N10
\b2v_inst6|unit_OA|rc[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[0]~8_combout\ = (\b2v_inst6|unit_OA|rc\(0) & (\b2v_inst6|unit_OA|ra\(0) $ (VCC))) # (!\b2v_inst6|unit_OA|rc\(0) & (\b2v_inst6|unit_OA|ra\(0) & VCC))
-- \b2v_inst6|unit_OA|rc[0]~9\ = CARRY((\b2v_inst6|unit_OA|rc\(0) & \b2v_inst6|unit_OA|ra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(0),
	datab => \b2v_inst6|unit_OA|ra\(0),
	datad => VCC,
	combout => \b2v_inst6|unit_OA|rc[0]~8_combout\,
	cout => \b2v_inst6|unit_OA|rc[0]~9\);

-- Location: LCCOMB_X31_Y18_N28
\b2v_inst6|unit_OA|rc[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[0]~10_combout\ = (!\b2v_inst6|unit_YA|state.s4~q\ & ((\b2v_inst6|unit_YA|state.s1~q\) # (\b2v_inst6|unit_YA|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|unit_YA|state.s1~q\,
	datac => \b2v_inst6|unit_YA|state.s4~q\,
	datad => \b2v_inst6|unit_YA|state.s3~q\,
	combout => \b2v_inst6|unit_OA|rc[0]~10_combout\);

-- Location: FF_X31_Y18_N11
\b2v_inst6|unit_OA|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[0]~8_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(0));

-- Location: LCCOMB_X31_Y18_N12
\b2v_inst6|unit_OA|rc[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[1]~11_combout\ = (\b2v_inst6|unit_OA|rc\(1) & ((\b2v_inst6|unit_OA|ra\(1) & (\b2v_inst6|unit_OA|rc[0]~9\ & VCC)) # (!\b2v_inst6|unit_OA|ra\(1) & (!\b2v_inst6|unit_OA|rc[0]~9\)))) # (!\b2v_inst6|unit_OA|rc\(1) & 
-- ((\b2v_inst6|unit_OA|ra\(1) & (!\b2v_inst6|unit_OA|rc[0]~9\)) # (!\b2v_inst6|unit_OA|ra\(1) & ((\b2v_inst6|unit_OA|rc[0]~9\) # (GND)))))
-- \b2v_inst6|unit_OA|rc[1]~12\ = CARRY((\b2v_inst6|unit_OA|rc\(1) & (!\b2v_inst6|unit_OA|ra\(1) & !\b2v_inst6|unit_OA|rc[0]~9\)) # (!\b2v_inst6|unit_OA|rc\(1) & ((!\b2v_inst6|unit_OA|rc[0]~9\) # (!\b2v_inst6|unit_OA|ra\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(1),
	datab => \b2v_inst6|unit_OA|ra\(1),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[0]~9\,
	combout => \b2v_inst6|unit_OA|rc[1]~11_combout\,
	cout => \b2v_inst6|unit_OA|rc[1]~12\);

-- Location: FF_X31_Y18_N13
\b2v_inst6|unit_OA|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[1]~11_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(1));

-- Location: LCCOMB_X31_Y18_N14
\b2v_inst6|unit_OA|rc[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[2]~13_combout\ = ((\b2v_inst6|unit_OA|rc\(2) $ (\b2v_inst6|unit_OA|ra\(2) $ (!\b2v_inst6|unit_OA|rc[1]~12\)))) # (GND)
-- \b2v_inst6|unit_OA|rc[2]~14\ = CARRY((\b2v_inst6|unit_OA|rc\(2) & ((\b2v_inst6|unit_OA|ra\(2)) # (!\b2v_inst6|unit_OA|rc[1]~12\))) # (!\b2v_inst6|unit_OA|rc\(2) & (\b2v_inst6|unit_OA|ra\(2) & !\b2v_inst6|unit_OA|rc[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(2),
	datab => \b2v_inst6|unit_OA|ra\(2),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[1]~12\,
	combout => \b2v_inst6|unit_OA|rc[2]~13_combout\,
	cout => \b2v_inst6|unit_OA|rc[2]~14\);

-- Location: FF_X31_Y18_N15
\b2v_inst6|unit_OA|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[2]~13_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(2));

-- Location: LCCOMB_X31_Y18_N16
\b2v_inst6|unit_OA|rc[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[3]~15_combout\ = (\b2v_inst6|unit_OA|ra\(3) & ((\b2v_inst6|unit_OA|rc\(3) & (\b2v_inst6|unit_OA|rc[2]~14\ & VCC)) # (!\b2v_inst6|unit_OA|rc\(3) & (!\b2v_inst6|unit_OA|rc[2]~14\)))) # (!\b2v_inst6|unit_OA|ra\(3) & 
-- ((\b2v_inst6|unit_OA|rc\(3) & (!\b2v_inst6|unit_OA|rc[2]~14\)) # (!\b2v_inst6|unit_OA|rc\(3) & ((\b2v_inst6|unit_OA|rc[2]~14\) # (GND)))))
-- \b2v_inst6|unit_OA|rc[3]~16\ = CARRY((\b2v_inst6|unit_OA|ra\(3) & (!\b2v_inst6|unit_OA|rc\(3) & !\b2v_inst6|unit_OA|rc[2]~14\)) # (!\b2v_inst6|unit_OA|ra\(3) & ((!\b2v_inst6|unit_OA|rc[2]~14\) # (!\b2v_inst6|unit_OA|rc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(3),
	datab => \b2v_inst6|unit_OA|rc\(3),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[2]~14\,
	combout => \b2v_inst6|unit_OA|rc[3]~15_combout\,
	cout => \b2v_inst6|unit_OA|rc[3]~16\);

-- Location: FF_X31_Y18_N17
\b2v_inst6|unit_OA|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[3]~15_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(3));

-- Location: LCCOMB_X31_Y18_N18
\b2v_inst6|unit_OA|rc[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[4]~17_combout\ = ((\b2v_inst6|unit_OA|ra\(4) $ (\b2v_inst6|unit_OA|rc\(4) $ (!\b2v_inst6|unit_OA|rc[3]~16\)))) # (GND)
-- \b2v_inst6|unit_OA|rc[4]~18\ = CARRY((\b2v_inst6|unit_OA|ra\(4) & ((\b2v_inst6|unit_OA|rc\(4)) # (!\b2v_inst6|unit_OA|rc[3]~16\))) # (!\b2v_inst6|unit_OA|ra\(4) & (\b2v_inst6|unit_OA|rc\(4) & !\b2v_inst6|unit_OA|rc[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(4),
	datab => \b2v_inst6|unit_OA|rc\(4),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[3]~16\,
	combout => \b2v_inst6|unit_OA|rc[4]~17_combout\,
	cout => \b2v_inst6|unit_OA|rc[4]~18\);

-- Location: FF_X31_Y18_N19
\b2v_inst6|unit_OA|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[4]~17_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(4));

-- Location: LCCOMB_X31_Y18_N20
\b2v_inst6|unit_OA|rc[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[5]~19_combout\ = (\b2v_inst6|unit_OA|ra\(5) & ((\b2v_inst6|unit_OA|rc\(5) & (\b2v_inst6|unit_OA|rc[4]~18\ & VCC)) # (!\b2v_inst6|unit_OA|rc\(5) & (!\b2v_inst6|unit_OA|rc[4]~18\)))) # (!\b2v_inst6|unit_OA|ra\(5) & 
-- ((\b2v_inst6|unit_OA|rc\(5) & (!\b2v_inst6|unit_OA|rc[4]~18\)) # (!\b2v_inst6|unit_OA|rc\(5) & ((\b2v_inst6|unit_OA|rc[4]~18\) # (GND)))))
-- \b2v_inst6|unit_OA|rc[5]~20\ = CARRY((\b2v_inst6|unit_OA|ra\(5) & (!\b2v_inst6|unit_OA|rc\(5) & !\b2v_inst6|unit_OA|rc[4]~18\)) # (!\b2v_inst6|unit_OA|ra\(5) & ((!\b2v_inst6|unit_OA|rc[4]~18\) # (!\b2v_inst6|unit_OA|rc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(5),
	datab => \b2v_inst6|unit_OA|rc\(5),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[4]~18\,
	combout => \b2v_inst6|unit_OA|rc[5]~19_combout\,
	cout => \b2v_inst6|unit_OA|rc[5]~20\);

-- Location: FF_X31_Y18_N21
\b2v_inst6|unit_OA|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[5]~19_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(5));

-- Location: LCCOMB_X31_Y18_N22
\b2v_inst6|unit_OA|rc[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[6]~21_combout\ = ((\b2v_inst6|unit_OA|rc\(6) $ (\b2v_inst6|unit_OA|ra\(6) $ (!\b2v_inst6|unit_OA|rc[5]~20\)))) # (GND)
-- \b2v_inst6|unit_OA|rc[6]~22\ = CARRY((\b2v_inst6|unit_OA|rc\(6) & ((\b2v_inst6|unit_OA|ra\(6)) # (!\b2v_inst6|unit_OA|rc[5]~20\))) # (!\b2v_inst6|unit_OA|rc\(6) & (\b2v_inst6|unit_OA|ra\(6) & !\b2v_inst6|unit_OA|rc[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(6),
	datab => \b2v_inst6|unit_OA|ra\(6),
	datad => VCC,
	cin => \b2v_inst6|unit_OA|rc[5]~20\,
	combout => \b2v_inst6|unit_OA|rc[6]~21_combout\,
	cout => \b2v_inst6|unit_OA|rc[6]~22\);

-- Location: FF_X31_Y18_N23
\b2v_inst6|unit_OA|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[6]~21_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(6));

-- Location: LCCOMB_X31_Y18_N24
\b2v_inst6|unit_OA|rc[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit_OA|rc[7]~23_combout\ = \b2v_inst6|unit_OA|ra\(7) $ (\b2v_inst6|unit_OA|rc[6]~22\ $ (\b2v_inst6|unit_OA|rc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|ra\(7),
	datad => \b2v_inst6|unit_OA|rc\(7),
	cin => \b2v_inst6|unit_OA|rc[6]~22\,
	combout => \b2v_inst6|unit_OA|rc[7]~23_combout\);

-- Location: FF_X31_Y18_N25
\b2v_inst6|unit_OA|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst6|unit_OA|rc[7]~23_combout\,
	sclr => \b2v_inst6|unit_YA|ALT_INV_state.s3~q\,
	ena => \b2v_inst6|unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|unit_OA|rc\(7));

-- Location: LCCOMB_X30_Y17_N6
\Mult0|auto_generated|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL(\gen_test:cnt[5]~q\ $ (((\gen_test:cnt[7]~q\ & \gen_test:cnt[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datac => \gen_test:cnt[5]~q\,
	datad => \gen_test:cnt[4]~q\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X30_Y17_N4
\Mult0|auto_generated|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((\gen_test:cnt[7]~q\ & (!\gen_test:cnt[6]~q\ & ((!\gen_test:cnt[4]~q\) # (!\gen_test:cnt[5]~q\)))) # (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[5]~q\ & ((\gen_test:cnt[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[4]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[6]~q\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X30_Y17_N8
\actual_result:xp[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:xp[3]~0_combout\ = (!\gen_test:cnt[0]~q\ & (!\gen_test:cnt[2]~q\ & (!\gen_test:cnt[1]~q\ & \gen_test:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datab => \gen_test:cnt[2]~q\,
	datac => \gen_test:cnt[1]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result:xp[3]~0_combout\);

-- Location: LCCOMB_X29_Y17_N2
\Mult0|auto_generated|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\Mult0|auto_generated|le4a\(5) & \actual_result:xp[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datac => \actual_result:xp[3]~0_combout\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X30_Y17_N30
\Mult0|auto_generated|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = \gen_test:cnt[6]~q\ $ (((\gen_test:cnt[5]~q\ & ((\gen_test:cnt[4]~q\) # (!\gen_test:cnt[7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \gen_test:cnt[4]~q\,
	datac => \gen_test:cnt[5]~q\,
	datad => \gen_test:cnt[6]~q\,
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
\Mult0|auto_generated|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|le4a\(5) & ((\Mult0|auto_generated|cs2a[1]~0_combout\) # (!\actual_result:xp[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \actual_result:xp[3]~0_combout\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X29_Y17_N8
\actual_result:xp[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:xp[2]~0_combout\ = \gen_test:cnt[2]~q\ $ (((\gen_test:cnt[3]~q\ & ((\gen_test:cnt[0]~q\) # (\gen_test:cnt[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datab => \gen_test:cnt[2]~q\,
	datac => \gen_test:cnt[1]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result:xp[2]~0_combout\);

-- Location: LCCOMB_X29_Y17_N4
\Mult0|auto_generated|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\actual_result:xp[2]~0_combout\ & \Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \actual_result:xp[2]~0_combout\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X30_Y17_N2
\Mult0|auto_generated|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\Mult0|auto_generated|le4a\(5) & (\gen_test:cnt[1]~q\ $ (((\gen_test:cnt[0]~q\ & \gen_test:cnt[3]~q\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datab => \gen_test:cnt[1]~q\,
	datac => \Mult0|auto_generated|le4a\(5),
	datad => \gen_test:cnt[3]~q\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X29_Y17_N16
\Mult0|auto_generated|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\actual_result:xp[3]~0_combout\ $ (\Mult0|auto_generated|le4a\(5))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\actual_result:xp[2]~0_combout\ & 
-- ((\Mult0|auto_generated|le4a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \actual_result:xp[2]~0_combout\,
	datac => \actual_result:xp[3]~0_combout\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X30_Y17_N28
\actual_result:xp[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:xp[1]~0_combout\ = \gen_test:cnt[1]~q\ $ (((\gen_test:cnt[3]~q\ & \gen_test:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[1]~q\,
	datad => \gen_test:cnt[0]~q\,
	combout => \actual_result:xp[1]~0_combout\);

-- Location: LCCOMB_X29_Y17_N10
\Mult0|auto_generated|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\actual_result:xp[2]~0_combout\ $ (\Mult0|auto_generated|le4a\(5))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\actual_result:xp[1]~0_combout\ & 
-- ((\Mult0|auto_generated|le4a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \actual_result:xp[1]~0_combout\,
	datac => \actual_result:xp[2]~0_combout\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X30_Y17_N0
\Mult0|auto_generated|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\gen_test:cnt[4]~q\ & (\gen_test:cnt[5]~q\ $ (((\gen_test:cnt[7]~q\))))) # (!\gen_test:cnt[4]~q\ & (\gen_test:cnt[5]~q\ & (!\actual_result:xp[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[4]~q\,
	datac => \actual_result:xp[3]~0_combout\,
	datad => \gen_test:cnt[7]~q\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X29_Y17_N12
\Mult0|auto_generated|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\gen_test:cnt[4]~q\ & (\actual_result:xp[3]~0_combout\ $ (((\Mult0|auto_generated|le3a\(5)))))) # (!\gen_test:cnt[4]~q\ & (((!\actual_result:xp[2]~0_combout\ & \Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datab => \actual_result:xp[3]~0_combout\,
	datac => \actual_result:xp[2]~0_combout\,
	datad => \Mult0|auto_generated|le3a\(5),
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X29_Y17_N14
\Mult0|auto_generated|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\gen_test:cnt[4]~q\ & ((\actual_result:xp[2]~0_combout\ $ (\Mult0|auto_generated|le3a\(5))))) # (!\gen_test:cnt[4]~q\ & (!\actual_result:xp[1]~0_combout\ & ((\Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datab => \actual_result:xp[1]~0_combout\,
	datac => \actual_result:xp[2]~0_combout\,
	datad => \Mult0|auto_generated|le3a\(5),
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X29_Y17_N18
\Mult0|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le4a\(5) & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X29_Y17_N20
\Mult0|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y17_N22
\Mult0|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|le3a\(4) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|le3a\(4)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le4a\(2) & (\Mult0|auto_generated|le3a\(4) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y17_N24
\Mult0|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le5a\(1) 
-- & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X29_Y17_N26
\Mult0|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|le5a\(2) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le4a\(4) & ((\Mult0|auto_generated|le5a\(2)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|le5a\(2) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(4),
	datab => \Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X29_Y17_N28
\Mult0|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le4a\(5) $ (\Mult0|auto_generated|op_1~9\ $ (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datad => \Mult0|auto_generated|le5a\(3),
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X29_Y17_N0
\Mult0|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\gen_test:cnt[0]~q\ & \Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_test:cnt[0]~q\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X29_Y17_N30
\Mult0|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\actual_result:xp[1]~0_combout\ $ (((\Mult0|auto_generated|le4a\(5)))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\gen_test:cnt[0]~q\ & 
-- \Mult0|auto_generated|le4a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \actual_result:xp[1]~0_combout\,
	datac => \gen_test:cnt[0]~q\,
	datad => \Mult0|auto_generated|le4a\(5),
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X26_Y17_N2
\Mult0|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\Mult0|auto_generated|le4a\(5) $ (((\gen_test:cnt[0]~q\ & \Mult0|auto_generated|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datac => \Mult0|auto_generated|le4a\(5),
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X26_Y17_N4
\Mult0|auto_generated|_~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|_~9_combout\ = (!\gen_test:cnt[0]~q\ & (!\gen_test:cnt[4]~q\ & \gen_test:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datac => \gen_test:cnt[4]~q\,
	datad => \gen_test:cnt[5]~q\,
	combout => \Mult0|auto_generated|_~9_combout\);

-- Location: LCCOMB_X26_Y17_N6
\Mult0|auto_generated|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\Mult0|auto_generated|_~9_combout\) # ((\gen_test:cnt[4]~q\ & (\Mult0|auto_generated|le3a\(5) $ (\actual_result:xp[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datab => \Mult0|auto_generated|_~9_combout\,
	datac => \Mult0|auto_generated|le3a\(5),
	datad => \actual_result:xp[1]~0_combout\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X30_Y17_N10
\Mult0|auto_generated|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\gen_test:cnt[5]~q\ $ (((\gen_test:cnt[4]~q\ & (\gen_test:cnt[7]~q\ $ (\gen_test:cnt[0]~q\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[7]~q\,
	datac => \gen_test:cnt[0]~q\,
	datad => \gen_test:cnt[4]~q\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X26_Y17_N8
\Mult0|auto_generated|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\Mult0|auto_generated|le3a\(0) & (\Mult0|auto_generated|le3a\(5) $ (VCC))) # (!\Mult0|auto_generated|le3a\(0) & (\Mult0|auto_generated|le3a\(5) & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\Mult0|auto_generated|le3a\(0) & \Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X26_Y17_N10
\Mult0|auto_generated|op_3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X26_Y17_N12
\Mult0|auto_generated|op_3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X26_Y17_N14
\Mult0|auto_generated|op_3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X26_Y17_N16
\Mult0|auto_generated|op_3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|op_1~4_combout\ $ (\Mult0|auto_generated|le5a\(0) $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|op_1~4_combout\ & ((\Mult0|auto_generated|le5a\(0)) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|op_1~4_combout\ & (\Mult0|auto_generated|le5a\(0) & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~4_combout\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X26_Y17_N18
\Mult0|auto_generated|op_3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X26_Y17_N20
\Mult0|auto_generated|op_3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|op_1~8_combout\ $ (\Mult0|auto_generated|le3a\(5) $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|op_1~8_combout\ & ((\Mult0|auto_generated|le3a\(5)) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|op_1~8_combout\ & (\Mult0|auto_generated|le3a\(5) & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X26_Y17_N22
\Mult0|auto_generated|op_3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = \Mult0|auto_generated|le3a\(5) $ (\Mult0|auto_generated|op_3~13\ $ (!\Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(5),
	datad => \Mult0|auto_generated|op_1~10_combout\,
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X27_Y18_N0
\actual_result~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result~0_combout\ = \gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_test:cnt[3]~q\,
	datad => \gen_test:cnt[7]~q\,
	combout => \actual_result~0_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\Mult0|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~0_combout\ & (!\Mult0|auto_generated|op_3~6_combout\ & !\Mult0|auto_generated|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~2_combout\,
	datab => \Mult0|auto_generated|op_3~0_combout\,
	datac => \Mult0|auto_generated|op_3~6_combout\,
	datad => \Mult0|auto_generated|op_3~4_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X26_Y17_N26
\actual_result:mbin[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:mbin[7]~0_combout\ = (!\Mult0|auto_generated|op_3~8_combout\ & (\Equal3~1_combout\ & !\Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_3~8_combout\,
	datac => \Equal3~1_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \actual_result:mbin[7]~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\actual_result:mbin[7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:mbin[7]~1_combout\ = ((!\Mult0|auto_generated|op_3~14_combout\ & (\actual_result:mbin[7]~0_combout\ & !\Mult0|auto_generated|op_3~12_combout\))) # (!\actual_result~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \actual_result~0_combout\,
	datac => \actual_result:mbin[7]~0_combout\,
	datad => \Mult0|auto_generated|op_3~12_combout\,
	combout => \actual_result:mbin[7]~1_combout\);

-- Location: LCCOMB_X27_Y17_N16
\Equal2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = \b2v_inst6|unit_OA|rc\(7) $ (((\Mult0|auto_generated|op_3~14_combout\) # (!\actual_result:mbin[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(7),
	datac => \actual_result:mbin[7]~1_combout\,
	datad => \Mult0|auto_generated|op_3~14_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X26_Y17_N24
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\Mult0|auto_generated|op_3~14_combout\ & (!\Mult0|auto_generated|op_3~8_combout\ & (!\Mult0|auto_generated|op_3~12_combout\ & !\Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~8_combout\,
	datac => \Mult0|auto_generated|op_3~12_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Mult0|auto_generated|op_3~0_combout\ $ ((((\Equal3~1_combout\ & \Equal3~0_combout\)) # (!\actual_result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result~0_combout\,
	datab => \Mult0|auto_generated|op_3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X27_Y17_N0
\Add3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (\actual_result:mbin[7]~1_combout\ & (!\Add3~0_combout\ & VCC)) # (!\actual_result:mbin[7]~1_combout\ & (\Add3~0_combout\ $ (GND)))
-- \Add3~2\ = CARRY((!\actual_result:mbin[7]~1_combout\ & !\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add3~1_combout\,
	cout => \Add3~2\);

-- Location: LCCOMB_X27_Y17_N2
\Add3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\Add3~2\ & (\actual_result:mbin[7]~1_combout\ $ ((\Mult0|auto_generated|op_3~2_combout\)))) # (!\Add3~2\ & ((\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~2_combout\)) # (GND)))
-- \Add3~4\ = CARRY((\actual_result:mbin[7]~1_combout\ $ (\Mult0|auto_generated|op_3~2_combout\)) # (!\Add3~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \Add3~2\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X27_Y17_N30
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\b2v_inst6|unit_OA|rc\(0) & (\Add3~1_combout\ & (\b2v_inst6|unit_OA|rc\(1) $ (!\Add3~3_combout\)))) # (!\b2v_inst6|unit_OA|rc\(0) & (!\Add3~1_combout\ & (\b2v_inst6|unit_OA|rc\(1) $ (!\Add3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(0),
	datab => \Add3~1_combout\,
	datac => \b2v_inst6|unit_OA|rc\(1),
	datad => \Add3~3_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X27_Y17_N4
\Add3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\Add3~4\ & ((\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~4_combout\)))) # (!\Add3~4\ & (\actual_result:mbin[7]~1_combout\ $ (\Mult0|auto_generated|op_3~4_combout\ $ (GND))))
-- \Add3~6\ = CARRY((!\Add3~4\ & (\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~5_combout\,
	cout => \Add3~6\);

-- Location: LCCOMB_X27_Y17_N6
\Add3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (\Add3~6\ & (\actual_result:mbin[7]~1_combout\ $ ((\Mult0|auto_generated|op_3~6_combout\)))) # (!\Add3~6\ & ((\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~6_combout\)) # (GND)))
-- \Add3~8\ = CARRY((\actual_result:mbin[7]~1_combout\ $ (\Mult0|auto_generated|op_3~6_combout\)) # (!\Add3~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Mult0|auto_generated|op_3~6_combout\,
	datad => VCC,
	cin => \Add3~6\,
	combout => \Add3~7_combout\,
	cout => \Add3~8\);

-- Location: LCCOMB_X27_Y17_N24
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\b2v_inst6|unit_OA|rc\(2) & (\Add3~5_combout\ & (\b2v_inst6|unit_OA|rc\(3) $ (!\Add3~7_combout\)))) # (!\b2v_inst6|unit_OA|rc\(2) & (!\Add3~5_combout\ & (\b2v_inst6|unit_OA|rc\(3) $ (!\Add3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(2),
	datab => \b2v_inst6|unit_OA|rc\(3),
	datac => \Add3~5_combout\,
	datad => \Add3~7_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X27_Y17_N8
\Add3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (\Add3~8\ & ((\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~8_combout\)))) # (!\Add3~8\ & (\actual_result:mbin[7]~1_combout\ $ (\Mult0|auto_generated|op_3~8_combout\ $ (GND))))
-- \Add3~10\ = CARRY((!\Add3~8\ & (\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Mult0|auto_generated|op_3~8_combout\,
	datad => VCC,
	cin => \Add3~8\,
	combout => \Add3~9_combout\,
	cout => \Add3~10\);

-- Location: LCCOMB_X27_Y17_N10
\Add3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\Add3~10\ & (\actual_result:mbin[7]~1_combout\ $ ((\Mult0|auto_generated|op_3~10_combout\)))) # (!\Add3~10\ & ((\actual_result:mbin[7]~1_combout\ $ (!\Mult0|auto_generated|op_3~10_combout\)) # (GND)))
-- \Add3~12\ = CARRY((\actual_result:mbin[7]~1_combout\ $ (\Mult0|auto_generated|op_3~10_combout\)) # (!\Add3~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datab => \Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	cin => \Add3~10\,
	combout => \Add3~11_combout\,
	cout => \Add3~12\);

-- Location: LCCOMB_X27_Y17_N26
\Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\b2v_inst6|unit_OA|rc\(5) & (\Add3~11_combout\ & (\b2v_inst6|unit_OA|rc\(4) $ (!\Add3~9_combout\)))) # (!\b2v_inst6|unit_OA|rc\(5) & (!\Add3~11_combout\ & (\b2v_inst6|unit_OA|rc\(4) $ (!\Add3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_OA|rc\(5),
	datab => \b2v_inst6|unit_OA|rc\(4),
	datac => \Add3~9_combout\,
	datad => \Add3~11_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X27_Y17_N12
\Add3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = \actual_result:mbin[7]~1_combout\ $ (\Add3~12\ $ (\Mult0|auto_generated|op_3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \actual_result:mbin[7]~1_combout\,
	datad => \Mult0|auto_generated|op_3~12_combout\,
	cin => \Add3~12\,
	combout => \Add3~13_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = \b2v_inst6|unit_OA|rc\(6) $ (\Add3~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|unit_OA|rc\(6),
	datad => \Add3~13_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X27_Y17_N22
\Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~2_combout\ & !\Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X27_Y17_N14
\okey~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \okey~0_combout\ = (\b2v_inst6|unit_YA|state.s6~q\ & ((\Equal2~5_combout\) # ((!\Equal2~4_combout\)))) # (!\b2v_inst6|unit_YA|state.s6~q\ & (((\okey~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|unit_YA|state.s6~q\,
	datab => \Equal2~5_combout\,
	datac => \okey~reg0_q\,
	datad => \Equal2~4_combout\,
	combout => \okey~0_combout\);

-- Location: FF_X27_Y17_N15
\okey~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \okey~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \okey~reg0_q\);

-- Location: LCCOMB_X27_Y17_N18
\defect~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \defect~0_combout\ = (!\Equal2~5_combout\ & (\Equal2~1_combout\ & (\Equal2~2_combout\ & !\Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \defect~0_combout\);

-- Location: LCCOMB_X27_Y17_N20
\defect~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \defect~1_combout\ = (\defect~reg0_q\) # ((\b2v_inst6|unit_YA|state.s6~q\ & ((!\defect~0_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \b2v_inst6|unit_YA|state.s6~q\,
	datac => \defect~reg0_q\,
	datad => \defect~0_combout\,
	combout => \defect~1_combout\);

-- Location: FF_X27_Y17_N21
\defect~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \defect~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \defect~reg0_q\);

-- Location: LCCOMB_X29_Y18_N16
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X26_Y18_N8
\actual_result:mbin[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \actual_result:mbin[7]~2_combout\ = (\Mult0|auto_generated|op_3~14_combout\) # ((\actual_result~0_combout\ & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \actual_result~0_combout\,
	datad => \Mult0|auto_generated|op_3~14_combout\,
	combout => \actual_result:mbin[7]~2_combout\);

ww_sko <= \sko~output_o\;

ww_sno <= \sno~output_o\;

ww_okey <= \okey~output_o\;

ww_defect <= \defect~output_o\;

ww_finish <= \finish~output_o\;

ww_real_rez(0) <= \real_rez[0]~output_o\;

ww_real_rez(1) <= \real_rez[1]~output_o\;

ww_real_rez(2) <= \real_rez[2]~output_o\;

ww_real_rez(3) <= \real_rez[3]~output_o\;

ww_real_rez(4) <= \real_rez[4]~output_o\;

ww_real_rez(5) <= \real_rez[5]~output_o\;

ww_real_rez(6) <= \real_rez[6]~output_o\;

ww_real_rez(7) <= \real_rez[7]~output_o\;

ww_true_rez(0) <= \true_rez[0]~output_o\;

ww_true_rez(1) <= \true_rez[1]~output_o\;

ww_true_rez(2) <= \true_rez[2]~output_o\;

ww_true_rez(3) <= \true_rez[3]~output_o\;

ww_true_rez(4) <= \true_rez[4]~output_o\;

ww_true_rez(5) <= \true_rez[5]~output_o\;

ww_true_rez(6) <= \true_rez[6]~output_o\;

ww_true_rez(7) <= \true_rez[7]~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;
END structure;


