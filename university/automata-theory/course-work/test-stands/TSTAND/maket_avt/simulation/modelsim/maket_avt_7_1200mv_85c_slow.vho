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

-- DATE "07/05/2018 12:30:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	maket_avt IS
    PORT (
	LEDG8 : OUT std_logic;
	LEDG4 : OUT std_logic;
	LEDG3 : OUT std_logic;
	LEDR15 : OUT std_logic;
	LEDR14 : OUT std_logic;
	LEDR13 : OUT std_logic;
	LEDR12 : OUT std_logic;
	LEDR11 : OUT std_logic;
	LEDR10 : OUT std_logic;
	LEDR9 : OUT std_logic;
	LEDR8 : OUT std_logic;
	LEDR7 : OUT std_logic;
	LEDR4 : OUT std_logic;
	LEDR3 : OUT std_logic;
	LEDR17 : OUT std_logic;
	SW17 : IN std_logic;
	LEDR16 : OUT std_logic;
	SW16 : IN std_logic;
	LEDR6 : OUT std_logic;
	KEY1 : IN std_logic;
	SW0 : IN std_logic;
	KEY0 : IN std_logic;
	LEDR5 : OUT std_logic;
	LEDR2 : OUT std_logic;
	LEDR1 : OUT std_logic;
	LEDR0 : OUT std_logic;
	LEDG1 : OUT std_logic;
	LEDG0 : OUT std_logic;
	LEDG7 : OUT std_logic;
	LEDG6 : OUT std_logic;
	LEDG5 : OUT std_logic;
	LEDG2 : OUT std_logic
	);
END maket_avt;

-- Design Ports Information
-- LEDG8	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG4	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG3	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR15	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR14	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR13	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR12	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR11	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR10	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR8	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR17	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR16	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR2	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG1	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG0	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG7	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG6	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG5	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG2	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maket_avt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG8 : std_logic;
SIGNAL ww_LEDG4 : std_logic;
SIGNAL ww_LEDG3 : std_logic;
SIGNAL ww_LEDR15 : std_logic;
SIGNAL ww_LEDR14 : std_logic;
SIGNAL ww_LEDR13 : std_logic;
SIGNAL ww_LEDR12 : std_logic;
SIGNAL ww_LEDR11 : std_logic;
SIGNAL ww_LEDR10 : std_logic;
SIGNAL ww_LEDR9 : std_logic;
SIGNAL ww_LEDR8 : std_logic;
SIGNAL ww_LEDR7 : std_logic;
SIGNAL ww_LEDR4 : std_logic;
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_LEDR17 : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_LEDR16 : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_LEDR6 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_LEDR5 : std_logic;
SIGNAL ww_LEDR2 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDG1 : std_logic;
SIGNAL ww_LEDG0 : std_logic;
SIGNAL ww_LEDG7 : std_logic;
SIGNAL ww_LEDG6 : std_logic;
SIGNAL ww_LEDG5 : std_logic;
SIGNAL ww_LEDG2 : std_logic;
SIGNAL \LEDG8~output_o\ : std_logic;
SIGNAL \LEDG4~output_o\ : std_logic;
SIGNAL \LEDG3~output_o\ : std_logic;
SIGNAL \LEDR15~output_o\ : std_logic;
SIGNAL \LEDR14~output_o\ : std_logic;
SIGNAL \LEDR13~output_o\ : std_logic;
SIGNAL \LEDR12~output_o\ : std_logic;
SIGNAL \LEDR11~output_o\ : std_logic;
SIGNAL \LEDR10~output_o\ : std_logic;
SIGNAL \LEDR9~output_o\ : std_logic;
SIGNAL \LEDR8~output_o\ : std_logic;
SIGNAL \LEDR7~output_o\ : std_logic;
SIGNAL \LEDR4~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \LEDR17~output_o\ : std_logic;
SIGNAL \LEDR16~output_o\ : std_logic;
SIGNAL \LEDR6~output_o\ : std_logic;
SIGNAL \LEDR5~output_o\ : std_logic;
SIGNAL \LEDR2~output_o\ : std_logic;
SIGNAL \LEDR1~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDG1~output_o\ : std_logic;
SIGNAL \LEDG0~output_o\ : std_logic;
SIGNAL \LEDG7~output_o\ : std_logic;
SIGNAL \LEDG6~output_o\ : std_logic;
SIGNAL \LEDG5~output_o\ : std_logic;
SIGNAL \LEDG2~output_o\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst20~0_combout\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst63~0_combout\ : std_logic;
SIGNAL \inst1|inst63~1_combout\ : std_logic;
SIGNAL \inst1|inst62~q\ : std_logic;
SIGNAL \inst1|inst53~1_combout\ : std_logic;
SIGNAL \inst1|inst53~0_combout\ : std_logic;
SIGNAL \inst1|inst53~2_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst8~1_combout\ : std_logic;
SIGNAL \inst1|inst8~q\ : std_logic;
SIGNAL \inst1|inst40~combout\ : std_logic;
SIGNAL \inst1|inst22~0_combout\ : std_logic;
SIGNAL \inst1|inst42~combout\ : std_logic;

