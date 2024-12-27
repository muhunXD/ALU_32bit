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

-- DATE "12/28/2024 02:29:46"

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
	Overflow : OUT std_logic;
	Zero : OUT std_logic
	);
END ALU101;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Binvert	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ainvert	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Ainvert~input_o\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \Binvert~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|B_mux|O~0_combout\ : std_logic;
SIGNAL \Operation[3]~input_o\ : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ : std_logic;
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \Operation[2]~input_o\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:0:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ALU_MSB|A_mux|O~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_MSB|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\ : std_logic;
SIGNAL \ALU_MSB|FullAdder_Add|sum~combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_MSB|OverflowDetect|overflow~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;

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
Overflow <= ww_Overflow;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
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

-- Location: IOOBUF_X31_Y15_N16
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\,
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
	i => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X31_Y20_N16
\Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\Result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\Result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\Result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\Result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\Result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\Result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\Result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\Result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\Result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[16]~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\Result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[17]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\Result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[18]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\Result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[19]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\Result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[20]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\Result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[21]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\Result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[22]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\Result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[23]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\Result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[24]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\Result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[25]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\Result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[26]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\Result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[27]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[28]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\Result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[29]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\Result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[30]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\Result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|Operation_Select|Mux0~combout\,
	devoe => ww_devoe,
	o => \Result[31]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\Overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|OverflowDetect|overflow~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X24_Y25_N2
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

-- Location: IOIBUF_X31_Y4_N8
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

-- Location: IOIBUF_X31_Y7_N22
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

-- Location: LCCOMB_X29_Y12_N10
\ALU_GEN:0:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\ = \A[0]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y7_N8
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

-- Location: LCCOMB_X29_Y12_N24
\ALU_GEN:0:ALU_inst|B_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|B_mux|O~0_combout\ = \Binvert~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Binvert~input_o\,
	datad => \B[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|B_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y4_N1
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

-- Location: IOIBUF_X31_Y5_N15
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

-- Location: LCCOMB_X29_Y12_N0
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ = (\Operation[3]~input_o\) # (\Operation[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datac => \Operation[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\);

-- Location: IOIBUF_X31_Y12_N22
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

-- Location: IOIBUF_X31_Y20_N22
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

-- Location: LCCOMB_X29_Y12_N12
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ = (\Operation[1]~input_o\) # (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operation[1]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X29_Y12_N28
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:0:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16_combout\);

-- Location: LCCOMB_X29_Y12_N14
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\ = (!\Operation[1]~input_o\ & (!\Operation[0]~input_o\ & \Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[1]~input_o\,
	datac => \Operation[0]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\);

-- Location: LCCOMB_X29_Y12_N30
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17_combout\ = (\ALU_GEN:0:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[0]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17_combout\);

-- Location: LCCOMB_X29_Y12_N18
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ = (\Operation[3]~input_o\) # ((\Operation[1]~input_o\ & !\Operation[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \Operation[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\);

-- Location: LCCOMB_X29_Y12_N4
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~16_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~17_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\);

-- Location: LCCOMB_X29_Y12_N22
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ = (!\Operation[3]~input_o\ & (!\Operation[0]~input_o\ & ((\Operation[1]~input_o\) # (!\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \Operation[0]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\);

-- Location: LCCOMB_X29_Y12_N16
\ALU_GEN:0:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\ $ (((\ALU_GEN:0:ALU_inst|B_mux|O~0_combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))) 
-- # (!\ALU_GEN:0:ALU_inst|A_mux|O~0_combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\ & ((\ALU_GEN:0:ALU_inst|B_mux|O~0_combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|B_mux|O~0_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~14_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y5_N22
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

-- Location: LCCOMB_X28_Y12_N10
\ALU_GEN:1:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ = \A[1]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X29_Y12_N26
\ALU_GEN:0:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:0:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[0]~input_o\ & (\Ainvert~input_o\ $ (\A[0]~input_o\)))) # (!\Binvert~input_o\ & (\B[0]~input_o\ & (\Ainvert~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ALU_GEN:0:ALU_inst|AndOut~combout\);

-- Location: IOIBUF_X31_Y12_N1
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

-- Location: LCCOMB_X28_Y12_N12
\ALU_GEN:1:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:0:ALU_inst|AndOut~combout\ $ (\B[1]~input_o\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|AndOut~combout\,
	datac => \B[1]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y12_N24
\ALU_GEN:1:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[1]~input_o\ & (\A[1]~input_o\ $ (\Ainvert~input_o\)))) # (!\Binvert~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y12_N6
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\) # (\B[1]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datab => \B[1]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y12_N0
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\) # ((\B[1]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \B[1]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y12_N26
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y12_N20
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:1:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:1:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:1:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y21_N15
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

