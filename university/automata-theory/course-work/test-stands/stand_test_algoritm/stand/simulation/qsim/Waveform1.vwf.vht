-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/28/2019 18:49:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test_alg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_alg_vhd_vec_tst IS
END test_alg_vhd_vec_tst;
ARCHITECTURE test_alg_arch OF test_alg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL defect : STD_LOGIC;
SIGNAL finish : STD_LOGIC;
SIGNAL okey : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rez_test : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rez_true : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT test_alg
	PORT (
	clk : IN STD_LOGIC;
	defect : OUT STD_LOGIC;
	finish : OUT STD_LOGIC;
	okey : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	rez_test : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rez_true : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	x : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test_alg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	defect => defect,
	finish => finish,
	okey => okey,
	reset => reset,
	rez_test => rez_test,
	rez_true => rez_true,
	x => x,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
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
END test_alg_arch;
