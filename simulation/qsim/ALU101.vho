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

-- DATE "01/02/2025 16:06:37"

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
-- Result[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Binvert	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ainvert	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operation[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Binvert~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \Operation[3]~input_o\ : std_logic;
SIGNAL \Operation[2]~input_o\ : std_logic;
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~15_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~11_combout\ : std_logic;
SIGNAL \Ainvert~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ALU_LSB|A_mux|O~0_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~17_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~10_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~16_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~13_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~12_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~14_combout\ : std_logic;
SIGNAL \ALU_LSB|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|AndOut~combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \ALU_MSB|FullAddSub|b_controlled~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \ALU_MSB|FullAddSub|full_adder_inst|sum~0_combout\ : std_logic;
SIGNAL \ALU_MSB|AndOut~combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~2_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~4_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_MSB|Operation_Select|Mux0~combout\ : std_logic;
SIGNAL \ALU_MSB|FullAddSub|full_adder_inst|c_out~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
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

-- Location: LCCOMB_X11_Y13_N24
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

-- Location: IOOBUF_X15_Y25_N16
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_LSB|Operation_Select|Mux0~combout\,
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

-- Location: IOOBUF_X31_Y15_N23
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

-- Location: IOOBUF_X31_Y13_N9
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

-- Location: IOOBUF_X31_Y12_N2
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

-- Location: IOOBUF_X22_Y25_N23
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

-- Location: IOOBUF_X10_Y19_N16
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

-- Location: IOOBUF_X17_Y25_N30
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

-- Location: IOOBUF_X10_Y22_N9
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

-- Location: IOOBUF_X11_Y25_N16
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

-- Location: IOOBUF_X6_Y10_N2
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

-- Location: IOOBUF_X6_Y10_N16
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

-- Location: IOOBUF_X15_Y0_N2
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

-- Location: IOOBUF_X10_Y15_N9
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

-- Location: IOOBUF_X31_Y15_N16
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

-- Location: IOOBUF_X19_Y25_N23
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

-- Location: IOOBUF_X17_Y25_N2
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

-- Location: IOOBUF_X13_Y25_N23
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

-- Location: IOOBUF_X31_Y12_N16
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

-- Location: IOOBUF_X11_Y25_N23
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

-- Location: IOOBUF_X13_Y25_N9
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

-- Location: IOOBUF_X31_Y13_N2
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

-- Location: IOOBUF_X10_Y21_N2
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

-- Location: IOOBUF_X31_Y21_N23
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

-- Location: IOOBUF_X15_Y25_N2
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

-- Location: IOOBUF_X15_Y25_N9
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

-- Location: IOOBUF_X19_Y25_N16
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

-- Location: IOOBUF_X10_Y22_N16
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

-- Location: IOOBUF_X10_Y22_N23
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

-- Location: IOOBUF_X11_Y25_N30
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

-- Location: IOOBUF_X10_Y15_N23
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

-- Location: IOOBUF_X3_Y10_N2
\Overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_MSB|FullAddSub|full_adder_inst|c_out~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X1_Y10_N23
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

-- Location: IOIBUF_X10_Y20_N1
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

-- Location: IOIBUF_X10_Y16_N1
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

-- Location: LCCOMB_X17_Y16_N24
\ALU_LSB|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\ = \Binvert~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Binvert~input_o\,
	datac => \B[0]~input_o\,
	combout => \ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: IOIBUF_X17_Y0_N15
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

-- Location: IOIBUF_X10_Y16_N8
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

-- Location: IOIBUF_X31_Y20_N15
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

-- Location: IOIBUF_X10_Y21_N8
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

-- Location: LCCOMB_X17_Y16_N28
\ALU_LSB|Operation_Select|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~15_combout\ = (!\Operation[3]~input_o\ & (!\Operation[0]~input_o\ & ((\Operation[1]~input_o\) # (!\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[3]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \Operation[0]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~15_combout\);

-- Location: LCCOMB_X17_Y16_N4
\ALU_LSB|Operation_Select|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~11_combout\ = (!\Operation[0]~input_o\ & (\Operation[2]~input_o\ & !\Operation[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~11_combout\);

-- Location: IOIBUF_X10_Y21_N22
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

-- Location: IOIBUF_X17_Y25_N8
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

-- Location: LCCOMB_X17_Y21_N16
\ALU_LSB|A_mux|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|A_mux|O~0_combout\ = \Ainvert~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ainvert~input_o\,
	datad => \A[0]~input_o\,
	combout => \ALU_LSB|A_mux|O~0_combout\);

-- Location: LCCOMB_X17_Y16_N12
\ALU_LSB|Operation_Select|Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~17_combout\ = ((\ALU_LSB|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[0]~input_o\))) # (!\ALU_LSB|Operation_Select|Mux0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datab => \Binvert~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_LSB|A_mux|O~0_combout\,
	combout => \ALU_LSB|Operation_Select|Mux0~17_combout\);

-- Location: LCCOMB_X17_Y16_N10
\ALU_LSB|Operation_Select|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~10_combout\ = (\Operation[1]~input_o\) # (\Operation[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[1]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~10_combout\);

-- Location: LCCOMB_X17_Y16_N18
\ALU_LSB|Operation_Select|Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~16_combout\ = (!\ALU_LSB|Operation_Select|Mux0~10_combout\ & ((\ALU_LSB|A_mux|O~0_combout\) # (\Binvert~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~10_combout\,
	datab => \Binvert~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_LSB|A_mux|O~0_combout\,
	combout => \ALU_LSB|Operation_Select|Mux0~16_combout\);

-- Location: LCCOMB_X17_Y16_N8
\ALU_LSB|Operation_Select|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~13_combout\ = (\Operation[3]~input_o\) # ((!\Operation[0]~input_o\ & \Operation[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~13_combout\);

-- Location: LCCOMB_X17_Y16_N6
\ALU_LSB|Operation_Select|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~12_combout\ = (\Operation[0]~input_o\) # (\Operation[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[0]~input_o\,
	datac => \Operation[3]~input_o\,
	combout => \ALU_LSB|Operation_Select|Mux0~12_combout\);

-- Location: LCCOMB_X17_Y16_N26
\ALU_LSB|Operation_Select|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~14_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((!\ALU_LSB|Operation_Select|Mux0~12_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~17_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & 
-- (((\ALU_LSB|Operation_Select|Mux0~16_combout\ & \ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~17_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~16_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	combout => \ALU_LSB|Operation_Select|Mux0~14_combout\);

-- Location: LCCOMB_X17_Y16_N30
\ALU_LSB|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|Operation_Select|Mux0~combout\ = (\ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\ & (\ALU_LSB|Operation_Select|Mux0~14_combout\ $ (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_LSB|A_mux|O~0_combout\))))) # 
-- (!\ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\ & (\ALU_LSB|Operation_Select|Mux0~14_combout\ & ((\ALU_LSB|A_mux|O~0_combout\) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~14_combout\,
	datad => \ALU_LSB|A_mux|O~0_combout\,
	combout => \ALU_LSB|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y25_N22
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

-- Location: LCCOMB_X23_Y16_N10
\ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X17_Y16_N0
\ALU_LSB|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ = (\B[0]~input_o\ & ((\Binvert~input_o\ & (\Operation[2]~input_o\)) # (!\Binvert~input_o\ & ((\ALU_LSB|A_mux|O~0_combout\))))) # (!\B[0]~input_o\ & ((\Binvert~input_o\ & ((\ALU_LSB|A_mux|O~0_combout\))) 
-- # (!\Binvert~input_o\ & (\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \ALU_LSB|A_mux|O~0_combout\,
	combout => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y17_N8
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

-- Location: LCCOMB_X23_Y16_N12
\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X23_Y16_N22
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[1]~input_o\)) # (!\B[1]~input_o\))) # (!\Binvert~input_o\ & ((\B[1]~input_o\) # (\Ainvert~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[1]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y16_N6
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y16_N8
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) 
-- # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ALU_GEN:1:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[1]~input_o\ & (\Ainvert~input_o\ $ (\A[1]~input_o\)))) # (!\Binvert~input_o\ & (\B[1]~input_o\ & (\Ainvert~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[1]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X23_Y16_N18
\ALU_GEN:1:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:1:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:1:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y17_N1
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

-- Location: IOIBUF_X31_Y17_N22
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

-- Location: LCCOMB_X24_Y17_N22
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[2]~input_o\ & ((\Ainvert~input_o\ $ (\A[2]~input_o\)) # (!\Binvert~input_o\))) # (!\B[2]~input_o\ & ((\Binvert~input_o\) # (\Ainvert~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y17_N8
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y17_N26
\ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\ = \B[2]~input_o\ $ (\Operation[2]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Operation[2]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[1]~input_o\)))) # 
-- (!\ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:1:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_LSB|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[1]~input_o\,
	combout => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\ALU_GEN:2:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|AndOut~combout\ = (\B[2]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[2]~input_o\)))) # (!\B[2]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y17_N2
\ALU_GEN:2:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:2:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datad => \ALU_GEN:2:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X24_Y17_N28
\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[2]~input_o\)))) # 
-- (!\ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:2:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:1:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y12_N22
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

-- Location: IOIBUF_X31_Y12_N8
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

-- Location: LCCOMB_X25_Y15_N10
\ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Binvert~input_o\,
	datad => \B[3]~input_o\,
	combout => \ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X25_Y15_N28
\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[3]~input_o\ $ (\ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[3]~input_o\,
	datad => \ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\Binvert~input_o\ $ (\B[3]~input_o\)) # (!\A[3]~input_o\))) # (!\Ainvert~input_o\ & ((\A[3]~input_o\) # (\Binvert~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y15_N0
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~2_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X25_Y15_N16
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) 
-- # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y15_N24
\ALU_GEN:3:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[3]~input_o\ & (\Binvert~input_o\ $ (\B[3]~input_o\)))) # (!\Ainvert~input_o\ & (\A[3]~input_o\ & (\Binvert~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ALU_GEN:3:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y15_N26
\ALU_GEN:3:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:3:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datac => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:3:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y13_N22
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

