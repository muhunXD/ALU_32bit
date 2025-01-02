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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/03/2025 04:39:03"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU101 IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Ainvert : IN std_logic;
	Binvert : IN std_logic;
	Operation : IN std_logic_vector(3 DOWNTO 0);
	Result : OUT std_logic_vector(31 DOWNTO 0);
	Set : OUT std_logic;
	Overflow : OUT std_logic;
	Zero : OUT std_logic
	);
END ALU101;

-- Design Ports Information
-- Ainvert	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Binvert	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[3]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU101 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Ainvert : std_logic;
SIGNAL ww_Binvert : std_logic;
SIGNAL ww_Operation : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Set : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ainvert~input_o\ : std_logic;
SIGNAL \Binvert~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \Result[16]~output_o\ : std_logic;
SIGNAL \Result[17]~output_o\ : std_logic;
SIGNAL \Result[18]~output_o\ : std_logic;
SIGNAL \Result[19]~output_o\ : std_logic;
SIGNAL \Result[20]~output_o\ : std_logic;
SIGNAL \Result[21]~output_o\ : std_logic;
SIGNAL \Result[22]~output_o\ : std_logic;
SIGNAL \Result[23]~output_o\ : std_logic;
SIGNAL \Result[24]~output_o\ : std_logic;
SIGNAL \Result[25]~output_o\ : std_logic;
SIGNAL \Result[26]~output_o\ : std_logic;
SIGNAL \Result[27]~output_o\ : std_logic;
SIGNAL \Result[28]~output_o\ : std_logic;
SIGNAL \Result[29]~output_o\ : std_logic;
SIGNAL \Result[30]~output_o\ : std_logic;
SIGNAL \Result[31]~output_o\ : std_logic;
SIGNAL \Set~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \Operation[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Operation[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~7_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~5_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~6_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~8_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~9_combout\ : std_logic;
SIGNAL \ALU_MSB|B_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~7_combout\ : std_logic;
SIGNAL \ALU_MSB|OverflowDetect|overflow~combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \ALU_MSB|OverflowDetect|ALT_INV_overflow~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Ainvert <= Ainvert;
ww_Binvert <= Binvert;
ww_Operation <= Operation;
Result <= ww_Result;
Set <= ww_Set;
Overflow <= ww_Overflow;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALU_MSB|OverflowDetect|ALT_INV_overflow~combout\ <= NOT \ALU_MSB|OverflowDetect|overflow~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y25_N30
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_LSB|Operation_Select|Mux0~6_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\Result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\Result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\Result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\Result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\Result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\Result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\Result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\Result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\Result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\Result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[16]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\Result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[17]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\Result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[18]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\Result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[19]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\Result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[20]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\Result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[21]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\Result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[22]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\Result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[23]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\Result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[24]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\Result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[25]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\Result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[26]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\Result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \Result[27]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\Result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \Result[28]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\Result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[29]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\Result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[30]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\Result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|Operation_Select|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \Result[31]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\Set~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Set~output_o\);

-- Location: IOOBUF_X31_Y14_N2
\Overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|OverflowDetect|ALT_INV_overflow~combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\Zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOIBUF_X10_Y15_N15
\Operation[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(0),
	o => \Operation[0]~input_o\);

-- Location: IOIBUF_X10_Y22_N1
\Operation[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(2),
	o => \Operation[2]~input_o\);

-- Location: IOIBUF_X31_Y12_N15
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X10_Y22_N22
\Operation[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(3),
	o => \Operation[3]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X24_Y17_N6
\ALU_LSB|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~3_combout\ = (\Operation[2]~input_o\ & (((\Operation[3]~input_o\)))) # (!\Operation[2]~input_o\ & (\B[0]~input_o\ & (!\Operation[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~3_combout\);

-- Location: IOIBUF_X22_Y25_N29
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X23_Y21_N16
\ALU_GEN:29:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X29_Y25_N1
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X24_Y21_N16
\ALU_GEN:27:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X27_Y25_N8
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X10_Y20_N1
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X6_Y10_N29
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X6_Y10_N15
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X16_Y14_N24
\ALU_GEN:17:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[17]~input_o\,
	combout => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y17_N8
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X10_Y15_N22
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X11_Y15_N24
\ALU_GEN:14:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ = \A[14]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y15_N1
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X13_Y25_N8
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X13_Y25_N29
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X13_Y22_N24
\ALU_GEN:12:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[12]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X19_Y25_N1
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X19_Y25_N22
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X19_Y21_N8
\ALU_GEN:11:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y21_N1
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X14_Y21_N24
\ALU_GEN:8:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ = \A[8]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => \Operation[3]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X11_Y25_N29
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X10_Y20_N8
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X10_Y18_N8
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X10_Y16_N1
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X11_Y18_N8
\ALU_GEN:6:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datac => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y19_N8
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X10_Y19_N1
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X14_Y19_N24
\ALU_GEN:5:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X17_Y25_N1
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X17_Y19_N24
\ALU_GEN:3:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X17_Y25_N15
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X31_Y15_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X31_Y17_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X23_Y17_N24
\ALU_GEN:1:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y17_N8
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X24_Y17_N18
\ALU_LSB|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ = (\B[0]~input_o\ & ((\Operation[3]~input_o\ $ (\A[0]~input_o\)))) # (!\B[0]~input_o\ & (\Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ & ((\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[1]~input_o\)))) # (!\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ 
-- & (\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datac => \B[1]~input_o\,
	datad => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y15_N15
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X22_Y15_N24
\ALU_GEN:2:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X22_Y15_N10
\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\) # (\B[2]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ & (\B[2]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X17_Y19_N2
\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[3]~input_o\)))) # 
-- (!\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X17_Y25_N22
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X17_Y21_N16
\ALU_GEN:4:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X17_Y21_N2
\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\) # (\B[4]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ & (\B[4]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X14_Y19_N10
\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\B[5]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\B[5]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y18_N2
\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[6]~input_o\)))) # 
-- (!\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y20_N22
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X11_Y20_N24
\ALU_GEN:7:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y20_N10
\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\) # (\B[7]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ & (\B[7]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X14_Y21_N2
\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[8]~input_o\)))) # 
-- (!\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	datac => \B[8]~input_o\,
	datad => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X22_Y25_N22
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X22_Y21_N8
\ALU_GEN:9:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X22_Y25_N15
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X22_Y21_N10
\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\) # (\B[9]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ & (\B[9]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	datac => \B[9]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X24_Y25_N8
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X20_Y21_N0
\ALU_GEN:10:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X27_Y25_N22
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X20_Y21_N18
\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[10]~input_o\)))) # 
-- (!\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\B[11]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\B[11]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X13_Y22_N18
\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\B[12]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\B[12]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X3_Y10_N29
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X12_Y18_N24
\ALU_GEN:13:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ = \A[13]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X6_Y10_N22
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X12_Y18_N18
\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[13]~input_o\)))) # 
-- (!\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datad => \B[13]~input_o\,
	combout => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y15_N2
\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[14]~input_o\)))) # 
-- (!\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datac => \B[14]~input_o\,
	datad => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y17_N1
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X11_Y17_N24
\ALU_GEN:15:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ = \A[15]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\) # (\B[15]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ & (\B[15]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y17_N22
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X31_Y17_N1
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X16_Y17_N24
\ALU_GEN:16:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datad => \A[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[16]~input_o\)))) # 
-- (!\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Operation[2]~input_o\,
	datac => \B[16]~input_o\,
	datad => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y14_N15
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X16_Y14_N2
\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[17]~input_o\)))) # 
-- (!\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \B[17]~input_o\,
	combout => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X19_Y0_N8
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X18_Y14_N24
\ALU_GEN:18:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datac => \A[18]~input_o\,
	combout => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X18_Y14_N2
\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[18]~input_o\)))) # 
-- (!\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[18]~input_o\,
	datac => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y12_N1
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X23_Y15_N24
\ALU_GEN:19:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y15_N1
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X23_Y15_N2
\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\) # (\B[19]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ & (\B[19]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	datac => \B[19]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y20_N22
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X23_Y18_N8
\ALU_GEN:20:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X27_Y25_N1
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X23_Y18_N26
\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[20]~input_o\)))) # 
-- (!\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X11_Y25_N22
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X15_Y25_N22
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X15_Y22_N24
\ALU_GEN:21:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y22_N18
\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\) # (\B[21]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ & (\B[21]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \B[21]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y20_N15
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X15_Y20_N24
\ALU_GEN:22:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ = \A[22]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y20_N18
\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[22]~input_o\)))) # 
-- (!\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[22]~input_o\,
	datac => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y22_N15
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X31_Y22_N1
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X16_Y22_N24
\ALU_GEN:23:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\) # (\B[23]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ & (\B[23]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \B[23]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y21_N22
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X13_Y25_N15
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X14_Y18_N24
\ALU_GEN:24:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X14_Y18_N10
\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\) # (\B[24]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ & (\B[24]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \B[24]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X15_Y25_N29
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X15_Y21_N24
\ALU_GEN:25:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datad => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y21_N26
\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\) # (\B[25]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ & (\B[25]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X19_Y25_N15
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X19_Y25_N8
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X18_Y21_N16
\ALU_GEN:26:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ = \A[26]~input_o\ $ (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X18_Y21_N2
\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[26]~input_o\)))) # 
-- (!\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Operation[2]~input_o\,
	datac => \B[26]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[27]~input_o\)))) # 