-- Location: LCCOMB_X27_Y17_N10
\ALU_GEN:2:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X24_Y25_N29
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

-- Location: LCCOMB_X28_Y12_N14
\ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:0:ALU_inst|AndOut~combout\) # (\B[1]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:1:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:0:ALU_inst|AndOut~combout\ & (\B[1]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|AndOut~combout\,
	datac => \B[1]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X27_Y17_N12
\ALU_GEN:2:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ $ (\B[2]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:2:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X27_Y17_N24
\ALU_GEN:2:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[2]~input_o\ & (\B[2]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[2]~input_o\ & (\B[2]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y17_N0
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\) # ((\B[2]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y17_N6
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\) # (\B[2]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y17_N26
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~0_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y17_N4
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:2:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:2:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:2:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X22_Y25_N29
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

-- Location: LCCOMB_X22_Y17_N10
\ALU_GEN:3:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ = \A[3]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X22_Y25_N8
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

-- Location: LCCOMB_X22_Y17_N6
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\) # (\B[3]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datab => \B[3]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\) # ((\B[3]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datab => \B[3]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y17_N26
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y17_N0
\ALU_GEN:3:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|AndOut~combout\ = (\A[3]~input_o\ & (!\Ainvert~input_o\ & (\B[3]~input_o\ $ (\Binvert~input_o\)))) # (!\A[3]~input_o\ & (\Ainvert~input_o\ & (\B[3]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y17_N30
\ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[2]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:2:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[2]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|A_mux|O~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:1:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\ALU_GEN:3:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ $ (\B[3]~input_o\ $ (\ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datab => \B[3]~input_o\,
	datac => \ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X22_Y17_N20
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:3:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:3:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:3:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:3:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y19_N22
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

-- Location: LCCOMB_X25_Y15_N10
\ALU_GEN:4:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[3]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:3:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[3]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|A_mux|O~0_combout\,
	datab => \B[3]~input_o\,
	datac => \ALU_GEN:2:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y22_N15
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

-- Location: LCCOMB_X25_Y15_N12
\ALU_GEN:4:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X25_Y15_N24
\ALU_GEN:4:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[4]~input_o\ & (\Ainvert~input_o\ $ (\A[4]~input_o\)))) # (!\Binvert~input_o\ & (\B[4]~input_o\ & (\Ainvert~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y15_N6
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[4]~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y15_N26
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y15_N20
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:4:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:4:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:4:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y15_N22
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

-- Location: LCCOMB_X27_Y15_N26
\ALU_GEN:5:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datad => \A[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X25_Y15_N22
\ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[4]~input_o\)))) # (!\ALU_GEN:4:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:3:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y15_N1
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

