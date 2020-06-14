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
-- Generated on "06/10/2020 22:43:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mealy
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mealy_vhd_vec_tst IS
END mealy_vhd_vec_tst;
ARCHITECTURE mealy_arch OF mealy_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
SIGNAL ENA : STD_LOGIC;
SIGNAL tay1 : STD_LOGIC;
SIGNAL tay2 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
COMPONENT mealy
	PORT (
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC;
	ENA : IN STD_LOGIC;
	tay1 : OUT STD_LOGIC;
	tay2 : OUT STD_LOGIC;
	x1 : IN STD_LOGIC;
	x2 : IN STD_LOGIC;
	y1 : OUT STD_LOGIC;
	y2 : OUT STD_LOGIC;
	y3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mealy
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLRN => CLRN,
	ENA => ENA,
	tay1 => tay1,
	tay2 => tay2,
	x1 => x1,
	x2 => x2,
	y1 => y1,
	y2 => y2,
	y3 => y3
	);

-- CLRN
t_prcs_CLRN: PROCESS
BEGIN
	CLRN <= '0';
	WAIT FOR 10000 ps;
	CLRN <= '1';
WAIT;
END PROCESS t_prcs_CLRN;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		CLK <= '0';
		WAIT FOR 5000 ps;
		CLK <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 60000 ps;
	x1 <= '1';
	WAIT FOR 10000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;

-- x2
t_prcs_x2: PROCESS
BEGIN
	x2 <= '0';
	WAIT FOR 30000 ps;
	x2 <= '1';
	WAIT FOR 10000 ps;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;

-- ENA
t_prcs_ENA: PROCESS
BEGIN
	ENA <= '1';
WAIT;
END PROCESS t_prcs_ENA;
END mealy_arch;
