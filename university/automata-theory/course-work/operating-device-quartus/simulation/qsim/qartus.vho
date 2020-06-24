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

-- DATE "06/24/2020 11:41:38"

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

ENTITY 	OY IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	set : IN std_logic;
	sno : IN std_logic;
	sko : BUFFER std_logic;
	rc : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END OY;

-- Design Ports Information
-- sko	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_rc : std_logic_vector(7 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \rc[0]~output_o\ : std_logic;
SIGNAL \rc[1]~output_o\ : std_logic;
SIGNAL \rc[2]~output_o\ : std_logic;
SIGNAL \rc[3]~output_o\ : std_logic;
SIGNAL \rc[4]~output_o\ : std_logic;
SIGNAL \rc[5]~output_o\ : std_logic;
SIGNAL \rc[6]~output_o\ : std_logic;
SIGNAL \rc[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \unit_YA|Selector0~0_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \unit_YA|state.s0~q\ : std_logic;
SIGNAL \unit_YA|Next_state.s1~0_combout\ : std_logic;
SIGNAL \unit_YA|state.s1~q\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \unit_OA|rb[0]~4_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \unit_YA|Next_state.s2~0_combout\ : std_logic;
SIGNAL \unit_YA|state.s2~q\ : std_logic;
SIGNAL \unit_OA|rb~3_combout\ : std_logic;
SIGNAL \unit_OA|ra~10_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \unit_OA|rb~1_combout\ : std_logic;
SIGNAL \unit_OA|rb~2_combout\ : std_logic;
SIGNAL \unit_OA|Add1~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \unit_OA|rb~0_combout\ : std_logic;
SIGNAL \unit_YA|Selector2~0_combout\ : std_logic;
SIGNAL \unit_OA|Mux0~0_combout\ : std_logic;
SIGNAL \unit_OA|Mux0~1_combout\ : std_logic;
SIGNAL \unit_YA|Selector2~1_combout\ : std_logic;
SIGNAL \unit_YA|state.s4~q\ : std_logic;
SIGNAL \unit_YA|Selector1~0_combout\ : std_logic;
SIGNAL \unit_YA|state.s3~q\ : std_logic;
SIGNAL \unit_YA|Selector3~0_combout\ : std_logic;
SIGNAL \unit_YA|state.s5~q\ : std_logic;
SIGNAL \unit_OA|i~0_combout\ : std_logic;
SIGNAL \unit_OA|i~1_combout\ : std_logic;
SIGNAL \unit_OA|i~2_combout\ : std_logic;
SIGNAL \unit_YA|Next_state.s6~0_combout\ : std_logic;
SIGNAL \unit_YA|state.s6~q\ : std_logic;
SIGNAL \unit_OA|ra~8_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \unit_OA|ra~7_combout\ : std_logic;
SIGNAL \unit_OA|ra~9_combout\ : std_logic;
SIGNAL \unit_OA|rc[0]~8_combout\ : std_logic;
SIGNAL \unit_OA|rc[0]~10_combout\ : std_logic;
SIGNAL \unit_OA|Add0~1_cout\ : std_logic;
SIGNAL \unit_OA|Add0~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \unit_OA|ra[1]~0_combout\ : std_logic;
SIGNAL \unit_OA|rc[0]~9\ : std_logic;
SIGNAL \unit_OA|rc[1]~11_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \unit_OA|Add0~3\ : std_logic;
SIGNAL \unit_OA|Add0~4_combout\ : std_logic;
SIGNAL \unit_OA|ra[2]~1_combout\ : std_logic;
SIGNAL \unit_OA|rc[1]~12\ : std_logic;
SIGNAL \unit_OA|rc[2]~13_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \unit_OA|Add0~5\ : std_logic;
SIGNAL \unit_OA|Add0~6_combout\ : std_logic;
SIGNAL \unit_OA|ra[3]~2_combout\ : std_logic;
SIGNAL \unit_OA|rc[2]~14\ : std_logic;
SIGNAL \unit_OA|rc[3]~15_combout\ : std_logic;
SIGNAL \unit_OA|Add0~7\ : std_logic;
SIGNAL \unit_OA|Add0~8_combout\ : std_logic;
SIGNAL \unit_OA|ra[4]~3_combout\ : std_logic;
SIGNAL \unit_OA|rc[3]~16\ : std_logic;
SIGNAL \unit_OA|rc[4]~17_combout\ : std_logic;
SIGNAL \unit_OA|Add0~9\ : std_logic;
SIGNAL \unit_OA|Add0~10_combout\ : std_logic;
SIGNAL \unit_OA|ra[5]~4_combout\ : std_logic;
SIGNAL \unit_OA|rc[4]~18\ : std_logic;
SIGNAL \unit_OA|rc[5]~19_combout\ : std_logic;
SIGNAL \unit_OA|Add0~11\ : std_logic;
SIGNAL \unit_OA|Add0~12_combout\ : std_logic;
SIGNAL \unit_OA|ra[6]~5_combout\ : std_logic;
SIGNAL \unit_OA|rc[5]~20\ : std_logic;
SIGNAL \unit_OA|rc[6]~21_combout\ : std_logic;
SIGNAL \unit_OA|Add0~13\ : std_logic;
SIGNAL \unit_OA|Add0~14_combout\ : std_logic;
SIGNAL \unit_OA|ra[7]~6_combout\ : std_logic;
SIGNAL \unit_OA|rc[6]~22\ : std_logic;
SIGNAL \unit_OA|rc[7]~23_combout\ : std_logic;
SIGNAL \unit_OA|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \unit_OA|ra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \unit_OA|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \unit_OA|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \unit_YA|ALT_INV_state.s3~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_clk <= clk;
ww_set <= set;
ww_sno <= sno;
sko <= ww_sko;
rc <= ww_rc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\unit_YA|ALT_INV_state.s3~q\ <= NOT \unit_YA|state.s3~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y27_N9
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_YA|state.s6~q\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\rc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(0),
	devoe => ww_devoe,
	o => \rc[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\rc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(1),
	devoe => ww_devoe,
	o => \rc[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\rc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(2),
	devoe => ww_devoe,
	o => \rc[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\rc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(3),
	devoe => ww_devoe,
	o => \rc[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\rc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(4),
	devoe => ww_devoe,
	o => \rc[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\rc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(5),
	devoe => ww_devoe,
	o => \rc[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\rc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(6),
	devoe => ww_devoe,
	o => \rc[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\rc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unit_OA|rc\(7),
	devoe => ww_devoe,
	o => \rc[7]~output_o\);

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

-- Location: IOIBUF_X33_Y16_N1
\sno~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sno,
	o => \sno~input_o\);

-- Location: LCCOMB_X26_Y28_N24
\unit_YA|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Selector0~0_combout\ = (!\unit_YA|state.s6~q\ & ((\unit_YA|state.s0~q\) # (\sno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit_YA|state.s6~q\,
	datac => \unit_YA|state.s0~q\,
	datad => \sno~input_o\,
	combout => \unit_YA|Selector0~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\set~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: CLKCTRL_G19
\set~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set~inputclkctrl_outclk\);

-- Location: FF_X26_Y28_N25
\unit_YA|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Selector0~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s0~q\);

-- Location: LCCOMB_X26_Y28_N6
\unit_YA|Next_state.s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Next_state.s1~0_combout\ = (!\unit_YA|state.s0~q\ & \sno~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_YA|state.s0~q\,
	datad => \sno~input_o\,
	combout => \unit_YA|Next_state.s1~0_combout\);

-- Location: FF_X26_Y28_N7
\unit_YA|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Next_state.s1~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s1~q\);

-- Location: IOIBUF_X29_Y31_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X29_Y28_N30
\unit_OA|rb[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rb[0]~4_combout\ = (\unit_YA|state.s1~q\ & (\b[0]~input_o\)) # (!\unit_YA|state.s1~q\ & ((\unit_OA|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \unit_OA|rb\(0),
	datad => \unit_YA|state.s1~q\,
	combout => \unit_OA|rb[0]~4_combout\);

-- Location: FF_X29_Y28_N31
\unit_OA|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rb[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rb\(0));

-- Location: IOIBUF_X29_Y31_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X26_Y28_N28
\unit_YA|Next_state.s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Next_state.s2~0_combout\ = (\unit_OA|rb\(3) & \unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_OA|rb\(3),
	datad => \unit_YA|state.s1~q\,
	combout => \unit_YA|Next_state.s2~0_combout\);

-- Location: FF_X26_Y28_N29
\unit_YA|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Next_state.s2~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s2~q\);

-- Location: LCCOMB_X29_Y28_N12
\unit_OA|rb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rb~3_combout\ = (\unit_YA|state.s2~q\ & (\unit_OA|rb\(0) $ (((\unit_OA|rb\(1)))))) # (!\unit_YA|state.s2~q\ & (((\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rb\(0),
	datab => \b[1]~input_o\,
	datac => \unit_OA|rb\(1),
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|rb~3_combout\);

-- Location: LCCOMB_X29_Y28_N22
\unit_OA|ra~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra~10_combout\ = (\unit_YA|state.s2~q\) # (\unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_YA|state.s2~q\,
	datad => \unit_YA|state.s1~q\,
	combout => \unit_OA|ra~10_combout\);

-- Location: FF_X29_Y28_N13
\unit_OA|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rb~3_combout\,
	ena => \unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rb\(1));

-- Location: IOIBUF_X33_Y27_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X29_Y28_N16
\unit_OA|rb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rb~1_combout\ = (\unit_YA|state.s2~q\ & (\unit_OA|rb\(2) $ (((\unit_OA|rb\(0)) # (\unit_OA|rb\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rb\(0),
	datab => \unit_OA|rb\(2),
	datac => \unit_OA|rb\(1),
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|rb~1_combout\);

-- Location: LCCOMB_X29_Y28_N2
\unit_OA|rb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rb~2_combout\ = (\unit_OA|rb~1_combout\) # ((!\unit_YA|state.s2~q\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_YA|state.s2~q\,
	datac => \b[2]~input_o\,
	datad => \unit_OA|rb~1_combout\,
	combout => \unit_OA|rb~2_combout\);

-- Location: FF_X29_Y28_N3
\unit_OA|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rb~2_combout\,
	ena => \unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rb\(2));

-- Location: LCCOMB_X29_Y28_N28
\unit_OA|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add1~0_combout\ = \unit_OA|rb\(3) $ (((\unit_OA|rb\(1)) # ((\unit_OA|rb\(0)) # (\unit_OA|rb\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rb\(3),
	datab => \unit_OA|rb\(1),
	datac => \unit_OA|rb\(0),
	datad => \unit_OA|rb\(2),
	combout => \unit_OA|Add1~0_combout\);

-- Location: IOIBUF_X31_Y31_N8
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X29_Y28_N4
\unit_OA|rb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rb~0_combout\ = (\unit_YA|state.s2~q\ & (\unit_OA|Add1~0_combout\)) # (!\unit_YA|state.s2~q\ & ((\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|Add1~0_combout\,
	datac => \b[3]~input_o\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|rb~0_combout\);

-- Location: FF_X29_Y28_N5
\unit_OA|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rb~0_combout\,
	ena => \unit_OA|ra~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rb\(3));

-- Location: LCCOMB_X26_Y28_N14
\unit_YA|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Selector2~0_combout\ = (\unit_YA|state.s5~q\) # ((\unit_YA|state.s2~q\) # ((\unit_YA|state.s1~q\ & !\unit_OA|rb\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_YA|state.s1~q\,
	datab => \unit_OA|rb\(3),
	datac => \unit_YA|state.s5~q\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_YA|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y28_N0
\unit_OA|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Mux0~0_combout\ = (\unit_OA|i\(1) & (\unit_OA|i\(0))) # (!\unit_OA|i\(1) & ((\unit_OA|i\(0) & ((!\unit_OA|rb\(1)))) # (!\unit_OA|i\(0) & (!\unit_OA|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|i\(1),
	datab => \unit_OA|i\(0),
	datac => \unit_OA|rb\(0),
	datad => \unit_OA|rb\(1),
	combout => \unit_OA|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y28_N10
\unit_OA|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Mux0~1_combout\ = (\unit_OA|i\(1) & ((\unit_OA|Mux0~0_combout\ & ((!\unit_OA|rb\(3)))) # (!\unit_OA|Mux0~0_combout\ & (!\unit_OA|rb\(2))))) # (!\unit_OA|i\(1) & (((\unit_OA|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|i\(1),
	datab => \unit_OA|rb\(2),
	datac => \unit_OA|rb\(3),
	datad => \unit_OA|Mux0~0_combout\,
	combout => \unit_OA|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y28_N8
\unit_YA|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Selector2~1_combout\ = (\unit_YA|Selector2~0_combout\ & \unit_OA|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_YA|Selector2~0_combout\,
	datad => \unit_OA|Mux0~1_combout\,
	combout => \unit_YA|Selector2~1_combout\);

-- Location: FF_X26_Y28_N9
\unit_YA|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Selector2~1_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s4~q\);

-- Location: LCCOMB_X26_Y28_N22
\unit_YA|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Selector1~0_combout\ = (\unit_YA|Selector2~0_combout\ & !\unit_OA|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_YA|Selector2~0_combout\,
	datad => \unit_OA|Mux0~1_combout\,
	combout => \unit_YA|Selector1~0_combout\);

-- Location: FF_X26_Y28_N23
\unit_YA|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Selector1~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s3~q\);

-- Location: LCCOMB_X26_Y28_N4
\unit_YA|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Selector3~0_combout\ = (\unit_OA|i\(1) & (!\unit_OA|i\(0) & ((\unit_YA|state.s4~q\) # (\unit_YA|state.s3~q\)))) # (!\unit_OA|i\(1) & ((\unit_YA|state.s4~q\) # ((\unit_YA|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|i\(1),
	datab => \unit_YA|state.s4~q\,
	datac => \unit_YA|state.s3~q\,
	datad => \unit_OA|i\(0),
	combout => \unit_YA|Selector3~0_combout\);

-- Location: FF_X26_Y28_N5
\unit_YA|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Selector3~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s5~q\);

-- Location: LCCOMB_X26_Y28_N18
\unit_OA|i~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|i~0_combout\ = (\unit_YA|state.s5~q\ & !\unit_OA|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit_YA|state.s5~q\,
	datac => \unit_OA|i\(0),
	combout => \unit_OA|i~0_combout\);

-- Location: LCCOMB_X26_Y28_N30
\unit_OA|i~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|i~1_combout\ = (\unit_YA|state.s5~q\) # (\unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit_YA|state.s5~q\,
	datad => \unit_YA|state.s1~q\,
	combout => \unit_OA|i~1_combout\);

-- Location: FF_X26_Y28_N19
\unit_OA|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|i~0_combout\,
	ena => \unit_OA|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|i\(0));

-- Location: LCCOMB_X26_Y28_N12
\unit_OA|i~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|i~2_combout\ = (\unit_YA|state.s5~q\ & (\unit_OA|i\(0) $ (\unit_OA|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|i\(0),
	datac => \unit_OA|i\(1),
	datad => \unit_YA|state.s5~q\,
	combout => \unit_OA|i~2_combout\);

-- Location: FF_X26_Y28_N13
\unit_OA|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|i~2_combout\,
	ena => \unit_OA|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|i\(1));

-- Location: LCCOMB_X26_Y28_N16
\unit_YA|Next_state.s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_YA|Next_state.s6~0_combout\ = (\unit_OA|i\(1) & (\unit_OA|i\(0) & ((\unit_YA|state.s4~q\) # (\unit_YA|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|i\(1),
	datab => \unit_YA|state.s4~q\,
	datac => \unit_YA|state.s3~q\,
	datad => \unit_OA|i\(0),
	combout => \unit_YA|Next_state.s6~0_combout\);

-- Location: FF_X26_Y28_N17
\unit_YA|state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unit_YA|Next_state.s6~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_YA|state.s6~q\);

-- Location: LCCOMB_X26_Y28_N26
\unit_OA|ra~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra~8_combout\ = (\unit_YA|state.s1~q\) # ((\unit_YA|state.s5~q\) # (\unit_YA|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_YA|state.s1~q\,
	datac => \unit_YA|state.s5~q\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|ra~8_combout\);

-- Location: IOIBUF_X33_Y16_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X26_Y28_N20
\unit_OA|ra~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra~7_combout\ = (\a[0]~input_o\ & \unit_YA|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datad => \unit_YA|state.s1~q\,
	combout => \unit_OA|ra~7_combout\);

-- Location: LCCOMB_X27_Y28_N30
\unit_OA|ra~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra~9_combout\ = (\unit_OA|ra~7_combout\) # ((\unit_OA|ra\(0) & ((\unit_YA|state.s2~q\) # (!\unit_OA|ra~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra~8_combout\,
	datab => \unit_YA|state.s2~q\,
	datac => \unit_OA|ra\(0),
	datad => \unit_OA|ra~7_combout\,
	combout => \unit_OA|ra~9_combout\);

-- Location: FF_X27_Y28_N31
\unit_OA|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(0));

