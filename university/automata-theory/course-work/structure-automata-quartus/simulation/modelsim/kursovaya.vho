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

-- DATE "06/11/2020 23:14:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	mealy_decompose_scheme IS
    PORT (
	t1 : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	enable : IN std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	t2 : OUT std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	y3 : OUT std_logic
	);
END mealy_decompose_scheme;

-- Design Ports Information
-- t1	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t2	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mealy_decompose_scheme IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_t1 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_t2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t1~output_o\ : std_logic;
SIGNAL \t2~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y3~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inst1|inst32~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst2|inst18~0_combout\ : std_logic;
SIGNAL \inst2|inst23~combout\ : std_logic;
SIGNAL \inst2|inst27~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

t1 <= ww_t1;
ww_reset <= reset;
ww_clock <= clock;
ww_enable <= enable;
ww_x1 <= x1;
ww_x2 <= x2;
t2 <= ww_t2;
y1 <= ww_y1;
y2 <= ww_y2;
y3 <= ww_y3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y27_N9
\t1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => \t1~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\t2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst32~q\,
	devoe => ww_devoe,
	o => \t2~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\y1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst18~0_combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\y2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst23~combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\y3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst27~combout\,
	devoe => ww_devoe,
	o => \y3~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y28_N8
\x1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\x2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: LCCOMB_X32_Y27_N18
\inst|inst15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst15~0_combout\ = (\x2~input_o\ & (((!\x1~input_o\ & \inst1|inst32~q\)) # (!\inst1|inst~q\))) # (!\x2~input_o\ & ((\inst1|inst~q\ & (\x1~input_o\)) # (!\inst1|inst~q\ & ((!\inst1|inst32~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x2~input_o\,
	datac => \inst1|inst32~q\,
	datad => \inst1|inst~q\,
	combout => \inst|inst15~0_combout\);

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

-- Location: IOIBUF_X33_Y27_N1
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X32_Y27_N19
\inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst32~q\);

-- Location: LCCOMB_X32_Y27_N12
\inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = (\x1~input_o\ & (\inst1|inst32~q\ $ (((\x2~input_o\ & !\inst1|inst~q\))))) # (!\x1~input_o\ & (((!\x2~input_o\ & \inst1|inst32~q\)) # (!\inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x2~input_o\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst32~q\,
	combout => \inst1|inst~0_combout\);

-- Location: FF_X32_Y27_N13
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|inst~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X32_Y27_N20
\inst2|inst18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst18~0_combout\ = (\inst1|inst32~q\ & (\x2~input_o\ $ (((\inst1|inst~q\ & \x1~input_o\))))) # (!\inst1|inst32~q\ & (((\x1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst32~q\,
	datac => \x1~input_o\,
	datad => \x2~input_o\,
	combout => \inst2|inst18~0_combout\);

-- Location: LCCOMB_X32_Y27_N26
\inst2|inst23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst23~combout\ = (\inst1|inst~q\ & (((\x1~input_o\ & \x2~input_o\)))) # (!\inst1|inst~q\ & (!\inst1|inst32~q\ & (!\x1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst32~q\,
	datac => \x1~input_o\,
	datad => \x2~input_o\,
	combout => \inst2|inst23~combout\);

-- Location: LCCOMB_X32_Y27_N28
\inst2|inst27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst27~combout\ = (\inst1|inst~q\ & (((\x2~input_o\)) # (!\inst1|inst32~q\))) # (!\inst1|inst~q\ & ((\inst1|inst32~q\ & (\x1~input_o\)) # (!\inst1|inst32~q\ & ((!\x2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst32~q\,
	datac => \x1~input_o\,
	datad => \x2~input_o\,
	combout => \inst2|inst27~combout\);

ww_t1 <= \t1~output_o\;

ww_t2 <= \t2~output_o\;

ww_y1 <= \y1~output_o\;

ww_y2 <= \y2~output_o\;

ww_y3 <= \y3~output_o\;
END structure;