-- Location: LCCOMB_X25_Y13_N10
\ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\B[4]~input_o\ $ (\Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datac => \B[4]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X25_Y15_N20
\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[3]~input_o\)))) # 
-- (!\ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \ALU_GEN:2:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[3]~input_o\,
	datad => \ALU_GEN:3:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y13_N15
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

-- Location: LCCOMB_X25_Y13_N12
\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X25_Y13_N22
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[4]~input_o\ & ((\Ainvert~input_o\ $ (\A[4]~input_o\)) # (!\Binvert~input_o\))) # (!\B[4]~input_o\ & ((\Binvert~input_o\) # (\Ainvert~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y13_N6
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X25_Y13_N8
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) 
-- # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y13_N24
\ALU_GEN:4:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|AndOut~combout\ = (\B[4]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[4]~input_o\)))) # (!\B[4]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X25_Y13_N2
\ALU_GEN:4:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:4:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:4:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y14_N1
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

-- Location: IOIBUF_X31_Y14_N8
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

-- Location: LCCOMB_X24_Y14_N30
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\Binvert~input_o\ $ (\B[5]~input_o\)) # (!\A[5]~input_o\))) # (!\Ainvert~input_o\ & ((\A[5]~input_o\) # (\Binvert~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y14_N24
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y14_N0
\ALU_GEN:5:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[5]~input_o\ & (\Binvert~input_o\ $ (\B[5]~input_o\)))) # (!\Ainvert~input_o\ & (\A[5]~input_o\ & (\Binvert~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y14_N10
\ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X25_Y13_N4
\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[4]~input_o\)))) # 
-- (!\ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:4:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:3:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[4]~input_o\,
	combout => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[5]~input_o\ $ (\Ainvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\ALU_GEN:5:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\))) # 
