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
-- Generated on "06/14/2020 17:25:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          OperationAutomat
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY OperationAutomat_vhd_vec_tst IS
END OperationAutomat_vhd_vec_tst;
ARCHITECTURE OperationAutomat_arch OF OperationAutomat_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT OperationAutomat
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	rc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	x : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : OperationAutomat
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	rc => rc,
	x => x,
	y => y
	);
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '1';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '1';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '1';
WAIT;
END PROCESS t_prcs_b_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- y[9]
t_prcs_y_9: PROCESS
BEGIN
	y(9) <= '0';
	WAIT FOR 40000 ps;
	y(9) <= '1';
	WAIT FOR 20000 ps;
	y(9) <= '0';
	WAIT FOR 20000 ps;
	y(9) <= '1';
	WAIT FOR 20000 ps;
	y(9) <= '0';
	WAIT FOR 20000 ps;
	y(9) <= '1';
	WAIT FOR 20000 ps;
	y(9) <= '0';
WAIT;
END PROCESS t_prcs_y_9;
-- y[8]
t_prcs_y_8: PROCESS
BEGIN
	y(8) <= '0';
	WAIT FOR 40000 ps;
	y(8) <= '1';
	WAIT FOR 20000 ps;
	y(8) <= '0';
	WAIT FOR 20000 ps;
	y(8) <= '1';
	WAIT FOR 20000 ps;
	y(8) <= '0';
	WAIT FOR 20000 ps;
	y(8) <= '1';
	WAIT FOR 20000 ps;
	y(8) <= '0';
WAIT;
END PROCESS t_prcs_y_8;
-- y[7]
t_prcs_y_7: PROCESS
BEGIN
	y(7) <= '0';
	WAIT FOR 100000 ps;
	y(7) <= '1';
	WAIT FOR 20000 ps;
	y(7) <= '0';
	WAIT FOR 20000 ps;
	y(7) <= '1';
	WAIT FOR 20000 ps;
	y(7) <= '0';
WAIT;
END PROCESS t_prcs_y_7;
-- y[6]
t_prcs_y_6: PROCESS
BEGIN
	y(6) <= '0';
	WAIT FOR 20000 ps;
	y(6) <= '1';
	WAIT FOR 20000 ps;
	y(6) <= '0';
	WAIT FOR 20000 ps;
	y(6) <= '1';
	WAIT FOR 20000 ps;
	y(6) <= '0';
WAIT;
END PROCESS t_prcs_y_6;
-- y[5]
t_prcs_y_5: PROCESS
BEGIN
	y(5) <= '0';
WAIT;
END PROCESS t_prcs_y_5;
-- y[4]
t_prcs_y_4: PROCESS
BEGIN
	y(4) <= '0';
WAIT;
END PROCESS t_prcs_y_4;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '1';
	WAIT FOR 20000 ps;
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '1';
	WAIT FOR 20000 ps;
	y(2) <= '0';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '1';
	WAIT FOR 20000 ps;
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '1';
	WAIT FOR 20000 ps;
	y(0) <= '0';
WAIT;
END PROCESS t_prcs_y_0;
END OperationAutomat_arch;
