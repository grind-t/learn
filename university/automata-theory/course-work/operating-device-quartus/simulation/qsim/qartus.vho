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

-- DATE "05/06/2020 15:02:21"

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


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiply_scheme IS
    PORT (
	c : OUT std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0)
	);
END multiply_scheme;

-- Design Ports Information
-- c[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_c : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \c[7]~output_o\ : std_logic;
SIGNAL \c[6]~output_o\ : std_logic;
SIGNAL \c[5]~output_o\ : std_logic;
SIGNAL \c[4]~output_o\ : std_logic;
SIGNAL \c[3]~output_o\ : std_logic;
SIGNAL \c[2]~output_o\ : std_logic;
SIGNAL \c[1]~output_o\ : std_logic;
SIGNAL \c[0]~output_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst|rb[1]~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|rc~0_combout\ : std_logic;
SIGNAL \inst|ra[7]~0_combout\ : std_logic;
SIGNAL \inst|ra[6]~1_combout\ : std_logic;
SIGNAL \inst|ra[5]~2_combout\ : std_logic;
SIGNAL \inst|rc~1_combout\ : std_logic;
SIGNAL \inst|rc~2_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst|rb[2]~1_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~13_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~11_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~13_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|rb[3]~2_combout\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~11_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Add4~13_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~15_combout\ : std_logic;
SIGNAL \inst|c[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

c <= ww_c;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y10_N2
\c[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add4~10_combout\,
	devoe => ww_devoe,
	o => \c[7]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\c[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add4~11_combout\,
	devoe => ww_devoe,
	o => \c[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\c[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add4~12_combout\,
	devoe => ww_devoe,
	o => \c[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\c[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add4~13_combout\,
	devoe => ww_devoe,
	o => \c[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\c[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add4~14_combout\,
	devoe => ww_devoe,
	o => \c[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\c[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add3~14_combout\,
	devoe => ww_devoe,
	o => \c[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\c[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add2~15_combout\,
	devoe => ww_devoe,
	o => \c[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\c[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|c[0]~0_combout\,
	devoe => ww_devoe,
	o => \c[0]~output_o\);

-- Location: IOIBUF_X33_Y15_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X30_Y8_N22
\inst|rb[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rb[1]~0_combout\ = \b[1]~input_o\ $ (((\b[3]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|rb[1]~0_combout\);

-- Location: IOIBUF_X33_Y14_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X30_Y8_N16
\inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \a[3]~input_o\ $ (((\a[2]~input_o\) # ((\a[0]~input_o\) # (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X30_Y8_N10
\inst|rc~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rc~0_combout\ = (\b[0]~input_o\ & ((\b[3]~input_o\ & ((\inst|Add0~0_combout\))) # (!\b[3]~input_o\ & (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \inst|Add0~0_combout\,
	datad => \b[0]~input_o\,
	combout => \inst|rc~0_combout\);

-- Location: LCCOMB_X30_Y8_N20
\inst|ra[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ra[7]~0_combout\ = (\b[3]~input_o\ & (\inst|Add0~0_combout\)) # (!\b[3]~input_o\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \inst|Add0~0_combout\,
	datad => \a[3]~input_o\,
	combout => \inst|ra[7]~0_combout\);

-- Location: LCCOMB_X30_Y8_N6
\inst|ra[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ra[6]~1_combout\ = \a[2]~input_o\ $ (((\b[3]~input_o\ & ((\a[0]~input_o\) # (\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[3]~input_o\,
	combout => \inst|ra[6]~1_combout\);

-- Location: LCCOMB_X30_Y8_N26
\inst|ra[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ra[5]~2_combout\ = \a[1]~input_o\ $ (((\a[0]~input_o\ & \b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \inst|ra[5]~2_combout\);

-- Location: LCCOMB_X30_Y8_N8
\inst|rc~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rc~1_combout\ = (\inst|ra[6]~1_combout\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[6]~1_combout\,
	datad => \b[0]~input_o\,
	combout => \inst|rc~1_combout\);

-- Location: LCCOMB_X30_Y8_N4
\inst|rc~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rc~2_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (((\b[3]~input_o\ & \a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|rc~2_combout\);

-- Location: LCCOMB_X30_Y6_N0
\inst|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|rc~2_combout\ & (\a[0]~input_o\ $ (VCC))) # (!\inst|rc~2_combout\ & (\a[0]~input_o\ & VCC))
-- \inst|Add2~3\ = CARRY((\inst|rc~2_combout\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rc~2_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X30_Y6_N2
\inst|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|ra[5]~2_combout\ & ((\inst|rc~1_combout\ & (\inst|Add2~3\ & VCC)) # (!\inst|rc~1_combout\ & (!\inst|Add2~3\)))) # (!\inst|ra[5]~2_combout\ & ((\inst|rc~1_combout\ & (!\inst|Add2~3\)) # (!\inst|rc~1_combout\ & 
-- ((\inst|Add2~3\) # (GND)))))
-- \inst|Add2~5\ = CARRY((\inst|ra[5]~2_combout\ & (!\inst|rc~1_combout\ & !\inst|Add2~3\)) # (!\inst|ra[5]~2_combout\ & ((!\inst|Add2~3\) # (!\inst|rc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[5]~2_combout\,
	datab => \inst|rc~1_combout\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X30_Y6_N4
\inst|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = ((\inst|ra[6]~1_combout\ $ (\inst|rc~0_combout\ $ (!\inst|Add2~5\)))) # (GND)
-- \inst|Add2~7\ = CARRY((\inst|ra[6]~1_combout\ & ((\inst|rc~0_combout\) # (!\inst|Add2~5\))) # (!\inst|ra[6]~1_combout\ & (\inst|rc~0_combout\ & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[6]~1_combout\,
	datab => \inst|rc~0_combout\,
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X30_Y6_N6
\inst|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|rc~0_combout\ & ((\inst|ra[7]~0_combout\ & (\inst|Add2~7\ & VCC)) # (!\inst|ra[7]~0_combout\ & (!\inst|Add2~7\)))) # (!\inst|rc~0_combout\ & ((\inst|ra[7]~0_combout\ & (!\inst|Add2~7\)) # (!\inst|ra[7]~0_combout\ & 
-- ((\inst|Add2~7\) # (GND)))))
-- \inst|Add2~9\ = CARRY((\inst|rc~0_combout\ & (!\inst|ra[7]~0_combout\ & !\inst|Add2~7\)) # (!\inst|rc~0_combout\ & ((!\inst|Add2~7\) # (!\inst|ra[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rc~0_combout\,
	datab => \inst|ra[7]~0_combout\,
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X30_Y6_N8
\inst|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|ra[7]~0_combout\ $ (\inst|Add2~9\ $ (!\inst|rc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ra[7]~0_combout\,
	datad => \inst|rc~0_combout\,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X30_Y6_N28
\inst|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|rb[1]~0_combout\ & ((\inst|Add2~10_combout\))) # (!\inst|rb[1]~0_combout\ & (\inst|rc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rb[1]~0_combout\,
	datab => \inst|rc~0_combout\,
	datac => \inst|Add2~10_combout\,
	combout => \inst|Add2~12_combout\);

-- Location: IOIBUF_X33_Y11_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X30_Y8_N24
\inst|rb[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rb[2]~1_combout\ = \b[2]~input_o\ $ (((\b[3]~input_o\ & ((\b[1]~input_o\) # (\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|rb[2]~1_combout\);

-- Location: LCCOMB_X30_Y6_N22
\inst|Add2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~13_combout\ = (\inst|rb[1]~0_combout\ & (\inst|Add2~8_combout\)) # (!\inst|rb[1]~0_combout\ & ((\inst|rc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|rc~0_combout\,
	datac => \inst|rb[1]~0_combout\,
	combout => \inst|Add2~13_combout\);

-- Location: LCCOMB_X30_Y6_N24
\inst|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|rb[1]~0_combout\ & ((\inst|Add2~6_combout\))) # (!\inst|rb[1]~0_combout\ & (\inst|rc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rb[1]~0_combout\,
	datab => \inst|rc~0_combout\,
	datac => \inst|Add2~6_combout\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X30_Y6_N30
\inst|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|rb[1]~0_combout\ & (((\inst|Add2~4_combout\)))) # (!\inst|rb[1]~0_combout\ & (\inst|ra[6]~1_combout\ & ((\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[6]~1_combout\,
	datab => \inst|Add2~4_combout\,
	datac => \inst|rb[1]~0_combout\,
	datad => \b[0]~input_o\,
	combout => \inst|Add2~16_combout\);

-- Location: LCCOMB_X30_Y6_N10
\inst|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Add2~16_combout\ & (\a[0]~input_o\ $ (VCC))) # (!\inst|Add2~16_combout\ & (\a[0]~input_o\ & VCC))
-- \inst|Add3~1\ = CARRY((\inst|Add2~16_combout\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~16_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X30_Y6_N12
\inst|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|ra[5]~2_combout\ & ((\inst|Add2~14_combout\ & (\inst|Add3~1\ & VCC)) # (!\inst|Add2~14_combout\ & (!\inst|Add3~1\)))) # (!\inst|ra[5]~2_combout\ & ((\inst|Add2~14_combout\ & (!\inst|Add3~1\)) # (!\inst|Add2~14_combout\ & 
-- ((\inst|Add3~1\) # (GND)))))
-- \inst|Add3~3\ = CARRY((\inst|ra[5]~2_combout\ & (!\inst|Add2~14_combout\ & !\inst|Add3~1\)) # (!\inst|ra[5]~2_combout\ & ((!\inst|Add3~1\) # (!\inst|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[5]~2_combout\,
	datab => \inst|Add2~14_combout\,
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X30_Y6_N14
\inst|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = ((\inst|ra[6]~1_combout\ $ (\inst|Add2~13_combout\ $ (!\inst|Add3~3\)))) # (GND)
-- \inst|Add3~5\ = CARRY((\inst|ra[6]~1_combout\ & ((\inst|Add2~13_combout\) # (!\inst|Add3~3\))) # (!\inst|ra[6]~1_combout\ & (\inst|Add2~13_combout\ & !\inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[6]~1_combout\,
	datab => \inst|Add2~13_combout\,
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X30_Y6_N16
\inst|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Add2~12_combout\ & ((\inst|ra[7]~0_combout\ & (\inst|Add3~5\ & VCC)) # (!\inst|ra[7]~0_combout\ & (!\inst|Add3~5\)))) # (!\inst|Add2~12_combout\ & ((\inst|ra[7]~0_combout\ & (!\inst|Add3~5\)) # (!\inst|ra[7]~0_combout\ & 
-- ((\inst|Add3~5\) # (GND)))))
-- \inst|Add3~7\ = CARRY((\inst|Add2~12_combout\ & (!\inst|ra[7]~0_combout\ & !\inst|Add3~5\)) # (!\inst|Add2~12_combout\ & ((!\inst|Add3~5\) # (!\inst|ra[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~12_combout\,
	datab => \inst|ra[7]~0_combout\,
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X30_Y6_N18
\inst|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = \inst|ra[7]~0_combout\ $ (\inst|Add3~7\ $ (!\inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ra[7]~0_combout\,
	datad => \inst|Add2~12_combout\,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\);

-- Location: LCCOMB_X29_Y6_N24
\inst|Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|rb[2]~1_combout\ & ((\inst|Add3~8_combout\))) # (!\inst|rb[2]~1_combout\ & (\inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~12_combout\,
	datac => \inst|rb[2]~1_combout\,
	datad => \inst|Add3~8_combout\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X29_Y6_N18
\inst|Add3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~11_combout\ = (\inst|rb[2]~1_combout\ & ((\inst|Add3~6_combout\))) # (!\inst|rb[2]~1_combout\ & (\inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~12_combout\,
	datac => \inst|rb[2]~1_combout\,
	datad => \inst|Add3~6_combout\,
	combout => \inst|Add3~11_combout\);

-- Location: LCCOMB_X29_Y6_N28
\inst|Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|rb[2]~1_combout\ & ((\inst|Add3~4_combout\))) # (!\inst|rb[2]~1_combout\ & (\inst|Add2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rb[2]~1_combout\,
	datab => \inst|Add2~13_combout\,
	datac => \inst|Add3~4_combout\,
	combout => \inst|Add3~12_combout\);

-- Location: LCCOMB_X29_Y6_N0
\inst|Add3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~13_combout\ = (\inst|rb[2]~1_combout\ & ((\inst|Add3~2_combout\))) # (!\inst|rb[2]~1_combout\ & (\inst|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rb[2]~1_combout\,
	datab => \inst|Add2~14_combout\,
	datac => \inst|Add3~2_combout\,
	combout => \inst|Add3~13_combout\);

-- Location: LCCOMB_X29_Y6_N6
\inst|Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\a[0]~input_o\ & (\inst|Add3~13_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\inst|Add3~13_combout\ & VCC))
-- \inst|Add4~1\ = CARRY((\a[0]~input_o\ & \inst|Add3~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \inst|Add3~13_combout\,
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X29_Y6_N8
\inst|Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|Add3~12_combout\ & ((\inst|ra[5]~2_combout\ & (\inst|Add4~1\ & VCC)) # (!\inst|ra[5]~2_combout\ & (!\inst|Add4~1\)))) # (!\inst|Add3~12_combout\ & ((\inst|ra[5]~2_combout\ & (!\inst|Add4~1\)) # (!\inst|ra[5]~2_combout\ & 
-- ((\inst|Add4~1\) # (GND)))))
-- \inst|Add4~3\ = CARRY((\inst|Add3~12_combout\ & (!\inst|ra[5]~2_combout\ & !\inst|Add4~1\)) # (!\inst|Add3~12_combout\ & ((!\inst|Add4~1\) # (!\inst|ra[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~12_combout\,
	datab => \inst|ra[5]~2_combout\,
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X29_Y6_N10
\inst|Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst|ra[6]~1_combout\ $ (\inst|Add3~11_combout\ $ (!\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst|ra[6]~1_combout\ & ((\inst|Add3~11_combout\) # (!\inst|Add4~3\))) # (!\inst|ra[6]~1_combout\ & (\inst|Add3~11_combout\ & !\inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[6]~1_combout\,
	datab => \inst|Add3~11_combout\,
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X29_Y6_N12
\inst|Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|ra[7]~0_combout\ & ((\inst|Add3~10_combout\ & (\inst|Add4~5\ & VCC)) # (!\inst|Add3~10_combout\ & (!\inst|Add4~5\)))) # (!\inst|ra[7]~0_combout\ & ((\inst|Add3~10_combout\ & (!\inst|Add4~5\)) # (!\inst|Add3~10_combout\ & 
-- ((\inst|Add4~5\) # (GND)))))
-- \inst|Add4~7\ = CARRY((\inst|ra[7]~0_combout\ & (!\inst|Add3~10_combout\ & !\inst|Add4~5\)) # (!\inst|ra[7]~0_combout\ & ((!\inst|Add4~5\) # (!\inst|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ra[7]~0_combout\,
	datab => \inst|Add3~10_combout\,
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X29_Y6_N14
\inst|Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = \inst|Add3~10_combout\ $ (\inst|Add4~7\ $ (!\inst|ra[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~10_combout\,
	datad => \inst|ra[7]~0_combout\,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\);

-- Location: LCCOMB_X30_Y8_N18
\inst|rb[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|rb[3]~2_combout\ = (\b[3]~input_o\ & (!\b[2]~input_o\ & (!\b[1]~input_o\ & !\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|rb[3]~2_combout\);

-- Location: LCCOMB_X29_Y6_N2
\inst|Add4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|rb[3]~2_combout\ & ((\inst|Add4~8_combout\))) # (!\inst|rb[3]~2_combout\ & (\inst|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~10_combout\,
	datac => \inst|Add4~8_combout\,
	datad => \inst|rb[3]~2_combout\,
	combout => \inst|Add4~10_combout\);

-- Location: LCCOMB_X29_Y6_N20
\inst|Add4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~11_combout\ = (\inst|rb[3]~2_combout\ & (\inst|Add4~6_combout\)) # (!\inst|rb[3]~2_combout\ & ((\inst|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datab => \inst|Add3~10_combout\,
	datad => \inst|rb[3]~2_combout\,
	combout => \inst|Add4~11_combout\);

-- Location: LCCOMB_X29_Y6_N30
\inst|Add4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = (\inst|rb[3]~2_combout\ & (\inst|Add4~4_combout\)) # (!\inst|rb[3]~2_combout\ & ((\inst|Add3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~4_combout\,
	datab => \inst|Add3~11_combout\,
	datad => \inst|rb[3]~2_combout\,
	combout => \inst|Add4~12_combout\);

-- Location: LCCOMB_X29_Y6_N16
\inst|Add4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~13_combout\ = (\inst|rb[3]~2_combout\ & ((\inst|Add4~2_combout\))) # (!\inst|rb[3]~2_combout\ & (\inst|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~12_combout\,
	datac => \inst|Add4~2_combout\,
	datad => \inst|rb[3]~2_combout\,
	combout => \inst|Add4~13_combout\);

-- Location: LCCOMB_X29_Y6_N26
\inst|Add4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|rb[3]~2_combout\ & (\inst|Add4~0_combout\)) # (!\inst|rb[3]~2_combout\ & ((\inst|Add3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|Add3~13_combout\,
	datad => \inst|rb[3]~2_combout\,
	combout => \inst|Add4~14_combout\);

-- Location: LCCOMB_X30_Y6_N26
\inst|Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst|rb[2]~1_combout\ & (\inst|Add3~0_combout\)) # (!\inst|rb[2]~1_combout\ & ((\inst|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datac => \inst|Add2~16_combout\,
	datad => \inst|rb[2]~1_combout\,
	combout => \inst|Add3~14_combout\);

-- Location: LCCOMB_X30_Y6_N20
\inst|Add2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~15_combout\ = (\inst|rb[1]~0_combout\ & (\inst|Add2~2_combout\)) # (!\inst|rb[1]~0_combout\ & ((\inst|rc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rb[1]~0_combout\,
	datab => \inst|Add2~2_combout\,
	datac => \inst|rc~2_combout\,
	combout => \inst|Add2~15_combout\);

-- Location: LCCOMB_X30_Y8_N12
\inst|c[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|c[0]~0_combout\ = (\a[0]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|c[0]~0_combout\);

ww_c(7) <= \c[7]~output_o\;

ww_c(6) <= \c[6]~output_o\;

ww_c(5) <= \c[5]~output_o\;

ww_c(4) <= \c[4]~output_o\;

ww_c(3) <= \c[3]~output_o\;

ww_c(2) <= \c[2]~output_o\;

ww_c(1) <= \c[1]~output_o\;

ww_c(0) <= \c[0]~output_o\;
END structure;