-- (!\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:5:ALU_inst|AndOut~combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:5:ALU_inst|AndOut~combout\,
	datad => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	combout => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X24_Y25_N1
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

-- Location: LCCOMB_X23_Y19_N10
\ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[6]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Binvert~input_o\,
	combout => \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[5]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[5]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:5:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:4:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X24_Y25_N8
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

-- Location: LCCOMB_X23_Y19_N12
\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\B[6]~input_o\ $ (\Binvert~input_o\)) # (!\A[6]~input_o\))) # (!\Ainvert~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[6]~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y19_N6
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y19_N8
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) 
-- # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y19_N24
\ALU_GEN:6:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[6]~input_o\ & (\B[6]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[6]~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X23_Y19_N2
\ALU_GEN:6:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:6:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:6:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X17_Y25_N22
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

-- Location: IOIBUF_X31_Y19_N22
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

-- Location: LCCOMB_X17_Y19_N22
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[7]~input_o\ & ((\Ainvert~input_o\ $ (\A[7]~input_o\)) # (!\Binvert~input_o\))) # (!\B[7]~input_o\ & ((\Binvert~input_o\) # (\Ainvert~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y19_N6
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y19_N0
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y19_N10
\ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[6]~input_o\)))) # 
-- (!\ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \ALU_GEN:5:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \A[6]~input_o\,
	combout => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X17_Y19_N28
\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\ALU_GEN:7:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|AndOut~combout\ = (\B[7]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[7]~input_o\)))) # (!\B[7]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \Binvert~input_o\,
	datad => \A[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y19_N26
\ALU_GEN:7:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:7:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~3_combout\,
	datab => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:7:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X17_Y19_N12
\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[7]~input_o\)))) # 
-- (!\ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:6:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[7]~input_o\,
	combout => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X15_Y25_N29
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

-- Location: IOIBUF_X10_Y19_N8
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

-- Location: LCCOMB_X18_Y19_N10
\ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\B[8]~input_o\ $ (\Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[8]~input_o\,
	datac => \Operation[2]~input_o\,
	combout => \ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X18_Y19_N12
\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[8]~input_o\ $ (\ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[8]~input_o\,
	datad => \ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X18_Y19_N22
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\A[8]~input_o\ $ (\Ainvert~input_o\)) # (!\B[8]~input_o\))) # (!\Binvert~input_o\ & ((\B[8]~input_o\) # (\A[8]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y19_N6
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X18_Y19_N8
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\)) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) 
-- # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y19_N24
\ALU_GEN:8:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[8]~input_o\ & (\A[8]~input_o\ $ (\Ainvert~input_o\)))) # (!\Binvert~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:8:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X18_Y19_N18
\ALU_GEN:8:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:8:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:8:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y18_N8
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

-- Location: IOIBUF_X10_Y18_N1
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

