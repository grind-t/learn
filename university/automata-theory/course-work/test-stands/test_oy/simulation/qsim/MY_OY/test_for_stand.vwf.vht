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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/23/2020 22:07:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TEST_OY
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TEST_OY_vhd_vec_tst IS
END TEST_OY_vhd_vec_tst;
ARCHITECTURE TEST_OY_arch OF TEST_OY_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL defect : STD_LOGIC;
SIGNAL finish : STD_LOGIC;
SIGNAL okey : STD_LOGIC;
SIGNAL real_rez : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sko : STD_LOGIC;
SIGNAL sno : STD_LOGIC;
SIGNAL true_rez : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT TEST_OY
	PORT (
	clk : IN STD_LOGIC;
	defect : BUFFER STD_LOGIC;
	finish : BUFFER STD_LOGIC;
	okey : BUFFER STD_LOGIC;
	real_rez : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	sko : BUFFER STD_LOGIC;
	sno : BUFFER STD_LOGIC;
	true_rez : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	x : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TEST_OY
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	defect => defect,
	finish => finish,
	okey => okey,
	real_rez => real_rez,
	reset => reset,
	sko => sko,
	sno => sno,
	true_rez => true_rez,
	x => x,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25 ps;
	clk <= '1';
	WAIT FOR 25 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END TEST_OY_arch;
