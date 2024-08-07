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

-- DATE "05/27/2024 18:58:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tentativa1 IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END tentativa1;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tentativa1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst32|PS.TEMPOO~q\ : std_logic;
SIGNAL \inst32|PS.PREE~q\ : std_logic;
SIGNAL \inst32|PS.INICIAL~0_combout\ : std_logic;
SIGNAL \inst32|PS.INICIAL~q\ : std_logic;
SIGNAL \inst32|PS.TEMPERATURA~0_combout\ : std_logic;
SIGNAL \inst32|PS.TEMPERATURA~q\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|temp[1]~0_combout\ : std_logic;
SIGNAL \inst2|temp[1]~1_combout\ : std_logic;
SIGNAL \inst2|temp[1]~2_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|temp[2]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|temp[4]~4_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~8_combout\ : std_logic;
SIGNAL \inst7|Mux8~9_combout\ : std_logic;
SIGNAL \inst7|Mux8~10_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~4_combout\ : std_logic;
SIGNAL \inst7|Mux8~2_combout\ : std_logic;
SIGNAL \inst7|Mux8~1_combout\ : std_logic;
SIGNAL \inst7|Mux8~3_combout\ : std_logic;
SIGNAL \inst7|Mux8~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~5_combout\ : std_logic;
SIGNAL \inst7|Mux8~6_combout\ : std_logic;
SIGNAL \inst7|Mux8~7_combout\ : std_logic;
SIGNAL \inst7|Mux8~11_combout\ : std_logic;
SIGNAL \inst7|Mux6~6_combout\ : std_logic;
SIGNAL \inst7|Mux6~7_combout\ : std_logic;
SIGNAL \inst7|Mux6~3_combout\ : std_logic;
SIGNAL \inst7|Mux6~4_combout\ : std_logic;
SIGNAL \inst7|Mux3~4_combout\ : std_logic;
SIGNAL \inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~2_combout\ : std_logic;
SIGNAL \inst7|Mux6~5_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst7|Mux5~2_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst7|Mux5~3_combout\ : std_logic;
SIGNAL \inst7|Mux5~4_combout\ : std_logic;
SIGNAL \inst7|Mux5~5_combout\ : std_logic;
SIGNAL \inst7|Mux5~6_combout\ : std_logic;
SIGNAL \inst9|Equal24~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~12_combout\ : std_logic;
SIGNAL \inst7|Mux4~2_combout\ : std_logic;
SIGNAL \inst7|Mux4~3_combout\ : std_logic;
SIGNAL \inst7|Mux4~4_combout\ : std_logic;
SIGNAL \inst9|Equal24~1_combout\ : std_logic;
SIGNAL \inst9|Equal24~2_combout\ : std_logic;
SIGNAL \inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|Mux7~2_combout\ : std_logic;
SIGNAL \inst7|Mux7~3_combout\ : std_logic;
SIGNAL \inst9|Equal24~3_combout\ : std_logic;
SIGNAL \inst9|segOut5[2]~0_combout\ : std_logic;
SIGNAL \inst9|segOut5[1]~1_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Equal37~2_combout\ : std_logic;
SIGNAL \inst7|Mux3~8_combout\ : std_logic;
SIGNAL \inst7|Mux3~5_combout\ : std_logic;
SIGNAL \inst7|Mux3~6_combout\ : std_logic;
SIGNAL \inst7|Mux3~7_combout\ : std_logic;
SIGNAL \inst9|Equal37~3_combout\ : std_logic;
SIGNAL \inst9|segOut7[2]~2_combout\ : std_logic;
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|tempo_interno[0]~2_combout\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst2|tempo_interno[0]~0_combout\ : std_logic;
SIGNAL \inst2|tempo_interno[0]~1_combout\ : std_logic;
SIGNAL \inst2|Add2~1\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst3|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst3|Mux14~0_combout\ : std_logic;
SIGNAL \inst3|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|Mux18~0_combout\ : std_logic;
SIGNAL \inst7|Mux18~1_combout\ : std_logic;
SIGNAL \inst7|Mux16~0_combout\ : std_logic;
SIGNAL \inst7|Mux16~1_combout\ : std_logic;
SIGNAL \inst7|Mux17~0_combout\ : std_logic;
SIGNAL \inst7|Mux17~1_combout\ : std_logic;
SIGNAL \inst7|Mux19~0_combout\ : std_logic;
SIGNAL \inst7|Mux19~1_combout\ : std_logic;
SIGNAL \inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst9|segOut2[6]~29_combout\ : std_logic;
SIGNAL \inst9|segOut2[6]~6_combout\ : std_logic;
SIGNAL \inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst9|segOut2~7_combout\ : std_logic;
SIGNAL \inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst9|segOut2[5]~8_combout\ : std_logic;
SIGNAL \inst9|segOut2[6]~9_combout\ : std_logic;
SIGNAL \inst9|segOut2[5]~10_combout\ : std_logic;
SIGNAL \inst9|Equal3~4_combout\ : std_logic;
SIGNAL \inst9|segOut2[4]~12_combout\ : std_logic;
SIGNAL \inst9|segOut2[4]~11_combout\ : std_logic;
SIGNAL \inst9|segOut2[4]~31_combout\ : std_logic;
SIGNAL \inst9|segOut2[4]~32_combout\ : std_logic;
SIGNAL \inst9|segOut2[3]~14_combout\ : std_logic;
SIGNAL \inst9|segOut2[3]~15_combout\ : std_logic;
SIGNAL \inst9|segOut2[3]~13_combout\ : std_logic;
SIGNAL \inst9|segOut2[3]~16_combout\ : std_logic;
SIGNAL \inst9|Equal3~5_combout\ : std_logic;
SIGNAL \inst9|segOut2[2]~17_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~18_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~19_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~21_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~23_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~20_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~22_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~25_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~24_combout\ : std_logic;
SIGNAL \inst9|segOut2~30_combout\ : std_logic;
SIGNAL \inst9|segOut2[1]~26_combout\ : std_logic;
SIGNAL \inst9|segOut2[0]~27_combout\ : std_logic;
SIGNAL \inst9|segOut2[0]~28_combout\ : std_logic;
SIGNAL \inst7|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|Mux12~1_combout\ : std_logic;
SIGNAL \inst7|Mux14~0_combout\ : std_logic;
SIGNAL \inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~1_combout\ : std_logic;
SIGNAL \inst9|Equal1~1_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Mux14~1_combout\ : std_logic;
SIGNAL \inst9|segOut1[1]~0_combout\ : std_logic;
SIGNAL \inst2|pre_interno[1]~6_cout\ : std_logic;
SIGNAL \inst2|pre_interno[1]~7_combout\ : std_logic;
SIGNAL \inst2|pre_interno[0]~9_combout\ : std_logic;
SIGNAL \inst2|pre_interno[1]~8\ : std_logic;
SIGNAL \inst2|pre_interno[2]~10_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|pre_interno[2]~11\ : std_logic;
SIGNAL \inst2|pre_interno[3]~12_combout\ : std_logic;
SIGNAL \inst2|pre_interno[0]~3_combout\ : std_logic;
SIGNAL \inst2|pre_interno[0]~4_combout\ : std_logic;
SIGNAL \inst3|Mux23~0_combout\ : std_logic;
SIGNAL \inst3|Mux20~0_combout\ : std_logic;
SIGNAL \inst3|Mux21~0_combout\ : std_logic;
SIGNAL \inst3|Mux22~0_combout\ : std_logic;
SIGNAL \inst9|Equal13~0_combout\ : std_logic;
SIGNAL \inst9|segOut3[6]~35_combout\ : std_logic;
SIGNAL \inst9|Equal13~2_combout\ : std_logic;
SIGNAL \inst9|segOut3[6]~36_combout\ : std_logic;
SIGNAL \inst9|segOut3[6]~37_combout\ : std_logic;
SIGNAL \inst9|segOut3~49_combout\ : std_logic;
SIGNAL \inst9|segOut3[6]~38_combout\ : std_logic;
SIGNAL \inst9|segOut3[5]~39_combout\ : std_logic;
SIGNAL \inst9|Equal13~1_combout\ : std_logic;
SIGNAL \inst9|segOut3[4]~40_combout\ : std_logic;
SIGNAL \inst9|segOut3[4]~41_combout\ : std_logic;
SIGNAL \inst9|segOut3[4]~42_combout\ : std_logic;
SIGNAL \inst9|segOut3[3]~6_combout\ : std_logic;
SIGNAL \inst9|segOut3[3]~44_combout\ : std_logic;
SIGNAL \inst9|segOut3[3]~47_combout\ : std_logic;
SIGNAL \inst9|segOut3[3]~48_combout\ : std_logic;
SIGNAL \inst9|segOut3[2]~14_combout\ : std_logic;
SIGNAL \inst9|segOut3[2]~45_combout\ : std_logic;
SIGNAL \inst9|segOut3[1]~43_combout\ : std_logic;
SIGNAL \inst9|segOut3[0]~30_combout\ : std_logic;
SIGNAL \inst9|segOut3[0]~46_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|tempo_interno\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|pre_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_segOut2[5]~10_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal37~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_segOut5[2]~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal24~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal24~2_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal37~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst9|ALT_INV_Equal0~2_combout\ <= NOT \inst9|Equal0~2_combout\;
\inst9|ALT_INV_Equal1~1_combout\ <= NOT \inst9|Equal1~1_combout\;
\inst9|ALT_INV_Equal1~0_combout\ <= NOT \inst9|Equal1~0_combout\;
\inst9|ALT_INV_segOut2[5]~10_combout\ <= NOT \inst9|segOut2[5]~10_combout\;
\inst9|ALT_INV_Equal37~2_combout\ <= NOT \inst9|Equal37~2_combout\;
\inst9|ALT_INV_segOut5[2]~0_combout\ <= NOT \inst9|segOut5[2]~0_combout\;
\inst9|ALT_INV_Equal24~3_combout\ <= NOT \inst9|Equal24~3_combout\;
\inst9|ALT_INV_Equal24~2_combout\ <= NOT \inst9|Equal24~2_combout\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\inst9|ALT_INV_Equal0~3_combout\ <= NOT \inst9|Equal0~3_combout\;
\inst9|ALT_INV_Equal37~3_combout\ <= NOT \inst9|Equal37~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux8~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal24~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal24~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal24~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_segOut5[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut5[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal24~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal37~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal37~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal37~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut7[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal37~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal37~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[6]~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_segOut2[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[4]~32_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[3]~16_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[2]~17_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[1]~26_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut2[0]~28_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal0~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut1[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[6]~38_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[5]~39_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[4]~42_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[3]~48_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[2]~45_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[1]~43_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|segOut3[0]~46_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal0~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal0~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X91_Y15_N14
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|temp\(1) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(1),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X88_Y15_N31
\inst32|PS.TEMPOO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst32|PS.TEMPERATURA~q\,
	sload => VCC,
	ena => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|PS.TEMPOO~q\);

-- Location: FF_X88_Y15_N7
\inst32|PS.PREE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst32|PS.TEMPOO~q\,
	sload => VCC,
	ena => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|PS.PREE~q\);

-- Location: LCCOMB_X91_Y15_N10
\inst32|PS.INICIAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|PS.INICIAL~0_combout\ = !\inst32|PS.PREE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst32|PS.PREE~q\,
	combout => \inst32|PS.INICIAL~0_combout\);

-- Location: FF_X91_Y15_N11
\inst32|PS.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst32|PS.INICIAL~0_combout\,
	ena => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|PS.INICIAL~q\);

-- Location: LCCOMB_X91_Y15_N4
\inst32|PS.TEMPERATURA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|PS.TEMPERATURA~0_combout\ = !\inst32|PS.INICIAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst32|PS.INICIAL~q\,
	combout => \inst32|PS.TEMPERATURA~0_combout\);

