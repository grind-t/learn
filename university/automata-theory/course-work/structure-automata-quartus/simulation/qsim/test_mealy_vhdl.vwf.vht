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
-- Generated on "04/28/2020 14:35:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test_memory
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_memory_vhd_vec_tst IS
END test_memory_vhd_vec_tst;
ARCHITECTURE test_memory_arch OF test_memory_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
COMPONENT test_memory
	PORT (
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	t1 : OUT STD_LOGIC;
	t2 : OUT STD_LOGIC;
	x1 : IN STD_LOGIC;
	x2 : IN STD_LOGIC;
	y1 : OUT STD_LOGIC;
	y2 : OUT STD_LOGIC;
	y3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test_memory
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable => enable,
	resetn => resetn,
	t1 => t1,
	t2 => t2,
	x1 => x1,
	x2 => x2,
	y1 => y1,
	y2 => y2,
	y3 => y3
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clock <= '0';
		WAIT FOR 5000 ps;
		clock <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 10000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 40000 ps;
	x1 <= '1';
	WAIT FOR 10000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;

-- x2
t_prcs_x2: PROCESS
BEGIN
	x2 <= '0';
	WAIT FOR 10000 ps;
	x2 <= '1';
	WAIT FOR 10000 ps;
	x2 <= '0';
	WAIT FOR 30000 ps;
	x2 <= '1';
	WAIT FOR 20000 ps;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;
END test_memory_arch;