-- Location: LCCOMB_X27_Y15_N12
\ALU_GEN:5:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X27_Y15_N24
\ALU_GEN:5:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|AndOut~combout\ = (\B[5]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y15_N6
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y15_N0
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[5]~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y15_N10
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y15_N4
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:5:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:5:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:5:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y15_N8
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

-- Location: IOIBUF_X10_Y15_N22
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

-- Location: LCCOMB_X20_Y15_N10
\ALU_GEN:6:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X20_Y15_N6
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\) # (\B[6]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y15_N0
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\) # (\B[6]~input_o\ $ (\Binvert~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y15_N26
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X20_Y15_N24
\ALU_GEN:6:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|AndOut~combout\ = (\B[6]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[6]~input_o\)))) # (!\B[6]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y15_N22
\ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[5]~input_o\)))) # (!\ALU_GEN:5:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:4:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X20_Y15_N12
\ALU_GEN:6:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAdder_Add|sum~combout\ = \B[6]~input_o\ $ (\ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X20_Y15_N4
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:6:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:6:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:6:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:6:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X19_Y25_N29
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

-- Location: LCCOMB_X23_Y16_N10
\ALU_GEN:7:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ = \A[7]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y16_N8
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

-- Location: LCCOMB_X23_Y16_N6
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\) # (\B[7]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	datab => \B[7]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\) # ((\B[7]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	datab => \B[7]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y16_N26
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ALU_GEN:7:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[7]~input_o\ & (\Binvert~input_o\ $ (\B[7]~input_o\)))) # (!\Ainvert~input_o\ & (\A[7]~input_o\ & (\Binvert~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[7]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X20_Y15_N30
\ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\ & ((\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\) # (\B[6]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\ & 
-- (\ALU_GEN:6:ALU_inst|A_mux|O~0_combout\ & (\B[6]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \ALU_GEN:5:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:6:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\ALU_GEN:7:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[7]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[7]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:7:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X23_Y16_N28
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:7:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:7:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:7:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:7:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y13_N22
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

-- Location: LCCOMB_X28_Y13_N10
\ALU_GEN:8:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\ & ((\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\) # (\B[7]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\ & 
-- (\ALU_GEN:7:ALU_inst|A_mux|O~0_combout\ & (\B[7]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[7]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:7:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y13_N1
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

-- Location: LCCOMB_X28_Y13_N12
\ALU_GEN:8:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y13_N24
\ALU_GEN:8:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|AndOut~combout\ = (\B[8]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[8]~input_o\)))) # (!\B[8]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y13_N0
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[8]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y13_N22
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y13_N26
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y13_N4
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:8:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:8:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:8:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X28_Y13_N6
\ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[8]~input_o\)))) # (!\ALU_GEN:8:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:7:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[8]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y9_N8
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

-- Location: IOIBUF_X31_Y9_N15
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

-- Location: LCCOMB_X27_Y9_N10
\ALU_GEN:9:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X27_Y9_N12
\ALU_GEN:9:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[9]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[9]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:9:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X27_Y9_N24
\ALU_GEN:9:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|AndOut~combout\ = (\B[9]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y9_N6
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y9_N0
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[9]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Binvert~input_o\,
	datad => \B[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y9_N26
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y9_N4
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:9:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:9:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:9:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y22_N22
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

-- Location: LCCOMB_X27_Y14_N10
\ALU_GEN:10:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y14_N8
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

-- Location: LCCOMB_X27_Y9_N22
\ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\ & ((\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\) # (\B[9]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\ & 
-- (\ALU_GEN:9:ALU_inst|A_mux|O~0_combout\ & (\B[9]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[9]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:9:ALU_inst|A_mux|O~0_combout\,
	combout => \ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X27_Y14_N12
\ALU_GEN:10:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ $ (\B[10]~input_o\ $ (\ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datab => \B[10]~input_o\,
	datac => \ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:10:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X27_Y14_N24
\ALU_GEN:10:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[10]~input_o\ & (\Ainvert~input_o\ $ (\A[10]~input_o\)))) # (!\Binvert~input_o\ & (\B[10]~input_o\ & (\Ainvert~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[10]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y14_N0
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\) # ((\B[10]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datab => \B[10]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y14_N22
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\) # (\B[10]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datab => \B[10]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~1_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datac => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y14_N20
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:10:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:10:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:10:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X19_Y25_N1
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

-- Location: LCCOMB_X24_Y14_N26
\ALU_GEN:11:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ = \A[11]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y21_N22
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

-- Location: LCCOMB_X24_Y14_N6
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datad => \B[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[11]~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datad => \B[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y14_N10
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y14_N24
\ALU_GEN:11:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[11]~input_o\ & (\Ainvert~input_o\ $ (\A[11]~input_o\)))) # (!\Binvert~input_o\ & (\B[11]~input_o\ & (\Ainvert~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[11]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[11]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y14_N6
\ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[10]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:10:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[10]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|A_mux|O~0_combout\,
	datab => \B[10]~input_o\,
	datac => \ALU_GEN:9:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\ALU_GEN:11:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[11]~input_o\ $ (\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[11]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X24_Y14_N20
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:11:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:11:ALU_inst|AndOut~combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:11:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:11:ALU_inst|FullAdder_Add|sum~combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y18_N15
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

-- Location: LCCOMB_X18_Y14_N10
\ALU_GEN:12:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ = \A[12]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\ & ((\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\) # (\B[11]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\ & 
-- (\ALU_GEN:11:ALU_inst|A_mux|O~0_combout\ & (\B[11]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datab => \B[11]~input_o\,
	datac => \ALU_GEN:11:ALU_inst|A_mux|O~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X10_Y18_N8
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

-- Location: LCCOMB_X18_Y14_N12
\ALU_GEN:12:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[12]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X18_Y14_N24
\ALU_GEN:12:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|AndOut~combout\ = (\A[12]~input_o\ & (!\Ainvert~input_o\ & (\B[12]~input_o\ $ (\Binvert~input_o\)))) # (!\A[12]~input_o\ & (\Ainvert~input_o\ & (\B[12]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[12]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:12:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X18_Y14_N6
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\) # (\B[12]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \B[12]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y14_N0
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[12]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[12]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y14_N26
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y14_N28
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:12:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:12:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:12:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y17_N8
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

-- Location: LCCOMB_X18_Y17_N10
\ALU_GEN:13:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[13]~input_o\,
	combout => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X18_Y14_N22
\ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[12]~input_o\)))) # (!\ALU_GEN:12:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:11:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[12]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X17_Y25_N15
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

-- Location: LCCOMB_X18_Y17_N12
\ALU_GEN:13:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[13]~input_o\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \B[13]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X18_Y17_N0
\ALU_GEN:13:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|AndOut~combout\ = (\A[13]~input_o\ & (!\Ainvert~input_o\ & (\B[13]~input_o\ $ (\Binvert~input_o\)))) # (!\A[13]~input_o\ & (\Ainvert~input_o\ & (\B[13]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[13]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X18_Y17_N6
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\) # (\B[13]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datab => \B[13]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y17_N24
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\) # ((\B[13]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datab => \B[13]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y17_N26
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y17_N28
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:13:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:13:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:13:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y17_N1
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

