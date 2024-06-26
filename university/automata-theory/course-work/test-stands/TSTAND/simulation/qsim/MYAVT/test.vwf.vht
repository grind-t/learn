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
-- Generated on "06/12/2020 20:06:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tstand
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tstand_vhd_vec_tst IS
END tstand_vhd_vec_tst;
ARCHITECTURE tstand_arch OF tstand_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL rez : STD_LOGIC;
SIGNAL rez_mura : STD_LOGIC;
SIGNAL rez_y : STD_LOGIC;
SIGNAL s_true : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL tt1 : STD_LOGIC;
SIGNAL tt2 : STD_LOGIC;
SIGNAL tt3 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
SIGNAL y_true : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL yy1 : STD_LOGIC;
SIGNAL yy2 : STD_LOGIC;
SIGNAL yy3 : STD_LOGIC;
COMPONENT tstand
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	en : IN STD_LOGIC;
	rez : OUT STD_LOGIC;
	rez_mura : OUT STD_LOGIC;
	rez_y : OUT STD_LOGIC;
	s_true : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	t1 : OUT STD_LOGIC;
	t2 : OUT STD_LOGIC;
	tt1 : OUT STD_LOGIC;
	tt2 : OUT STD_LOGIC;
	tt3 : OUT STD_LOGIC;
	x1 : OUT STD_LOGIC;
	x2 : OUT STD_LOGIC;
	y1 : OUT STD_LOGIC;
	y2 : OUT STD_LOGIC;
	y3 : OUT STD_LOGIC;
	y_true : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	yy1 : OUT STD_LOGIC;
	yy2 : OUT STD_LOGIC;
	yy3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tstand
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	en => en,
	rez => rez,
	rez_mura => rez_mura,
	rez_y => rez_y,
	s_true => s_true,
	t1 => t1,
	t2 => t2,
	tt1 => tt1,
	tt2 => tt2,
	tt3 => tt3,
	x1 => x1,
	x2 => x2,
	y1 => y1,
	y2 => y2,
	y3 => y3,
	y_true => y_true,
	yy1 => yy1,
	yy2 => yy2,
	yy3 => yy3
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 10000 ps;
	clr <= '1';
WAIT;
END PROCESS t_prcs_clr;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 10000 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;
END tstand_arch;
