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

-- DATE "02/26/2021 22:12:26"

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

ENTITY 	scheme IS
    PORT (
	Q1 : OUT std_logic;
	R : IN std_logic;
	C : IN std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic
	);
END scheme;

-- Design Ports Information
-- Q1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF scheme IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL \R~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst1|inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q5~output_o\ : std_logic;
SIGNAL \Q6~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \C~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst~feeder_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \R~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|inst~q\ : std_logic;
SIGNAL \inst|inst0|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst0|inst1~feeder_combout\ : std_logic;
SIGNAL \inst|inst0|inst1~q\ : std_logic;
SIGNAL \inst|inst0|inst~0_combout\ : std_logic;
SIGNAL \inst|inst0|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst0|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst0|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst0|inst1~q\ : std_logic;
SIGNAL \inst2|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst1|inst~q\ : std_logic;
SIGNAL \inst2|inst0|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst0|inst~q\ : std_logic;
SIGNAL \ALT_INV_C~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_R~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q1 <= ww_Q1;
ww_R <= R;
ww_C <= C;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
Q6 <= ww_Q6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\R~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \R~input_o\);

\C~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C~input_o\);

\inst|inst1|inst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst1|inst~q\);
\ALT_INV_C~inputclkctrl_outclk\ <= NOT \C~inputclkctrl_outclk\;
\ALT_INV_R~inputclkctrl_outclk\ <= NOT \R~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst0|inst~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst0|inst1~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst0|inst~q\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Q5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst0|inst1~q\,
	devoe => ww_devoe,
	o => \Q5~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|inst~q\,
	devoe => ww_devoe,
	o => \Q6~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\C~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: CLKCTRL_G17
\C~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N22
\inst|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~0_combout\ = (!\inst|inst0|inst1~q\ & (!\inst|inst1|inst~q\ & !\inst|inst0|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst0|inst1~q\,
	datac => \inst|inst1|inst~q\,
	datad => \inst|inst0|inst~q\,
	combout => \inst|inst1|inst~0_combout\);

-- Location: LCCOMB_X15_Y1_N30
\inst|inst1|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~feeder_combout\ = \inst|inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst~0_combout\,
	combout => \inst|inst1|inst~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: CLKCTRL_G19
\R~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R~inputclkctrl_outclk\);

-- Location: FF_X15_Y1_N31
\inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst|inst1|inst~feeder_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst~q\);

-- Location: LCCOMB_X15_Y1_N24
\inst|inst0|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst0|inst1~0_combout\ = (\inst|inst0|inst1~q\ & ((\inst|inst0|inst~q\))) # (!\inst|inst0|inst1~q\ & (\inst|inst1|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst0|inst1~q\,
	datac => \inst|inst1|inst~q\,
	datad => \inst|inst0|inst~q\,
	combout => \inst|inst0|inst1~0_combout\);

-- Location: LCCOMB_X15_Y1_N26
\inst|inst0|inst1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst0|inst1~feeder_combout\ = \inst|inst0|inst1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst0|inst1~0_combout\,
	combout => \inst|inst0|inst1~feeder_combout\);

-- Location: FF_X15_Y1_N27
\inst|inst0|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst|inst0|inst1~feeder_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst0|inst1~q\);

-- Location: LCCOMB_X15_Y1_N16
\inst|inst0|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst0|inst~0_combout\ = (!\inst|inst0|inst~q\ & ((\inst|inst0|inst1~q\) # (\inst|inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst0|inst1~q\,
	datac => \inst|inst1|inst~q\,
	datad => \inst|inst0|inst~q\,
	combout => \inst|inst0|inst~0_combout\);

-- Location: LCCOMB_X15_Y1_N28
\inst|inst0|inst~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst0|inst~feeder_combout\ = \inst|inst0|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst0|inst~0_combout\,
	combout => \inst|inst0|inst~feeder_combout\);

-- Location: FF_X15_Y1_N29
\inst|inst0|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst|inst0|inst~feeder_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst0|inst~q\);

-- Location: CLKCTRL_G18
\inst|inst1|inst~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst1|inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst1|inst~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y1_N2
\inst2|inst0|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst0|inst1~0_combout\ = \inst2|inst0|inst1~q\ $ (!\inst2|inst0|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst0|inst1~q\,
	datad => \inst2|inst0|inst~q\,
	combout => \inst2|inst0|inst1~0_combout\);

-- Location: FF_X23_Y1_N3
\inst2|inst0|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst~clkctrl_outclk\,
	d => \inst2|inst0|inst1~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst0|inst1~q\);

-- Location: LCCOMB_X23_Y1_N24
\inst2|inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst~0_combout\ = \inst2|inst1|inst~q\ $ (((!\inst2|inst0|inst1~q\ & !\inst2|inst0|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst0|inst1~q\,
	datac => \inst2|inst1|inst~q\,
	datad => \inst2|inst0|inst~q\,
	combout => \inst2|inst1|inst~0_combout\);

-- Location: FF_X23_Y1_N25
\inst2|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst~clkctrl_outclk\,
	d => \inst2|inst1|inst~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1|inst~q\);

-- Location: LCCOMB_X23_Y1_N28
\inst2|inst0|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst0|inst~0_combout\ = (!\inst2|inst0|inst~q\ & ((\inst2|inst0|inst1~q\) # (\inst2|inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst0|inst1~q\,
	datac => \inst2|inst0|inst~q\,
	datad => \inst2|inst1|inst~q\,
	combout => \inst2|inst0|inst~0_combout\);

-- Location: FF_X23_Y1_N29
\inst2|inst0|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst~clkctrl_outclk\,
	d => \inst2|inst0|inst~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst0|inst~q\);

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q4 <= \Q4~output_o\;

ww_Q5 <= \Q5~output_o\;

ww_Q6 <= \Q6~output_o\;
END structure;