-- Location: LCCOMB_X17_Y17_N10
\ALU_GEN:14:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ = \A[14]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X17_Y25_N8
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

-- Location: LCCOMB_X18_Y17_N22
\ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[13]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:13:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[13]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:12:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \B[13]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X17_Y17_N12
\ALU_GEN:14:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ $ (\B[14]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X17_Y17_N6
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\) # (\B[14]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\) # ((\B[14]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y17_N26
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y17_N24
\ALU_GEN:14:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|AndOut~combout\ = (\A[14]~input_o\ & (!\Ainvert~input_o\ & (\B[14]~input_o\ $ (\Binvert~input_o\)))) # (!\A[14]~input_o\ & (\Ainvert~input_o\ & (\B[14]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:14:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y17_N28
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:14:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:14:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:14:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y20_N1
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

-- Location: LCCOMB_X17_Y16_N10
\ALU_GEN:15:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ = \A[15]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X10_Y15_N1
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

-- Location: LCCOMB_X17_Y16_N6
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\) # (\B[15]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \B[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y16_N0
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\) # ((\B[15]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \B[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y16_N26
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y16_N24
\ALU_GEN:15:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|AndOut~combout\ = (\A[15]~input_o\ & (!\Ainvert~input_o\ & (\B[15]~input_o\ $ (\Binvert~input_o\)))) # (!\A[15]~input_o\ & (\Ainvert~input_o\ & (\B[15]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y17_N30
\ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[14]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:14:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[14]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|A_mux|O~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:13:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X17_Y16_N12
\ALU_GEN:15:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ $ (\B[15]~input_o\ $ (\ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	datab => \B[15]~input_o\,
	datac => \ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X17_Y16_N20
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:15:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:15:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:15:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:15:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y25_N15
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

-- Location: LCCOMB_X25_Y16_N10
\ALU_GEN:16:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ = \A[16]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y21_N1
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

-- Location: LCCOMB_X25_Y16_N0
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[16]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y16_N24
\ALU_GEN:16:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|AndOut~combout\ = (\A[16]~input_o\ & (!\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y16_N14
\ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[15]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:15:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[15]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|A_mux|O~0_combout\,
	datab => \B[15]~input_o\,
	datac => \ALU_GEN:14:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X25_Y16_N12
\ALU_GEN:16:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X25_Y16_N20
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:16:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:16:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:16:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:16:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y0_N15
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

-- Location: IOIBUF_X24_Y0_N8
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

-- Location: LCCOMB_X25_Y8_N24
\ALU_GEN:17:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[17]~input_o\ & (\B[17]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[17]~input_o\ & (\B[17]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[17]~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[17]~input_o\,
	combout => \ALU_GEN:17:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y8_N10
\ALU_GEN:17:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ = \A[17]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X25_Y8_N6
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\) # (\B[17]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datab => \B[17]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y8_N0
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\) # ((\B[17]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datab => \B[17]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y8_N26
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[16]~input_o\)))) # (!\ALU_GEN:16:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:15:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[16]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\ALU_GEN:17:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ $ (\B[17]~input_o\ $ (\ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datab => \B[17]~input_o\,
	datac => \ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X25_Y8_N4
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:17:ALU_inst|FullAdder_Add|sum~combout\))) # 
-- (!\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:17:ALU_inst|AndOut~combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:17:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:17:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y0_N1
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

-- Location: LCCOMB_X24_Y11_N10
\ALU_GEN:18:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ = \A[18]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y11_N22
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

-- Location: LCCOMB_X25_Y8_N22
\ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[17]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:17:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[17]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|A_mux|O~0_combout\,
	datab => \B[17]~input_o\,
	datac => \ALU_GEN:16:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X24_Y11_N20
\ALU_GEN:18:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ $ (\B[18]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	datab => \B[18]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X24_Y11_N0
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\) # ((\B[18]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \B[18]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y11_N22
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\) # (\B[18]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	datab => \B[18]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y11_N26
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y11_N24
\ALU_GEN:18:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[18]~input_o\ & (\A[18]~input_o\ $ (\Ainvert~input_o\)))) # (!\Binvert~input_o\ & (\B[18]~input_o\ & (\A[18]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:18:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y11_N4
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:18:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:18:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:18:ALU_inst|FullAdder_Add|sum~combout\,
	datac => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:18:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y25_N22
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