-- Location: LCCOMB_X25_Y28_N12
\unit_OA|rc[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[0]~8_combout\ = (\unit_OA|ra\(0) & (\unit_OA|rc\(0) $ (VCC))) # (!\unit_OA|ra\(0) & (\unit_OA|rc\(0) & VCC))
-- \unit_OA|rc[0]~9\ = CARRY((\unit_OA|ra\(0) & \unit_OA|rc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(0),
	datab => \unit_OA|rc\(0),
	datad => VCC,
	combout => \unit_OA|rc[0]~8_combout\,
	cout => \unit_OA|rc[0]~9\);

-- Location: LCCOMB_X25_Y28_N8
\unit_OA|rc[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[0]~10_combout\ = (!\unit_YA|state.s4~q\ & ((\unit_YA|state.s1~q\) # (\unit_YA|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_YA|state.s1~q\,
	datac => \unit_YA|state.s4~q\,
	datad => \unit_YA|state.s3~q\,
	combout => \unit_OA|rc[0]~10_combout\);

-- Location: FF_X25_Y28_N13
\unit_OA|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[0]~8_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(0));

-- Location: LCCOMB_X27_Y28_N10
\unit_OA|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~1_cout\ = CARRY(!\unit_OA|ra\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(0),
	datad => VCC,
	cout => \unit_OA|Add0~1_cout\);

-- Location: LCCOMB_X27_Y28_N12
\unit_OA|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~2_combout\ = (\unit_OA|ra\(1) & ((\unit_OA|Add0~1_cout\) # (GND))) # (!\unit_OA|ra\(1) & (!\unit_OA|Add0~1_cout\))
-- \unit_OA|Add0~3\ = CARRY((\unit_OA|ra\(1)) # (!\unit_OA|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|ra\(1),
	datad => VCC,
	cin => \unit_OA|Add0~1_cout\,
	combout => \unit_OA|Add0~2_combout\,
	cout => \unit_OA|Add0~3\);

-- Location: IOIBUF_X26_Y31_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X27_Y28_N8
\unit_OA|ra[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[1]~0_combout\ = (\unit_YA|state.s2~q\ & (\unit_OA|Add0~2_combout\)) # (!\unit_YA|state.s2~q\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|Add0~2_combout\,
	datab => \a[1]~input_o\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|ra[1]~0_combout\);

-- Location: FF_X27_Y28_N9
\unit_OA|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[1]~0_combout\,
	asdata => \unit_OA|ra\(0),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(1));

-- Location: LCCOMB_X25_Y28_N14
\unit_OA|rc[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[1]~11_combout\ = (\unit_OA|ra\(1) & ((\unit_OA|rc\(1) & (\unit_OA|rc[0]~9\ & VCC)) # (!\unit_OA|rc\(1) & (!\unit_OA|rc[0]~9\)))) # (!\unit_OA|ra\(1) & ((\unit_OA|rc\(1) & (!\unit_OA|rc[0]~9\)) # (!\unit_OA|rc\(1) & ((\unit_OA|rc[0]~9\) # 
-- (GND)))))
-- \unit_OA|rc[1]~12\ = CARRY((\unit_OA|ra\(1) & (!\unit_OA|rc\(1) & !\unit_OA|rc[0]~9\)) # (!\unit_OA|ra\(1) & ((!\unit_OA|rc[0]~9\) # (!\unit_OA|rc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(1),
	datab => \unit_OA|rc\(1),
	datad => VCC,
	cin => \unit_OA|rc[0]~9\,
	combout => \unit_OA|rc[1]~11_combout\,
	cout => \unit_OA|rc[1]~12\);

-- Location: FF_X25_Y28_N15
\unit_OA|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[1]~11_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(1));

-- Location: IOIBUF_X26_Y31_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X27_Y28_N14
\unit_OA|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~4_combout\ = (\unit_OA|ra\(2) & (!\unit_OA|Add0~3\ & VCC)) # (!\unit_OA|ra\(2) & (\unit_OA|Add0~3\ $ (GND)))
-- \unit_OA|Add0~5\ = CARRY((!\unit_OA|ra\(2) & !\unit_OA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(2),
	datad => VCC,
	cin => \unit_OA|Add0~3\,
	combout => \unit_OA|Add0~4_combout\,
	cout => \unit_OA|Add0~5\);

-- Location: LCCOMB_X27_Y28_N6
\unit_OA|ra[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[2]~1_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~4_combout\))) # (!\unit_YA|state.s2~q\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \unit_OA|Add0~4_combout\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|ra[2]~1_combout\);

-- Location: FF_X27_Y28_N7
\unit_OA|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[2]~1_combout\,
	asdata => \unit_OA|ra\(1),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(2));

