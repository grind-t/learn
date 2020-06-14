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

-- DATE "06/03/2020 13:01:22"

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

ENTITY 	multiply_scheme IS
    PORT (
	sko : OUT std_logic;
	clk : IN std_logic;
	set : IN std_logic;
	sno : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	rc : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiply_scheme;

-- Design Ports Information
-- sko	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiply_scheme IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rc : std_logic_vector(7 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \rc[7]~output_o\ : std_logic;
SIGNAL \rc[6]~output_o\ : std_logic;
SIGNAL \rc[5]~output_o\ : std_logic;
SIGNAL \rc[4]~output_o\ : std_logic;
SIGNAL \rc[3]~output_o\ : std_logic;
SIGNAL \rc[2]~output_o\ : std_logic;
SIGNAL \rc[1]~output_o\ : std_logic;
SIGNAL \rc[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|Next_state.s1~0_combout\ : std_logic;
SIGNAL \inst1|i[0]~4_combout\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst1|rb[3]~3_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst1|rb[0]~6_combout\ : std_logic;
SIGNAL \inst1|rb~5_combout\ : std_logic;
SIGNAL \inst1|Add1~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst1|rb~7_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|rb[3]~2_combout\ : std_logic;
SIGNAL \inst1|rb[3]~4_combout\ : std_logic;
SIGNAL \inst|y[5]~1_combout\ : std_logic;
SIGNAL \inst|Selector1~4_combout\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|state.s3~q\ : std_logic;
SIGNAL \inst1|i[1]~5_combout\ : std_logic;
SIGNAL \inst|sko~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19_combout\ : std_logic;
SIGNAL \inst1|Add0~3_cout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|ra[1]~6_combout\ : std_logic;
SIGNAL \inst|y[9]~0_combout\ : std_logic;
SIGNAL \inst1|ra[7]~9_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|ra[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|ra[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|ra[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|ra[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|ra[6]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|ra[7]~0_combout\ : std_logic;
SIGNAL \inst1|rc[0]~10_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst1|rc[7]~26_combout\ : std_logic;
SIGNAL \inst1|rc[0]~11\ : std_logic;
SIGNAL \inst1|rc[1]~12_combout\ : std_logic;
SIGNAL \inst1|rc[1]~13\ : std_logic;
SIGNAL \inst1|rc[2]~14_combout\ : std_logic;
SIGNAL \inst1|rc[2]~15\ : std_logic;
SIGNAL \inst1|rc[3]~16_combout\ : std_logic;
SIGNAL \inst1|rc[3]~17\ : std_logic;
SIGNAL \inst1|rc[4]~18_combout\ : std_logic;
SIGNAL \inst1|rc[4]~19\ : std_logic;
SIGNAL \inst1|rc[5]~20_combout\ : std_logic;
SIGNAL \inst1|rc[5]~21\ : std_logic;
SIGNAL \inst1|rc[6]~22_combout\ : std_logic;
SIGNAL \inst1|rc[6]~23\ : std_logic;
SIGNAL \inst1|rc[7]~24_combout\ : std_logic;
SIGNAL \inst1|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_sko~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sko <= ww_sko;
ww_clk <= clk;
ww_set <= set;
ww_sno <= sno;
ww_a <= a;
ww_b <= b;
rc <= ww_rc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\inst|ALT_INV_sko~0_combout\ <= NOT \inst|sko~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N2
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_sko~0_combout\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\rc[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(7),
	devoe => ww_devoe,
	o => \rc[7]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\rc[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(6),
	devoe => ww_devoe,
	o => \rc[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\rc[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(5),
	devoe => ww_devoe,
	o => \rc[5]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\rc[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(4),
	devoe => ww_devoe,
	o => \rc[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\rc[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(3),
	devoe => ww_devoe,
	o => \rc[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\rc[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(2),
	devoe => ww_devoe,
	o => \rc[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\rc[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(1),
	devoe => ww_devoe,
	o => \rc[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\rc[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rc\(0),
	devoe => ww_devoe,
	o => \rc[0]~output_o\);

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

-- Location: IOIBUF_X33_Y16_N8
\sno~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sno,
	o => \sno~input_o\);

-- Location: LCCOMB_X31_Y26_N26
\inst|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|sko~0_combout\ & ((\sno~input_o\) # (\inst|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	datad => \inst|sko~0_combout\,
	combout => \inst|Selector0~0_combout\);

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

-- Location: FF_X31_Y26_N27
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LCCOMB_X31_Y26_N8
\inst|Next_state.s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Next_state.s1~0_combout\ = (\sno~input_o\ & !\inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	combout => \inst|Next_state.s1~0_combout\);

-- Location: LCCOMB_X32_Y26_N0
\inst1|i[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|i[0]~4_combout\ = (\inst1|i\(0) & (\inst|Next_state.s1~0_combout\ $ (((\inst1|i\(1)) # (!\inst|state.s3~q\))))) # (!\inst1|i\(0) & (((\inst|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst|state.s3~q\,
	datac => \inst1|i\(0),
	datad => \inst|Next_state.s1~0_combout\,
	combout => \inst1|i[0]~4_combout\);

-- Location: FF_X32_Y26_N1
\inst1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|i[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|i\(0));

-- Location: FF_X31_Y26_N1
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Next_state.s1~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: LCCOMB_X31_Y26_N2
\inst1|rb[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb[3]~3_combout\ = (\inst|state.s0~q\ & (((\inst1|rb\(3) & \inst|state.s1~q\)))) # (!\inst|state.s0~q\ & (\sno~input_o\ $ (((\inst1|rb\(3) & \inst|state.s1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \sno~input_o\,
	datac => \inst1|rb\(3),
	datad => \inst|state.s1~q\,
	combout => \inst1|rb[3]~3_combout\);

-- Location: IOIBUF_X33_Y16_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X32_Y26_N8
\inst1|rb[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb[0]~6_combout\ = (\inst|state.s0~q\ & (((\inst1|rb\(0))))) # (!\inst|state.s0~q\ & ((\sno~input_o\ & (\b[0]~input_o\)) # (!\sno~input_o\ & ((\inst1|rb\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \b[0]~input_o\,
	datac => \inst1|rb\(0),
	datad => \sno~input_o\,
	combout => \inst1|rb[0]~6_combout\);

-- Location: FF_X32_Y26_N9
\inst1|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rb[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rb\(0));

-- Location: LCCOMB_X31_Y26_N14
\inst1|rb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb~5_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|rb\(0) $ (\inst1|rb\(1))))) # (!\inst|y[5]~1_combout\ & (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \inst1|rb\(0),
	datac => \inst1|rb\(1),
	datad => \inst|y[5]~1_combout\,
	combout => \inst1|rb~5_combout\);

-- Location: FF_X31_Y26_N15
\inst1|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rb~5_combout\,
	ena => \inst1|rb[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rb\(1));

-- Location: LCCOMB_X31_Y26_N0
\inst1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add1~1_combout\ = \inst1|rb\(2) $ (((\inst1|rb\(1)) # (\inst1|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rb\(1),
	datab => \inst1|rb\(0),
	datad => \inst1|rb\(2),
	combout => \inst1|Add1~1_combout\);

-- Location: IOIBUF_X31_Y31_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X31_Y26_N16
\inst1|rb~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb~7_combout\ = (\inst1|rb\(3) & ((\inst|state.s1~q\ & (\inst1|Add1~1_combout\)) # (!\inst|state.s1~q\ & ((\b[2]~input_o\))))) # (!\inst1|rb\(3) & (((\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rb\(3),
	datab => \inst|state.s1~q\,
	datac => \inst1|Add1~1_combout\,
	datad => \b[2]~input_o\,
	combout => \inst1|rb~7_combout\);

-- Location: FF_X31_Y26_N17
\inst1|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rb~7_combout\,
	ena => \inst1|rb[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rb\(2));

-- Location: LCCOMB_X31_Y26_N10
\inst1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|rb\(3) $ (((\inst1|rb\(1)) # ((\inst1|rb\(0)) # (\inst1|rb\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rb\(3),
	datab => \inst1|rb\(1),
	datac => \inst1|rb\(0),
	datad => \inst1|rb\(2),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X31_Y26_N24
\inst1|rb[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb[3]~2_combout\ = (\inst|y[5]~1_combout\ & (((!\inst|Next_state.s1~0_combout\ & \inst1|Add1~0_combout\)))) # (!\inst|y[5]~1_combout\ & (\b[3]~input_o\ & (\inst|Next_state.s1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y[5]~1_combout\,
	datab => \b[3]~input_o\,
	datac => \inst|Next_state.s1~0_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|rb[3]~2_combout\);

-- Location: LCCOMB_X31_Y26_N30
\inst1|rb[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rb[3]~4_combout\ = (\inst1|rb[3]~2_combout\) # ((!\inst1|rb[3]~3_combout\ & \inst1|rb\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rb[3]~3_combout\,
	datac => \inst1|rb\(3),
	datad => \inst1|rb[3]~2_combout\,
	combout => \inst1|rb[3]~4_combout\);

-- Location: FF_X31_Y26_N31
\inst1|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rb[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rb\(3));

-- Location: LCCOMB_X31_Y26_N12
\inst|y[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[5]~1_combout\ = (\inst1|rb\(3) & \inst|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|rb\(3),
	datad => \inst|state.s1~q\,
	combout => \inst|y[5]~1_combout\);

-- Location: LCCOMB_X31_Y26_N18
\inst|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~4_combout\ = (\inst|y[5]~1_combout\) # ((\inst|state.s3~q\ & ((!\inst1|i\(0)) # (!\inst1|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst|state.s3~q\,
	datac => \inst1|i\(0),
	datad => \inst|y[5]~1_combout\,
	combout => \inst|Selector1~4_combout\);

-- Location: FF_X31_Y26_N19
\inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector1~4_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s2~q\);

-- Location: LCCOMB_X31_Y26_N4
\inst|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|state.s2~q\) # ((!\inst1|rb\(3) & \inst|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.s2~q\,
	datac => \inst1|rb\(3),
	datad => \inst|state.s1~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X31_Y26_N21
\inst|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector2~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s3~q\);

-- Location: LCCOMB_X32_Y26_N30
\inst1|i[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|i[1]~5_combout\ = (\inst1|i\(1) & (((\inst|state.s3~q\ & !\inst1|i\(0))) # (!\inst|Next_state.s1~0_combout\))) # (!\inst1|i\(1) & (((\inst|state.s3~q\ & \inst1|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Next_state.s1~0_combout\,
	datab => \inst|state.s3~q\,
	datac => \inst1|i\(1),
	datad => \inst1|i\(0),
	combout => \inst1|i[1]~5_combout\);

-- Location: FF_X32_Y26_N31
\inst1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|i[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|i\(1));

-- Location: LCCOMB_X31_Y26_N20
\inst|sko~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|sko~0_combout\ = ((!\inst|state.s3~q\) # (!\inst1|i\(0))) # (!\inst1|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst1|i\(0),
	datac => \inst|state.s3~q\,
	combout => \inst|sko~0_combout\);

-- Location: IOIBUF_X29_Y31_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X31_Y26_N28
\inst1|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst|Next_state.s1~0_combout\ & ((\inst|y[5]~1_combout\ & ((\inst1|ra\(0)))) # (!\inst|y[5]~1_combout\ & (\a[0]~input_o\)))) # (!\inst|Next_state.s1~0_combout\ & (((\inst1|ra\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \inst1|ra\(0),
	datac => \inst|Next_state.s1~0_combout\,
	datad => \inst|y[5]~1_combout\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X30_Y26_N4
\inst1|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~19_combout\ = (\inst1|Add0~18_combout\ & (((\inst1|i\(0) & \inst1|i\(1))) # (!\inst|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s3~q\,
	datab => \inst1|i\(0),
	datac => \inst1|i\(1),
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Add0~19_combout\);

-- Location: FF_X30_Y26_N5
\inst1|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(0));

-- Location: LCCOMB_X30_Y26_N10
\inst1|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_cout\ = CARRY(!\inst1|ra\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ra\(0),
	datad => VCC,
	cout => \inst1|Add0~3_cout\);

-- Location: LCCOMB_X30_Y26_N12
\inst1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|ra\(1) & ((\inst1|Add0~3_cout\) # (GND))) # (!\inst1|ra\(1) & (!\inst1|Add0~3_cout\))
-- \inst1|Add0~5\ = CARRY((\inst1|ra\(1)) # (!\inst1|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ra\(1),
	datad => VCC,
	cin => \inst1|Add0~3_cout\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X30_Y26_N8
\inst1|ra[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[1]~6_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~4_combout\))) # (!\inst|y[5]~1_combout\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|ra[1]~6_combout\);

-- Location: LCCOMB_X31_Y26_N22
\inst|y[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|y[9]~0_combout\ = (\inst|state.s3~q\ & ((!\inst1|i\(1)) # (!\inst1|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.s3~q\,
	datac => \inst1|i\(0),
	datad => \inst1|i\(1),
	combout => \inst|y[9]~0_combout\);

-- Location: LCCOMB_X31_Y26_N6
\inst1|ra[7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[7]~9_combout\ = \inst1|rb[3]~3_combout\ $ (((\inst|state.s3~q\ & ((!\inst1|i\(0)) # (!\inst1|i\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst|state.s3~q\,
	datac => \inst1|i\(0),
	datad => \inst1|rb[3]~3_combout\,
	combout => \inst1|ra[7]~9_combout\);

-- Location: FF_X30_Y26_N9
\inst1|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[1]~6_combout\,
	asdata => \inst1|ra\(0),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(1));

-- Location: LCCOMB_X30_Y26_N14
\inst1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|ra\(2) & (!\inst1|Add0~5\ & VCC)) # (!\inst1|ra\(2) & (\inst1|Add0~5\ $ (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|ra\(2) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(2),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X30_Y26_N6
\inst1|ra[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[2]~5_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~6_combout\))) # (!\inst|y[5]~1_combout\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|ra[2]~5_combout\);

-- Location: FF_X30_Y26_N7
\inst1|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[2]~5_combout\,
	asdata => \inst1|ra\(1),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(2));

-- Location: LCCOMB_X30_Y26_N16
\inst1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|ra\(3) & ((\inst1|Add0~7\) # (GND))) # (!\inst1|ra\(3) & (!\inst1|Add0~7\))
-- \inst1|Add0~9\ = CARRY((\inst1|ra\(3)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(3),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X30_Y26_N30
\inst1|ra[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[3]~4_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~8_combout\))) # (!\inst|y[5]~1_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|ra[3]~4_combout\);

-- Location: FF_X30_Y26_N31
\inst1|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[3]~4_combout\,
	asdata => \inst1|ra\(2),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(3));

-- Location: LCCOMB_X30_Y26_N18
\inst1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|ra\(4) & (!\inst1|Add0~9\ & VCC)) # (!\inst1|ra\(4) & (\inst1|Add0~9\ $ (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|ra\(4) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ra\(4),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X30_Y26_N28
\inst1|ra[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[4]~3_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~10_combout\))) # (!\inst|y[5]~1_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|ra[4]~3_combout\);

-- Location: FF_X30_Y26_N29
\inst1|ra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[4]~3_combout\,
	asdata => \inst1|ra\(3),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(4));

-- Location: LCCOMB_X30_Y26_N20
\inst1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|ra\(5) & ((\inst1|Add0~11\) # (GND))) # (!\inst1|ra\(5) & (!\inst1|Add0~11\))
-- \inst1|Add0~13\ = CARRY((\inst1|ra\(5)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ra\(5),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X30_Y26_N2
\inst1|ra[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[5]~2_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~12_combout\))) # (!\inst|y[5]~1_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|ra[5]~2_combout\);

-- Location: FF_X30_Y26_N3
\inst1|ra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[5]~2_combout\,
	asdata => \inst1|ra\(4),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(5));

-- Location: LCCOMB_X30_Y26_N22
\inst1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|ra\(6) & (!\inst1|Add0~13\ & VCC)) # (!\inst1|ra\(6) & (\inst1|Add0~13\ $ (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|ra\(6) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ra\(6),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X30_Y26_N0
\inst1|ra[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[6]~1_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~14_combout\))) # (!\inst|y[5]~1_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|ra[6]~1_combout\);

-- Location: FF_X30_Y26_N1
\inst1|ra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[6]~1_combout\,
	asdata => \inst1|ra\(5),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(6));

-- Location: LCCOMB_X30_Y26_N24
\inst1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = \inst1|ra\(7) $ (!\inst1|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(7),
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\);

-- Location: LCCOMB_X30_Y26_N26
\inst1|ra[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|ra[7]~0_combout\ = (\inst|y[5]~1_combout\ & ((\inst1|Add0~16_combout\))) # (!\inst|y[5]~1_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|y[5]~1_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|ra[7]~0_combout\);

-- Location: FF_X30_Y26_N27
\inst1|ra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ra[7]~0_combout\,
	asdata => \inst1|ra\(6),
	sload => \inst|y[9]~0_combout\,
	ena => \inst1|ra[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ra\(7));

-- Location: LCCOMB_X32_Y26_N12
\inst1|rc[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[0]~10_combout\ = (\inst1|rc\(0) & (\inst1|ra\(0) $ (VCC))) # (!\inst1|rc\(0) & (\inst1|ra\(0) & VCC))
-- \inst1|rc[0]~11\ = CARRY((\inst1|rc\(0) & \inst1|ra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc\(0),
	datab => \inst1|ra\(0),
	datad => VCC,
	combout => \inst1|rc[0]~10_combout\,
	cout => \inst1|rc[0]~11\);

-- Location: LCCOMB_X32_Y26_N2
\inst1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|i\(1) & (\inst1|i\(0))) # (!\inst1|i\(1) & ((\inst1|i\(0) & ((!\inst1|rb\(1)))) # (!\inst1|i\(0) & (!\inst1|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst1|i\(0),
	datac => \inst1|rb\(0),
	datad => \inst1|rb\(1),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y26_N28
\inst1|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|i\(1) & ((\inst1|Mux0~0_combout\ & (!\inst1|rb\(3))) # (!\inst1|Mux0~0_combout\ & ((!\inst1|rb\(2)))))) # (!\inst1|i\(1) & (((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|i\(1),
	datab => \inst1|rb\(3),
	datac => \inst1|rb\(2),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y26_N10
\inst|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst1|Mux0~1_combout\) # ((!\inst|state.s2~q\ & ((\inst1|rb\(3)) # (!\inst|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst1|rb\(3),
	datac => \inst|state.s2~q\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X32_Y26_N4
\inst1|rc[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[7]~26_combout\ = (\inst|Selector2~0_combout\ & (((!\inst1|Mux0~1_combout\)))) # (!\inst|Selector2~0_combout\ & (!\inst|state.s0~q\ & (\sno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s0~q\,
	datab => \sno~input_o\,
	datac => \inst|Selector2~0_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|rc[7]~26_combout\);

-- Location: FF_X32_Y26_N13
\inst1|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[0]~10_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(0));

-- Location: LCCOMB_X32_Y26_N14
\inst1|rc[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[1]~12_combout\ = (\inst1|ra\(1) & ((\inst1|rc\(1) & (\inst1|rc[0]~11\ & VCC)) # (!\inst1|rc\(1) & (!\inst1|rc[0]~11\)))) # (!\inst1|ra\(1) & ((\inst1|rc\(1) & (!\inst1|rc[0]~11\)) # (!\inst1|rc\(1) & ((\inst1|rc[0]~11\) # (GND)))))
-- \inst1|rc[1]~13\ = CARRY((\inst1|ra\(1) & (!\inst1|rc\(1) & !\inst1|rc[0]~11\)) # (!\inst1|ra\(1) & ((!\inst1|rc[0]~11\) # (!\inst1|rc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(1),
	datab => \inst1|rc\(1),
	datad => VCC,
	cin => \inst1|rc[0]~11\,
	combout => \inst1|rc[1]~12_combout\,
	cout => \inst1|rc[1]~13\);

-- Location: FF_X32_Y26_N15
\inst1|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[1]~12_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(1));

-- Location: LCCOMB_X32_Y26_N16
\inst1|rc[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[2]~14_combout\ = ((\inst1|ra\(2) $ (\inst1|rc\(2) $ (!\inst1|rc[1]~13\)))) # (GND)
-- \inst1|rc[2]~15\ = CARRY((\inst1|ra\(2) & ((\inst1|rc\(2)) # (!\inst1|rc[1]~13\))) # (!\inst1|ra\(2) & (\inst1|rc\(2) & !\inst1|rc[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(2),
	datab => \inst1|rc\(2),
	datad => VCC,
	cin => \inst1|rc[1]~13\,
	combout => \inst1|rc[2]~14_combout\,
	cout => \inst1|rc[2]~15\);

-- Location: FF_X32_Y26_N17
\inst1|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[2]~14_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(2));

-- Location: LCCOMB_X32_Y26_N18
\inst1|rc[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[3]~16_combout\ = (\inst1|ra\(3) & ((\inst1|rc\(3) & (\inst1|rc[2]~15\ & VCC)) # (!\inst1|rc\(3) & (!\inst1|rc[2]~15\)))) # (!\inst1|ra\(3) & ((\inst1|rc\(3) & (!\inst1|rc[2]~15\)) # (!\inst1|rc\(3) & ((\inst1|rc[2]~15\) # (GND)))))
-- \inst1|rc[3]~17\ = CARRY((\inst1|ra\(3) & (!\inst1|rc\(3) & !\inst1|rc[2]~15\)) # (!\inst1|ra\(3) & ((!\inst1|rc[2]~15\) # (!\inst1|rc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(3),
	datab => \inst1|rc\(3),
	datad => VCC,
	cin => \inst1|rc[2]~15\,
	combout => \inst1|rc[3]~16_combout\,
	cout => \inst1|rc[3]~17\);

-- Location: FF_X32_Y26_N19
\inst1|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[3]~16_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(3));

-- Location: LCCOMB_X32_Y26_N20
\inst1|rc[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[4]~18_combout\ = ((\inst1|ra\(4) $ (\inst1|rc\(4) $ (!\inst1|rc[3]~17\)))) # (GND)
-- \inst1|rc[4]~19\ = CARRY((\inst1|ra\(4) & ((\inst1|rc\(4)) # (!\inst1|rc[3]~17\))) # (!\inst1|ra\(4) & (\inst1|rc\(4) & !\inst1|rc[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(4),
	datab => \inst1|rc\(4),
	datad => VCC,
	cin => \inst1|rc[3]~17\,
	combout => \inst1|rc[4]~18_combout\,
	cout => \inst1|rc[4]~19\);

-- Location: FF_X32_Y26_N21
\inst1|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[4]~18_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(4));

-- Location: LCCOMB_X32_Y26_N22
\inst1|rc[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[5]~20_combout\ = (\inst1|rc\(5) & ((\inst1|ra\(5) & (\inst1|rc[4]~19\ & VCC)) # (!\inst1|ra\(5) & (!\inst1|rc[4]~19\)))) # (!\inst1|rc\(5) & ((\inst1|ra\(5) & (!\inst1|rc[4]~19\)) # (!\inst1|ra\(5) & ((\inst1|rc[4]~19\) # (GND)))))
-- \inst1|rc[5]~21\ = CARRY((\inst1|rc\(5) & (!\inst1|ra\(5) & !\inst1|rc[4]~19\)) # (!\inst1|rc\(5) & ((!\inst1|rc[4]~19\) # (!\inst1|ra\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc\(5),
	datab => \inst1|ra\(5),
	datad => VCC,
	cin => \inst1|rc[4]~19\,
	combout => \inst1|rc[5]~20_combout\,
	cout => \inst1|rc[5]~21\);

-- Location: FF_X32_Y26_N23
\inst1|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[5]~20_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(5));

-- Location: LCCOMB_X32_Y26_N24
\inst1|rc[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[6]~22_combout\ = ((\inst1|ra\(6) $ (\inst1|rc\(6) $ (!\inst1|rc[5]~21\)))) # (GND)
-- \inst1|rc[6]~23\ = CARRY((\inst1|ra\(6) & ((\inst1|rc\(6)) # (!\inst1|rc[5]~21\))) # (!\inst1|ra\(6) & (\inst1|rc\(6) & !\inst1|rc[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ra\(6),
	datab => \inst1|rc\(6),
	datad => VCC,
	cin => \inst1|rc[5]~21\,
	combout => \inst1|rc[6]~22_combout\,
	cout => \inst1|rc[6]~23\);

-- Location: FF_X32_Y26_N25
\inst1|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[6]~22_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(6));

-- Location: LCCOMB_X32_Y26_N26
\inst1|rc[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|rc[7]~24_combout\ = \inst1|rc\(7) $ (\inst1|rc[6]~23\ $ (\inst1|ra\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc\(7),
	datad => \inst1|ra\(7),
	cin => \inst1|rc[6]~23\,
	combout => \inst1|rc[7]~24_combout\);

-- Location: FF_X32_Y26_N27
\inst1|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rc[7]~24_combout\,
	sclr => \inst|Selector4~2_combout\,
	ena => \inst1|rc[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rc\(7));

ww_sko <= \sko~output_o\;

ww_rc(7) <= \rc[7]~output_o\;

ww_rc(6) <= \rc[6]~output_o\;

ww_rc(5) <= \rc[5]~output_o\;

ww_rc(4) <= \rc[4]~output_o\;

ww_rc(3) <= \rc[3]~output_o\;

ww_rc(2) <= \rc[2]~output_o\;

ww_rc(1) <= \rc[1]~output_o\;

ww_rc(0) <= \rc[0]~output_o\;
END structure;