-- Location: LCCOMB_X24_Y15_N10
\ALU_GEN:19:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ = \A[19]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y15_N8
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

-- Location: LCCOMB_X24_Y11_N6
\ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[18]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:18:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[18]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|A_mux|O~0_combout\,
	datab => \B[18]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:17:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\ALU_GEN:19:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\B[19]~input_o\ $ (\ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \B[19]~input_o\,
	datad => \ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:19:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X24_Y15_N24
\ALU_GEN:19:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|AndOut~combout\ = (\A[19]~input_o\ & (!\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Binvert~input_o\,
	datac => \B[19]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:19:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y15_N0
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\) # ((\B[19]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \B[19]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y15_N22
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\) # (\B[19]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \B[19]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y15_N4
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:19:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:19:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:19:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y19_N15
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

-- Location: LCCOMB_X28_Y15_N10
\ALU_GEN:20:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y19_N1
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

-- Location: LCCOMB_X28_Y15_N6
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[20]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y15_N26
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y15_N24
\ALU_GEN:20:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|AndOut~combout\ = (\B[20]~input_o\ & (!\Binvert~input_o\ & (\A[20]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[20]~input_o\ & (\Binvert~input_o\ & (\A[20]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[20]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:20:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y15_N6
\ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[19]~input_o\)))) # (!\ALU_GEN:19:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \B[19]~input_o\,
	datad => \ALU_GEN:18:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X28_Y15_N12
\ALU_GEN:20:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y15_N20
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:20:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:20:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:20:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:20:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y19_N8
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

-- Location: LCCOMB_X29_Y15_N10
\ALU_GEN:21:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X28_Y15_N14
\ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[20]~input_o\)))) # (!\ALU_GEN:20:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:19:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y22_N1
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

-- Location: LCCOMB_X29_Y15_N12
\ALU_GEN:21:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X29_Y15_N6
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y15_N16
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[21]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y15_N26
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1_combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0_combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~1_combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\ALU_GEN:21:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|AndOut~combout\ = (\A[21]~input_o\ & (!\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[21]~input_o\)))) # (!\A[21]~input_o\ & (\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X29_Y15_N4
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:21:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:21:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:21:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y11_N15
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