BEGIN

LEDG8 <= ww_LEDG8;
LEDG4 <= ww_LEDG4;
LEDG3 <= ww_LEDG3;
LEDR15 <= ww_LEDR15;
LEDR14 <= ww_LEDR14;
LEDR13 <= ww_LEDR13;
LEDR12 <= ww_LEDR12;
LEDR11 <= ww_LEDR11;
LEDR10 <= ww_LEDR10;
LEDR9 <= ww_LEDR9;
LEDR8 <= ww_LEDR8;
LEDR7 <= ww_LEDR7;
LEDR4 <= ww_LEDR4;
LEDR3 <= ww_LEDR3;
LEDR17 <= ww_LEDR17;
ww_SW17 <= SW17;
LEDR16 <= ww_LEDR16;
ww_SW16 <= SW16;
LEDR6 <= ww_LEDR6;
ww_KEY1 <= KEY1;
ww_SW0 <= SW0;
ww_KEY0 <= KEY0;
LEDR5 <= ww_LEDR5;
LEDR2 <= ww_LEDR2;
LEDR1 <= ww_LEDR1;
LEDR0 <= ww_LEDR0;
LEDG1 <= ww_LEDG1;
LEDG0 <= ww_LEDG0;
LEDG7 <= ww_LEDG7;
LEDG6 <= ww_LEDG6;
LEDG5 <= ww_LEDG5;
LEDG2 <= ww_LEDG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X67_Y73_N16
\LEDG8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG8~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG4~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG3~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR15~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR14~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR13~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR12~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR11~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR10~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR9~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR8~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR7~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR4~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR3~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR17~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW17~input_o\,
	devoe => ww_devoe,
	o => \LEDR17~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW16~input_o\,
	devoe => ww_devoe,
	o => \LEDR16~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \LEDR6~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8~q\,
	devoe => ww_devoe,
	o => \LEDR5~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16~0_combout\,
	devoe => ww_devoe,
	o => \LEDR2~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst20~0_combout\,
	devoe => ww_devoe,
	o => \LEDR1~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~q\,
	devoe => ww_devoe,
	o => \LEDG1~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst62~q\,
	devoe => ww_devoe,
	o => \LEDG0~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst40~combout\,
	devoe => ww_devoe,
	o => \LEDG7~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst22~0_combout\,
	devoe => ww_devoe,
	o => \LEDG6~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst42~combout\,
	devoe => ww_devoe,
	o => \LEDG5~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => \LEDG2~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LCCOMB_X114_Y53_N2