-- Location: LCCOMB_X13_Y18_N26
\ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\ = \B[9]~input_o\ $ (\Operation[2]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Operation[2]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X18_Y19_N4
\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[8]~input_o\)))) # 
-- (!\ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:7:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[8]~input_o\,
	datad => \ALU_GEN:8:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X13_Y18_N12
\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\A[9]~input_o\ $ (\ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[9]~input_o\,
	datac => \ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X13_Y18_N22
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[9]~input_o\ & ((\Ainvert~input_o\ $ (\A[9]~input_o\)) # (!\Binvert~input_o\))) # (!\B[9]~input_o\ & ((\Binvert~input_o\) # (\Ainvert~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y18_N6
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X13_Y18_N0
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~13_combout\)))) # 
-- (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y18_N24
\ALU_GEN:9:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|AndOut~combout\ = (\B[9]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[9]~input_o\,
	combout => \ALU_GEN:9:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X13_Y18_N10
\ALU_GEN:9:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:9:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:9:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X6_Y10_N22
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

-- Location: IOIBUF_X31_Y14_N15
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

-- Location: LCCOMB_X12_Y14_N26
\ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X13_Y18_N20
\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[9]~input_o\)))) # 
-- (!\ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[9]~input_o\,
	datac => \ALU_GEN:9:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:8:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X12_Y14_N12
\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\A[10]~input_o\ $ (\ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[10]~input_o\,
	datac => \ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X12_Y14_N0
\ALU_GEN:10:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[10]~input_o\ & (\Binvert~input_o\ $ (\B[10]~input_o\)))) # (!\Ainvert~input_o\ & (\A[10]~input_o\ & (\Binvert~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[10]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X12_Y14_N6
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\Binvert~input_o\ $ (\B[10]~input_o\)) # (!\A[10]~input_o\))) # (!\Ainvert~input_o\ & ((\A[10]~input_o\) # (\Binvert~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[10]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y14_N22
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X12_Y14_N24
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\ & \ALU_LSB|Operation_Select|Mux0~11_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ & (\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~4_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y14_N2
\ALU_GEN:10:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:10:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:10:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X1_Y10_N8
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

-- Location: IOIBUF_X3_Y10_N8
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

-- Location: LCCOMB_X11_Y10_N6
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[11]~input_o\ & ((\Binvert~input_o\) # (\A[11]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[11]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y10_N22
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y10_N0
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\ & \ALU_LSB|Operation_Select|Mux0~11_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~4_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y10_N10
\ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\ = \B[11]~input_o\ $ (\Operation[2]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X12_Y14_N20
\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[10]~input_o\)))) # 
-- (!\ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[10]~input_o\,
	datac => \ALU_GEN:10:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:9:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y10_N4
\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\A[11]~input_o\ $ (\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[11]~input_o\,
	datad => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\ALU_GEN:11:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|AndOut~combout\ = (\B[11]~input_o\ & (!\Binvert~input_o\ & (\A[11]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[11]~input_o\ & (\Binvert~input_o\ & (\A[11]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[11]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:11:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X11_Y10_N2
\ALU_GEN:11:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:11:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datad => \ALU_GEN:11:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X1_Y10_N29
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

-- Location: IOIBUF_X1_Y10_N1
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

-- Location: LCCOMB_X12_Y10_N26
\ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \B[12]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[11]~input_o\)))) # 
-- (!\ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:11:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[11]~input_o\,
	datad => \ALU_GEN:10:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X12_Y10_N12
\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[12]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X12_Y10_N0
\ALU_GEN:12:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|AndOut~combout\ = (\A[12]~input_o\ & (!\Ainvert~input_o\ & (\B[12]~input_o\ $ (\Binvert~input_o\)))) # (!\A[12]~input_o\ & (\Ainvert~input_o\ & (\B[12]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:12:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X12_Y10_N6
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\ $ (\Binvert~input_o\)) # (!\Ainvert~input_o\))) # (!\A[12]~input_o\ & ((\Ainvert~input_o\) # (\B[12]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y10_N22
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X12_Y10_N24
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ $ (\ALU_LSB|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y10_N10
\ALU_GEN:12:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:12:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:12:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X17_Y0_N22
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

-- Location: LCCOMB_X12_Y10_N28
\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[12]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[12]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:12:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:11:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X17_Y0_N1
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

-- Location: LCCOMB_X16_Y10_N10
\ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[13]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[13]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X16_Y10_N12
\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\A[13]~input_o\ $ (\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[13]~input_o\,
	datac => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X16_Y10_N24
\ALU_GEN:13:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|AndOut~combout\ = (\B[13]~input_o\ & (!\Binvert~input_o\ & (\A[13]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[13]~input_o\ & (\Binvert~input_o\ & (\A[13]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[13]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X16_Y10_N22
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[13]~input_o\ & ((\Binvert~input_o\) # (\A[13]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[13]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y10_N6
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[1]~input_o\ & !\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[1]~input_o\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y10_N0
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ $ (((\ALU_LSB|Operation_Select|Mux0~12_combout\))))) # 
-- (!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y10_N18
\ALU_GEN:13:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_GEN:13:ALU_inst|AndOut~combout\ & \ALU_LSB|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:13:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X19_Y0_N29
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

-- Location: IOIBUF_X22_Y25_N1
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

-- Location: LCCOMB_X18_Y15_N22
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[14]~input_o\)) # (!\B[14]~input_o\))) # (!\Binvert~input_o\ & ((\B[14]~input_o\) # (\Ainvert~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y15_N6
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X18_Y15_N0
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y10_N4
\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[13]~input_o\)))) # 
-- (!\ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[13]~input_o\,
	datac => \ALU_GEN:12:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \ALU_GEN:13:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X18_Y15_N10
\ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[14]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X18_Y15_N4
\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[14]~input_o\ $ (\ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[14]~input_o\,
	datad => \ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\ALU_GEN:14:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[14]~input_o\ & (\Ainvert~input_o\ $ (\A[14]~input_o\)))) # (!\Binvert~input_o\ & (\B[14]~input_o\ & (\Ainvert~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \ALU_GEN:14:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X18_Y15_N2
\ALU_GEN:14:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:14:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datad => \ALU_GEN:14:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X31_Y15_N8
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

-- Location: IOIBUF_X31_Y15_N1
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

-- Location: LCCOMB_X24_Y15_N26
\ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[15]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X18_Y15_N12
\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[14]~input_o\)))) # 
-- (!\ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[14]~input_o\,
	datad => \ALU_GEN:14:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\A[15]~input_o\ $ (\ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[15]~input_o\,
	datac => \ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X24_Y15_N22
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\B[15]~input_o\ $ (\Binvert~input_o\)) # (!\A[15]~input_o\))) # (!\Ainvert~input_o\ & ((\A[15]~input_o\) # (\B[15]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y15_N6
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y15_N0
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y15_N24
\ALU_GEN:15:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[15]~input_o\ & (\B[15]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[15]~input_o\ & (\B[15]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:15:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X24_Y15_N10
\ALU_GEN:15:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:15:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:15:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X19_Y25_N8
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

-- Location: LCCOMB_X19_Y20_N26
\ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[16]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[16]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: IOIBUF_X19_Y25_N1
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

-- Location: LCCOMB_X24_Y15_N28
\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[15]~input_o\)))) # 
-- (!\ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[15]~input_o\,
	datac => \ALU_GEN:15:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:14:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X19_Y20_N12
\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\A[16]~input_o\ $ (\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[16]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X19_Y20_N22
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[16]~input_o\ & ((\Ainvert~input_o\ $ (\A[16]~input_o\)) # (!\Binvert~input_o\))) # (!\B[16]~input_o\ & ((\Binvert~input_o\) # (\Ainvert~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[16]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y20_N6
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X19_Y20_N0
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y20_N24
\ALU_GEN:16:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|AndOut~combout\ = (\B[16]~input_o\ & (!\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[16]~input_o\)))) # (!\B[16]~input_o\ & (\Binvert~input_o\ & (\Ainvert~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[16]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:16:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X19_Y20_N2
\ALU_GEN:16:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:16:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:16:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X19_Y25_N29
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

-- Location: LCCOMB_X18_Y20_N10
\ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[17]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \B[17]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: IOIBUF_X31_Y20_N22
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

-- Location: LCCOMB_X19_Y20_N4
\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[16]~input_o\)))) # 
-- (!\ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:16:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[16]~input_o\,
	datad => \ALU_GEN:15:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\A[17]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \A[17]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X18_Y20_N22
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\B[17]~input_o\ $ (\Binvert~input_o\)) # (!\A[17]~input_o\))) # (!\Ainvert~input_o\ & ((\A[17]~input_o\) # (\B[17]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y20_N6
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X18_Y20_N8
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y20_N24
\ALU_GEN:17:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[17]~input_o\ & (\B[17]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[17]~input_o\ & (\B[17]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:17:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X18_Y20_N18
\ALU_GEN:17:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:17:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datac => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_GEN:17:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: LCCOMB_X18_Y20_N28
\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[17]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[17]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:17:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \A[17]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:16:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: LCCOMB_X14_Y20_N10
\ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Operation[2]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X14_Y20_N12
\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[18]~input_o\ $ (\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X14_Y20_N0
\ALU_GEN:18:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[18]~input_o\ & (\Ainvert~input_o\ $ (\A[18]~input_o\)))) # (!\Binvert~input_o\ & (\B[18]~input_o\ & (\Ainvert~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ALU_GEN:18:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X14_Y20_N22
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[18]~input_o\)) # (!\B[18]~input_o\))) # (!\Binvert~input_o\ & ((\B[18]~input_o\) # (\Ainvert~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X14_Y20_N6
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X14_Y20_N24
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y20_N2
\ALU_GEN:18:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:18:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:18:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X15_Y0_N8
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