-- Location: LCCOMB_X28_Y11_N10
\ALU_GEN:22:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y11_N8
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

-- Location: LCCOMB_X28_Y11_N22
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \B[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y11_N0
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[22]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y11_N26
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y15_N22
\ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[21]~input_o\)))) # (!\ALU_GEN:21:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:20:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[21]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\ALU_GEN:22:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y11_N24
\ALU_GEN:22:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[22]~input_o\ & (\Binvert~input_o\ $ (\B[22]~input_o\)))) # (!\Ainvert~input_o\ & (\A[22]~input_o\ & (\Binvert~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[22]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y11_N12
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:22:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & \ALU_GEN:22:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:22:ALU_inst|FullAdder_Add|sum~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:22:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y3_N1
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

-- Location: LCCOMB_X28_Y7_N10
\ALU_GEN:23:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ = \A[23]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[22]~input_o\)))) # (!\ALU_GEN:22:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:21:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y7_N15
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

-- Location: LCCOMB_X28_Y7_N12
\ALU_GEN:23:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y7_N24
\ALU_GEN:23:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|AndOut~combout\ = (\A[23]~input_o\ & (!\Ainvert~input_o\ & (\B[23]~input_o\ $ (\Binvert~input_o\)))) # (!\A[23]~input_o\ & (\Ainvert~input_o\ & (\B[23]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:23:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y7_N6
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y7_N0
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[23]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y7_N26
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y7_N28
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:23:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:23:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:23:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y9_N1
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

-- Location: LCCOMB_X29_Y9_N26
\ALU_GEN:24:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ = \A[24]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \Ainvert~input_o\,
	combout => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y9_N22
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

-- Location: LCCOMB_X29_Y9_N6
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y9_N24
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[24]~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y9_N10
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\) # (!\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1_combout\)))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y9_N0
\ALU_GEN:24:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[24]~input_o\ & (\Ainvert~input_o\ $ (\A[24]~input_o\)))) # (!\Binvert~input_o\ & (\B[24]~input_o\ & (\Ainvert~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y7_N22
\ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[23]~input_o\)))) # (!\ALU_GEN:23:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:22:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X29_Y9_N28
\ALU_GEN:24:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X29_Y9_N12
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:24:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:24:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:24:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:24:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y5_N1
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

-- Location: LCCOMB_X28_Y9_N10
\ALU_GEN:25:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X29_Y9_N22
\ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[24]~input_o\)))) # (!\ALU_GEN:24:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:23:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y4_N15
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

-- Location: LCCOMB_X28_Y9_N20
\ALU_GEN:25:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[25]~input_o\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \B[25]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:25:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X28_Y9_N6
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\) # (\B[25]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	datab => \B[25]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y9_N16
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\) # ((\B[25]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	datab => \B[25]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y9_N26
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y9_N0
\ALU_GEN:25:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[25]~input_o\ & (\Ainvert~input_o\ $ (\A[25]~input_o\)))) # (!\Binvert~input_o\ & (\B[25]~input_o\ & (\Ainvert~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[25]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X28_Y9_N4
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:25:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:25:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:25:ALU_inst|FullAdder_Add|sum~combout\,
	datac => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:25:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y5_N8
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

-- Location: LCCOMB_X27_Y8_N10
\ALU_GEN:26:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ = \A[26]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y3_N8
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

-- Location: LCCOMB_X28_Y9_N30
\ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[25]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:25:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[25]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:24:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \B[25]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X27_Y8_N12
\ALU_GEN:26:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ $ (\B[26]~input_o\ $ (\ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	datab => \B[26]~input_o\,
	datac => \ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X27_Y8_N24
\ALU_GEN:26:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|AndOut~combout\ = (\A[26]~input_o\ & (!\Ainvert~input_o\ & (\B[26]~input_o\ $ (\Binvert~input_o\)))) # (!\A[26]~input_o\ & (\Ainvert~input_o\ & (\B[26]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[26]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X27_Y8_N6
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\) # (\B[26]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	datab => \B[26]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y8_N0
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\) # ((\B[26]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	datab => \B[26]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y8_N26
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y8_N4
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:26:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:26:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:26:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X22_Y0_N1
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