\inst|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = (\inst|inst8~q\ & (((!\SW16~input_o\ & \SW17~input_o\)) # (!\inst|inst~q\))) # (!\inst|inst8~q\ & (!\SW16~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW17~input_o\,
	datac => \inst|inst8~q\,
	datad => \inst|inst~q\,
	combout => \inst|inst8~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: FF_X114_Y53_N3
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~input_o\,
	d => \inst|inst8~0_combout\,
	clrn => \KEY0~input_o\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: LCCOMB_X114_Y53_N24
\inst|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = (\inst|inst8~q\ & (\SW16~input_o\)) # (!\inst|inst8~q\ & (((\SW16~input_o\ & \SW17~input_o\)) # (!\inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW17~input_o\,
	datac => \inst|inst~q\,
	datad => \inst|inst8~q\,
	combout => \inst|inst3~0_combout\);

-- Location: FF_X114_Y53_N25
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~input_o\,
	d => \inst|inst3~0_combout\,
	clrn => \KEY0~input_o\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X111_Y69_N16
\inst|inst16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (\SW17~input_o\ & (((!\inst|inst8~q\ & !\SW16~input_o\)))) # (!\SW17~input_o\ & (\inst|inst~q\ & ((!\SW16~input_o\) # (!\inst|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|inst~q\,
	datac => \inst|inst8~q\,
	datad => \SW16~input_o\,
	combout => \inst|inst16~0_combout\);

-- Location: LCCOMB_X111_Y69_N26
\inst|inst20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20~0_combout\ = (\SW17~input_o\ & (((\SW16~input_o\)))) # (!\SW17~input_o\ & (!\inst|inst~q\ & ((\SW16~input_o\) # (!\inst|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|inst~q\,
	datac => \inst|inst8~q\,
	datad => \SW16~input_o\,
	combout => \inst|inst20~0_combout\);

-- Location: LCCOMB_X111_Y69_N20
\inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\SW17~input_o\ & (\SW16~input_o\ $ (((\inst|inst8~q\) # (!\inst|inst~q\))))) # (!\SW17~input_o\ & ((\SW16~input_o\ & (\inst|inst~q\)) # (!\SW16~input_o\ & ((\inst|inst8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|inst~q\,
	datac => \inst|inst8~q\,
	datad => \SW16~input_o\,
	combout => \inst|inst1~0_combout\);

-- Location: LCCOMB_X111_Y69_N28
\inst1|inst63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst63~0_combout\ = (\SW17~input_o\ & (\inst1|inst8~q\)) # (!\SW17~input_o\ & (!\inst1|inst~q\ & (\inst1|inst8~q\ $ (\inst1|inst62~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst1|inst8~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst62~q\,
	combout => \inst1|inst63~0_combout\);

-- Location: LCCOMB_X111_Y69_N0
\inst1|inst63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst63~1_combout\ = (\SW16~input_o\ & (\SW17~input_o\)) # (!\SW16~input_o\ & (\inst1|inst63~0_combout\ $ (((\SW17~input_o\ & !\inst1|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW16~input_o\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst63~0_combout\,
	combout => \inst1|inst63~1_combout\);

-- Location: FF_X111_Y69_N1
\inst1|inst62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~input_o\,
	d => \inst1|inst63~1_combout\,
	clrn => \KEY0~input_o\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst62~q\);

-- Location: LCCOMB_X111_Y69_N4
\inst1|inst53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst53~1_combout\ = ((!\inst1|inst~q\ & \inst1|inst8~q\)) # (!\SW16~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW16~input_o\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst8~q\,
	combout => \inst1|inst53~1_combout\);

