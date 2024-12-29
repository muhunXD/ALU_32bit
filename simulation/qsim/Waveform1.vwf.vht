-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "12/29/2024 02:26:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_1bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_1bit_vhd_vec_tst IS
END ALU_1bit_vhd_vec_tst;
ARCHITECTURE ALU_1bit_arch OF ALU_1bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL Ainvert : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Binvert : STD_LOGIC;
SIGNAL CarryIn : STD_LOGIC;
SIGNAL CarryOut : STD_LOGIC;
SIGNAL Less : STD_LOGIC;
SIGNAL Operation : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Overflow : STD_LOGIC;
SIGNAL Result : STD_LOGIC;
SIGNAL Set : STD_LOGIC;
COMPONENT ALU_1bit
	PORT (
	A : IN STD_LOGIC;
	Ainvert : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Binvert : IN STD_LOGIC;
	CarryIn : IN STD_LOGIC;
	CarryOut : OUT STD_LOGIC;
	Less : IN STD_LOGIC;
	Operation : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Overflow : OUT STD_LOGIC;
	Result : OUT STD_LOGIC;
	Set : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU_1bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Ainvert => Ainvert,
	B => B,
	Binvert => Binvert,
	CarryIn => CarryIn,
	CarryOut => CarryOut,
	Less => Less,
	Operation => Operation,
	Overflow => Overflow,
	Result => Result,
	Set => Set
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- Ainvert
t_prcs_Ainvert: PROCESS
BEGIN
	Ainvert <= '0';
WAIT;
END PROCESS t_prcs_Ainvert;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- Binvert
t_prcs_Binvert: PROCESS
BEGIN
	Binvert <= '0';
WAIT;
END PROCESS t_prcs_Binvert;

-- CarryIn
t_prcs_CarryIn: PROCESS
BEGIN
	CarryIn <= '0';
WAIT;
END PROCESS t_prcs_CarryIn;

-- Less
t_prcs_Less: PROCESS
BEGIN
	Less <= '0';
WAIT;
END PROCESS t_prcs_Less;
-- Operation[3]
t_prcs_Operation_3: PROCESS
BEGIN
	Operation(3) <= '0';
WAIT;
END PROCESS t_prcs_Operation_3;
-- Operation[2]
t_prcs_Operation_2: PROCESS
BEGIN
	Operation(2) <= '1';
WAIT;
END PROCESS t_prcs_Operation_2;
-- Operation[1]
t_prcs_Operation_1: PROCESS
BEGIN
	Operation(1) <= '1';
WAIT;
END PROCESS t_prcs_Operation_1;
-- Operation[0]
t_prcs_Operation_0: PROCESS
BEGIN
	Operation(0) <= '0';
WAIT;
END PROCESS t_prcs_Operation_0;
END ALU_1bit_arch;