-- Location: LCCOMB_X23_Y8_N26
\ALU_GEN:27:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ = \A[27]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X27_Y8_N22
\ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[26]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:26:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[26]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|A_mux|O~0_combout\,
	datab => \B[26]~input_o\,
	datac => \ALU_GEN:25:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X22_Y0_N22
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

-- Location: LCCOMB_X23_Y8_N12
\ALU_GEN:27:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ $ (\ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\ $ (\B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X23_Y8_N24
\ALU_GEN:27:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|AndOut~combout\ = (\B[27]~input_o\ & (!\Binvert~input_o\ & (\A[27]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[27]~input_o\ & (\Binvert~input_o\ & (\A[27]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:27:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X23_Y8_N6
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[27]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datac => \Binvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y8_N10
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y8_N20
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:27:ALU_inst|FullAdder_Add|sum~combout\)) # 
-- (!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:27:ALU_inst|AndOut~combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:27:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X22_Y0_N8
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

-- Location: IOIBUF_X24_Y0_N22
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

-- Location: LCCOMB_X23_Y7_N26
\ALU_GEN:28:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ = \A[28]~input_o\ $ (\Ainvert~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X23_Y7_N24
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\ = ((\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\) # (\B[28]~input_o\ $ (\Binvert~input_o\))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datab => \B[28]~input_o\,
	datac => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y7_N22
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\) # (\B[28]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datab => \B[28]~input_o\,
	datac => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y7_N10
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~0_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y7_N0
\ALU_GEN:28:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[28]~input_o\ & (\B[28]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X23_Y8_N30
\ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[27]~input_o\)))) # (!\ALU_GEN:27:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:26:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datac => \Binvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X23_Y7_N12
\ALU_GEN:28:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ $ (\B[28]~input_o\ $ (\ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datab => \B[28]~input_o\,
	datac => \ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X23_Y7_N20
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:28:ALU_inst|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & (\ALU_GEN:28:ALU_inst|AndOut~combout\ & (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:28:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:28:ALU_inst|FullAdder_Add|sum~combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X27_Y0_N8
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

-- Location: LCCOMB_X25_Y7_N10
\ALU_GEN:29:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\);

-- Location: IOIBUF_X31_Y7_N1
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

-- Location: LCCOMB_X25_Y7_N22
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datab => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datac => \Binvert~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y7_N0
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\) # ((\B[29]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datab => \B[29]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y7_N26
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y7_N6
\ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[28]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:28:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[28]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|A_mux|O~0_combout\,
	datab => \B[28]~input_o\,
	datac => \ALU_GEN:27:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X25_Y7_N4
\ALU_GEN:29:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ $ (\B[29]~input_o\ $ (\Binvert~input_o\ $ (\ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datab => \B[29]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:29:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X25_Y7_N24
\ALU_GEN:29:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[29]~input_o\ & (\A[29]~input_o\ $ (\Ainvert~input_o\)))) # (!\Binvert~input_o\ & (\B[29]~input_o\ & (\A[29]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \A[29]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y7_N12
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:29:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\ & \ALU_GEN:29:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_GEN:29:ALU_inst|FullAdder_Add|sum~combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:29:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y12_N8
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

-- Location: LCCOMB_X25_Y12_N10
\ALU_GEN:30:ALU_inst|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datac => \A[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\);

-- Location: LCCOMB_X25_Y7_N6
\ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\B[29]~input_o\ $ (\Binvert~input_o\)))) # (!\ALU_GEN:29:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\B[29]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|A_mux|O~0_combout\,
	datab => \B[29]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_GEN:28:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	combout => \ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: IOIBUF_X31_Y14_N1
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

-- Location: LCCOMB_X25_Y12_N12
\ALU_GEN:30:ALU_inst|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAdder_Add|sum~combout\ = \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ $ (\Binvert~input_o\ $ (\ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X25_Y12_N0
\ALU_GEN:30:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|AndOut~combout\ = (\B[30]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[30]~input_o\)))) # (!\B[30]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[30]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:30:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y12_N6
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \B[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y12_N24
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\ = (\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\) # ((\Binvert~input_o\ $ (\B[30]~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \B[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y12_N26
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((!\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\))) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\)))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~0_combout\,
	datab => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y12_N20
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_GEN:30:ALU_inst|FullAdder_Add|sum~combout\) # ((!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ & (((\ALU_GEN:30:ALU_inst|AndOut~combout\ & \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|FullAdder_Add|sum~combout\,
	datab => \ALU_GEN:30:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y16_N1
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