-- (!\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datac => \B[27]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X24_Y25_N1
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X24_Y21_N20
\ALU_GEN:28:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \A[28]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X24_Y25_N22
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X24_Y21_N14
\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\) # (\Operation[2]~input_o\ $ (\B[28]~input_o\)))) # 
-- (!\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ & (\Operation[2]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datac => \Operation[2]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y22_N22
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X23_Y21_N26
\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[2]~input_o\ $ (\B[29]~input_o\)))) # 
-- (!\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Operation[2]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y21_N1
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X27_Y25_N15
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X23_Y21_N28
\ALU_GEN:30:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ = \Operation[3]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[3]~input_o\,
	datac => \A[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y21_N30
\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\) # (\B[30]~input_o\ $ (\Operation[2]~input_o\)))) # 
-- (!\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ & (\B[30]~input_o\ $ (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \B[30]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y14_N8
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X31_Y13_N8
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X24_Y17_N28
\ALU_LSB|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~2_combout\ = \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~2_combout\);

-- Location: IOIBUF_X31_Y19_N22
\Operation[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(1),
	o => \Operation[1]~input_o\);

-- Location: LCCOMB_X24_Y17_N26
\ALU_LSB|Operation_Select|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~7_combout\ = (!\Operation[3]~input_o\ & (\Operation[1]~input_o\ & (\ALU_LSB|Operation_Select|Mux0~3_combout\ $ (!\ALU_LSB|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~3_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~2_combout\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~7_combout\);

-- Location: LCCOMB_X24_Y17_N0
\ALU_LSB|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~4_combout\ = (\Operation[3]~input_o\ & (\Operation[2]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))) # (!\Operation[3]~input_o\ & (\B[0]~input_o\ $ (((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y17_N2
\ALU_LSB|Operation_Select|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~5_combout\ = (\ALU_LSB|Operation_Select|Mux0~3_combout\ & (!\ALU_LSB|Operation_Select|Mux0~4_combout\ & ((!\Operation[1]~input_o\)))) # (!\ALU_LSB|Operation_Select|Mux0~3_combout\ & (\ALU_LSB|Operation_Select|Mux0~4_combout\ 
-- & (\Operation[0]~input_o\ $ (\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~3_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~4_combout\,
	datac => \Operation[0]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y17_N4
\ALU_LSB|Operation_Select|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~6_combout\ = (\Operation[0]~input_o\ & ((\Operation[2]~input_o\ & (\ALU_LSB|Operation_Select|Mux0~7_combout\)) # (!\Operation[2]~input_o\ & ((\ALU_LSB|Operation_Select|Mux0~5_combout\))))) # (!\Operation[0]~input_o\ & 
-- (((\ALU_LSB|Operation_Select|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~7_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~5_combout\,
	combout => \ALU_LSB|Operation_Select|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y17_N22
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ = (\Operation[0]~input_o\ & (!\Operation[2]~input_o\ & (!\Operation[3]~input_o\ & !\Operation[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X23_Y17_N4
\ALU_GEN:1:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y17_N10
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:1:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13_combout\);

-- Location: LCCOMB_X24_Y17_N24
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ = (!\Operation[3]~input_o\ & \Operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X23_Y17_N14
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:1:ALU_inst|B_mux|O~0_combout\ $ (\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\,
	datad => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X24_Y17_N16
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ = (\Operation[1]~input_o\) # (\Operation[2]~input_o\ $ (\Operation[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X23_Y17_N12
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:1:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|B_mux|O~0_combout\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14_combout\);

-- Location: LCCOMB_X23_Y17_N0
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10_combout\) # 
-- (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~13_combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~14_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y15_N28
\ALU_GEN:2:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:2:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X22_Y15_N22
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ 
-- (\ALU_GEN:2:ALU_inst|B_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X22_Y15_N26
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:2:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:2:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X22_Y15_N8
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Operation[0]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X17_Y19_N28
\ALU_GEN:3:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\ = \B[3]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:3:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X17_Y19_N26
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:3:ALU_inst|B_mux|O~0_combout\) # (\A[3]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X17_Y19_N6
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:3:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X17_Y19_N8
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X17_Y21_N4
\ALU_GEN:4:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X17_Y21_N12
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:4:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X17_Y21_N26
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:4:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X17_Y21_N6
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:4:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ 
-- (\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:4:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X17_Y21_N24
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X14_Y19_N28
\ALU_GEN:5:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X14_Y19_N12
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:5:ALU_inst|B_mux|O~0_combout\ & (\A[5]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X14_Y19_N26
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:5:ALU_inst|B_mux|O~0_combout\) # (\A[5]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X14_Y19_N6
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:5:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X14_Y19_N16
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X11_Y18_N28
\ALU_GEN:6:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\ = \B[6]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:6:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y18_N10
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:6:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\,
	datac => \A[6]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X11_Y18_N12
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:6:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:6:ALU_inst|B_mux|O~0_combout\,
	datac => \A[6]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X11_Y18_N24
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X11_Y20_N28
\ALU_GEN:7:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\ = \B[7]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:7:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\,
	datad => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y20_N26
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:7:ALU_inst|B_mux|O~0_combout\) # (\A[7]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X11_Y20_N12
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:7:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\A[7]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALU_GEN:7:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X11_Y20_N0
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X14_Y21_N28
\ALU_GEN:8:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\ = \B[8]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X14_Y21_N6
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:8:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X14_Y21_N26
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:8:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X14_Y21_N12
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:8:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ALU_GEN:8:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X14_Y21_N8
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X22_Y21_N28
\ALU_GEN:9:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X22_Y21_N12
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:9:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X22_Y21_N26
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:9:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X22_Y21_N6
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:9:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:9:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X22_Y21_N24
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X20_Y21_N28
\ALU_GEN:10:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X20_Y21_N6
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:10:ALU_inst|B_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X20_Y21_N14
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:10:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X20_Y21_N12
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:10:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:10:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X20_Y21_N24
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X19_Y21_N4
\ALU_GEN:11:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datad => \B[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X19_Y21_N12
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:11:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\,
	datad => \A[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X19_Y21_N22
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:11:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\,
	datad => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X19_Y21_N10
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:11:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|B_mux|O~0_combout\,
	datad => \A[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X19_Y21_N24
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X13_Y22_N12
\ALU_GEN:12:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\ = \B[12]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X13_Y22_N28
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:12:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\A[12]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\,
	datab => \A[12]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X13_Y22_N26
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:12:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \A[12]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X13_Y22_N6
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:12:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X13_Y22_N0
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X12_Y18_N12
\ALU_GEN:13:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datad => \B[13]~input_o\,
	combout => \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X12_Y18_N10
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:13:ALU_inst|B_mux|O~0_combout\) # (\A[13]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\,
	datab => \A[13]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X12_Y18_N28
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:13:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \A[13]~input_o\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X12_Y18_N6
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:13:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X12_Y18_N16
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X11_Y15_N12
\ALU_GEN:14:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datad => \B[14]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y15_N6
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:14:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y15_N28
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:14:ALU_inst|B_mux|O~0_combout\ & (\A[14]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X11_Y15_N10
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:14:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \A[14]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:14:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X11_Y15_N8
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X11_Y17_N12
\ALU_GEN:15:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\ = \B[15]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X11_Y17_N10
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:15:ALU_inst|B_mux|O~0_combout\) # (\A[15]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X11_Y17_N28
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:15:ALU_inst|B_mux|O~0_combout\ & (\A[15]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X11_Y17_N6
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:15:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y17_N0
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X16_Y17_N28
\ALU_GEN:16:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\ = \B[16]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X16_Y17_N12
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:16:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \A[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X16_Y17_N6
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:16:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X16_Y17_N10
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:16:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:16:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \A[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X16_Y17_N16
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X16_Y14_N28
\ALU_GEN:17:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datad => \B[17]~input_o\,
	combout => \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X16_Y14_N10
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:17:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[17]~input_o\,
	datad => \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X16_Y14_N6
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:17:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X16_Y14_N12
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:17:ALU_inst|B_mux|O~0_combout\ & (\A[17]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:17:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X16_Y14_N16
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X18_Y14_N28
\ALU_GEN:18:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\ = \B[18]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X18_Y14_N12
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:18:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\,
	datac => \A[18]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X18_Y14_N26
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:18:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\,
	datac => \A[18]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X18_Y14_N6
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:18:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ 
-- (\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:18:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X18_Y14_N16
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X23_Y15_N28
\ALU_GEN:19:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \B[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:19:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\,
	datac => \A[19]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X23_Y15_N26
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:19:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[19]~input_o\,
	datad => \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X23_Y15_N6
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:19:ALU_inst|B_mux|O~0_combout\ $ 
-- (\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:19:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X23_Y15_N8
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X23_Y18_N12
\ALU_GEN:20:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:20:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datad => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X23_Y18_N28
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:20:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[20]~input_o\,
	datad => \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X23_Y18_N10
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:20:ALU_inst|B_mux|O~0_combout\) # (\A[20]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \A[20]~input_o\,
	datad => \Operation[3]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X23_Y18_N0
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X15_Y22_N12
\ALU_GEN:21:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y22_N28
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:21:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \A[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X15_Y22_N26
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:21:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \A[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X15_Y22_N6
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:21:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X15_Y22_N8
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X15_Y20_N12
\ALU_GEN:22:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\ = \B[22]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y20_N6
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:22:ALU_inst|B_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X15_Y20_N28
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:22:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\A[22]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\,
	datab => \A[22]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X15_Y20_N10
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:22:ALU_inst|B_mux|O~0_combout\) # (\A[22]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|B_mux|O~0_combout\,
	datab => \A[22]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X15_Y20_N0
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X16_Y22_N12
\ALU_GEN:23:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X16_Y22_N28
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:23:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X16_Y22_N26
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:23:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \A[23]~input_o\,
	datad => \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X16_Y22_N6
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:23:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X16_Y22_N16
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X14_Y18_N12
\ALU_GEN:24:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X14_Y18_N6
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:24:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X14_Y18_N26
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:24:ALU_inst|B_mux|O~0_combout\) # (\A[24]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X14_Y18_N28
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:24:ALU_inst|B_mux|O~0_combout\ & (\A[24]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:24:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X14_Y18_N0
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X15_Y21_N4
\ALU_GEN:25:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\ = \B[25]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X15_Y21_N6
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11_combout\ = (\ALU_GEN:25:ALU_inst|B_mux|O~0_combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\Operation[3]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X15_Y21_N22
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:25:ALU_inst|B_mux|O~0_combout\ $ (\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ 
-- (\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datab => \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X15_Y21_N12
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:25:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \Operation[3]~input_o\,
	datac => \ALU_GEN:25:ALU_inst|B_mux|O~0_combout\,
	datad => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X15_Y21_N16
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X18_Y21_N12
\ALU_GEN:26:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[26]~input_o\,
	combout => \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X18_Y21_N10
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:26:ALU_inst|B_mux|O~0_combout\) # (\Operation[3]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \A[26]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X18_Y21_N4
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:26:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \A[26]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X18_Y21_N6
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:26:ALU_inst|B_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:26:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X18_Y21_N24
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11_combout\) # 
-- (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \Operation[0]~input_o\,
	datac => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~8_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y21_N0
\ALU_GEN:27:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\ = \B[27]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:27:ALU_inst|B_mux|O~0_combout\) # (\A[27]~input_o\ $ (\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \Operation[3]~input_o\,
	datad => \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X24_Y21_N2
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & (\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ $ 
-- (\ALU_GEN:27:ALU_inst|B_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datad => \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\ & (\ALU_GEN:27:ALU_inst|B_mux|O~0_combout\ & (\Operation[3]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \ALU_GEN:27:ALU_inst|B_mux|O~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X24_Y21_N28
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\ = (\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10_combout\) # ((!\Operation[0]~input_o\ & ((\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8_combout\) # 
-- (\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \Operation[0]~input_o\,
	datad => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y21_N22
\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Operation[2]~input_o\ $ (\A[28]~input_o\ $ (\Operation[3]~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \A[28]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ = (!\Operation[0]~input_o\ & (!\Operation[3]~input_o\ & \Operation[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y21_N6
\ALU_GEN:28:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\Operation[0]~input_o\ & (!\Operation[1]~input_o\ & (\Operation[2]~input_o\ $ (!\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[0]~input_o\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y21_N10
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:28:ALU_inst|B_mux|O~0_combout\ & ((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\) # ((\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ & 
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:28:ALU_inst|B_mux|O~0_combout\ & (\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y21_N8
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\) # ((\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ $ 
-- (\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y21_N0
\ALU_GEN:29:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|B_mux|O~0_combout\ = \Operation[2]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[2]~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y21_N10
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & ((\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\) # ((\ALU_GEN:29:ALU_inst|B_mux|O~0_combout\)))) # 
-- (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & (\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:29:ALU_inst|B_mux|O~0_combout\ & \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datac => \ALU_GEN:29:ALU_inst|B_mux|O~0_combout\,
	datad => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[29]~input_o\ $ (\Operation[3]~input_o\ $ (\Operation[2]~input_o\ $ (\B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Operation[3]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X23_Y21_N14
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\) # ((\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ $ 
-- (\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datac => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y21_N20
\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\Operation[2]~input_o\ $ (\Operation[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[3]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X23_Y21_N8
\ALU_GEN:30:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|B_mux|O~0_combout\ = \B[30]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|B_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\ = (\ALU_GEN:30:ALU_inst|B_mux|O~0_combout\ & ((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\) # ((\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\ & 
-- \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\)))) # (!\ALU_GEN:30:ALU_inst|B_mux|O~0_combout\ & (((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\ & \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|B_mux|O~0_combout\,
	datab => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\) # ((\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ $ 
-- (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datac => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\ALU_MSB|Operation_Select|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~8_combout\ = (\Operation[3]~input_o\ & (!\Operation[0]~input_o\ & (!\B[31]~input_o\ & !\A[31]~input_o\))) # (!\Operation[3]~input_o\ & ((\Operation[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # 
-- (!\Operation[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \Operation[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_MSB|Operation_Select|Mux0~8_combout\);

-- Location: LCCOMB_X24_Y17_N14
\ALU_MSB|Operation_Select|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~9_combout\ = (\ALU_MSB|Operation_Select|Mux0~8_combout\ & (!\Operation[1]~input_o\ & (\Operation[2]~input_o\ $ (!\Operation[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_MSB|Operation_Select|Mux0~8_combout\,
	datac => \Operation[3]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_MSB|Operation_Select|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y17_N10
\ALU_MSB|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|B_mux|O~0_combout\ = \B[31]~input_o\ $ (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_MSB|B_mux|O~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\ALU_MSB|FullAddSub|full_adder_inst|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\ = \ALU_MSB|B_mux|O~0_combout\ $ (\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Operation[3]~input_o\ $ (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|B_mux|O~0_combout\,
	datab => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\);

-- Location: LCCOMB_X24_Y17_N30
\ALU_MSB|Operation_Select|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~7_combout\ = (\ALU_MSB|Operation_Select|Mux0~9_combout\) # ((!\Operation[0]~input_o\ & (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\ & \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~8_combout\,
	datac => \ALU_MSB|Operation_Select|Mux0~9_combout\,
	datad => \ALU_MSB|FullAddSub|full_adder_inst|sum~combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~7_combout\);

-- Location: LCCOMB_X24_Y17_N8
\ALU_MSB|OverflowDetect|overflow\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|OverflowDetect|overflow~combout\ = (\ALU_MSB|B_mux|O~0_combout\ & ((\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Operation[3]~input_o\ $ (!\A[31]~input_o\)))) # (!\ALU_MSB|B_mux|O~0_combout\ & ((\Operation[3]~input_o\ $ 
-- (\A[31]~input_o\)) # (!\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|B_mux|O~0_combout\,
	datab => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Operation[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_MSB|OverflowDetect|overflow~combout\);

-- Location: LCCOMB_X17_Y18_N6
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y18_N0
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y18_N10
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\ALU_LSB|Operation_Select|Mux0~6_combout\ & (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\ & (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ & !\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~6_combout\,
	datab => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y18_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y18_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y21_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y21_N10
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\ & !\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~9_combout\,
	datad => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y18_N4
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y18_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\ & (!\ALU_MSB|Operation_Select|Mux0~7_combout\ & !\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~9_combout\,
	datab => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~9_combout\,
	datac => \ALU_MSB|Operation_Select|Mux0~7_combout\,
	datad => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~9_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y18_N30
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~9_combout\ & (\Equal0~4_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X0_Y3_N8
\Ainvert~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ainvert,
	o => \Ainvert~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\Binvert~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Binvert,
	o => \Binvert~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_Result(16) <= \Result[16]~output_o\;

ww_Result(17) <= \Result[17]~output_o\;

ww_Result(18) <= \Result[18]~output_o\;

ww_Result(19) <= \Result[19]~output_o\;

ww_Result(20) <= \Result[20]~output_o\;

ww_Result(21) <= \Result[21]~output_o\;

ww_Result(22) <= \Result[22]~output_o\;

ww_Result(23) <= \Result[23]~output_o\;

ww_Result(24) <= \Result[24]~output_o\;

ww_Result(25) <= \Result[25]~output_o\;

ww_Result(26) <= \Result[26]~output_o\;

ww_Result(27) <= \Result[27]~output_o\;

ww_Result(28) <= \Result[28]~output_o\;

ww_Result(29) <= \Result[29]~output_o\;

ww_Result(30) <= \Result[30]~output_o\;

ww_Result(31) <= \Result[31]~output_o\;

ww_Set <= \Set~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