-- Location: LCCOMB_X25_Y28_N16
\unit_OA|rc[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[2]~13_combout\ = ((\unit_OA|ra\(2) $ (\unit_OA|rc\(2) $ (!\unit_OA|rc[1]~12\)))) # (GND)
-- \unit_OA|rc[2]~14\ = CARRY((\unit_OA|ra\(2) & ((\unit_OA|rc\(2)) # (!\unit_OA|rc[1]~12\))) # (!\unit_OA|ra\(2) & (\unit_OA|rc\(2) & !\unit_OA|rc[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(2),
	datab => \unit_OA|rc\(2),
	datad => VCC,
	cin => \unit_OA|rc[1]~12\,
	combout => \unit_OA|rc[2]~13_combout\,
	cout => \unit_OA|rc[2]~14\);

-- Location: FF_X25_Y28_N17
\unit_OA|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[2]~13_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(2));

-- Location: IOIBUF_X31_Y31_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X27_Y28_N16
\unit_OA|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~6_combout\ = (\unit_OA|ra\(3) & ((\unit_OA|Add0~5\) # (GND))) # (!\unit_OA|ra\(3) & (!\unit_OA|Add0~5\))
-- \unit_OA|Add0~7\ = CARRY((\unit_OA|ra\(3)) # (!\unit_OA|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|ra\(3),
	datad => VCC,
	cin => \unit_OA|Add0~5\,
	combout => \unit_OA|Add0~6_combout\,
	cout => \unit_OA|Add0~7\);

-- Location: LCCOMB_X27_Y28_N0
\unit_OA|ra[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[3]~2_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~6_combout\))) # (!\unit_YA|state.s2~q\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \unit_OA|Add0~6_combout\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|ra[3]~2_combout\);

-- Location: FF_X27_Y28_N1
\unit_OA|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[3]~2_combout\,
	asdata => \unit_OA|ra\(2),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(3));

-- Location: LCCOMB_X25_Y28_N18
\unit_OA|rc[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[3]~15_combout\ = (\unit_OA|rc\(3) & ((\unit_OA|ra\(3) & (\unit_OA|rc[2]~14\ & VCC)) # (!\unit_OA|ra\(3) & (!\unit_OA|rc[2]~14\)))) # (!\unit_OA|rc\(3) & ((\unit_OA|ra\(3) & (!\unit_OA|rc[2]~14\)) # (!\unit_OA|ra\(3) & ((\unit_OA|rc[2]~14\) # 
-- (GND)))))
-- \unit_OA|rc[3]~16\ = CARRY((\unit_OA|rc\(3) & (!\unit_OA|ra\(3) & !\unit_OA|rc[2]~14\)) # (!\unit_OA|rc\(3) & ((!\unit_OA|rc[2]~14\) # (!\unit_OA|ra\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rc\(3),
	datab => \unit_OA|ra\(3),
	datad => VCC,
	cin => \unit_OA|rc[2]~14\,
	combout => \unit_OA|rc[3]~15_combout\,
	cout => \unit_OA|rc[3]~16\);