-- Location: LCCOMB_X22_Y16_N26
\ALU_MSB|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ainvert~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_MSB|A_mux|O~0_combout\);

-- Location: IOIBUF_X22_Y25_N15
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

-- Location: LCCOMB_X22_Y16_N0
\ALU_MSB|Operation_Select|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~1_combout\ = (\ALU_MSB|A_mux|O~0_combout\) # ((\B[31]~input_o\ $ (\Binvert~input_o\)) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|A_mux|O~0_combout\,
	datab => \B[31]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~11_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_MSB|Operation_Select|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y16_N22
\ALU_MSB|Operation_Select|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~0_combout\ = (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\ & ((\ALU_MSB|A_mux|O~0_combout\) # (\B[31]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|A_mux|O~0_combout\,
	datab => \B[31]~input_o\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~10_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_MSB|Operation_Select|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\ALU_MSB|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~2_combout\ = (\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & (!\ALU_MSB|Operation_Select|Mux0~1_combout\)) # 
-- (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\ & ((\ALU_MSB|Operation_Select|Mux0~0_combout\))))) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\ & (((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~12_combout\,
	datab => \ALU_MSB|Operation_Select|Mux0~1_combout\,
	datac => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~13_combout\,
	datad => \ALU_MSB|Operation_Select|Mux0~0_combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\ALU_MSB|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|AndOut~combout\ = (\Binvert~input_o\ & (!\B[31]~input_o\ & (\Ainvert~input_o\ $ (\A[31]~input_o\)))) # (!\Binvert~input_o\ & (\B[31]~input_o\ & (\Ainvert~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[31]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[31]~input_o\,
	combout => \ALU_MSB|AndOut~combout\);

-- Location: LCCOMB_X25_Y12_N30
\ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\ = (\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ & ((\ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\) # (\Binvert~input_o\ $ (\B[30]~input_o\)))) # (!\ALU_GEN:30:ALU_inst|A_mux|O~0_combout\ & 
-- (\ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\Binvert~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|A_mux|O~0_combout\,
	datab => \Binvert~input_o\,
	datac => \ALU_GEN:29:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \B[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\ALU_MSB|FullAdder_Add|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|FullAdder_Add|sum~combout\ = \ALU_MSB|A_mux|O~0_combout\ $ (\B[31]~input_o\ $ (\ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\ $ (\Binvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|A_mux|O~0_combout\,
	datab => \B[31]~input_o\,
	datac => \ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_MSB|FullAdder_Add|sum~combout\);

-- Location: LCCOMB_X22_Y16_N20
\ALU_MSB|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~combout\ = (\ALU_MSB|Operation_Select|Mux0~2_combout\ & (((\ALU_MSB|FullAdder_Add|sum~combout\) # (!\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\)))) # (!\ALU_MSB|Operation_Select|Mux0~2_combout\ & 
-- (\ALU_MSB|AndOut~combout\ & ((\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|Operation_Select|Mux0~2_combout\,
	datab => \ALU_MSB|AndOut~combout\,
	datac => \ALU_MSB|FullAdder_Add|sum~combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~15_combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X22_Y16_N6
\ALU_MSB|OverflowDetect|overflow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|OverflowDetect|overflow~0_combout\ = (\ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\ & ((\B[31]~input_o\ $ (!\Binvert~input_o\)))) # (!\ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\ & (\ALU_MSB|A_mux|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|A_mux|O~0_combout\,
	datab => \B[31]~input_o\,
	datac => \ALU_GEN:30:ALU_inst|FullAdder_Sub|c_out~0_combout\,
	datad => \Binvert~input_o\,
	combout => \ALU_MSB|OverflowDetect|overflow~0_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_MSB|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_MSB|Operation_Select|Mux0~combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X23_Y13_N6
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ & (\Equal0~5_combout\ & !\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \Equal0~5_combout\,
	datad => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X14_Y19_N16
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y13_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:0:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y13_N16
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X28_Y9_N24
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X23_Y13_N12
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~4_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

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

ww_Overflow <= \Overflow~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