-- Location: LCCOMB_X16_Y12_N10
\ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[19]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X14_Y20_N4
\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\A[18]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\A[18]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ALU_GEN:17:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:18:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X17_Y0_N8
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

-- Location: LCCOMB_X16_Y12_N12
\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X16_Y12_N24
\ALU_GEN:19:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[19]~input_o\ & (\Ainvert~input_o\ $ (\A[19]~input_o\)))) # (!\Binvert~input_o\ & (\B[19]~input_o\ & (\Ainvert~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X16_Y12_N22
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[19]~input_o\)) # (!\B[19]~input_o\))) # (!\Binvert~input_o\ & ((\B[19]~input_o\) # (\Ainvert~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y12_N6
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[1]~input_o\ & !\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[1]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y12_N0
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ $ (\ALU_LSB|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y12_N2
\ALU_GEN:19:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_GEN:19:ALU_inst|AndOut~combout\ & \ALU_LSB|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:19:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~3_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X0_Y8_N8
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

-- Location: LCCOMB_X12_Y12_N10
\ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[20]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[20]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
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

-- Location: LCCOMB_X16_Y12_N28
\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[19]~input_o\)))) # 
-- (!\ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:18:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[19]~input_o\,
	combout => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\A[20]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \A[20]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X12_Y12_N14
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[20]~input_o\)) # (!\B[20]~input_o\))) # (!\Binvert~input_o\ & ((\B[20]~input_o\) # (\Ainvert~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[20]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y12_N6
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~2_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X12_Y12_N24
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~13_combout\)))) # 
-- (!\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y12_N0
\ALU_GEN:20:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[20]~input_o\ & (\Ainvert~input_o\ $ (\A[20]~input_o\)))) # (!\Binvert~input_o\ & (\B[20]~input_o\ & (\Ainvert~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[20]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[20]~input_o\,
	combout => \ALU_GEN:20:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X12_Y12_N2
\ALU_GEN:20:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_GEN:20:ALU_inst|AndOut~combout\ & \ALU_LSB|Operation_Select|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:20:ALU_inst|AndOut~combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	combout => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X12_Y12_N4
\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[20]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[20]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \A[20]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:19:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y15_N1
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

-- Location: IOIBUF_X10_Y15_N15
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