-- Location: FF_X25_Y28_N19
\unit_OA|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[3]~15_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(3));

-- Location: LCCOMB_X27_Y28_N18
\unit_OA|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~8_combout\ = (\unit_OA|ra\(4) & (!\unit_OA|Add0~7\ & VCC)) # (!\unit_OA|ra\(4) & (\unit_OA|Add0~7\ $ (GND)))
-- \unit_OA|Add0~9\ = CARRY((!\unit_OA|ra\(4) & !\unit_OA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|ra\(4),
	datad => VCC,
	cin => \unit_OA|Add0~7\,
	combout => \unit_OA|Add0~8_combout\,
	cout => \unit_OA|Add0~9\);

-- Location: LCCOMB_X27_Y28_N2
\unit_OA|ra[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[4]~3_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~8_combout\))) # (!\unit_YA|state.s2~q\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \unit_OA|Add0~8_combout\,
	datad => \unit_YA|state.s2~q\,
	combout => \unit_OA|ra[4]~3_combout\);

-- Location: FF_X27_Y28_N3
\unit_OA|ra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[4]~3_combout\,
	asdata => \unit_OA|ra\(3),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(4));

-- Location: LCCOMB_X25_Y28_N20
\unit_OA|rc[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[4]~17_combout\ = ((\unit_OA|ra\(4) $ (\unit_OA|rc\(4) $ (!\unit_OA|rc[3]~16\)))) # (GND)
-- \unit_OA|rc[4]~18\ = CARRY((\unit_OA|ra\(4) & ((\unit_OA|rc\(4)) # (!\unit_OA|rc[3]~16\))) # (!\unit_OA|ra\(4) & (\unit_OA|rc\(4) & !\unit_OA|rc[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(4),
	datab => \unit_OA|rc\(4),
	datad => VCC,
	cin => \unit_OA|rc[3]~16\,
	combout => \unit_OA|rc[4]~17_combout\,
	cout => \unit_OA|rc[4]~18\);

-- Location: FF_X25_Y28_N21
\unit_OA|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[4]~17_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(4));

-- Location: LCCOMB_X27_Y28_N20
\unit_OA|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~10_combout\ = (\unit_OA|ra\(5) & ((\unit_OA|Add0~9\) # (GND))) # (!\unit_OA|ra\(5) & (!\unit_OA|Add0~9\))
-- \unit_OA|Add0~11\ = CARRY((\unit_OA|ra\(5)) # (!\unit_OA|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \unit_OA|ra\(5),
	datad => VCC,
	cin => \unit_OA|Add0~9\,
	combout => \unit_OA|Add0~10_combout\,
	cout => \unit_OA|Add0~11\);

-- Location: LCCOMB_X27_Y28_N4
\unit_OA|ra[5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[5]~4_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~10_combout\))) # (!\unit_YA|state.s2~q\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \unit_YA|state.s2~q\,
	datad => \unit_OA|Add0~10_combout\,
	combout => \unit_OA|ra[5]~4_combout\);

-- Location: FF_X27_Y28_N5
\unit_OA|ra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[5]~4_combout\,
	asdata => \unit_OA|ra\(4),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(5));