-- Location: LCCOMB_X111_Y69_N6
\inst1|inst53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst53~0_combout\ = (\inst1|inst8~q\ & (((\SW17~input_o\ & \inst1|inst~q\)) # (!\SW16~input_o\))) # (!\inst1|inst8~q\ & (\inst1|inst~q\ $ (((\SW17~input_o\ & \SW16~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW16~input_o\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst8~q\,
	combout => \inst1|inst53~0_combout\);

-- Location: LCCOMB_X111_Y69_N22
\inst1|inst53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst53~2_combout\ = (!\inst1|inst53~0_combout\ & ((\SW17~input_o\) # ((!\inst1|inst53~1_combout\) # (!\inst1|inst62~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst1|inst62~q\,
	datac => \inst1|inst53~1_combout\,
	datad => \inst1|inst53~0_combout\,
	combout => \inst1|inst53~2_combout\);

-- Location: FF_X111_Y69_N23
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~input_o\,
	d => \inst1|inst53~2_combout\,
	clrn => \KEY0~input_o\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X111_Y69_N2
\inst1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = (\SW17~input_o\) # (\inst1|inst8~q\ $ (((\inst1|inst~q\) # (!\inst1|inst62~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst1|inst8~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst62~q\,
	combout => \inst1|inst8~0_combout\);

-- Location: LCCOMB_X111_Y69_N18
\inst1|inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~1_combout\ = (\SW16~input_o\ & (\inst1|inst~q\ $ (((!\inst1|inst8~0_combout\) # (!\inst1|inst8~q\))))) # (!\SW16~input_o\ & (\inst1|inst8~0_combout\ & ((!\inst1|inst8~q\) # (!\inst1|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \SW16~input_o\,
	datac => \inst1|inst8~q\,
	datad => \inst1|inst8~0_combout\,
	combout => \inst1|inst8~1_combout\);

-- Location: FF_X111_Y69_N19
\inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1~input_o\,
	d => \inst1|inst8~1_combout\,
	clrn => \KEY0~input_o\,
	ena => \SW0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8~q\);

-- Location: LCCOMB_X84_Y72_N0
\inst1|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst40~combout\ = (\inst1|inst~q\ & (\inst1|inst8~q\ & \inst1|inst62~q\)) # (!\inst1|inst~q\ & ((!\inst1|inst62~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8~q\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst62~q\,
	combout => \inst1|inst40~combout\);

-- Location: LCCOMB_X111_Y69_N24
\inst1|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst22~0_combout\ = (\inst1|inst62~q\ & (\inst1|inst~q\ $ (\inst1|inst8~q\))) # (!\inst1|inst62~q\ & (\inst1|inst~q\ & \inst1|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst62~q\,
	datab => \inst1|inst~q\,
	datac => \inst1|inst8~q\,
	combout => \inst1|inst22~0_combout\);

-- Location: LCCOMB_X111_Y69_N10
\inst1|inst42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst42~combout\ = ((\inst1|inst62~q\ & \inst1|inst~q\)) # (!\inst1|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst62~q\,
	datab => \inst1|inst~q\,
	datac => \inst1|inst8~q\,
	combout => \inst1|inst42~combout\);

ww_LEDG8 <= \LEDG8~output_o\;

ww_LEDG4 <= \LEDG4~output_o\;

ww_LEDG3 <= \LEDG3~output_o\;

ww_LEDR15 <= \LEDR15~output_o\;

ww_LEDR14 <= \LEDR14~output_o\;

ww_LEDR13 <= \LEDR13~output_o\;

ww_LEDR12 <= \LEDR12~output_o\;

ww_LEDR11 <= \LEDR11~output_o\;

ww_LEDR10 <= \LEDR10~output_o\;

ww_LEDR9 <= \LEDR9~output_o\;

ww_LEDR8 <= \LEDR8~output_o\;

ww_LEDR7 <= \LEDR7~output_o\;

ww_LEDR4 <= \LEDR4~output_o\;

ww_LEDR3 <= \LEDR3~output_o\;

ww_LEDR17 <= \LEDR17~output_o\;

ww_LEDR16 <= \LEDR16~output_o\;

ww_LEDR6 <= \LEDR6~output_o\;

ww_LEDR5 <= \LEDR5~output_o\;

ww_LEDR2 <= \LEDR2~output_o\;

ww_LEDR1 <= \LEDR1~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDG1 <= \LEDG1~output_o\;

ww_LEDG0 <= \LEDG0~output_o\;

ww_LEDG7 <= \LEDG7~output_o\;

ww_LEDG6 <= \LEDG6~output_o\;

ww_LEDG5 <= \LEDG5~output_o\;

ww_LEDG2 <= \LEDG2~output_o\;
END structure;