-- Location: LCCOMB_X13_Y15_N10
\ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\ = \B[21]~input_o\ $ (\Binvert~input_o\ $ (\Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X13_Y15_N12
\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[21]~input_o\ $ (\ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[21]~input_o\,
	datad => \ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X13_Y15_N0
\ALU_GEN:21:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|AndOut~combout\ = (\B[21]~input_o\ & (!\Binvert~input_o\ & (\A[21]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[21]~input_o\ & (\Binvert~input_o\ & (\A[21]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:21:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X13_Y15_N30
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[21]~input_o\ & ((\Binvert~input_o\) # (\A[21]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y15_N6
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X13_Y15_N24
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~13_combout\)))) # 
-- (!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y15_N2
\ALU_GEN:21:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:21:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:21:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X6_Y10_N8
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

-- Location: LCCOMB_X16_Y14_N26
\ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\ = \B[22]~input_o\ $ (\Binvert~input_o\ $ (\Operation[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[21]~input_o\)))) # 
-- (!\ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[21]~input_o\,
	datad => \ALU_GEN:21:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X31_Y14_N22
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

-- Location: LCCOMB_X16_Y14_N12
\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X16_Y14_N0
\ALU_GEN:22:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[22]~input_o\ & (\Ainvert~input_o\ $ (\A[22]~input_o\)))) # (!\Binvert~input_o\ & (\B[22]~input_o\ & (\Ainvert~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X16_Y14_N22
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[22]~input_o\)) # (!\B[22]~input_o\))) # (!\Binvert~input_o\ & ((\B[22]~input_o\) # (\Ainvert~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Ainvert~input_o\,
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y14_N6
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y14_N24
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y14_N10
\ALU_GEN:22:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:22:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:22:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X11_Y0_N1
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

-- Location: LCCOMB_X15_Y13_N10
\ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[23]~input_o\,
	combout => \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: IOIBUF_X6_Y10_N29
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

-- Location: LCCOMB_X16_Y14_N28
\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[22]~input_o\)))) # 
-- (!\ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:22:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:21:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datad => \A[22]~input_o\,
	combout => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X15_Y13_N12
\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\A[23]~input_o\ $ (\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[23]~input_o\,
	datad => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X15_Y13_N0
\ALU_GEN:23:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|AndOut~combout\ = (\B[23]~input_o\ & (!\Binvert~input_o\ & (\A[23]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[23]~input_o\ & (\Binvert~input_o\ & (\A[23]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[23]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:23:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X15_Y13_N22
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[23]~input_o\ & ((\Binvert~input_o\) # (\A[23]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[23]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X15_Y13_N6
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[1]~input_o\ & !\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \Operation[1]~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X15_Y13_N24
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ $ (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))) # 
-- (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X15_Y13_N18
\ALU_GEN:23:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:23:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:23:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y18_N15
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

-- Location: IOIBUF_X15_Y25_N22
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

-- Location: LCCOMB_X16_Y18_N22
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\Binvert~input_o\ $ (\B[24]~input_o\)) # (!\A[24]~input_o\))) # (!\Ainvert~input_o\ & ((\A[24]~input_o\) # (\Binvert~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y18_N6
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[1]~input_o\ & !\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[1]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y18_N24
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X15_Y13_N4
\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[23]~input_o\)))) # 
-- (!\ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:23:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[23]~input_o\,
	datad => \ALU_GEN:22:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X16_Y18_N26
\ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[24]~input_o\ $ (\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X16_Y18_N0
\ALU_GEN:24:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[24]~input_o\ & (\Binvert~input_o\ $ (\B[24]~input_o\)))) # (!\Ainvert~input_o\ & (\A[24]~input_o\ & (\Binvert~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_GEN:24:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X16_Y18_N10
\ALU_GEN:24:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:24:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datad => \ALU_GEN:24:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X16_Y18_N12
\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\A[24]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\A[24]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \ALU_GEN:23:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \ALU_GEN:24:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X17_Y0_N29
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

-- Location: IOIBUF_X10_Y18_N22
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

-- Location: LCCOMB_X17_Y18_N10
\ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[25]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \B[25]~input_o\,
	datac => \Binvert~input_o\,
	combout => \ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X17_Y18_N12
\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[25]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \A[25]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\Ainvert~input_o\ $ (\A[25]~input_o\)) # (!\B[25]~input_o\))) # (!\Binvert~input_o\ & ((\B[25]~input_o\) # (\Ainvert~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[25]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \A[25]~input_o\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y18_N6
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y18_N0
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y18_N24
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

-- Location: LCCOMB_X17_Y18_N26
\ALU_GEN:25:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:25:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:25:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X13_Y25_N29
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

-- Location: IOIBUF_X13_Y25_N1
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

-- Location: LCCOMB_X16_Y20_N24
\ALU_GEN:26:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|AndOut~combout\ = (\Ainvert~input_o\ & (!\A[26]~input_o\ & (\B[26]~input_o\ $ (\Binvert~input_o\)))) # (!\Ainvert~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y18_N4
\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\A[25]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\A[25]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \A[25]~input_o\,
	datac => \Ainvert~input_o\,
	datad => \ALU_GEN:25:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X16_Y20_N10
\ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \Operation[2]~input_o\,
	datad => \B[26]~input_o\,
	combout => \ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\A[26]~input_o\ $ (\ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[26]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X16_Y20_N22
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Ainvert~input_o\ & ((\B[26]~input_o\ $ (\Binvert~input_o\)) # (!\A[26]~input_o\))) # (!\Ainvert~input_o\ & ((\A[26]~input_o\) # (\B[26]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y20_N6
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[1]~input_o\ & !\Operation[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[1]~input_o\,
	datad => \Operation[2]~input_o\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y20_N0
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ $ ((\ALU_LSB|Operation_Select|Mux0~12_combout\)))) # 
-- (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\ & ((\ALU_LSB|Operation_Select|Mux0~11_combout\) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~4_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y20_N18
\ALU_GEN:26:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\))) # 
-- (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:26:ALU_inst|AndOut~combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datab => \ALU_GEN:26:ALU_inst|AndOut~combout\,
	datac => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datad => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X16_Y20_N12
\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[26]~input_o\)))) # 
-- (!\ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \ALU_GEN:25:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datac => \A[26]~input_o\,
	datad => \ALU_GEN:26:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: IOIBUF_X10_Y20_N8
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

-- Location: IOIBUF_X17_Y25_N15
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

-- Location: LCCOMB_X17_Y20_N10
\ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ $ (\Ainvert~input_o\ $ (\A[27]~input_o\ $ (\ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[27]~input_o\,
	datad => \ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X17_Y20_N6
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ = (\A[27]~input_o\ & ((\Binvert~input_o\ $ (\B[27]~input_o\)) # (!\Ainvert~input_o\))) # (!\A[27]~input_o\ & ((\Ainvert~input_o\) # (\Binvert~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y20_N22
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~2_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y20_N0
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\ & ((!\ALU_LSB|Operation_Select|Mux0~13_combout\))) # 
-- (!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\ & (\ALU_LSB|Operation_Select|Mux0~11_combout\ & \ALU_LSB|Operation_Select|Mux0~13_combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~4_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y20_N24
\ALU_GEN:27:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|AndOut~combout\ = (\A[27]~input_o\ & (!\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\Ainvert~input_o\ & (\Binvert~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Binvert~input_o\,
	datac => \Ainvert~input_o\,
	datad => \B[27]~input_o\,
	combout => \ALU_GEN:27:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X17_Y20_N26
\ALU_GEN:27:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:27:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:27:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y22_N1
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

-- Location: IOIBUF_X10_Y20_N22
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

-- Location: LCCOMB_X11_Y20_N26
\ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Binvert~input_o\ $ (\Operation[2]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datac => \Operation[2]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & ((\ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\) # (\Ainvert~input_o\ $ (\A[27]~input_o\)))) # 
-- (!\ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\Ainvert~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:26:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[27]~input_o\,
	datad => \ALU_GEN:27:ALU_inst|FullAddSub|b_controlled~0_combout\,
	combout => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y20_N12
\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[28]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ = (\Binvert~input_o\ & ((\A[28]~input_o\ $ (\Ainvert~input_o\)) # (!\B[28]~input_o\))) # (!\Binvert~input_o\ & ((\B[28]~input_o\) # (\A[28]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y20_N22
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y20_N0
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\ & \ALU_LSB|Operation_Select|Mux0~11_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~4_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y20_N24
\ALU_GEN:28:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|AndOut~combout\ = (\Binvert~input_o\ & (!\B[28]~input_o\ & (\A[28]~input_o\ $ (\Ainvert~input_o\)))) # (!\Binvert~input_o\ & (\B[28]~input_o\ & (\A[28]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Binvert~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:28:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X11_Y20_N10
\ALU_GEN:28:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\) # ((!\ALU_LSB|Operation_Select|Mux0~15_combout\)))) # 
-- (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\ & (((\ALU_LSB|Operation_Select|Mux0~15_combout\ & \ALU_GEN:28:ALU_inst|AndOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~3_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:28:ALU_inst|AndOut~combout\,
	combout => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y19_N1
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

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: LCCOMB_X11_Y19_N26
\ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X11_Y20_N20
\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[28]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[28]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:28:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:27:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y19_N12
\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \A[29]~input_o\ $ (\Ainvert~input_o\ $ (\ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
\ALU_GEN:29:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|AndOut~combout\ = (\A[29]~input_o\ & (!\Ainvert~input_o\ & (\B[29]~input_o\ $ (\Binvert~input_o\)))) # (!\A[29]~input_o\ & (\Ainvert~input_o\ & (\B[29]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:29:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X11_Y19_N22
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\ $ (\Binvert~input_o\)) # (!\Ainvert~input_o\))) # (!\A[29]~input_o\ & ((\Ainvert~input_o\) # (\B[29]~input_o\ $ (\Binvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y19_N6
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~2_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \Operation[2]~input_o\,
	datad => \Operation[1]~input_o\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y19_N0
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\ & (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\ & \ALU_LSB|Operation_Select|Mux0~11_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (\ALU_LSB|Operation_Select|Mux0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datac => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~4_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y19_N2
\ALU_GEN:29:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:29:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:29:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X10_Y17_N8
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

-- Location: IOIBUF_X10_Y17_N1
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

-- Location: LCCOMB_X11_Y17_N26
\ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\Binvert~input_o\ $ (\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datac => \Binvert~input_o\,
	datad => \B[30]~input_o\,
	combout => \ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\);

-- Location: LCCOMB_X11_Y19_N20
\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\A[29]~input_o\ $ (\Ainvert~input_o\)))) # 
-- (!\ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\A[29]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Ainvert~input_o\,
	datac => \ALU_GEN:29:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:28:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y17_N12
\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\ = \Ainvert~input_o\ $ (\A[30]~input_o\ $ (\ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\ $ (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[30]~input_o\,
	datac => \ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y17_N0
\ALU_GEN:30:ALU_inst|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|AndOut~combout\ = (\B[30]~input_o\ & (!\Binvert~input_o\ & (\A[30]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[30]~input_o\ & (\Binvert~input_o\ & (\A[30]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:30:ALU_inst|AndOut~combout\);

-- Location: LCCOMB_X11_Y17_N22
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[30]~input_o\ & ((\Binvert~input_o\) # (\A[30]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datac => \Binvert~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y17_N6
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\ = (\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation[2]~input_o\,
	datab => \Operation[1]~input_o\,
	datac => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~2_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y17_N24
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~11_combout\ & !\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\)) # 
-- (!\ALU_LSB|Operation_Select|Mux0~12_combout\))) # (!\ALU_LSB|Operation_Select|Mux0~13_combout\ & (((\ALU_LSB|Operation_Select|Mux0~12_combout\ & \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	datab => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datad => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~4_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y17_N2
\ALU_GEN:30:ALU_inst|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\ & (\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\)) # 
-- (!\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\ & ((\ALU_GEN:30:ALU_inst|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_GEN:30:ALU_inst|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~3_combout\,
	combout => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\);

-- Location: IOIBUF_X3_Y10_N29
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

-- Location: LCCOMB_X11_Y13_N10
\ALU_MSB|FullAddSub|b_controlled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|FullAddSub|b_controlled~0_combout\ = \Operation[2]~input_o\ $ (\B[31]~input_o\ $ (\Binvert~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operation[2]~input_o\,
	datac => \B[31]~input_o\,
	datad => \Binvert~input_o\,
	combout => \ALU_MSB|FullAddSub|b_controlled~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: LCCOMB_X11_Y17_N28
\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[30]~input_o\)))) # 
-- (!\ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ainvert~input_o\,
	datab => \A[30]~input_o\,
	datac => \ALU_GEN:30:ALU_inst|FullAddSub|b_controlled~0_combout\,
	datad => \ALU_GEN:29:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X11_Y13_N12
\ALU_MSB|FullAddSub|full_adder_inst|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|FullAddSub|full_adder_inst|sum~0_combout\ = \ALU_MSB|FullAddSub|b_controlled~0_combout\ $ (\Ainvert~input_o\ $ (\A[31]~input_o\ $ (\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[31]~input_o\,
	datad => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_MSB|FullAddSub|full_adder_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y13_N16
\ALU_MSB|AndOut\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|AndOut~combout\ = (\B[31]~input_o\ & (!\Binvert~input_o\ & (\A[31]~input_o\ $ (\Ainvert~input_o\)))) # (!\B[31]~input_o\ & (\Binvert~input_o\ & (\A[31]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[31]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_MSB|AndOut~combout\);

-- Location: LCCOMB_X11_Y13_N6
\ALU_MSB|Operation_Select|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~2_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\ $ (\Ainvert~input_o\)) # (!\Binvert~input_o\))) # (!\B[31]~input_o\ & ((\Binvert~input_o\) # (\A[31]~input_o\ $ (\Ainvert~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Binvert~input_o\,
	datac => \A[31]~input_o\,
	datad => \Ainvert~input_o\,
	combout => \ALU_MSB|Operation_Select|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y13_N14
\ALU_MSB|Operation_Select|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~4_combout\ = (\ALU_MSB|Operation_Select|Mux0~2_combout\ & ((\ALU_LSB|Operation_Select|Mux0~13_combout\) # ((!\Operation[2]~input_o\ & !\Operation[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|Operation_Select|Mux0~2_combout\,
	datab => \Operation[2]~input_o\,
	datac => \Operation[1]~input_o\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y13_N0
\ALU_MSB|Operation_Select|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~3_combout\ = (\ALU_LSB|Operation_Select|Mux0~12_combout\ & ((\ALU_MSB|Operation_Select|Mux0~4_combout\ & ((!\ALU_LSB|Operation_Select|Mux0~13_combout\))) # (!\ALU_MSB|Operation_Select|Mux0~4_combout\ & 
-- (\ALU_LSB|Operation_Select|Mux0~11_combout\ & \ALU_LSB|Operation_Select|Mux0~13_combout\)))) # (!\ALU_LSB|Operation_Select|Mux0~12_combout\ & (((\ALU_LSB|Operation_Select|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_LSB|Operation_Select|Mux0~12_combout\,
	datab => \ALU_MSB|Operation_Select|Mux0~4_combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~11_combout\,
	datad => \ALU_LSB|Operation_Select|Mux0~13_combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y13_N18
\ALU_MSB|Operation_Select|Mux0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|Operation_Select|Mux0~combout\ = (\ALU_LSB|Operation_Select|Mux0~15_combout\ & ((\ALU_MSB|Operation_Select|Mux0~3_combout\ & (\ALU_MSB|FullAddSub|full_adder_inst|sum~0_combout\)) # (!\ALU_MSB|Operation_Select|Mux0~3_combout\ & 
-- ((\ALU_MSB|AndOut~combout\))))) # (!\ALU_LSB|Operation_Select|Mux0~15_combout\ & (((\ALU_MSB|Operation_Select|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|FullAddSub|full_adder_inst|sum~0_combout\,
	datab => \ALU_MSB|AndOut~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~15_combout\,
	datad => \ALU_MSB|Operation_Select|Mux0~3_combout\,
	combout => \ALU_MSB|Operation_Select|Mux0~combout\);

-- Location: LCCOMB_X11_Y13_N20
\ALU_MSB|FullAddSub|full_adder_inst|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_MSB|FullAddSub|full_adder_inst|c_out~0_combout\ = (\ALU_MSB|FullAddSub|b_controlled~0_combout\ & ((\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\) # (\Ainvert~input_o\ $ (\A[31]~input_o\)))) # 
-- (!\ALU_MSB|FullAddSub|b_controlled~0_combout\ & (\ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\ & (\Ainvert~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MSB|FullAddSub|b_controlled~0_combout\,
	datab => \Ainvert~input_o\,
	datac => \A[31]~input_o\,
	datad => \ALU_GEN:30:ALU_inst|FullAddSub|full_adder_inst|c_out~0_combout\,
	combout => \ALU_MSB|FullAddSub|full_adder_inst|c_out~0_combout\);

-- Location: LCCOMB_X17_Y15_N12
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_MSB|Operation_Select|Mux0~combout\ & !\ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:18:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:30:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_MSB|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:17:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y15_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:13:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:15:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:12:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:14:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y15_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:10:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:9:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:11:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:8:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y13_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:6:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:7:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:4:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:5:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_LSB|Operation_Select|Mux0~combout\ & !\ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:3:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:1:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_LSB|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:2:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y15_N4
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y15_N26
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:20:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:23:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:29:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:25:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y15_N6
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:19:ALU_inst|Operation_Select|Mux0~combout\,
	datab => \ALU_GEN:26:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:27:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:22:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y21_N16
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\ & !\ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_GEN:24:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \ALU_GEN:16:ALU_inst|Operation_Select|Mux0~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y15_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (!\ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\ & (!\ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \ALU_GEN:21:ALU_inst|Operation_Select|Mux0~combout\,
	datac => \ALU_GEN:28:ALU_inst|Operation_Select|Mux0~combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y15_N30
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
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