-- Location: LCCOMB_X25_Y28_N22
\unit_OA|rc[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[5]~19_combout\ = (\unit_OA|rc\(5) & ((\unit_OA|ra\(5) & (\unit_OA|rc[4]~18\ & VCC)) # (!\unit_OA|ra\(5) & (!\unit_OA|rc[4]~18\)))) # (!\unit_OA|rc\(5) & ((\unit_OA|ra\(5) & (!\unit_OA|rc[4]~18\)) # (!\unit_OA|ra\(5) & ((\unit_OA|rc[4]~18\) # 
-- (GND)))))
-- \unit_OA|rc[5]~20\ = CARRY((\unit_OA|rc\(5) & (!\unit_OA|ra\(5) & !\unit_OA|rc[4]~18\)) # (!\unit_OA|rc\(5) & ((!\unit_OA|rc[4]~18\) # (!\unit_OA|ra\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rc\(5),
	datab => \unit_OA|ra\(5),
	datad => VCC,
	cin => \unit_OA|rc[4]~18\,
	combout => \unit_OA|rc[5]~19_combout\,
	cout => \unit_OA|rc[5]~20\);

-- Location: FF_X25_Y28_N23
\unit_OA|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[5]~19_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(5));

-- Location: LCCOMB_X27_Y28_N22
\unit_OA|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~12_combout\ = (\unit_OA|ra\(6) & (!\unit_OA|Add0~11\ & VCC)) # (!\unit_OA|ra\(6) & (\unit_OA|Add0~11\ $ (GND)))
-- \unit_OA|Add0~13\ = CARRY((!\unit_OA|ra\(6) & !\unit_OA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(6),
	datad => VCC,
	cin => \unit_OA|Add0~11\,
	combout => \unit_OA|Add0~12_combout\,
	cout => \unit_OA|Add0~13\);

-- Location: LCCOMB_X27_Y28_N26
\unit_OA|ra[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[6]~5_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~12_combout\))) # (!\unit_YA|state.s2~q\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \unit_YA|state.s2~q\,
	datad => \unit_OA|Add0~12_combout\,
	combout => \unit_OA|ra[6]~5_combout\);