-- Location: FF_X91_Y15_N5
\inst32|PS.TEMPERATURA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst32|PS.TEMPERATURA~0_combout\,
	ena => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|PS.TEMPERATURA~q\);

-- Location: LCCOMB_X91_Y15_N20
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|process_0~1_combout\ & ((\inst2|temp\(4) & ((\inst2|Add0~5\) # (GND))) # (!\inst2|temp\(4) & (!\inst2|Add0~5\)))) # (!\inst2|process_0~1_combout\ & ((\inst2|temp\(4) & (!\inst2|Add0~5\)) # (!\inst2|temp\(4) & 
-- (\inst2|Add0~5\ & VCC))))
-- \inst2|Add0~7\ = CARRY((\inst2|process_0~1_combout\ & ((\inst2|temp\(4)) # (!\inst2|Add0~5\))) # (!\inst2|process_0~1_combout\ & (\inst2|temp\(4) & !\inst2|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|temp\(4),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X91_Y15_N22
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = ((\inst2|process_0~1_combout\ $ (\inst2|temp\(5) $ (\inst2|Add0~7\)))) # (GND)
-- \inst2|Add0~9\ = CARRY((\inst2|process_0~1_combout\ & (\inst2|temp\(5) & !\inst2|Add0~7\)) # (!\inst2|process_0~1_combout\ & ((\inst2|temp\(5)) # (!\inst2|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|temp\(5),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X91_Y15_N23
\inst2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(5));

-- Location: LCCOMB_X91_Y15_N24
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|process_0~1_combout\ & ((\inst2|temp\(6) & (!\inst2|Add0~9\)) # (!\inst2|temp\(6) & ((\inst2|Add0~9\) # (GND))))) # (!\inst2|process_0~1_combout\ & ((\inst2|temp\(6) & (\inst2|Add0~9\ & VCC)) # (!\inst2|temp\(6) & 
-- (!\inst2|Add0~9\))))
-- \inst2|Add0~11\ = CARRY((\inst2|process_0~1_combout\ & ((!\inst2|Add0~9\) # (!\inst2|temp\(6)))) # (!\inst2|process_0~1_combout\ & (!\inst2|temp\(6) & !\inst2|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|temp\(6),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X91_Y15_N25
\inst2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(6));

-- Location: LCCOMB_X91_Y15_N2
\inst2|temp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[1]~0_combout\ = (!\inst2|temp\(4) & ((\inst2|temp\(3)) # ((\inst2|temp\(1) & !\inst2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(4),
	datab => \inst2|temp\(3),
	datac => \inst2|temp\(1),
	datad => \inst2|temp\(2),
	combout => \inst2|temp[1]~0_combout\);

-- Location: LCCOMB_X91_Y15_N0
\inst2|temp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[1]~1_combout\ = (\inst2|temp\(6)) # ((\inst2|temp\(5)) # ((\inst2|temp\(7)) # (\inst2|temp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(6),
	datab => \inst2|temp\(5),
	datac => \inst2|temp\(7),
	datad => \inst2|temp[1]~0_combout\,
	combout => \inst2|temp[1]~1_combout\);

-- Location: LCCOMB_X91_Y15_N8
\inst2|temp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[1]~2_combout\ = (\inst32|PS.TEMPERATURA~q\ & ((\inst2|process_0~1_combout\) # ((!\KEY[1]~input_o\ & \inst2|temp[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst32|PS.TEMPERATURA~q\,
	datac => \inst2|process_0~1_combout\,
	datad => \inst2|temp[1]~1_combout\,
	combout => \inst2|temp[1]~2_combout\);

-- Location: FF_X91_Y15_N15
\inst2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(1));

-- Location: LCCOMB_X91_Y15_N16
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|process_0~1_combout\ & ((\inst2|temp\(2) & ((\inst2|Add0~1\) # (GND))) # (!\inst2|temp\(2) & (!\inst2|Add0~1\)))) # (!\inst2|process_0~1_combout\ & ((\inst2|temp\(2) & (!\inst2|Add0~1\)) # (!\inst2|temp\(2) & 
-- (\inst2|Add0~1\ & VCC))))
-- \inst2|Add0~3\ = CARRY((\inst2|process_0~1_combout\ & ((\inst2|temp\(2)) # (!\inst2|Add0~1\))) # (!\inst2|process_0~1_combout\ & (\inst2|temp\(2) & !\inst2|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|temp\(2),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X91_Y15_N28
\inst2|temp[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[2]~3_combout\ = !\inst2|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|temp[2]~3_combout\);

-- Location: FF_X91_Y15_N29
\inst2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|temp[2]~3_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(2));

-- Location: LCCOMB_X91_Y15_N18
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst2|process_0~1_combout\ $ (\inst2|temp\(3) $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst2|process_0~1_combout\ & ((\inst2|temp\(3)) # (!\inst2|Add0~3\))) # (!\inst2|process_0~1_combout\ & (\inst2|temp\(3) & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|temp\(3),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X91_Y15_N19
\inst2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(3));

-- Location: LCCOMB_X91_Y15_N30
\inst2|temp[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[4]~4_combout\ = !\inst2|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|temp[4]~4_combout\);

-- Location: FF_X91_Y15_N31
\inst2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|temp[4]~4_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(4));

-- Location: LCCOMB_X91_Y15_N6
\inst2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ((\inst2|temp\(4) & (!\inst2|temp\(3) & !\inst2|temp\(5)))) # (!\inst2|temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(4),
	datab => \inst2|temp\(3),
	datac => \inst2|temp\(5),
	datad => \inst2|temp\(6),
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X91_Y15_N12
\inst2|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = (!\KEY[0]~input_o\ & ((\inst2|process_0~0_combout\) # (!\inst2|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst2|temp\(7),
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X91_Y15_N26
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = \inst2|temp\(7) $ (\inst2|process_0~1_combout\ $ (\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(7),
	datab => \inst2|process_0~1_combout\,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\);

-- Location: FF_X91_Y15_N27
\inst2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	ena => \inst2|temp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(7));

-- Location: LCCOMB_X90_Y15_N0
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = ((\SW[1]~input_o\) # ((\SW[2]~input_o\) # (\inst2|temp\(7)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|temp\(7),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X90_Y15_N6
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\inst2|temp\(5))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|temp\(5),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y15_N30
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (!\SW[2]~input_o\ & ((\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\inst2|temp\(2))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|temp\(2),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y15_N24
\inst3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[0]~input_o\ & \inst2|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|temp\(1),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y15_N16
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\SW[2]~input_o\) # ((\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\inst2|temp\(3)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|temp\(3),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y15_N14
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\SW[2]~input_o\ & ((\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\inst2|temp\(4))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst2|temp\(4),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X91_Y19_N4
\inst7|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~8_combout\ = (\inst3|Mux5~0_combout\ & (\inst3|Mux6~0_combout\ & (!\inst3|Mux4~0_combout\ & !\inst3|Mux3~0_combout\))) # (!\inst3|Mux5~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~8_combout\);

-- Location: LCCOMB_X91_Y19_N18
\inst7|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~9_combout\ = (\inst3|Mux5~0_combout\ & (!\inst3|Mux3~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\)))) # (!\inst3|Mux5~0_combout\ & (!\inst3|Mux6~0_combout\ & (\inst3|Mux4~0_combout\ & \inst3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~9_combout\);

-- Location: LCCOMB_X91_Y19_N12
\inst7|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~10_combout\ = (\inst3|Mux2~0_combout\ & (((!\inst7|Mux8~9_combout\)))) # (!\inst3|Mux2~0_combout\ & (!\inst3|Mux0~0_combout\ & (!\inst7|Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst3|Mux2~0_combout\,
	datac => \inst7|Mux8~8_combout\,
	datad => \inst7|Mux8~9_combout\,
	combout => \inst7|Mux8~10_combout\);

-- Location: LCCOMB_X90_Y15_N20
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\SW[2]~input_o\ & \inst2|temp\(6))))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\ $ ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst2|temp\(6),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y18_N4
\inst7|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~4_combout\ = (\inst3|Mux6~0_combout\ & ((\inst3|Mux5~0_combout\ $ (\inst3|Mux3~0_combout\)) # (!\inst3|Mux4~0_combout\))) # (!\inst3|Mux6~0_combout\ & ((\inst3|Mux4~0_combout\) # (\inst3|Mux5~0_combout\ $ (\inst3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~4_combout\);

-- Location: LCCOMB_X91_Y18_N16
\inst7|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~2_combout\ = (\inst3|Mux5~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~2_combout\);

-- Location: LCCOMB_X91_Y18_N6
\inst7|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~1_combout\ = (\inst3|Mux6~0_combout\ & (!\inst3|Mux5~0_combout\ & (!\inst3|Mux4~0_combout\ & \inst3|Mux3~0_combout\))) # (!\inst3|Mux6~0_combout\ & (\inst3|Mux4~0_combout\ & (\inst3|Mux5~0_combout\ $ (!\inst3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~1_combout\);

-- Location: LCCOMB_X91_Y18_N14
\inst7|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~3_combout\ = (\inst3|Mux0~0_combout\ & (((\inst3|Mux2~0_combout\)))) # (!\inst3|Mux0~0_combout\ & ((\inst3|Mux2~0_combout\ & ((!\inst7|Mux8~1_combout\))) # (!\inst3|Mux2~0_combout\ & (!\inst7|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst7|Mux8~2_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst7|Mux8~1_combout\,
	combout => \inst7|Mux8~3_combout\);

-- Location: LCCOMB_X91_Y18_N28
\inst7|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~0_combout\ = (\inst3|Mux6~0_combout\ & (!\inst3|Mux4~0_combout\ & (\inst3|Mux5~0_combout\ $ (!\inst3|Mux3~0_combout\)))) # (!\inst3|Mux6~0_combout\ & (\inst3|Mux5~0_combout\ & (\inst3|Mux4~0_combout\ & !\inst3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~0_combout\);

-- Location: LCCOMB_X91_Y18_N2
\inst7|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst7|Mux8~3_combout\ & (\inst7|Mux8~4_combout\)) # (!\inst7|Mux8~3_combout\ & ((!\inst7|Mux8~0_combout\))))) # (!\inst3|Mux0~0_combout\ & (((\inst7|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst7|Mux8~4_combout\,
	datac => \inst7|Mux8~3_combout\,
	datad => \inst7|Mux8~0_combout\,
	combout => \inst7|Mux8~5_combout\);

-- Location: LCCOMB_X91_Y19_N16
\inst7|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~6_combout\ = (!\inst3|Mux5~0_combout\ & (!\inst3|Mux6~0_combout\ & (\inst3|Mux4~0_combout\ & !\inst3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux8~6_combout\);

-- Location: LCCOMB_X91_Y19_N10
\inst7|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~7_combout\ = (\inst3|Mux0~0_combout\ & ((\inst3|Mux2~0_combout\) # (!\inst7|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst7|Mux8~6_combout\,
	combout => \inst7|Mux8~7_combout\);

-- Location: LCCOMB_X91_Y19_N6
\inst7|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~11_combout\ = (\inst3|Mux1~0_combout\ & ((\inst7|Mux8~10_combout\) # ((\inst7|Mux8~7_combout\)))) # (!\inst3|Mux1~0_combout\ & (((\inst7|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux8~10_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst7|Mux8~5_combout\,
	datad => \inst7|Mux8~7_combout\,
	combout => \inst7|Mux8~11_combout\);

-- Location: LCCOMB_X90_Y18_N16
\inst7|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~6_combout\ = (\inst3|Mux5~0_combout\ & ((\inst3|Mux3~0_combout\) # (\inst3|Mux6~0_combout\ $ (\inst3|Mux4~0_combout\)))) # (!\inst3|Mux5~0_combout\ & ((\inst3|Mux6~0_combout\ & ((\inst3|Mux4~0_combout\) # (!\inst3|Mux3~0_combout\))) # 
-- (!\inst3|Mux6~0_combout\ & ((\inst3|Mux3~0_combout\) # (!\inst3|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux6~6_combout\);

-- Location: LCCOMB_X90_Y18_N26
\inst7|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~7_combout\ = (\inst3|Mux1~0_combout\ & (\inst3|Mux2~0_combout\ & ((\inst7|Mux6~6_combout\) # (!\inst3|Mux5~0_combout\)))) # (!\inst3|Mux1~0_combout\ & (((\inst3|Mux5~0_combout\) # (\inst7|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux5~0_combout\,
	datad => \inst7|Mux6~6_combout\,
	combout => \inst7|Mux6~7_combout\);

-- Location: LCCOMB_X90_Y18_N0
\inst7|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~3_combout\ = (!\inst3|Mux5~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux6~3_combout\);

-- Location: LCCOMB_X90_Y18_N14
\inst7|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~4_combout\ = (!\inst3|Mux2~0_combout\ & ((!\inst7|Mux6~3_combout\) # (!\inst3|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datad => \inst7|Mux6~3_combout\,
	combout => \inst7|Mux6~4_combout\);

-- Location: LCCOMB_X90_Y18_N10
\inst7|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~4_combout\ = (!\inst3|Mux2~0_combout\ & (\inst3|Mux1~0_combout\ & !\inst3|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux3~4_combout\);

-- Location: LCCOMB_X90_Y18_N12
\inst7|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~1_combout\ = (\inst7|Mux3~4_combout\ & (!\inst3|Mux6~0_combout\ & \inst3|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux3~4_combout\,
	datab => \inst3|Mux6~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux6~1_combout\);

-- Location: LCCOMB_X90_Y18_N20
\inst7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst3|Mux2~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\)))) # (!\inst3|Mux2~0_combout\ & ((\inst3|Mux6~0_combout\ & (\inst3|Mux3~0_combout\ & !\inst3|Mux4~0_combout\)) # 
-- (!\inst3|Mux6~0_combout\ & (!\inst3|Mux3~0_combout\ & \inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y18_N18
\inst7|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~2_combout\ = (\inst7|Mux6~1_combout\ & (\inst3|Mux1~0_combout\ $ ((!\inst3|Mux5~0_combout\)))) # (!\inst7|Mux6~1_combout\ & ((\inst3|Mux1~0_combout\) # ((!\inst7|Mux6~0_combout\) # (!\inst3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux6~1_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux5~0_combout\,
	datad => \inst7|Mux6~0_combout\,
	combout => \inst7|Mux6~2_combout\);

-- Location: LCCOMB_X90_Y18_N4
\inst7|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~5_combout\ = (\inst3|Mux0~0_combout\ & (((\inst7|Mux6~2_combout\)))) # (!\inst3|Mux0~0_combout\ & ((\inst7|Mux6~7_combout\) # ((\inst7|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux6~7_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst7|Mux6~4_combout\,
	datad => \inst7|Mux6~2_combout\,
	combout => \inst7|Mux6~5_combout\);

-- Location: LCCOMB_X91_Y18_N12
\inst7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst3|Mux5~0_combout\) # ((\inst3|Mux3~0_combout\) # (\inst3|Mux6~0_combout\ $ (\inst3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X91_Y18_N10
\inst7|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~1_combout\ = (\inst7|Mux8~3_combout\ & ((\inst7|Mux4~0_combout\) # ((!\inst3|Mux0~0_combout\)))) # (!\inst7|Mux8~3_combout\ & (((!\inst7|Mux8~0_combout\ & \inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux4~0_combout\,
	datab => \inst7|Mux8~0_combout\,
	datac => \inst7|Mux8~3_combout\,
	datad => \inst3|Mux0~0_combout\,
	combout => \inst7|Mux4~1_combout\);

-- Location: LCCOMB_X90_Y18_N22
\inst7|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~2_combout\ = (\inst3|Mux2~0_combout\ & (\inst3|Mux5~0_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux5~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux5~2_combout\);

-- Location: LCCOMB_X90_Y18_N2
\inst7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst3|Mux2~0_combout\ & (((\inst3|Mux6~0_combout\) # (!\inst3|Mux4~0_combout\)) # (!\inst3|Mux1~0_combout\))) # (!\inst3|Mux2~0_combout\ & ((\inst3|Mux6~0_combout\ $ (\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux6~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y18_N28
\inst7|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~1_combout\ = (\inst3|Mux1~0_combout\ & (\inst3|Mux3~0_combout\ & ((\inst3|Mux5~0_combout\) # (\inst7|Mux5~0_combout\)))) # (!\inst3|Mux1~0_combout\ & (((\inst7|Mux5~0_combout\)) # (!\inst3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst7|Mux5~0_combout\,
	combout => \inst7|Mux5~1_combout\);

-- Location: LCCOMB_X90_Y18_N24
\inst7|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~3_combout\ = (\inst7|Mux5~1_combout\) # ((!\inst3|Mux3~0_combout\ & ((!\inst3|Mux1~0_combout\) # (!\inst7|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux5~2_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst7|Mux5~1_combout\,
	combout => \inst7|Mux5~3_combout\);

-- Location: LCCOMB_X91_Y19_N24
\inst7|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~4_combout\ = (!\inst3|Mux5~0_combout\ & (\inst3|Mux6~0_combout\ & (!\inst3|Mux4~0_combout\ & !\inst3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux5~4_combout\);

-- Location: LCCOMB_X91_Y19_N30
\inst7|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~5_combout\ = (\inst3|Mux1~0_combout\ & (((!\inst7|Mux8~6_combout\)))) # (!\inst3|Mux1~0_combout\ & (!\inst7|Mux5~4_combout\ & (!\inst3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux5~4_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst7|Mux8~6_combout\,
	combout => \inst7|Mux5~5_combout\);

-- Location: LCCOMB_X91_Y18_N24
\inst7|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~6_combout\ = (\inst7|Mux5~5_combout\) # ((\inst3|Mux2~0_combout\ & ((\inst3|Mux1~0_combout\) # (!\inst7|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux5~5_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst7|Mux8~2_combout\,
	combout => \inst7|Mux5~6_combout\);

-- Location: LCCOMB_X91_Y18_N30
\inst9|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal24~0_combout\ = (\inst3|Mux0~0_combout\ & ((!\inst7|Mux5~6_combout\))) # (!\inst3|Mux0~0_combout\ & (!\inst7|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst7|Mux5~3_combout\,
	datad => \inst7|Mux5~6_combout\,
	combout => \inst9|Equal24~0_combout\);

-- Location: LCCOMB_X91_Y18_N20
\inst7|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux8~12_combout\ = (\inst3|Mux4~0_combout\ & (!\inst3|Mux5~0_combout\ & !\inst3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux5~0_combout\,
	datac => \inst3|Mux6~0_combout\,
	combout => \inst7|Mux8~12_combout\);

-- Location: LCCOMB_X91_Y18_N0
\inst7|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~2_combout\ = (\inst3|Mux5~0_combout\ & ((\inst3|Mux4~0_combout\ & (\inst3|Mux2~0_combout\ & \inst3|Mux6~0_combout\)) # (!\inst3|Mux4~0_combout\ & (\inst3|Mux2~0_combout\ $ (\inst3|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux2~0_combout\,
	datac => \inst3|Mux6~0_combout\,
	datad => \inst3|Mux5~0_combout\,
	combout => \inst7|Mux4~2_combout\);

-- Location: LCCOMB_X91_Y18_N26
\inst7|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~3_combout\ = (\inst3|Mux0~0_combout\ & (((\inst3|Mux2~0_combout\) # (\inst3|Mux3~0_combout\)))) # (!\inst3|Mux0~0_combout\ & ((\inst3|Mux3~0_combout\ & ((!\inst3|Mux2~0_combout\))) # (!\inst3|Mux3~0_combout\ & (!\inst7|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst7|Mux4~2_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux4~3_combout\);

-- Location: LCCOMB_X91_Y18_N18
\inst7|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~4_combout\ = (\inst7|Mux4~3_combout\) # ((!\inst7|Mux8~12_combout\ & ((\inst3|Mux3~0_combout\) # (\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~0_combout\,
	datab => \inst7|Mux8~12_combout\,
	datac => \inst7|Mux4~3_combout\,
	datad => \inst3|Mux0~0_combout\,
	combout => \inst7|Mux4~4_combout\);

-- Location: LCCOMB_X91_Y18_N8
\inst9|Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal24~1_combout\ = (\inst9|Equal24~0_combout\ & ((\inst3|Mux1~0_combout\ & ((!\inst7|Mux4~4_combout\))) # (!\inst3|Mux1~0_combout\ & (!\inst7|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux4~1_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst9|Equal24~0_combout\,
	datad => \inst7|Mux4~4_combout\,
	combout => \inst9|Equal24~1_combout\);

-- Location: LCCOMB_X91_Y22_N20
\inst9|Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal24~2_combout\ = (\inst7|Mux6~5_combout\ & \inst9|Equal24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux6~5_combout\,
	datac => \inst9|Equal24~1_combout\,
	combout => \inst9|Equal24~2_combout\);

-- Location: LCCOMB_X90_Y18_N8
\inst7|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux7~1_combout\ = (\inst3|Mux1~0_combout\ & (\inst3|Mux5~0_combout\ $ (((\inst3|Mux3~0_combout\) # (\inst3|Mux4~0_combout\))))) # (!\inst3|Mux1~0_combout\ & (\inst3|Mux4~0_combout\ & ((\inst3|Mux5~0_combout\) # (!\inst3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux7~1_combout\);

-- Location: LCCOMB_X90_Y18_N6
\inst7|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux7~0_combout\ = (\inst3|Mux4~0_combout\ & (!\inst3|Mux3~0_combout\ & ((\inst3|Mux5~0_combout\) # (\inst3|Mux1~0_combout\)))) # (!\inst3|Mux4~0_combout\ & (\inst3|Mux5~0_combout\ $ ((\inst3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst7|Mux7~0_combout\);

-- Location: LCCOMB_X90_Y18_N30
\inst7|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux7~2_combout\ = (\inst3|Mux2~0_combout\ & (\inst7|Mux7~0_combout\ $ (((\inst3|Mux3~0_combout\ & \inst3|Mux0~0_combout\))))) # (!\inst3|Mux2~0_combout\ & ((\inst3|Mux3~0_combout\ $ (!\inst3|Mux0~0_combout\)) # (!\inst7|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux2~0_combout\,
	datab => \inst3|Mux3~0_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst7|Mux7~0_combout\,
	combout => \inst7|Mux7~2_combout\);

-- Location: LCCOMB_X91_Y18_N22
\inst7|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux7~3_combout\ = (\inst7|Mux7~2_combout\) # ((\inst7|Mux7~1_combout\ & (\inst3|Mux2~0_combout\ & \inst3|Mux0~0_combout\)) # (!\inst7|Mux7~1_combout\ & (\inst3|Mux2~0_combout\ $ (\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux7~1_combout\,
	datab => \inst7|Mux7~2_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst3|Mux0~0_combout\,
	combout => \inst7|Mux7~3_combout\);

-- Location: LCCOMB_X91_Y22_N6
\inst9|Equal24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal24~3_combout\ = (\inst7|Mux6~5_combout\ & (\inst9|Equal24~1_combout\ & (!\inst3|Mux6~0_combout\ & !\inst7|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux6~5_combout\,
	datab => \inst9|Equal24~1_combout\,
	datac => \inst3|Mux6~0_combout\,
	datad => \inst7|Mux7~3_combout\,
	combout => \inst9|Equal24~3_combout\);

-- Location: LCCOMB_X91_Y22_N4
\inst9|segOut5[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut5[2]~0_combout\ = (\inst9|Equal24~1_combout\ & ((\inst3|Mux6~0_combout\) # (\inst7|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal24~1_combout\,
	datac => \inst3|Mux6~0_combout\,
	datad => \inst7|Mux7~3_combout\,
	combout => \inst9|segOut5[2]~0_combout\);

-- Location: LCCOMB_X91_Y22_N10
\inst9|segOut5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut5[1]~1_combout\ = ((!\inst7|Mux6~5_combout\ & (!\inst3|Mux6~0_combout\ & !\inst7|Mux7~3_combout\))) # (!\inst9|Equal24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux6~5_combout\,
	datab => \inst9|Equal24~1_combout\,
	datac => \inst3|Mux6~0_combout\,
	datad => \inst7|Mux7~3_combout\,
	combout => \inst9|segOut5[1]~1_combout\);

-- Location: LCCOMB_X91_Y19_N28
\inst7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst3|Mux0~0_combout\) # ((\inst3|Mux2~0_combout\ & ((!\inst7|Mux8~9_combout\))) # (!\inst3|Mux2~0_combout\ & (!\inst7|Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst3|Mux2~0_combout\,
	datac => \inst7|Mux8~8_combout\,
	datad => \inst7|Mux8~9_combout\,
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X91_Y19_N14
\inst9|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal37~2_combout\ = (!\inst7|Mux8~11_combout\ & ((\inst3|Mux1~0_combout\ & ((\inst7|Mux2~0_combout\))) # (!\inst3|Mux1~0_combout\ & (\inst7|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux8~11_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst7|Mux8~5_combout\,
	datad => \inst7|Mux2~0_combout\,
	combout => \inst9|Equal37~2_combout\);

-- Location: LCCOMB_X91_Y19_N22
\inst7|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~8_combout\ = (\inst3|Mux4~0_combout\ & (!\inst3|Mux6~0_combout\ & (!\inst3|Mux5~0_combout\ & \inst7|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst3|Mux5~0_combout\,
	datad => \inst7|Mux3~4_combout\,
	combout => \inst7|Mux3~8_combout\);

-- Location: LCCOMB_X91_Y19_N8
\inst7|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~5_combout\ = (\inst3|Mux5~0_combout\ & (!\inst3|Mux2~0_combout\ & (\inst3|Mux1~0_combout\ $ (\inst3|Mux3~0_combout\)))) # (!\inst3|Mux5~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux1~0_combout\ $ (\inst3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux3~5_combout\);

-- Location: LCCOMB_X91_Y19_N2
\inst7|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~6_combout\ = (\inst3|Mux2~0_combout\ & (!\inst3|Mux1~0_combout\ & (\inst3|Mux5~0_combout\ $ (!\inst3|Mux3~0_combout\)))) # (!\inst3|Mux2~0_combout\ & (\inst3|Mux3~0_combout\ & (\inst3|Mux5~0_combout\ $ (\inst3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux5~0_combout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst7|Mux3~6_combout\);

-- Location: LCCOMB_X91_Y19_N20
\inst7|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~7_combout\ = (\inst3|Mux4~0_combout\ & (\inst7|Mux3~6_combout\ & (\inst3|Mux6~0_combout\ $ (!\inst7|Mux3~5_combout\)))) # (!\inst3|Mux4~0_combout\ & (\inst7|Mux3~5_combout\ & (\inst3|Mux6~0_combout\ $ (\inst7|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst7|Mux3~5_combout\,
	datad => \inst7|Mux3~6_combout\,
	combout => \inst7|Mux3~7_combout\);

-- Location: LCCOMB_X91_Y19_N0
\inst9|Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal37~3_combout\ = (\inst9|Equal37~2_combout\ & ((\inst3|Mux0~0_combout\ & (\inst7|Mux3~8_combout\)) # (!\inst3|Mux0~0_combout\ & ((\inst7|Mux3~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux3~8_combout\,
	datab => \inst9|Equal37~2_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst7|Mux3~7_combout\,
	combout => \inst9|Equal37~3_combout\);

-- Location: LCCOMB_X91_Y19_N26
\inst9|segOut7[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut7[2]~2_combout\ = ((\inst3|Mux0~0_combout\ & (\inst7|Mux3~8_combout\)) # (!\inst3|Mux0~0_combout\ & ((\inst7|Mux3~7_combout\)))) # (!\inst9|Equal37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux3~8_combout\,
	datab => \inst9|Equal37~2_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst7|Mux3~7_combout\,
	combout => \inst9|segOut7[2]~2_combout\);

-- Location: LCCOMB_X88_Y15_N10
\inst2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = \inst2|tempo_interno\(0) $ (GND)
-- \inst2|Add2~1\ = CARRY(!\inst2|tempo_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tempo_interno\(0),
	datad => VCC,
	combout => \inst2|Add2~0_combout\,
	cout => \inst2|Add2~1\);

-- Location: LCCOMB_X88_Y15_N2
\inst2|tempo_interno[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tempo_interno[0]~2_combout\ = !\inst2|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add2~0_combout\,
	combout => \inst2|tempo_interno[0]~2_combout\);

-- Location: LCCOMB_X88_Y15_N14
\inst2|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = ((\inst2|tempo_interno\(2) $ (\inst2|process_0~3_combout\ $ (\inst2|Add2~3\)))) # (GND)
-- \inst2|Add2~5\ = CARRY((\inst2|tempo_interno\(2) & ((!\inst2|Add2~3\) # (!\inst2|process_0~3_combout\))) # (!\inst2|tempo_interno\(2) & (!\inst2|process_0~3_combout\ & !\inst2|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tempo_interno\(2),
	datab => \inst2|process_0~3_combout\,
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X88_Y15_N16
\inst2|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\inst2|tempo_interno\(3) & ((\inst2|process_0~3_combout\ & (!\inst2|Add2~5\)) # (!\inst2|process_0~3_combout\ & (\inst2|Add2~5\ & VCC)))) # (!\inst2|tempo_interno\(3) & ((\inst2|process_0~3_combout\ & ((\inst2|Add2~5\) # (GND))) 
-- # (!\inst2|process_0~3_combout\ & (!\inst2|Add2~5\))))
-- \inst2|Add2~7\ = CARRY((\inst2|tempo_interno\(3) & (\inst2|process_0~3_combout\ & !\inst2|Add2~5\)) # (!\inst2|tempo_interno\(3) & ((\inst2|process_0~3_combout\) # (!\inst2|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tempo_interno\(3),
	datab => \inst2|process_0~3_combout\,
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: FF_X88_Y15_N17
\inst2|tempo_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add2~6_combout\,
	ena => \inst2|tempo_interno[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tempo_interno\(3));

-- Location: LCCOMB_X88_Y15_N0
\inst2|tempo_interno[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tempo_interno[0]~0_combout\ = (\inst2|tempo_interno\(1)) # ((\inst2|tempo_interno\(3)) # ((\inst2|tempo_interno\(2)) # (\inst2|tempo_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tempo_interno\(1),
	datab => \inst2|tempo_interno\(3),
	datac => \inst2|tempo_interno\(2),
	datad => \inst2|tempo_interno\(4),
	combout => \inst2|tempo_interno[0]~0_combout\);

-- Location: LCCOMB_X88_Y15_N30
\inst2|tempo_interno[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tempo_interno[0]~1_combout\ = (\inst32|PS.TEMPOO~q\ & ((\inst2|process_0~3_combout\) # ((\KEY[1]~input_o\ & \inst2|tempo_interno[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst2|tempo_interno[0]~0_combout\,
	datac => \inst32|PS.TEMPOO~q\,
	datad => \inst2|process_0~3_combout\,
	combout => \inst2|tempo_interno[0]~1_combout\);

-- Location: FF_X88_Y15_N3
\inst2|tempo_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|tempo_interno[0]~2_combout\,
	ena => \inst2|tempo_interno[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tempo_interno\(0));

-- Location: LCCOMB_X88_Y15_N12
\inst2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst2|tempo_interno\(1) & ((\inst2|process_0~3_combout\ & (!\inst2|Add2~1\)) # (!\inst2|process_0~3_combout\ & (\inst2|Add2~1\ & VCC)))) # (!\inst2|tempo_interno\(1) & ((\inst2|process_0~3_combout\ & ((\inst2|Add2~1\) # (GND))) 
-- # (!\inst2|process_0~3_combout\ & (!\inst2|Add2~1\))))
-- \inst2|Add2~3\ = CARRY((\inst2|tempo_interno\(1) & (\inst2|process_0~3_combout\ & !\inst2|Add2~1\)) # (!\inst2|tempo_interno\(1) & ((\inst2|process_0~3_combout\) # (!\inst2|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tempo_interno\(1),
	datab => \inst2|process_0~3_combout\,
	datad => VCC,
	cin => \inst2|Add2~1\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: FF_X88_Y15_N13
\inst2|tempo_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add2~2_combout\,
	ena => \inst2|tempo_interno[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tempo_interno\(1));

-- Location: FF_X88_Y15_N15
\inst2|tempo_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add2~4_combout\,
	ena => \inst2|tempo_interno[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tempo_interno\(2));

-- Location: LCCOMB_X88_Y15_N6
\inst2|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (!\inst2|tempo_interno\(1)) # (!\inst2|tempo_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tempo_interno\(3),
	datad => \inst2|tempo_interno\(1),
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X88_Y15_N28
\inst2|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\KEY[0]~input_o\ & (((\inst2|process_0~2_combout\) # (!\inst2|tempo_interno\(2))) # (!\inst2|tempo_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|tempo_interno\(4),
	datac => \inst2|tempo_interno\(2),
	datad => \inst2|process_0~2_combout\,
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X88_Y15_N18
\inst2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = \inst2|tempo_interno\(4) $ (\inst2|Add2~7\ $ (\inst2|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tempo_interno\(4),
	datad => \inst2|process_0~3_combout\,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\);

-- Location: FF_X88_Y15_N19
\inst2|tempo_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add2~8_combout\,
	ena => \inst2|tempo_interno[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tempo_interno\(4));

-- Location: LCCOMB_X88_Y15_N24
\inst3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux11~0_combout\ = (\SW[2]~input_o\) # ((\SW[0]~input_o\ & ((\inst2|tempo_interno\(4)) # (\SW[1]~input_o\))) # (!\SW[0]~input_o\ & ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(4),
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux11~0_combout\);

-- Location: LCCOMB_X88_Y15_N4
\inst3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = (!\SW[2]~input_o\ & ((\SW[0]~input_o\ & (\inst2|tempo_interno\(3) & !\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(3),
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux12~0_combout\);

-- Location: LCCOMB_X88_Y15_N8
\inst3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux14~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\)) # (!\SW[2]~input_o\ & (((!\SW[1]~input_o\ & \inst2|tempo_interno\(1))) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(1),
	datad => \SW[2]~input_o\,
	combout => \inst3|Mux14~0_combout\);

-- Location: LCCOMB_X88_Y15_N20
\inst3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux13~0_combout\ = (\SW[1]~input_o\ & (((!\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[0]~input_o\ & \inst2|tempo_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(2),
	datad => \SW[2]~input_o\,
	combout => \inst3|Mux13~0_combout\);

-- Location: LCCOMB_X88_Y15_N26
\inst3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux15~0_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\SW[0]~input_o\)) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\inst2|tempo_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(0),
	datad => \SW[2]~input_o\,
	combout => \inst3|Mux15~0_combout\);

-- Location: LCCOMB_X89_Y4_N0
\inst7|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux18~0_combout\ = (\inst3|Mux13~0_combout\ & (\inst3|Mux12~0_combout\ & ((\inst3|Mux15~0_combout\) # (!\inst3|Mux11~0_combout\)))) # (!\inst3|Mux13~0_combout\ & ((\inst3|Mux11~0_combout\) # ((!\inst3|Mux12~0_combout\ & !\inst3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux11~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux18~0_combout\);

-- Location: LCCOMB_X89_Y4_N14
\inst7|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux18~1_combout\ = (\inst3|Mux14~0_combout\ & (\inst3|Mux12~0_combout\ $ (((!\inst7|Mux18~0_combout\) # (!\inst3|Mux11~0_combout\))))) # (!\inst3|Mux14~0_combout\ & (\inst7|Mux18~0_combout\ & ((!\inst3|Mux12~0_combout\) # 
-- (!\inst3|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux11~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst7|Mux18~0_combout\,
	combout => \inst7|Mux18~1_combout\);

-- Location: LCCOMB_X89_Y4_N16
\inst7|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux16~0_combout\ = (\inst3|Mux11~0_combout\ & (\inst3|Mux14~0_combout\ & ((\inst3|Mux15~0_combout\) # (!\inst3|Mux12~0_combout\)))) # (!\inst3|Mux11~0_combout\ & (!\inst3|Mux14~0_combout\ & ((\inst3|Mux12~0_combout\) # (!\inst3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux11~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux16~0_combout\);

-- Location: LCCOMB_X89_Y4_N30
\inst7|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux16~1_combout\ = (\inst3|Mux13~0_combout\ & (\inst3|Mux12~0_combout\ & (\inst3|Mux14~0_combout\ $ (!\inst7|Mux16~0_combout\)))) # (!\inst3|Mux13~0_combout\ & (\inst7|Mux16~0_combout\ & ((!\inst3|Mux14~0_combout\) # (!\inst3|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst7|Mux16~0_combout\,
	combout => \inst7|Mux16~1_combout\);

-- Location: LCCOMB_X89_Y4_N12
\inst7|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux17~0_combout\ = (\inst3|Mux13~0_combout\ & (\inst3|Mux11~0_combout\ & ((!\inst3|Mux15~0_combout\) # (!\inst3|Mux12~0_combout\)))) # (!\inst3|Mux13~0_combout\ & (!\inst3|Mux11~0_combout\ & ((\inst3|Mux12~0_combout\) # (\inst3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux11~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux17~0_combout\);

-- Location: LCCOMB_X89_Y4_N6
\inst7|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux17~1_combout\ = (\inst7|Mux17~0_combout\) # ((\inst3|Mux12~0_combout\ & (!\inst3|Mux14~0_combout\ & \inst3|Mux13~0_combout\)) # (!\inst3|Mux12~0_combout\ & (\inst3|Mux14~0_combout\ & !\inst3|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux17~0_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst3|Mux13~0_combout\,
	combout => \inst7|Mux17~1_combout\);

-- Location: LCCOMB_X88_Y4_N24
\inst7|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux19~0_combout\ = (!\inst3|Mux13~0_combout\ & (!\inst3|Mux11~0_combout\ & (!\inst3|Mux12~0_combout\ & !\inst3|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux11~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux14~0_combout\,
	combout => \inst7|Mux19~0_combout\);

-- Location: LCCOMB_X89_Y4_N24
\inst7|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux19~1_combout\ = (\inst7|Mux19~0_combout\) # (\inst3|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mux19~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux19~1_combout\);

-- Location: LCCOMB_X90_Y4_N20
\inst9|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~3_combout\ = (!\inst7|Mux18~1_combout\ & (!\inst7|Mux16~1_combout\ & (\inst7|Mux17~1_combout\ & !\inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~3_combout\);

-- Location: LCCOMB_X90_Y4_N4
\inst9|segOut2[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[6]~29_combout\ = (!\inst7|Mux16~1_combout\ & (\inst7|Mux17~1_combout\ & ((\inst7|Mux18~1_combout\) # (\inst7|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2[6]~29_combout\);

-- Location: LCCOMB_X90_Y4_N28
\inst9|segOut2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[6]~6_combout\ = (!\inst7|Mux16~1_combout\ & (\inst7|Mux17~1_combout\ & (\inst7|Mux18~1_combout\ $ (\inst7|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2[6]~6_combout\);

-- Location: LCCOMB_X90_Y4_N26
\inst9|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~1_combout\ = (!\inst7|Mux18~1_combout\ & (!\inst7|Mux16~1_combout\ & (!\inst7|Mux17~1_combout\ & \inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~1_combout\);

-- Location: LCCOMB_X90_Y4_N16
\inst9|segOut2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2~7_combout\ = (\inst7|Mux16~1_combout\ & (\inst7|Mux17~1_combout\ & !\inst7|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux18~1_combout\,
	combout => \inst9|segOut2~7_combout\);

-- Location: LCCOMB_X90_Y4_N8
\inst9|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~2_combout\ = (\inst7|Mux18~1_combout\ & (!\inst7|Mux16~1_combout\ & (!\inst7|Mux17~1_combout\ & !\inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~2_combout\);

-- Location: LCCOMB_X90_Y4_N2
\inst9|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~0_combout\ = (!\inst7|Mux18~1_combout\ & (!\inst7|Mux16~1_combout\ & (!\inst7|Mux17~1_combout\ & !\inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~0_combout\);

-- Location: LCCOMB_X90_Y4_N30
\inst9|segOut2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[5]~8_combout\ = (!\inst9|Equal3~1_combout\ & (!\inst9|segOut2~7_combout\ & (!\inst9|Equal3~2_combout\ & !\inst9|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal3~1_combout\,
	datab => \inst9|segOut2~7_combout\,
	datac => \inst9|Equal3~2_combout\,
	datad => \inst9|Equal3~0_combout\,
	combout => \inst9|segOut2[5]~8_combout\);

-- Location: LCCOMB_X86_Y4_N8
\inst9|segOut2[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[6]~9_combout\ = (!\inst9|Equal3~3_combout\ & ((\inst9|segOut2[6]~29_combout\ & (\inst9|segOut2[6]~6_combout\)) # (!\inst9|segOut2[6]~29_combout\ & ((\inst9|segOut2[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal3~3_combout\,
	datab => \inst9|segOut2[6]~29_combout\,
	datac => \inst9|segOut2[6]~6_combout\,
	datad => \inst9|segOut2[5]~8_combout\,
	combout => \inst9|segOut2[6]~9_combout\);

-- Location: LCCOMB_X86_Y4_N26
\inst9|segOut2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[5]~10_combout\ = (\inst9|Equal3~3_combout\) # ((!\inst9|segOut2[6]~29_combout\ & !\inst9|segOut2[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|segOut2[6]~29_combout\,
	datac => \inst9|Equal3~3_combout\,
	datad => \inst9|segOut2[5]~8_combout\,
	combout => \inst9|segOut2[5]~10_combout\);

-- Location: LCCOMB_X89_Y4_N2
\inst9|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~4_combout\ = (\inst7|Mux17~1_combout\ & (\inst7|Mux16~1_combout\ & (!\inst7|Mux18~1_combout\ & !\inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux17~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux18~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~4_combout\);

-- Location: LCCOMB_X88_Y4_N16
\inst9|segOut2[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[4]~12_combout\ = (\inst3|Mux13~0_combout\ & ((\inst3|Mux11~0_combout\ & ((\inst3|Mux14~0_combout\))) # (!\inst3|Mux11~0_combout\ & (!\inst3|Mux12~0_combout\ & !\inst3|Mux14~0_combout\)))) # (!\inst3|Mux13~0_combout\ & 
-- (((\inst3|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux11~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux14~0_combout\,
	combout => \inst9|segOut2[4]~12_combout\);

-- Location: LCCOMB_X88_Y4_N2
\inst9|segOut2[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[4]~11_combout\ = (\inst3|Mux12~0_combout\ & (\inst3|Mux13~0_combout\ $ (((\inst3|Mux11~0_combout\ & !\inst3|Mux14~0_combout\))))) # (!\inst3|Mux12~0_combout\ & (\inst3|Mux11~0_combout\ $ (((\inst3|Mux13~0_combout\ & 
-- \inst3|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux11~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux14~0_combout\,
	combout => \inst9|segOut2[4]~11_combout\);

-- Location: LCCOMB_X88_Y4_N8
\inst9|segOut2[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[4]~31_combout\ = (\inst9|segOut2[4]~12_combout\ & (((\inst3|Mux15~0_combout\) # (!\inst3|Mux12~0_combout\)))) # (!\inst9|segOut2[4]~12_combout\ & ((\inst3|Mux12~0_combout\ & (\inst9|segOut2[4]~11_combout\)) # (!\inst3|Mux12~0_combout\ & 
-- ((\inst3|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[4]~11_combout\,
	datab => \inst9|segOut2[4]~12_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst9|segOut2[4]~31_combout\);

-- Location: LCCOMB_X88_Y4_N30
\inst9|segOut2[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[4]~32_combout\ = (\inst9|Equal3~4_combout\ & (\inst9|segOut2[4]~31_combout\ & ((!\inst9|segOut2[4]~11_combout\) # (!\inst9|segOut2[4]~12_combout\)))) # (!\inst9|Equal3~4_combout\ & ((\inst9|segOut2[4]~31_combout\) # 
-- ((!\inst9|segOut2[4]~12_combout\ & !\inst9|segOut2[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal3~4_combout\,
	datab => \inst9|segOut2[4]~12_combout\,
	datac => \inst9|segOut2[4]~31_combout\,
	datad => \inst9|segOut2[4]~11_combout\,
	combout => \inst9|segOut2[4]~32_combout\);

-- Location: LCCOMB_X90_Y4_N0
\inst9|segOut2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[3]~14_combout\ = (\inst7|Mux16~1_combout\) # ((!\inst7|Mux17~1_combout\ & ((\inst7|Mux18~1_combout\) # (\inst7|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2[3]~14_combout\);

-- Location: LCCOMB_X90_Y4_N14
\inst9|segOut2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[3]~15_combout\ = (!\inst9|Equal3~1_combout\ & (!\inst9|segOut2~7_combout\ & (!\inst9|Equal3~2_combout\ & \inst9|segOut2[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal3~1_combout\,
	datab => \inst9|segOut2~7_combout\,
	datac => \inst9|Equal3~2_combout\,
	datad => \inst9|segOut2[3]~14_combout\,
	combout => \inst9|segOut2[3]~15_combout\);

-- Location: LCCOMB_X90_Y4_N22
\inst9|segOut2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[3]~13_combout\ = (!\inst7|Mux16~1_combout\ & ((\inst7|Mux18~1_combout\ & (\inst7|Mux17~1_combout\ & !\inst7|Mux19~1_combout\)) # (!\inst7|Mux18~1_combout\ & ((\inst7|Mux17~1_combout\) # (!\inst7|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2[3]~13_combout\);

-- Location: LCCOMB_X90_Y4_N24
\inst9|segOut2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[3]~16_combout\ = (\inst9|segOut2[3]~15_combout\) # (\inst9|segOut2[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|segOut2[3]~15_combout\,
	datac => \inst9|segOut2[3]~13_combout\,
	combout => \inst9|segOut2[3]~16_combout\);

-- Location: LCCOMB_X90_Y4_N6
\inst9|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal3~5_combout\ = (\inst7|Mux18~1_combout\ & (!\inst7|Mux16~1_combout\ & (!\inst7|Mux17~1_combout\ & \inst7|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|Equal3~5_combout\);

-- Location: LCCOMB_X86_Y4_N24
\inst9|segOut2[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[2]~17_combout\ = (!\inst9|Equal3~5_combout\ & (!\inst9|segOut2[6]~29_combout\ & (!\inst9|Equal3~3_combout\ & \inst9|segOut2[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal3~5_combout\,
	datab => \inst9|segOut2[6]~29_combout\,
	datac => \inst9|Equal3~3_combout\,
	datad => \inst9|segOut2[5]~8_combout\,
	combout => \inst9|segOut2[2]~17_combout\);

-- Location: LCCOMB_X88_Y15_N22
\inst9|segOut2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~18_combout\ = (\SW[1]~input_o\) # (((\inst2|tempo_interno\(0)) # (\SW[2]~input_o\)) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|tempo_interno\(0),
	datad => \SW[2]~input_o\,
	combout => \inst9|segOut2[1]~18_combout\);

-- Location: LCCOMB_X89_Y15_N16
\inst9|segOut2[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~19_combout\ = (\inst2|tempo_interno\(3)) # (\inst9|segOut2[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|tempo_interno\(3),
	datad => \inst9|segOut2[1]~18_combout\,
	combout => \inst9|segOut2[1]~19_combout\);

-- Location: LCCOMB_X89_Y4_N26
\inst9|segOut2[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~21_combout\ = (\inst3|Mux14~0_combout\ & (((\inst3|Mux15~0_combout\)))) # (!\inst3|Mux14~0_combout\ & ((\inst3|Mux11~0_combout\ & ((!\inst3|Mux15~0_combout\))) # (!\inst3|Mux11~0_combout\ & (\inst9|segOut2[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux11~0_combout\,
	datab => \inst9|segOut2[1]~19_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst9|segOut2[1]~21_combout\);

-- Location: LCCOMB_X89_Y4_N10
\inst9|segOut2[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~23_combout\ = (\inst3|Mux14~0_combout\ & (\inst3|Mux13~0_combout\ & (\inst9|segOut2[1]~21_combout\ $ (\inst3|Mux12~0_combout\)))) # (!\inst3|Mux14~0_combout\ & (\inst9|segOut2[1]~21_combout\ & ((\inst3|Mux13~0_combout\) # 
-- (!\inst3|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[1]~21_combout\,
	datab => \inst3|Mux14~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux13~0_combout\,
	combout => \inst9|segOut2[1]~23_combout\);

-- Location: LCCOMB_X89_Y4_N28
\inst9|segOut2[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~20_combout\ = (\inst3|Mux11~0_combout\ & (((\inst3|Mux14~0_combout\) # (\inst3|Mux15~0_combout\)))) # (!\inst3|Mux11~0_combout\ & (\inst9|segOut2[1]~19_combout\ & (!\inst3|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux11~0_combout\,
	datab => \inst9|segOut2[1]~19_combout\,
	datac => \inst3|Mux14~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst9|segOut2[1]~20_combout\);

-- Location: LCCOMB_X89_Y4_N4
\inst9|segOut2[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~22_combout\ = (\inst3|Mux13~0_combout\ & ((\inst3|Mux14~0_combout\ & (\inst9|segOut2[1]~21_combout\)) # (!\inst3|Mux14~0_combout\ & ((\inst3|Mux12~0_combout\))))) # (!\inst3|Mux13~0_combout\ & (!\inst9|segOut2[1]~21_combout\ & 
-- ((\inst3|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[1]~21_combout\,
	datab => \inst3|Mux14~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux13~0_combout\,
	combout => \inst9|segOut2[1]~22_combout\);

-- Location: LCCOMB_X89_Y4_N22
\inst9|segOut2[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~25_combout\ = (\inst9|segOut2[1]~22_combout\ & (!\inst9|segOut2[1]~23_combout\ & (\inst9|segOut2[1]~20_combout\ $ (\inst3|Mux13~0_combout\)))) # (!\inst9|segOut2[1]~22_combout\ & (!\inst9|segOut2[1]~20_combout\ & 
-- (\inst9|segOut2[1]~23_combout\ $ (\inst3|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[1]~23_combout\,
	datab => \inst9|segOut2[1]~20_combout\,
	datac => \inst9|segOut2[1]~22_combout\,
	datad => \inst3|Mux13~0_combout\,
	combout => \inst9|segOut2[1]~25_combout\);

-- Location: LCCOMB_X89_Y4_N8
\inst9|segOut2[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~24_combout\ = (\inst9|segOut2[1]~20_combout\ & (\inst3|Mux13~0_combout\ $ (((\inst9|segOut2[1]~23_combout\) # (!\inst9|segOut2[1]~22_combout\))))) # (!\inst9|segOut2[1]~20_combout\ & (\inst9|segOut2[1]~23_combout\ & 
-- (\inst9|segOut2[1]~22_combout\ & \inst3|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[1]~23_combout\,
	datab => \inst9|segOut2[1]~20_combout\,
	datac => \inst9|segOut2[1]~22_combout\,
	datad => \inst3|Mux13~0_combout\,
	combout => \inst9|segOut2[1]~24_combout\);

-- Location: LCCOMB_X89_Y4_N18
\inst9|segOut2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2~30_combout\ = (\inst7|Mux17~1_combout\ & (((\inst7|Mux18~1_combout\)) # (!\inst7|Mux16~1_combout\))) # (!\inst7|Mux17~1_combout\ & ((\inst7|Mux16~1_combout\) # ((!\inst7|Mux19~1_combout\) # (!\inst7|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux17~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux18~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2~30_combout\);

-- Location: LCCOMB_X89_Y4_N20
\inst9|segOut2[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[1]~26_combout\ = (\inst9|segOut2[1]~25_combout\ & (!\inst9|segOut2[1]~24_combout\)) # (!\inst9|segOut2[1]~25_combout\ & (\inst9|segOut2[1]~24_combout\ & \inst9|segOut2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[1]~25_combout\,
	datac => \inst9|segOut2[1]~24_combout\,
	datad => \inst9|segOut2~30_combout\,
	combout => \inst9|segOut2[1]~26_combout\);

-- Location: LCCOMB_X90_Y4_N12
\inst9|segOut2[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[0]~27_combout\ = (!\inst7|Mux16~1_combout\ & ((\inst7|Mux18~1_combout\ & (\inst7|Mux17~1_combout\ & !\inst7|Mux19~1_combout\)) # (!\inst7|Mux18~1_combout\ & (\inst7|Mux17~1_combout\ $ (!\inst7|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux18~1_combout\,
	datab => \inst7|Mux16~1_combout\,
	datac => \inst7|Mux17~1_combout\,
	datad => \inst7|Mux19~1_combout\,
	combout => \inst9|segOut2[0]~27_combout\);

-- Location: LCCOMB_X90_Y4_N18
\inst9|segOut2[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut2[0]~28_combout\ = (\inst9|segOut2[0]~27_combout\) # ((\inst9|segOut2[3]~15_combout\ & !\inst9|Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut2[0]~27_combout\,
	datac => \inst9|segOut2[3]~15_combout\,
	datad => \inst9|Equal3~5_combout\,
	combout => \inst9|segOut2[0]~28_combout\);

-- Location: LCCOMB_X88_Y4_N4
\inst7|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux12~0_combout\ = (\inst3|Mux13~0_combout\ & (\inst3|Mux11~0_combout\ & (\inst3|Mux12~0_combout\ & \inst3|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux13~0_combout\,
	datab => \inst3|Mux11~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux12~0_combout\);

-- Location: LCCOMB_X88_Y4_N6
\inst7|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux12~1_combout\ = (\inst3|Mux14~0_combout\ & ((\inst7|Mux12~0_combout\) # ((\inst7|Mux19~0_combout\ & !\inst3|Mux15~0_combout\)))) # (!\inst3|Mux14~0_combout\ & (\inst7|Mux19~0_combout\ & ((!\inst3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux14~0_combout\,
	datab => \inst7|Mux19~0_combout\,
	datac => \inst7|Mux12~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux12~1_combout\);

-- Location: LCCOMB_X88_Y4_N10
\inst7|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux14~0_combout\ = (\inst3|Mux11~0_combout\ & ((\inst3|Mux12~0_combout\) # (\inst3|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux12~0_combout\,
	datac => \inst3|Mux13~0_combout\,
	datad => \inst3|Mux11~0_combout\,
	combout => \inst7|Mux14~0_combout\);

-- Location: LCCOMB_X88_Y4_N20
\inst9|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~0_combout\ = (!\inst7|Mux12~1_combout\ & ((\inst7|Mux14~0_combout\) # ((!\inst3|Mux15~0_combout\ & \inst7|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux12~1_combout\,
	datab => \inst3|Mux15~0_combout\,
	datac => \inst7|Mux14~0_combout\,
	datad => \inst7|Mux19~0_combout\,
	combout => \inst9|Equal1~0_combout\);

-- Location: LCCOMB_X88_Y4_N26
\inst7|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux15~0_combout\ = (\inst3|Mux13~0_combout\) # ((!\inst3|Mux11~0_combout\ & ((\inst3|Mux14~0_combout\) # (\inst3|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux14~0_combout\,
	datab => \inst3|Mux15~0_combout\,
	datac => \inst3|Mux13~0_combout\,
	datad => \inst3|Mux11~0_combout\,
	combout => \inst7|Mux15~0_combout\);

-- Location: LCCOMB_X88_Y4_N12
\inst7|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux15~1_combout\ = (\inst3|Mux11~0_combout\ & (\inst3|Mux13~0_combout\ & \inst3|Mux14~0_combout\)) # (!\inst3|Mux11~0_combout\ & ((\inst3|Mux13~0_combout\) # (\inst3|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux11~0_combout\,
	datac => \inst3|Mux13~0_combout\,
	datad => \inst3|Mux14~0_combout\,
	combout => \inst7|Mux15~1_combout\);

-- Location: LCCOMB_X88_Y4_N14
\inst9|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~1_combout\ = (\inst9|Equal1~0_combout\ & ((\inst3|Mux12~0_combout\ & ((!\inst7|Mux15~1_combout\))) # (!\inst3|Mux12~0_combout\ & (\inst7|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux15~0_combout\,
	datab => \inst9|Equal1~0_combout\,
	datac => \inst3|Mux12~0_combout\,
	datad => \inst7|Mux15~1_combout\,
	combout => \inst9|Equal1~1_combout\);

-- Location: LCCOMB_X88_Y4_N28
\inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (!\inst7|Mux12~1_combout\ & ((\inst3|Mux12~0_combout\ & ((\inst7|Mux15~1_combout\))) # (!\inst3|Mux12~0_combout\ & (!\inst7|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux12~1_combout\,
	datab => \inst3|Mux12~0_combout\,
	datac => \inst7|Mux15~0_combout\,
	datad => \inst7|Mux15~1_combout\,
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X88_Y4_N22
\inst7|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux14~1_combout\ = (\inst7|Mux14~0_combout\) # ((\inst7|Mux19~0_combout\ & !\inst3|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux14~0_combout\,
	datab => \inst7|Mux19~0_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst7|Mux14~1_combout\);

-- Location: LCCOMB_X88_Y4_N0
\inst9|segOut1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut1[1]~0_combout\ = (!\inst9|Equal1~0_combout\ & ((\inst7|Mux14~1_combout\) # (!\inst9|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal1~0_combout\,
	datac => \inst7|Mux14~1_combout\,
	datad => \inst9|Equal0~2_combout\,
	combout => \inst9|segOut1[1]~0_combout\);

-- Location: LCCOMB_X89_Y15_N6
\inst2|pre_interno[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[1]~6_cout\ = CARRY(!\inst2|pre_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(0),
	datad => VCC,
	cout => \inst2|pre_interno[1]~6_cout\);

-- Location: LCCOMB_X89_Y15_N8
\inst2|pre_interno[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[1]~7_combout\ = (\inst2|pre_interno\(1) & ((\inst2|process_0~4_combout\ & (!\inst2|pre_interno[1]~6_cout\)) # (!\inst2|process_0~4_combout\ & (\inst2|pre_interno[1]~6_cout\ & VCC)))) # (!\inst2|pre_interno\(1) & 
-- ((\inst2|process_0~4_combout\ & ((\inst2|pre_interno[1]~6_cout\) # (GND))) # (!\inst2|process_0~4_combout\ & (!\inst2|pre_interno[1]~6_cout\))))
-- \inst2|pre_interno[1]~8\ = CARRY((\inst2|pre_interno\(1) & (\inst2|process_0~4_combout\ & !\inst2|pre_interno[1]~6_cout\)) # (!\inst2|pre_interno\(1) & ((\inst2|process_0~4_combout\) # (!\inst2|pre_interno[1]~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(1),
	datab => \inst2|process_0~4_combout\,
	datad => VCC,
	cin => \inst2|pre_interno[1]~6_cout\,
	combout => \inst2|pre_interno[1]~7_combout\,
	cout => \inst2|pre_interno[1]~8\);

-- Location: LCCOMB_X89_Y15_N2
\inst2|pre_interno[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[0]~9_combout\ = (\inst32|PS.PREE~q\ & ((\inst2|pre_interno[0]~3_combout\) # (\inst2|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pre_interno[0]~3_combout\,
	datac => \inst32|PS.PREE~q\,
	datad => \inst2|process_0~4_combout\,
	combout => \inst2|pre_interno[0]~9_combout\);

-- Location: FF_X89_Y15_N9
\inst2|pre_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pre_interno[1]~7_combout\,
	ena => \inst2|pre_interno[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pre_interno\(1));

-- Location: LCCOMB_X89_Y15_N10
\inst2|pre_interno[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[2]~10_combout\ = ((\inst2|pre_interno\(2) $ (\inst2|process_0~4_combout\ $ (\inst2|pre_interno[1]~8\)))) # (GND)
-- \inst2|pre_interno[2]~11\ = CARRY((\inst2|pre_interno\(2) & ((!\inst2|pre_interno[1]~8\) # (!\inst2|process_0~4_combout\))) # (!\inst2|pre_interno\(2) & (!\inst2|process_0~4_combout\ & !\inst2|pre_interno[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(2),
	datab => \inst2|process_0~4_combout\,
	datad => VCC,
	cin => \inst2|pre_interno[1]~8\,
	combout => \inst2|pre_interno[2]~10_combout\,
	cout => \inst2|pre_interno[2]~11\);

-- Location: FF_X89_Y15_N11
\inst2|pre_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pre_interno[2]~10_combout\,
	ena => \inst2|pre_interno[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pre_interno\(2));

-- Location: LCCOMB_X89_Y15_N18
\inst2|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (\KEY[0]~input_o\ & (((!\inst2|pre_interno\(1) & !\inst2|pre_interno\(2))) # (!\inst2|pre_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datab => \KEY[0]~input_o\,
	datac => \inst2|pre_interno\(1),
	datad => \inst2|pre_interno\(2),
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X89_Y15_N12
\inst2|pre_interno[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[3]~12_combout\ = \inst2|pre_interno\(3) $ (\inst2|pre_interno[2]~11\ $ (!\inst2|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datad => \inst2|process_0~4_combout\,
	cin => \inst2|pre_interno[2]~11\,
	combout => \inst2|pre_interno[3]~12_combout\);

-- Location: FF_X89_Y15_N13
\inst2|pre_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pre_interno[3]~12_combout\,
	ena => \inst2|pre_interno[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pre_interno\(3));

-- Location: LCCOMB_X89_Y15_N20
\inst2|pre_interno[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[0]~3_combout\ = (\KEY[1]~input_o\ & ((\inst2|pre_interno\(3)) # ((\inst2|pre_interno\(1)) # (\inst2|pre_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datab => \KEY[1]~input_o\,
	datac => \inst2|pre_interno\(1),
	datad => \inst2|pre_interno\(2),
	combout => \inst2|pre_interno[0]~3_combout\);

-- Location: LCCOMB_X89_Y15_N26
\inst2|pre_interno[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pre_interno[0]~4_combout\ = \inst2|pre_interno\(0) $ (((\inst32|PS.PREE~q\ & ((\inst2|pre_interno[0]~3_combout\) # (\inst2|process_0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|PS.PREE~q\,
	datab => \inst2|pre_interno[0]~3_combout\,
	datac => \inst2|pre_interno\(0),
	datad => \inst2|process_0~4_combout\,
	combout => \inst2|pre_interno[0]~4_combout\);

-- Location: FF_X89_Y15_N27
\inst2|pre_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pre_interno[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pre_interno\(0));

-- Location: LCCOMB_X89_Y15_N4
\inst3|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux23~0_combout\ = (\SW[2]~input_o\ & (((!\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((!\inst2|pre_interno\(0) & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(0),
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux23~0_combout\);

-- Location: LCCOMB_X89_Y15_N22
\inst3|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux20~0_combout\ = (\inst2|pre_interno\(3) & (\SW[0]~input_o\ & (!\SW[2]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux20~0_combout\);

-- Location: LCCOMB_X89_Y15_N28
\inst3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = (\SW[0]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[1]~input_o\))) # (!\SW[2]~input_o\ & ((\inst2|pre_interno\(2)) # (\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(2),
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux21~0_combout\);

-- Location: LCCOMB_X89_Y15_N30
\inst3|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux22~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst2|pre_interno\(1) & !\SW[2]~input_o\))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|pre_interno\(1),
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mux22~0_combout\);

-- Location: LCCOMB_X89_Y11_N26
\inst9|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal13~0_combout\ = (\inst3|Mux23~0_combout\) # ((\inst3|Mux21~0_combout\) # (\inst3|Mux20~0_combout\ $ (\inst3|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|Equal13~0_combout\);

-- Location: LCCOMB_X89_Y11_N8
\inst9|segOut3[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[6]~35_combout\ = (!\inst3|Mux20~0_combout\ & (!\inst3|Mux21~0_combout\ & (\inst3|Mux23~0_combout\ $ (\inst3|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|segOut3[6]~35_combout\);

-- Location: LCCOMB_X89_Y11_N10
\inst9|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal13~2_combout\ = (\inst3|Mux23~0_combout\ & (!\inst3|Mux20~0_combout\ & (!\inst3|Mux21~0_combout\ & !\inst3|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|Equal13~2_combout\);

-- Location: LCCOMB_X89_Y11_N4
\inst9|segOut3[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[6]~36_combout\ = (!\inst3|Mux21~0_combout\ & !\inst3|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux20~0_combout\,
	combout => \inst9|segOut3[6]~36_combout\);

-- Location: LCCOMB_X89_Y11_N22
\inst9|segOut3[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[6]~37_combout\ = (\inst9|Equal13~2_combout\) # (((\inst9|segOut3[6]~36_combout\ & \inst3|Mux22~0_combout\)) # (!\inst9|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal13~2_combout\,
	datab => \inst9|segOut3[6]~36_combout\,
	datac => \inst9|Equal13~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|segOut3[6]~37_combout\);

-- Location: LCCOMB_X89_Y11_N12
\inst9|segOut3~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3~49_combout\ = (\inst3|Mux20~0_combout\ & (((\inst3|Mux21~0_combout\) # (\inst3|Mux22~0_combout\)))) # (!\inst3|Mux20~0_combout\ & (((\inst3|Mux23~0_combout\ & \inst3|Mux22~0_combout\)) # (!\inst3|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|segOut3~49_combout\);

-- Location: LCCOMB_X89_Y11_N24
\inst9|segOut3[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[6]~38_combout\ = (\inst9|segOut3[6]~37_combout\ & (\inst9|Equal13~0_combout\ & (\inst9|segOut3[6]~35_combout\))) # (!\inst9|segOut3[6]~37_combout\ & (((\inst9|segOut3~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal13~0_combout\,
	datab => \inst9|segOut3[6]~35_combout\,
	datac => \inst9|segOut3[6]~37_combout\,
	datad => \inst9|segOut3~49_combout\,
	combout => \inst9|segOut3[6]~38_combout\);

-- Location: LCCOMB_X89_Y11_N14
\inst9|segOut3[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[5]~39_combout\ = (\inst9|segOut3[6]~37_combout\ & (\inst9|Equal13~0_combout\)) # (!\inst9|segOut3[6]~37_combout\ & ((\inst9|segOut3~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut3[6]~37_combout\,
	datac => \inst9|Equal13~0_combout\,
	datad => \inst9|segOut3~49_combout\,
	combout => \inst9|segOut3[5]~39_combout\);

-- Location: LCCOMB_X89_Y15_N24
\inst9|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal13~1_combout\ = (\inst3|Mux20~0_combout\ & (!\inst3|Mux23~0_combout\ & (!\inst3|Mux22~0_combout\ & !\inst3|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux20~0_combout\,
	datab => \inst3|Mux23~0_combout\,
	datac => \inst3|Mux22~0_combout\,
	datad => \inst3|Mux21~0_combout\,
	combout => \inst9|Equal13~1_combout\);

-- Location: LCCOMB_X90_Y15_N10
\inst9|segOut3[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[4]~40_combout\ = (\inst2|pre_interno\(1) & (!\inst2|pre_interno\(2))) # (!\inst2|pre_interno\(1) & (\inst2|pre_interno\(2) & !\inst2|pre_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(1),
	datac => \inst2|pre_interno\(2),
	datad => \inst2|pre_interno\(3),
	combout => \inst9|segOut3[4]~40_combout\);

-- Location: LCCOMB_X90_Y15_N12
\inst9|segOut3[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[4]~41_combout\ = (\inst2|pre_interno\(3) & ((\inst9|Equal13~1_combout\) # ((\inst2|pre_interno\(0) & \inst9|segOut3[4]~40_combout\)))) # (!\inst2|pre_interno\(3) & (((\inst2|pre_interno\(0) & !\inst9|segOut3[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datab => \inst9|Equal13~1_combout\,
	datac => \inst2|pre_interno\(0),
	datad => \inst9|segOut3[4]~40_combout\,
	combout => \inst9|segOut3[4]~41_combout\);

-- Location: LCCOMB_X90_Y15_N26
\inst9|segOut3[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[4]~42_combout\ = (\SW[2]~input_o\ & (((!\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\SW[0]~input_o\ & !\inst9|segOut3[4]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst9|segOut3[4]~41_combout\,
	combout => \inst9|segOut3[4]~42_combout\);

-- Location: LCCOMB_X89_Y15_N0
\inst9|segOut3[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[3]~6_combout\ = (\inst2|pre_interno\(3) & ((\inst2|pre_interno\(2)) # ((\inst2|pre_interno\(1) & !\inst2|pre_interno\(0))))) # (!\inst2|pre_interno\(3) & (\inst2|pre_interno\(1) & (!\inst2|pre_interno\(0) & \inst2|pre_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(3),
	datab => \inst2|pre_interno\(1),
	datac => \inst2|pre_interno\(0),
	datad => \inst2|pre_interno\(2),
	combout => \inst9|segOut3[3]~6_combout\);

-- Location: LCCOMB_X89_Y15_N14
\inst9|segOut3[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[3]~44_combout\ = (!\SW[1]~input_o\ & (\inst9|segOut3[3]~6_combout\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst9|segOut3[3]~6_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst9|segOut3[3]~44_combout\);

-- Location: LCCOMB_X89_Y11_N20
\inst9|segOut3[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[3]~47_combout\ = (\inst3|Mux21~0_combout\ & ((\inst3|Mux20~0_combout\) # ((!\inst3|Mux23~0_combout\ & !\inst3|Mux22~0_combout\)))) # (!\inst3|Mux21~0_combout\ & ((\inst3|Mux22~0_combout\ & (!\inst3|Mux23~0_combout\)) # 
-- (!\inst3|Mux22~0_combout\ & ((!\inst3|Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|segOut3[3]~47_combout\);

-- Location: LCCOMB_X89_Y11_N18
\inst9|segOut3[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[3]~48_combout\ = (\inst9|segOut3[3]~44_combout\ & ((\inst9|segOut3[3]~47_combout\) # ((!\inst3|Mux20~0_combout\) # (!\inst3|Mux21~0_combout\)))) # (!\inst9|segOut3[3]~44_combout\ & (\inst9|segOut3[3]~47_combout\ & 
-- ((!\inst3|Mux20~0_combout\) # (!\inst3|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|segOut3[3]~44_combout\,
	datab => \inst9|segOut3[3]~47_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux20~0_combout\,
	combout => \inst9|segOut3[3]~48_combout\);

-- Location: LCCOMB_X90_Y15_N18
\inst9|segOut3[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[2]~14_combout\ = (\inst2|pre_interno\(3) & ((\inst2|pre_interno\(2)) # ((!\inst2|pre_interno\(0) & \inst2|pre_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(0),
	datab => \inst2|pre_interno\(3),
	datac => \inst2|pre_interno\(2),
	datad => \inst2|pre_interno\(1),
	combout => \inst9|segOut3[2]~14_combout\);

-- Location: LCCOMB_X90_Y15_N4
\inst9|segOut3[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[2]~45_combout\ = (\SW[0]~input_o\ & (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & \inst9|segOut3[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst9|segOut3[2]~14_combout\,
	combout => \inst9|segOut3[2]~45_combout\);

-- Location: LCCOMB_X89_Y11_N28
\inst9|segOut3[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[1]~43_combout\ = (\inst3|Mux23~0_combout\ & ((\inst3|Mux22~0_combout\ & (\inst3|Mux20~0_combout\)) # (!\inst3|Mux22~0_combout\ & ((\inst3|Mux21~0_combout\))))) # (!\inst3|Mux23~0_combout\ & (\inst3|Mux21~0_combout\ & 
-- ((\inst3|Mux20~0_combout\) # (\inst3|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux23~0_combout\,
	datab => \inst3|Mux20~0_combout\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|Mux22~0_combout\,
	combout => \inst9|segOut3[1]~43_combout\);

-- Location: LCCOMB_X90_Y15_N28
\inst9|segOut3[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[0]~30_combout\ = (\inst2|pre_interno\(0) & (\inst2|pre_interno\(2) $ (((!\inst2|pre_interno\(3) & \inst2|pre_interno\(1)))))) # (!\inst2|pre_interno\(0) & (\inst2|pre_interno\(3) $ (((!\inst2|pre_interno\(2) & !\inst2|pre_interno\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pre_interno\(0),
	datab => \inst2|pre_interno\(3),
	datac => \inst2|pre_interno\(2),
	datad => \inst2|pre_interno\(1),
	combout => \inst9|segOut3[0]~30_combout\);

-- Location: LCCOMB_X90_Y15_N22
\inst9|segOut3[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|segOut3[0]~46_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \inst9|segOut3[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst9|segOut3[0]~30_combout\,
	combout => \inst9|segOut3[0]~46_combout\);

-- Location: LCCOMB_X88_Y4_N18
\inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (!\inst7|Mux14~0_combout\ & (\inst9|Equal0~2_combout\ & ((\inst3|Mux15~0_combout\) # (!\inst7|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux14~0_combout\,
	datab => \inst7|Mux19~0_combout\,
	datac => \inst9|Equal0~2_combout\,
	datad => \inst3|Mux15~0_combout\,
	combout => \inst9|Equal0~3_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


