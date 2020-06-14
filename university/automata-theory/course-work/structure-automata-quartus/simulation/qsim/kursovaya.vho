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

-- DATE "06/10/2020 23:07:51"

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

ENTITY 	mealy IS
    PORT (
	y1 : OUT std_logic;
	x1 : IN std_logic;
	CLRN : IN std_logic;
	x2 : IN std_logic;
	tay2 : OUT std_logic;
	CLK : IN std_logic;
	ENA : IN std_logic;
	tay1 : OUT std_logic;
	y2 : OUT std_logic;
	y3 : OUT std_logic
	);
END mealy;

-- Design Ports Information
-- y1	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tay2	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tay1	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLRN	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mealy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_tay2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_tay1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL \CLRN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \tay2~output_o\ : std_logic;
SIGNAL \tay1~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y3~output_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \CLRN~inputclkctrl_outclk\ : std_logic;
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \inst32~q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

y1 <= ww_y1;
ww_x1 <= x1;
ww_CLRN <= CLRN;
ww_x2 <= x2;
tay2 <= ww_tay2;
ww_CLK <= CLK;
ww_ENA <= ENA;
tay1 <= ww_tay1;
y2 <= ww_y2;
y3 <= ww_y3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLRN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLRN~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X22_Y0_N9
\y1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~0_combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\tay2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~q\,
	devoe => ww_devoe,
	o => \tay2~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\tay1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \tay1~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\y2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\y3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~combout\,
	devoe => ww_devoe,
	o => \y3~output_o\);

-- Location: IOIBUF_X29_Y0_N8
\x1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N8
\x2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: LCCOMB_X26_Y4_N16
\inst15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (\x2~input_o\ & (((!\x1~input_o\ & \inst32~q\)) # (!\inst~q\))) # (!\x2~input_o\ & ((\inst~q\ & (\x1~input_o\)) # (!\inst~q\ & ((!\inst32~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x2~input_o\,
	datac => \inst32~q\,
	datad => \inst~q\,
	combout => \inst15~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\CLRN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

-- Location: CLKCTRL_G19
\CLRN~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLRN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLRN~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y0_N1
\ENA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: FF_X26_Y4_N17
inst32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15~0_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32~q\);

-- Location: LCCOMB_X26_Y4_N18
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\x1~input_o\ & (\inst32~q\ $ (((\x2~input_o\ & !\inst~q\))))) # (!\x1~input_o\ & (((!\x2~input_o\ & \inst32~q\)) # (!\inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x2~input_o\,
	datac => \inst~q\,
	datad => \inst32~q\,
	combout => \inst~0_combout\);

-- Location: FF_X26_Y4_N19
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst~0_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X26_Y4_N28
\inst18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\inst32~q\ & (\x2~input_o\ $ (((\x1~input_o\ & \inst~q\))))) # (!\inst32~q\ & (\x1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \inst~q\,
	datac => \x2~input_o\,
	datad => \inst32~q\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X26_Y4_N26
inst23 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\x1~input_o\ & (\inst~q\ & (\x2~input_o\))) # (!\x1~input_o\ & (!\inst~q\ & ((!\inst32~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \inst~q\,
	datac => \x2~input_o\,
	datad => \inst32~q\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X26_Y4_N12
inst27 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst27~combout\ = (\inst~q\ & (((\x2~input_o\) # (!\inst32~q\)))) # (!\inst~q\ & ((\inst32~q\ & (\x1~input_o\)) # (!\inst32~q\ & ((!\x2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \inst~q\,
	datac => \x2~input_o\,
	datad => \inst32~q\,
	combout => \inst27~combout\);

ww_y1 <= \y1~output_o\;

ww_tay2 <= \tay2~output_o\;

ww_tay1 <= \tay1~output_o\;

ww_y2 <= \y2~output_o\;

ww_y3 <= \y3~output_o\;
END structure;