-- Location: FF_X27_Y28_N27
\unit_OA|ra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[6]~5_combout\,
	asdata => \unit_OA|ra\(5),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(6));

-- Location: LCCOMB_X25_Y28_N24
\unit_OA|rc[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[6]~21_combout\ = ((\unit_OA|ra\(6) $ (\unit_OA|rc\(6) $ (!\unit_OA|rc[5]~20\)))) # (GND)
-- \unit_OA|rc[6]~22\ = CARRY((\unit_OA|ra\(6) & ((\unit_OA|rc\(6)) # (!\unit_OA|rc[5]~20\))) # (!\unit_OA|ra\(6) & (\unit_OA|rc\(6) & !\unit_OA|rc[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|ra\(6),
	datab => \unit_OA|rc\(6),
	datad => VCC,
	cin => \unit_OA|rc[5]~20\,
	combout => \unit_OA|rc[6]~21_combout\,
	cout => \unit_OA|rc[6]~22\);

-- Location: FF_X25_Y28_N25
\unit_OA|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[6]~21_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(6));

-- Location: LCCOMB_X27_Y28_N24
\unit_OA|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|Add0~14_combout\ = \unit_OA|Add0~13\ $ (!\unit_OA|ra\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \unit_OA|ra\(7),
	cin => \unit_OA|Add0~13\,
	combout => \unit_OA|Add0~14_combout\);

-- Location: LCCOMB_X27_Y28_N28
\unit_OA|ra[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|ra[7]~6_combout\ = (\unit_YA|state.s2~q\ & ((\unit_OA|Add0~14_combout\))) # (!\unit_YA|state.s2~q\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \unit_YA|state.s2~q\,
	datad => \unit_OA|Add0~14_combout\,
	combout => \unit_OA|ra[7]~6_combout\);

-- Location: FF_X27_Y28_N29
\unit_OA|ra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|ra[7]~6_combout\,
	asdata => \unit_OA|ra\(6),
	sload => \unit_YA|state.s5~q\,
	ena => \unit_OA|ra~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|ra\(7));

-- Location: LCCOMB_X25_Y28_N26
\unit_OA|rc[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \unit_OA|rc[7]~23_combout\ = \unit_OA|rc\(7) $ (\unit_OA|rc[6]~22\ $ (\unit_OA|ra\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \unit_OA|rc\(7),
	datad => \unit_OA|ra\(7),
	cin => \unit_OA|rc[6]~22\,
	combout => \unit_OA|rc[7]~23_combout\);

-- Location: FF_X25_Y28_N27
\unit_OA|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \unit_OA|rc[7]~23_combout\,
	sclr => \unit_YA|ALT_INV_state.s3~q\,
	ena => \unit_OA|rc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit_OA|rc\(7));

ww_sko <= \sko~output_o\;

ww_rc(0) <= \rc[0]~output_o\;

ww_rc(1) <= \rc[1]~output_o\;

ww_rc(2) <= \rc[2]~output_o\;

ww_rc(3) <= \rc[3]~output_o\;

ww_rc(4) <= \rc[4]~output_o\;

ww_rc(5) <= \rc[5]~output_o\;

ww_rc(6) <= \rc[6]~output_o\;

ww_rc(7) <= \rc[7]~output_o\;
END structure;


