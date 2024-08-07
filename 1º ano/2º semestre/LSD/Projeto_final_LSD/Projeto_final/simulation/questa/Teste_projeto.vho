-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "05/29/2024 17:32:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	Teste_projeto_final IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 12)
	);
END Teste_projeto_final;

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
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Teste_projeto_final IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 12);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|pulse_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst11|key_dec_prev~0_combout\ : std_logic;
SIGNAL \inst11|key_dec_prev~q\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst11|key_inc_prev~0_combout\ : std_logic;
SIGNAL \inst11|key_inc_prev~q\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|temp[4]~8_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|temp[1]~4_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst14|key_prev~0_combout\ : std_logic;
SIGNAL \inst14|key_prev~q\ : std_logic;
SIGNAL \inst14|process_1~0_combout\ : std_logic;
SIGNAL \inst14|PS.TEMPOO~q\ : std_logic;
SIGNAL \inst14|PS.PREE~q\ : std_logic;
SIGNAL \inst14|PS.INICIAL~0_combout\ : std_logic;
SIGNAL \inst14|PS.INICIAL~q\ : std_logic;
SIGNAL \inst14|PS.TEMPERATURA~0_combout\ : std_logic;
SIGNAL \inst14|PS.TEMPERATURA~q\ : std_logic;
SIGNAL \inst11|process_0~0_combout\ : std_logic;
SIGNAL \inst11|temp[1]~5_combout\ : std_logic;
SIGNAL \inst11|temp[1]~7_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|temp[2]~9_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|LessThan3~0_combout\ : std_logic;
SIGNAL \inst11|LessThan3~1_combout\ : std_logic;
SIGNAL \inst11|temp[1]~6_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|counter~7_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|counter~6_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|counter~5_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|counter~4_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|counter~10_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|counter~3_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|counter~2_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|counter~1_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|counter~0_combout\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|counter~8_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|counter~11_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|counter~9_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Equal1~0_combout\ : std_logic;
SIGNAL \inst7|Equal1~1_combout\ : std_logic;
SIGNAL \inst7|Equal1~3_combout\ : std_logic;
SIGNAL \inst7|Equal1~2_combout\ : std_logic;
SIGNAL \inst7|Equal1~4_combout\ : std_logic;
SIGNAL \inst7|pulse_reg~0_combout\ : std_logic;
SIGNAL \inst7|pulse_reg~q\ : std_logic;
SIGNAL \inst7|pulse_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|s_temperatura[1]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[1]~7_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst4|s_tempo[0]~8_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst958|s_currentState~12_combout\ : std_logic;
SIGNAL \inst958|s_currentState~24_combout\ : std_logic;
SIGNAL \inst958|s_currentState~26_combout\ : std_logic;
SIGNAL \inst958|s_currentState.AIRABERTA~q\ : std_logic;
SIGNAL \inst958|s_currentState~20_combout\ : std_logic;
SIGNAL \inst958|s_currentState~21_combout\ : std_logic;
SIGNAL \inst958|s_currentState~22_combout\ : std_logic;
SIGNAL \inst958|s_currentState~23_combout\ : std_logic;
SIGNAL \inst958|s_currentState.PREAQ~q\ : std_logic;
SIGNAL \inst|s_pre[0]~8_combout\ : std_logic;
SIGNAL \inst11|process_0~1_combout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~21_combout\ : std_logic;
SIGNAL \inst11|Add2~4_combout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~14_cout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~15_combout\ : std_logic;
SIGNAL \inst11|pre_interno[2]~18\ : std_logic;
SIGNAL \inst11|pre_interno[3]~19_combout\ : std_logic;
SIGNAL \inst11|LessThan2~0_combout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~22_combout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~16\ : std_logic;
SIGNAL \inst11|pre_interno[2]~17_combout\ : std_logic;
SIGNAL \inst11|LessThan5~0_combout\ : std_logic;
SIGNAL \inst11|pre_interno[1]~11_combout\ : std_logic;
SIGNAL \inst11|pre_interno[0]~9_combout\ : std_logic;
SIGNAL \inst11|pre_interno[0]~10_combout\ : std_logic;
SIGNAL \inst11|pre_interno[0]~12_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[0]~0_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[0]~1_combout\ : std_logic;
SIGNAL \inst|s_pre[2]~14\ : std_logic;
SIGNAL \inst|s_pre[3]~15_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[3]~6_combout\ : std_logic;
SIGNAL \inst|s_pre[3]~16\ : std_logic;
SIGNAL \inst|s_pre[4]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|s_pre[4]~18\ : std_logic;
SIGNAL \inst|s_pre[5]~19_combout\ : std_logic;
SIGNAL \inst|s_pre[5]~20\ : std_logic;
SIGNAL \inst|s_pre[6]~21_combout\ : std_logic;
SIGNAL \inst|s_pre[6]~22\ : std_logic;
SIGNAL \inst|s_pre[7]~23_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|s_pre~10_combout\ : std_logic;
SIGNAL \inst|s_pre[0]~9\ : std_logic;
SIGNAL \inst|s_pre[1]~11_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[1]~4_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[1]~5_combout\ : std_logic;
SIGNAL \inst|s_pre[1]~12\ : std_logic;
SIGNAL \inst|s_pre[2]~13_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[2]~2_combout\ : std_logic;
SIGNAL \inst958|saidatempopre_aquecimento[2]~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst958|s_currentState~10_combout\ : std_logic;
SIGNAL \inst958|s_currentState.IDLE~0_combout\ : std_logic;
SIGNAL \inst958|s_currentState.IDLE~1_combout\ : std_logic;
SIGNAL \inst958|s_currentState.IDLE~q\ : std_logic;
SIGNAL \inst4|s_tempo[1]~12\ : std_logic;
SIGNAL \inst4|s_tempo[2]~13_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[2]~3_combout\ : std_logic;
SIGNAL \inst11|Add1~4_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[4]~22_combout\ : std_logic;
SIGNAL \inst11|Add4~1\ : std_logic;
SIGNAL \inst11|Add4~2_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[1]~3_combout\ : std_logic;
SIGNAL \inst11|Add1~2_combout\ : std_logic;
SIGNAL \inst11|Add4~3\ : std_logic;
SIGNAL \inst11|Add4~5\ : std_logic;
SIGNAL \inst11|Add4~6_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[3]~1_combout\ : std_logic;
SIGNAL \inst11|Add1~0_combout\ : std_logic;
SIGNAL \inst11|Add1~1_combout\ : std_logic;
SIGNAL \inst11|Add4~7\ : std_logic;
SIGNAL \inst11|Add4~8_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[4]~0_combout\ : std_logic;
SIGNAL \inst11|LessThan1~0_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[4]~23_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[4]~19_combout\ : std_logic;
SIGNAL \inst11|LessThan4~0_combout\ : std_logic;
SIGNAL \inst11|tempo_interno~16_combout\ : std_logic;
SIGNAL \inst11|Add4~0_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[0]~17_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[0]~21_combout\ : std_logic;
SIGNAL \inst11|tempo_interno~20_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[0]~18_combout\ : std_logic;
SIGNAL \inst11|Add1~3_combout\ : std_logic;
SIGNAL \inst11|Add4~4_combout\ : std_logic;
SIGNAL \inst11|tempo_interno[2]~2_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[2]~4_combout\ : std_logic;
SIGNAL \inst4|s_tempo~10_combout\ : std_logic;
SIGNAL \inst4|s_tempo[2]~14\ : std_logic;
SIGNAL \inst4|s_tempo[3]~15_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[3]~2_combout\ : std_logic;
SIGNAL \inst4|s_tempo[3]~16\ : std_logic;
SIGNAL \inst4|s_tempo[4]~17_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[4]~1_combout\ : std_logic;
SIGNAL \inst4|s_tempo[4]~18\ : std_logic;
SIGNAL \inst4|s_tempo[5]~19_combout\ : std_logic;
SIGNAL \inst4|s_tempo[5]~20\ : std_logic;
SIGNAL \inst4|s_tempo[6]~21_combout\ : std_logic;
SIGNAL \inst4|s_tempo[6]~22\ : std_logic;
SIGNAL \inst4|s_tempo[7]~23_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst958|Selector6~0_combout\ : std_logic;
SIGNAL \inst958|s_coccaojapassou~combout\ : std_logic;
SIGNAL \inst958|s_currentState~18_combout\ : std_logic;
SIGNAL \inst958|s_currentState~11_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst958|s_currentState~13_combout\ : std_logic;
SIGNAL \inst958|s_currentState~15_combout\ : std_logic;
SIGNAL \inst958|s_currentState~16_combout\ : std_logic;
SIGNAL \inst958|s_currentState~17_combout\ : std_logic;
SIGNAL \inst958|s_currentState.COCCAO~q\ : std_logic;
SIGNAL \inst958|saidatempococcao[0]~0_combout\ : std_logic;
SIGNAL \inst4|s_tempo[0]~9\ : std_logic;
SIGNAL \inst4|s_tempo[1]~11_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[1]~5_combout\ : std_logic;
SIGNAL \inst958|saidatempococcao[1]~6_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst958|s_currentState~14_combout\ : std_logic;
SIGNAL \inst958|s_currentState~19_combout\ : std_logic;
SIGNAL \inst958|s_currentState~25_combout\ : std_logic;
SIGNAL \inst958|s_currentState~27_combout\ : std_logic;
SIGNAL \inst958|s_currentState~28_combout\ : std_logic;
SIGNAL \inst958|s_currentState.AIRFECHADA~q\ : std_logic;
SIGNAL \inst958|s_currentState~9_combout\ : std_logic;
SIGNAL \inst958|s_currentState.ARREFECIMENTO~q\ : std_logic;
SIGNAL \inst958|saidatemperatura[1]~8_combout\ : std_logic;
SIGNAL \inst5|s_temperatura~9_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[6]~0_combout\ : std_logic;
SIGNAL \inst5|s_temperatura~10_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[1]~8\ : std_logic;
SIGNAL \inst5|s_temperatura[2]~11_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[2]~6_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[2]~12\ : std_logic;
SIGNAL \inst5|s_temperatura[3]~13_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[3]~5_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[3]~14\ : std_logic;
SIGNAL \inst5|s_temperatura[4]~15_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[4]~4_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[4]~16\ : std_logic;
SIGNAL \inst5|s_temperatura[5]~17_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[5]~1_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[5]~2_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[5]~18\ : std_logic;
SIGNAL \inst5|s_temperatura[6]~19_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[6]~0_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[6]~9_combout\ : std_logic;
SIGNAL \inst5|s_temperatura[6]~20\ : std_logic;
SIGNAL \inst5|s_temperatura[7]~21_combout\ : std_logic;
SIGNAL \inst958|saidatemperatura[7]~10_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[7]~2_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[7]~1_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[6]~3_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[5]~4_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[4]~5_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[3]~6_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[2]~7_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ : std_logic;
SIGNAL \inst12|saida_temperatura[1]~8_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\ : std_logic;
SIGNAL \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|Mux2~0_combout\ : std_logic;
SIGNAL \inst16|Mux3~0_combout\ : std_logic;
SIGNAL \inst16|Mux4~0_combout\ : std_logic;
SIGNAL \inst16|Mux5~0_combout\ : std_logic;
SIGNAL \inst16|Mux6~0_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[5]~1_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[4]~2_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[3]~3_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[2]~4_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[1]~5_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_coccao[0]~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[7]~1_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[3]~2_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[3]~3_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[2]~4_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[1]~5_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ : std_logic;
SIGNAL \inst12|saida_tempo_pre_aquecimento[0]~0_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24_combout\ : std_logic;
SIGNAL \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~0_combout\ : std_logic;
SIGNAL \inst19|Mux6~0_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst958|s_currentState~8_combout\ : std_logic;
SIGNAL \inst958|WideOr0~combout\ : std_logic;
SIGNAL \inst11|pre_interno\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|s_temperatura\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|s_tempo\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|s_pre\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|tempo_interno\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst958|estadoatual\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \inst958|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Div0|auto_generated|divider|divider|ALT_INV_op_6~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst7|pulse_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|pulse_reg~q\);
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\inst958|ALT_INV_WideOr0~combout\ <= NOT \inst958|WideOr0~combout\;
\inst20|ALT_INV_Mux0~0_combout\ <= NOT \inst20|Mux0~0_combout\;
\inst19|ALT_INV_Mux0~0_combout\ <= NOT \inst19|Mux0~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst8|ALT_INV_Mux0~0_combout\ <= NOT \inst8|Mux0~0_combout\;
\inst16|ALT_INV_Mux0~0_combout\ <= NOT \inst16|Mux0~0_combout\;
\inst15|ALT_INV_Mux0~0_combout\ <= NOT \inst15|Mux0~0_combout\;
\inst13|Div0|auto_generated|divider|divider|ALT_INV_op_6~12_combout\ <= NOT \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\;
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
	i => \inst15|ALT_INV_Mux0~0_combout\,
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
	i => \inst15|Mux1~0_combout\,
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
	i => \inst15|Mux2~0_combout\,
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
	i => \inst15|Mux3~0_combout\,
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
	i => \inst15|Mux4~0_combout\,
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
	i => \inst15|Mux5~0_combout\,
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
	i => \inst15|Mux2~0_combout\,
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
	i => \inst16|ALT_INV_Mux0~0_combout\,
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
	i => \inst16|Mux1~0_combout\,
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
	i => \inst16|Mux2~0_combout\,
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
	i => \inst16|Mux3~0_combout\,
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
	i => \inst16|Mux4~0_combout\,
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
	i => \inst16|Mux5~0_combout\,
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
	i => \inst16|Mux6~0_combout\,
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
	i => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
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
	i => \inst17|Mux1~0_combout\,
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
	i => \inst13|Div0|auto_generated|divider|divider|ALT_INV_op_6~12_combout\,
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
	i => \inst17|Mux3~0_combout\,
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
	i => \inst17|Mux4~0_combout\,
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
	i => GND,
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
	i => \inst17|Mux3~0_combout\,
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
	i => \inst8|ALT_INV_Mux0~0_combout\,
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
	i => \inst8|Mux1~0_combout\,
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
	i => \inst8|Mux2~0_combout\,
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
	i => \inst8|Mux3~0_combout\,
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
	i => \inst8|Mux4~0_combout\,
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
	i => \inst8|Mux5~0_combout\,
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
	i => \inst8|Mux6~0_combout\,
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
	i => \inst9|ALT_INV_Mux0~0_combout\,
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
	i => \inst9|Mux1~0_combout\,
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
	i => \inst9|Mux2~0_combout\,
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
	i => \inst9|Mux3~0_combout\,
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
	i => \inst9|Mux4~0_combout\,
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
	i => \inst9|Mux5~0_combout\,
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
	i => \inst9|Mux6~0_combout\,
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
	i => \inst19|ALT_INV_Mux0~0_combout\,
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
	i => \inst19|Mux1~0_combout\,
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
	i => \inst19|Mux2~0_combout\,
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
	i => \inst19|Mux3~0_combout\,
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
	i => \inst19|Mux4~0_combout\,
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
	i => \inst19|Mux5~0_combout\,
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
	i => \inst19|Mux6~0_combout\,
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
	i => \inst20|ALT_INV_Mux0~0_combout\,
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
	i => \inst20|Mux1~0_combout\,
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
	i => \inst20|Mux2~0_combout\,
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
	i => \inst20|Mux3~0_combout\,
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
	i => \inst20|Mux4~0_combout\,
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
	i => \inst20|Mux5~0_combout\,
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
	i => \inst20|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst958|s_currentState.IDLE~q\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst958|s_currentState~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst958|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst958|estadoatual\(1),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst958|s_currentState.ARREFECIMENTO~q\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

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

-- Location: LCCOMB_X96_Y25_N28
\inst11|key_dec_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|key_dec_prev~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst11|key_dec_prev~0_combout\);

-- Location: FF_X96_Y25_N29
\inst11|key_dec_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|key_dec_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|key_dec_prev~q\);

-- Location: LCCOMB_X102_Y25_N4
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|temp\(1) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp\(1),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

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

-- Location: LCCOMB_X96_Y25_N12
\inst11|key_inc_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|key_inc_prev~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \inst11|key_inc_prev~0_combout\);

-- Location: FF_X96_Y25_N13
\inst11|key_inc_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|key_inc_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|key_inc_prev~q\);

-- Location: LCCOMB_X102_Y25_N8
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = ((\inst11|temp\(3) $ (\inst11|temp[1]~6_combout\ $ (!\inst11|Add0~3\)))) # (GND)
-- \inst11|Add0~5\ = CARRY((\inst11|temp\(3) & ((\inst11|temp[1]~6_combout\) # (!\inst11|Add0~3\))) # (!\inst11|temp\(3) & (\inst11|temp[1]~6_combout\ & !\inst11|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(3),
	datab => \inst11|temp[1]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X102_Y25_N10
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|temp\(4) & ((\inst11|temp[1]~6_combout\ & ((\inst11|Add0~5\) # (GND))) # (!\inst11|temp[1]~6_combout\ & (!\inst11|Add0~5\)))) # (!\inst11|temp\(4) & ((\inst11|temp[1]~6_combout\ & (!\inst11|Add0~5\)) # 
-- (!\inst11|temp[1]~6_combout\ & (\inst11|Add0~5\ & VCC))))
-- \inst11|Add0~7\ = CARRY((\inst11|temp\(4) & ((\inst11|temp[1]~6_combout\) # (!\inst11|Add0~5\))) # (!\inst11|temp\(4) & (\inst11|temp[1]~6_combout\ & !\inst11|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(4),
	datab => \inst11|temp[1]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X102_Y25_N28
\inst11|temp[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[4]~8_combout\ = !\inst11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add0~6_combout\,
	combout => \inst11|temp[4]~8_combout\);

-- Location: FF_X102_Y25_N29
\inst11|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|temp[4]~8_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(4));

-- Location: LCCOMB_X102_Y25_N12
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = ((\inst11|temp\(5) $ (\inst11|temp[1]~6_combout\ $ (\inst11|Add0~7\)))) # (GND)
-- \inst11|Add0~9\ = CARRY((\inst11|temp\(5) & ((!\inst11|Add0~7\) # (!\inst11|temp[1]~6_combout\))) # (!\inst11|temp\(5) & (!\inst11|temp[1]~6_combout\ & !\inst11|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(5),
	datab => \inst11|temp[1]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: FF_X102_Y25_N13
\inst11|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|Add0~8_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(5));

-- Location: LCCOMB_X102_Y25_N14
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|temp\(6) & ((\inst11|temp[1]~6_combout\ & (!\inst11|Add0~9\)) # (!\inst11|temp[1]~6_combout\ & (\inst11|Add0~9\ & VCC)))) # (!\inst11|temp\(6) & ((\inst11|temp[1]~6_combout\ & ((\inst11|Add0~9\) # (GND))) # 
-- (!\inst11|temp[1]~6_combout\ & (!\inst11|Add0~9\))))
-- \inst11|Add0~11\ = CARRY((\inst11|temp\(6) & (\inst11|temp[1]~6_combout\ & !\inst11|Add0~9\)) # (!\inst11|temp\(6) & ((\inst11|temp[1]~6_combout\) # (!\inst11|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(6),
	datab => \inst11|temp[1]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: FF_X102_Y25_N15
\inst11|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|Add0~10_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(6));

-- Location: LCCOMB_X102_Y25_N22
\inst11|temp[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[1]~4_combout\ = (\inst11|temp\(6) & ((\inst11|temp\(5)) # ((\inst11|temp\(3)) # (!\inst11|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(5),
	datab => \inst11|temp\(6),
	datac => \inst11|temp\(3),
	datad => \inst11|temp\(4),
	combout => \inst11|temp[1]~4_combout\);

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

-- Location: LCCOMB_X101_Y25_N2
\inst14|key_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|key_prev~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \inst14|key_prev~0_combout\);

-- Location: FF_X101_Y25_N3
\inst14|key_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|key_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|key_prev~q\);

-- Location: LCCOMB_X101_Y25_N30
\inst14|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|process_1~0_combout\ = (!\KEY[2]~input_o\ & !\inst14|key_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \inst14|key_prev~q\,
	combout => \inst14|process_1~0_combout\);

-- Location: FF_X101_Y25_N13
\inst14|PS.TEMPOO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst14|PS.TEMPERATURA~q\,
	sload => VCC,
	ena => \inst14|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|PS.TEMPOO~q\);

-- Location: FF_X101_Y25_N29
\inst14|PS.PREE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst14|PS.TEMPOO~q\,
	sload => VCC,
	ena => \inst14|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|PS.PREE~q\);

-- Location: LCCOMB_X101_Y25_N20
\inst14|PS.INICIAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|PS.INICIAL~0_combout\ = !\inst14|PS.PREE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|PS.PREE~q\,
	combout => \inst14|PS.INICIAL~0_combout\);

-- Location: FF_X101_Y25_N21
\inst14|PS.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|PS.INICIAL~0_combout\,
	ena => \inst14|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|PS.INICIAL~q\);

-- Location: LCCOMB_X102_Y25_N24
\inst14|PS.TEMPERATURA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|PS.TEMPERATURA~0_combout\ = !\inst14|PS.INICIAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|PS.INICIAL~q\,
	combout => \inst14|PS.TEMPERATURA~0_combout\);

-- Location: FF_X102_Y25_N25
\inst14|PS.TEMPERATURA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst14|PS.TEMPERATURA~0_combout\,
	ena => \inst14|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|PS.TEMPERATURA~q\);

-- Location: LCCOMB_X96_Y25_N10
\inst11|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~0_combout\ = (!\KEY[1]~input_o\ & !\inst11|key_dec_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \inst11|key_dec_prev~q\,
	combout => \inst11|process_0~0_combout\);

-- Location: LCCOMB_X102_Y25_N18
\inst11|temp[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[1]~5_combout\ = ((\inst11|temp[1]~4_combout\ & (\inst11|temp\(7) & !\inst11|process_0~0_combout\))) # (!\inst14|PS.TEMPERATURA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp[1]~4_combout\,
	datab => \inst11|temp\(7),
	datac => \inst14|PS.TEMPERATURA~q\,
	datad => \inst11|process_0~0_combout\,
	combout => \inst11|temp[1]~5_combout\);

-- Location: LCCOMB_X102_Y25_N26
\inst11|temp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[1]~7_combout\ = (!\inst11|temp[1]~5_combout\ & (((!\KEY[0]~input_o\ & !\inst11|key_inc_prev~q\)) # (!\inst11|temp[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst11|temp[1]~6_combout\,
	datac => \inst11|key_inc_prev~q\,
	datad => \inst11|temp[1]~5_combout\,
	combout => \inst11|temp[1]~7_combout\);

-- Location: FF_X102_Y25_N5
\inst11|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|Add0~0_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(1));

-- Location: LCCOMB_X102_Y25_N6
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|temp\(2) & ((\inst11|temp[1]~6_combout\ & ((\inst11|Add0~1\) # (GND))) # (!\inst11|temp[1]~6_combout\ & (!\inst11|Add0~1\)))) # (!\inst11|temp\(2) & ((\inst11|temp[1]~6_combout\ & (!\inst11|Add0~1\)) # 
-- (!\inst11|temp[1]~6_combout\ & (\inst11|Add0~1\ & VCC))))
-- \inst11|Add0~3\ = CARRY((\inst11|temp\(2) & ((\inst11|temp[1]~6_combout\) # (!\inst11|Add0~1\))) # (!\inst11|temp\(2) & (\inst11|temp[1]~6_combout\ & !\inst11|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(2),
	datab => \inst11|temp[1]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X102_Y25_N2
\inst11|temp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[2]~9_combout\ = !\inst11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Add0~2_combout\,
	combout => \inst11|temp[2]~9_combout\);

-- Location: FF_X102_Y25_N3
\inst11|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|temp[2]~9_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(2));

-- Location: FF_X102_Y25_N9
\inst11|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|Add0~4_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(3));

-- Location: LCCOMB_X102_Y25_N30
\inst11|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~0_combout\ = (!\inst11|temp\(4) & ((\inst11|temp\(3)) # ((\inst11|temp\(1) & !\inst11|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(3),
	datab => \inst11|temp\(4),
	datac => \inst11|temp\(1),
	datad => \inst11|temp\(2),
	combout => \inst11|LessThan3~0_combout\);

-- Location: LCCOMB_X102_Y25_N20
\inst11|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~1_combout\ = (\inst11|temp\(7)) # ((\inst11|temp\(6)) # (\inst11|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp\(7),
	datac => \inst11|temp\(6),
	datad => \inst11|temp\(5),
	combout => \inst11|LessThan3~1_combout\);

-- Location: LCCOMB_X102_Y25_N0
\inst11|temp[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|temp[1]~6_combout\ = (\KEY[1]~input_o\) # ((\inst11|key_dec_prev~q\) # ((!\inst11|LessThan3~0_combout\ & !\inst11|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst11|key_dec_prev~q\,
	datac => \inst11|LessThan3~0_combout\,
	datad => \inst11|LessThan3~1_combout\,
	combout => \inst11|temp[1]~6_combout\);

-- Location: LCCOMB_X102_Y25_N16
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = \inst11|temp\(7) $ (\inst11|Add0~11\ $ (\inst11|temp[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp\(7),
	datad => \inst11|temp[1]~6_combout\,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\);

-- Location: FF_X102_Y25_N17
\inst11|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|Add0~12_combout\,
	ena => \inst11|temp[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|temp\(7));

-- Location: LCCOMB_X96_Y39_N6
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|counter\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: FF_X96_Y39_N7
\inst7|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(0));

-- Location: LCCOMB_X96_Y39_N8
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|counter\(1) & (!\inst7|Add0~1\)) # (!\inst7|counter\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: FF_X96_Y39_N9
\inst7|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(1));

-- Location: LCCOMB_X96_Y39_N10
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|counter\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|counter\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|counter\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X96_Y39_N11
\inst7|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(2));

-- Location: LCCOMB_X96_Y39_N12
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|counter\(3) & (!\inst7|Add0~5\)) # (!\inst7|counter\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: FF_X96_Y39_N13
\inst7|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(3));

-- Location: LCCOMB_X97_Y39_N30
\inst7|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (\inst7|counter\(2) & (\inst7|counter\(0) & (\inst7|counter\(3) & \inst7|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(2),
	datab => \inst7|counter\(0),
	datac => \inst7|counter\(3),
	datad => \inst7|counter\(1),
	combout => \inst7|Equal0~6_combout\);

-- Location: LCCOMB_X96_Y39_N14
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|counter\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|counter\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|counter\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: FF_X96_Y39_N15
\inst7|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(4));

-- Location: LCCOMB_X96_Y39_N16
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|counter\(5) & (!\inst7|Add0~9\)) # (!\inst7|counter\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: FF_X96_Y39_N17
\inst7|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(5));

-- Location: LCCOMB_X96_Y39_N18
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|counter\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|counter\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|counter\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: FF_X96_Y39_N19
\inst7|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(6));

-- Location: LCCOMB_X96_Y39_N20
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|counter\(7) & (!\inst7|Add0~13\)) # (!\inst7|counter\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X96_Y39_N2
\inst7|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~7_combout\ = (\inst7|Add0~14_combout\ & !\inst7|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~14_combout\,
	datac => \inst7|Equal0~8_combout\,
	combout => \inst7|counter~7_combout\);

-- Location: FF_X96_Y39_N3
\inst7|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(7));

-- Location: LCCOMB_X96_Y39_N22
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|counter\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|counter\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|counter\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X96_Y39_N23
\inst7|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(8));

-- Location: LCCOMB_X96_Y39_N24
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|counter\(9) & (!\inst7|Add0~17\)) # (!\inst7|counter\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: FF_X96_Y39_N25
\inst7|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(9));

-- Location: LCCOMB_X96_Y39_N26
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|counter\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|counter\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|counter\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: FF_X96_Y39_N27
\inst7|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(10));

-- Location: LCCOMB_X96_Y39_N28
\inst7|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|counter\(11) & (!\inst7|Add0~21\)) # (!\inst7|counter\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: FF_X96_Y39_N29
\inst7|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(11));

-- Location: LCCOMB_X96_Y39_N30
\inst7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|counter\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|counter\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|counter\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: LCCOMB_X96_Y39_N0
\inst7|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~6_combout\ = (\inst7|Add0~24_combout\ & !\inst7|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~24_combout\,
	datac => \inst7|Equal0~8_combout\,
	combout => \inst7|counter~6_combout\);

-- Location: FF_X96_Y39_N1
\inst7|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(12));

-- Location: LCCOMB_X96_Y38_N0
\inst7|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|counter\(13) & (!\inst7|Add0~25\)) # (!\inst7|counter\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X97_Y38_N2
\inst7|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~5_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~26_combout\,
	combout => \inst7|counter~5_combout\);

-- Location: FF_X97_Y38_N3
\inst7|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(13));

-- Location: LCCOMB_X96_Y38_N2
\inst7|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|counter\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|counter\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|counter\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: LCCOMB_X96_Y38_N26
\inst7|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~4_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~28_combout\,
	combout => \inst7|counter~4_combout\);

-- Location: FF_X96_Y38_N27
\inst7|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(14));

-- Location: LCCOMB_X96_Y38_N4
\inst7|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|counter\(15) & (!\inst7|Add0~29\)) # (!\inst7|counter\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X97_Y38_N22
\inst7|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~10_combout\ = (\inst7|Add0~30_combout\ & !\inst7|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~30_combout\,
	datad => \inst7|Equal0~8_combout\,
	combout => \inst7|counter~10_combout\);

-- Location: FF_X97_Y38_N23
\inst7|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(15));

-- Location: LCCOMB_X97_Y38_N28
\inst7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (\inst7|counter\(4) & (!\inst7|counter\(11) & (\inst7|counter\(15) & \inst7|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(11),
	datac => \inst7|counter\(15),
	datad => \inst7|counter\(5),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X96_Y38_N10
\inst7|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|counter\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|counter\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|counter\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: LCCOMB_X96_Y38_N12
\inst7|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|counter\(19) & (!\inst7|Add0~37\)) # (!\inst7|counter\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X97_Y38_N30
\inst7|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~3_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~38_combout\,
	combout => \inst7|counter~3_combout\);

-- Location: FF_X97_Y38_N31
\inst7|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(19));

-- Location: LCCOMB_X96_Y38_N14
\inst7|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|counter\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|counter\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|counter\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: LCCOMB_X96_Y38_N28
\inst7|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~2_combout\ = (\inst7|Add0~40_combout\ & !\inst7|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~40_combout\,
	datad => \inst7|Equal0~8_combout\,
	combout => \inst7|counter~2_combout\);

-- Location: FF_X96_Y38_N29
\inst7|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(20));

-- Location: LCCOMB_X96_Y38_N16
\inst7|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|counter\(21) & (!\inst7|Add0~41\)) # (!\inst7|counter\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: LCCOMB_X96_Y38_N30
\inst7|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~1_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~42_combout\,
	combout => \inst7|counter~1_combout\);

-- Location: FF_X96_Y38_N31
\inst7|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(21));

-- Location: LCCOMB_X96_Y38_N18
\inst7|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|counter\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|counter\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|counter\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: LCCOMB_X97_Y38_N20
\inst7|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~0_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~44_combout\,
	combout => \inst7|counter~0_combout\);

-- Location: FF_X97_Y38_N21
\inst7|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(22));

-- Location: LCCOMB_X96_Y38_N20
\inst7|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|counter\(23) & (!\inst7|Add0~45\)) # (!\inst7|counter\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: LCCOMB_X97_Y38_N18
\inst7|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~8_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~46_combout\,
	combout => \inst7|counter~8_combout\);

-- Location: FF_X97_Y38_N19
\inst7|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(23));

-- Location: LCCOMB_X96_Y38_N22
\inst7|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = (\inst7|counter\(24) & (\inst7|Add0~47\ $ (GND))) # (!\inst7|counter\(24) & (!\inst7|Add0~47\ & VCC))
-- \inst7|Add0~49\ = CARRY((\inst7|counter\(24) & !\inst7|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(24),
	datad => VCC,
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\,
	cout => \inst7|Add0~49\);

-- Location: FF_X96_Y38_N23
\inst7|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(24));

-- Location: LCCOMB_X96_Y38_N24
\inst7|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~50_combout\ = \inst7|counter\(25) $ (\inst7|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter\(25),
	cin => \inst7|Add0~49\,
	combout => \inst7|Add0~50_combout\);

-- Location: LCCOMB_X97_Y38_N14
\inst7|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~11_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~50_combout\,
	combout => \inst7|counter~11_combout\);

-- Location: FF_X97_Y38_N15
\inst7|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(25));

-- Location: LCCOMB_X98_Y38_N26
\inst7|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (!\inst7|counter\(24) & \inst7|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|counter\(24),
	datad => \inst7|counter\(25),
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X96_Y38_N6
\inst7|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|counter\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|counter\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|counter\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: FF_X96_Y38_N7
\inst7|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(16));

-- Location: LCCOMB_X97_Y38_N12
\inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (\inst7|counter\(23) & (!\inst7|counter\(16) & (\inst7|counter\(17) & !\inst7|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(23),
	datab => \inst7|counter\(16),
	datac => \inst7|counter\(17),
	datad => \inst7|counter\(18),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y38_N0
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|counter\(19) & (\inst7|counter\(22) & (\inst7|counter\(21) & \inst7|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(19),
	datab => \inst7|counter\(22),
	datac => \inst7|counter\(21),
	datad => \inst7|counter\(20),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y38_N8
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|counter\(10) & (\inst7|counter\(13) & (\inst7|counter\(14) & \inst7|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(10),
	datab => \inst7|counter\(13),
	datac => \inst7|counter\(14),
	datad => \inst7|counter\(12),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X96_Y39_N4
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|counter\(8) & (\inst7|counter\(6) & (!\inst7|counter\(7) & !\inst7|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(8),
	datab => \inst7|counter\(6),
	datac => \inst7|counter\(7),
	datad => \inst7|counter\(9),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y38_N10
\inst7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~3_combout\ & (\inst7|Equal0~0_combout\ & (\inst7|Equal0~1_combout\ & \inst7|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~3_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|Equal0~2_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X97_Y38_N6
\inst7|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (\inst7|Equal0~6_combout\ & (\inst7|Equal0~5_combout\ & (\inst7|Equal0~7_combout\ & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~6_combout\,
	datab => \inst7|Equal0~5_combout\,
	datac => \inst7|Equal0~7_combout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~8_combout\);

-- Location: LCCOMB_X96_Y38_N8
\inst7|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|counter\(17) & (!\inst7|Add0~33\)) # (!\inst7|counter\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: LCCOMB_X97_Y38_N4
\inst7|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|counter~9_combout\ = (!\inst7|Equal0~8_combout\ & \inst7|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~8_combout\,
	datad => \inst7|Add0~34_combout\,
	combout => \inst7|counter~9_combout\);

-- Location: FF_X97_Y38_N5
\inst7|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(17));

-- Location: FF_X96_Y38_N11
\inst7|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter\(18));

-- Location: LCCOMB_X97_Y38_N26
\inst7|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal1~0_combout\ = (\inst7|counter\(18) & (!\inst7|counter\(17) & (\inst7|counter\(16) & !\inst7|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(18),
	datab => \inst7|counter\(17),
	datac => \inst7|counter\(16),
	datad => \inst7|counter\(23),
	combout => \inst7|Equal1~0_combout\);

-- Location: LCCOMB_X97_Y38_N16
\inst7|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal1~1_combout\ = (\inst7|Equal1~0_combout\ & (\inst7|Equal0~0_combout\ & (\inst7|Equal0~1_combout\ & \inst7|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal1~0_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|Equal0~2_combout\,
	combout => \inst7|Equal1~1_combout\);

-- Location: LCCOMB_X97_Y39_N28
\inst7|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal1~3_combout\ = (!\inst7|counter\(3) & (!\inst7|counter\(0) & (!\inst7|counter\(1) & !\inst7|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(3),
	datab => \inst7|counter\(0),
	datac => \inst7|counter\(1),
	datad => \inst7|counter\(2),
	combout => \inst7|Equal1~3_combout\);

-- Location: LCCOMB_X97_Y38_N24
\inst7|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal1~2_combout\ = (!\inst7|counter\(4) & (!\inst7|counter\(15) & (\inst7|counter\(11) & !\inst7|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(4),
	datab => \inst7|counter\(15),
	datac => \inst7|counter\(11),
	datad => \inst7|counter\(5),
	combout => \inst7|Equal1~2_combout\);

-- Location: LCCOMB_X98_Y38_N24
\inst7|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal1~4_combout\ = (\inst7|counter\(24) & (!\inst7|counter\(25) & (\inst7|Equal1~3_combout\ & \inst7|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter\(24),
	datab => \inst7|counter\(25),
	datac => \inst7|Equal1~3_combout\,
	datad => \inst7|Equal1~2_combout\,
	combout => \inst7|Equal1~4_combout\);

-- Location: LCCOMB_X98_Y38_N28
\inst7|pulse_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|pulse_reg~0_combout\ = \inst7|pulse_reg~q\ $ (((\inst7|Equal0~8_combout\) # ((\inst7|Equal1~1_combout\ & \inst7|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal1~1_combout\,
	datab => \inst7|Equal1~4_combout\,
	datac => \inst7|Equal0~8_combout\,
	datad => \inst7|pulse_reg~q\,
	combout => \inst7|pulse_reg~0_combout\);

-- Location: FF_X98_Y38_N31
\inst7|pulse_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|pulse_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pulse_reg~q\);

-- Location: CLKCTRL_G8
\inst7|pulse_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|pulse_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|pulse_reg~clkctrl_outclk\);

-- Location: LCCOMB_X100_Y25_N8
\inst5|s_temperatura[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[1]~7_combout\ = \inst5|s_temperatura\(1) $ (VCC)
-- \inst5|s_temperatura[1]~8\ = CARRY(\inst5|s_temperatura\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura\(1),
	datad => VCC,
	combout => \inst5|s_temperatura[1]~7_combout\,
	cout => \inst5|s_temperatura[1]~8\);

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

-- Location: LCCOMB_X101_Y25_N12
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y24_N0
\inst958|saidatemperatura[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[1]~7_combout\ = (\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst958|saidatemperatura[1]~7_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X94_Y25_N16
\inst4|s_tempo[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[0]~8_combout\ = \inst4|s_tempo\(0) $ (VCC)
-- \inst4|s_tempo[0]~9\ = CARRY(\inst4|s_tempo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(0),
	datad => VCC,
	combout => \inst4|s_tempo[0]~8_combout\,
	cout => \inst4|s_tempo[0]~9\);

-- Location: LCCOMB_X101_Y25_N28
\inst958|saidatemperatura[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[4]~3_combout\ = (\SW[0]~input_o\) # ((\SW[2]~input_o\) # (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatemperatura[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X98_Y25_N6
\inst958|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~12_combout\ = (!\SW[3]~input_o\ & (\SW[5]~input_o\ & !\inst958|s_currentState.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \inst958|s_currentState.IDLE~q\,
	combout => \inst958|s_currentState~12_combout\);

-- Location: LCCOMB_X98_Y25_N10
\inst958|s_currentState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~24_combout\ = (!\inst958|s_currentState~12_combout\ & ((\SW[3]~input_o\ & ((!\inst958|s_currentState.AIRABERTA~q\))) # (!\SW[3]~input_o\ & (!\inst958|s_currentState.AIRFECHADA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.AIRFECHADA~q\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState.AIRABERTA~q\,
	datad => \inst958|s_currentState~12_combout\,
	combout => \inst958|s_currentState~24_combout\);

-- Location: LCCOMB_X99_Y25_N14
\inst958|s_currentState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~26_combout\ = (\inst958|s_currentState~25_combout\ & (((\inst958|s_currentState.AIRABERTA~q\)))) # (!\inst958|s_currentState~25_combout\ & (\SW[4]~input_o\ & ((\inst958|s_currentState~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~25_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst958|s_currentState.AIRABERTA~q\,
	datad => \inst958|s_currentState~24_combout\,
	combout => \inst958|s_currentState~26_combout\);

-- Location: FF_X99_Y25_N15
\inst958|s_currentState.AIRABERTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst958|s_currentState~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.AIRABERTA~q\);

-- Location: LCCOMB_X99_Y25_N28
\inst958|s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~20_combout\ = (!\inst958|s_currentState.AIRFECHADA~q\ & (!\SW[3]~input_o\ & ((\inst958|s_currentState.IDLE~q\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.AIRFECHADA~q\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \inst958|s_currentState.IDLE~q\,
	combout => \inst958|s_currentState~20_combout\);

-- Location: LCCOMB_X99_Y25_N26
\inst958|s_currentState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~21_combout\ = (\SW[4]~input_o\ & ((\inst958|s_currentState~20_combout\) # ((\SW[3]~input_o\ & !\inst958|s_currentState.AIRABERTA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState.AIRABERTA~q\,
	datad => \inst958|s_currentState~20_combout\,
	combout => \inst958|s_currentState~21_combout\);

-- Location: LCCOMB_X97_Y25_N20
\inst958|s_currentState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~22_combout\ = (\inst958|s_currentState.PREAQ~q\ & (\inst958|s_currentState~21_combout\ & ((\SW[3]~input_o\) # (!\inst958|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.PREAQ~q\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState~10_combout\,
	datad => \inst958|s_currentState~21_combout\,
	combout => \inst958|s_currentState~22_combout\);

-- Location: LCCOMB_X97_Y25_N16
\inst958|s_currentState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~23_combout\ = (\inst958|s_currentState~12_combout\ & ((\SW[4]~input_o\) # ((!\inst958|s_currentState~19_combout\ & \inst958|s_currentState~22_combout\)))) # (!\inst958|s_currentState~12_combout\ & 
-- (!\inst958|s_currentState~19_combout\ & ((\inst958|s_currentState~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~12_combout\,
	datab => \inst958|s_currentState~19_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst958|s_currentState~22_combout\,
	combout => \inst958|s_currentState~23_combout\);

-- Location: FF_X97_Y25_N17
\inst958|s_currentState.PREAQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst958|s_currentState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.PREAQ~q\);

-- Location: LCCOMB_X98_Y25_N14
\inst|s_pre[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[0]~8_combout\ = \inst|s_pre\(0) $ (VCC)
-- \inst|s_pre[0]~9\ = CARRY(\inst|s_pre\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pre\(0),
	datad => VCC,
	combout => \inst|s_pre[0]~8_combout\,
	cout => \inst|s_pre[0]~9\);

-- Location: LCCOMB_X96_Y25_N2
\inst11|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_0~1_combout\ = (!\KEY[0]~input_o\ & !\inst11|key_inc_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst11|key_inc_prev~q\,
	combout => \inst11|process_0~1_combout\);

-- Location: LCCOMB_X96_Y25_N14
\inst11|pre_interno[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[1]~21_combout\ = (\inst14|PS.PREE~q\ & ((\inst11|process_0~1_combout\) # ((!\KEY[1]~input_o\ & !\inst11|key_dec_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst11|process_0~1_combout\,
	datac => \inst11|key_dec_prev~q\,
	datad => \inst14|PS.PREE~q\,
	combout => \inst11|pre_interno[1]~21_combout\);

-- Location: LCCOMB_X96_Y25_N8
\inst11|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~4_combout\ = (!\KEY[1]~input_o\ & (!\inst11|key_dec_prev~q\ & \inst11|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \inst11|key_dec_prev~q\,
	datad => \inst11|LessThan5~0_combout\,
	combout => \inst11|Add2~4_combout\);

-- Location: LCCOMB_X96_Y25_N16
\inst11|pre_interno[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[1]~14_cout\ = CARRY(!\inst11|pre_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno\(0),
	datad => VCC,
	cout => \inst11|pre_interno[1]~14_cout\);

-- Location: LCCOMB_X96_Y25_N18
\inst11|pre_interno[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[1]~15_combout\ = (\inst11|pre_interno\(1) & ((\inst11|Add2~4_combout\ & (\inst11|pre_interno[1]~14_cout\ & VCC)) # (!\inst11|Add2~4_combout\ & (!\inst11|pre_interno[1]~14_cout\)))) # (!\inst11|pre_interno\(1) & 
-- ((\inst11|Add2~4_combout\ & (!\inst11|pre_interno[1]~14_cout\)) # (!\inst11|Add2~4_combout\ & ((\inst11|pre_interno[1]~14_cout\) # (GND)))))
-- \inst11|pre_interno[1]~16\ = CARRY((\inst11|pre_interno\(1) & (!\inst11|Add2~4_combout\ & !\inst11|pre_interno[1]~14_cout\)) # (!\inst11|pre_interno\(1) & ((!\inst11|pre_interno[1]~14_cout\) # (!\inst11|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno\(1),
	datab => \inst11|Add2~4_combout\,
	datad => VCC,
	cin => \inst11|pre_interno[1]~14_cout\,
	combout => \inst11|pre_interno[1]~15_combout\,
	cout => \inst11|pre_interno[1]~16\);

-- Location: LCCOMB_X96_Y25_N20
\inst11|pre_interno[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[2]~17_combout\ = ((\inst11|pre_interno\(2) $ (\inst11|Add2~4_combout\ $ (!\inst11|pre_interno[1]~16\)))) # (GND)
-- \inst11|pre_interno[2]~18\ = CARRY((\inst11|pre_interno\(2) & ((\inst11|Add2~4_combout\) # (!\inst11|pre_interno[1]~16\))) # (!\inst11|pre_interno\(2) & (\inst11|Add2~4_combout\ & !\inst11|pre_interno[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno\(2),
	datab => \inst11|Add2~4_combout\,
	datad => VCC,
	cin => \inst11|pre_interno[1]~16\,
	combout => \inst11|pre_interno[2]~17_combout\,
	cout => \inst11|pre_interno[2]~18\);

-- Location: LCCOMB_X96_Y25_N22
\inst11|pre_interno[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[3]~19_combout\ = \inst11|pre_interno\(3) $ (\inst11|Add2~4_combout\ $ (\inst11|pre_interno[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno\(3),
	datab => \inst11|Add2~4_combout\,
	cin => \inst11|pre_interno[2]~18\,
	combout => \inst11|pre_interno[3]~19_combout\);

-- Location: FF_X96_Y25_N23
\inst11|pre_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pre_interno[3]~19_combout\,
	ena => \inst11|pre_interno[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pre_interno\(3));

-- Location: LCCOMB_X96_Y25_N4
\inst11|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan2~0_combout\ = (\inst11|pre_interno\(3) & ((\inst11|pre_interno\(2)) # (\inst11|pre_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|pre_interno\(2),
	datac => \inst11|pre_interno\(3),
	datad => \inst11|pre_interno\(1),
	combout => \inst11|LessThan2~0_combout\);

-- Location: LCCOMB_X96_Y25_N26
\inst11|pre_interno[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[1]~22_combout\ = (\inst11|pre_interno[1]~11_combout\ & (((!\KEY[1]~input_o\ & !\inst11|key_dec_prev~q\)) # (!\inst11|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst11|LessThan2~0_combout\,
	datac => \inst11|key_dec_prev~q\,
	datad => \inst11|pre_interno[1]~11_combout\,
	combout => \inst11|pre_interno[1]~22_combout\);

-- Location: FF_X96_Y25_N19
\inst11|pre_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pre_interno[1]~15_combout\,
	ena => \inst11|pre_interno[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pre_interno\(1));

-- Location: FF_X96_Y25_N21
\inst11|pre_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pre_interno[2]~17_combout\,
	ena => \inst11|pre_interno[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pre_interno\(2));

-- Location: LCCOMB_X96_Y25_N24
\inst11|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~0_combout\ = (\inst11|pre_interno\(2)) # ((\inst11|pre_interno\(3)) # (\inst11|pre_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|pre_interno\(2),
	datac => \inst11|pre_interno\(3),
	datad => \inst11|pre_interno\(1),
	combout => \inst11|LessThan5~0_combout\);

-- Location: LCCOMB_X96_Y25_N0
\inst11|pre_interno[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[1]~11_combout\ = (\inst14|PS.PREE~q\ & ((\inst11|process_0~1_combout\) # ((\inst11|process_0~0_combout\ & \inst11|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~0_combout\,
	datab => \inst11|LessThan5~0_combout\,
	datac => \inst11|process_0~1_combout\,
	datad => \inst14|PS.PREE~q\,
	combout => \inst11|pre_interno[1]~11_combout\);

-- Location: LCCOMB_X96_Y25_N6
\inst11|pre_interno[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[0]~9_combout\ = ((!\inst11|key_inc_prev~q\ & (!\inst11|LessThan5~0_combout\ & !\KEY[0]~input_o\))) # (!\inst11|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|key_inc_prev~q\,
	datab => \inst11|LessThan5~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \inst11|process_0~0_combout\,
	combout => \inst11|pre_interno[0]~9_combout\);

-- Location: LCCOMB_X96_Y25_N30
\inst11|pre_interno[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[0]~10_combout\ = (\inst11|pre_interno\(0) & ((\inst11|Add2~4_combout\) # ((!\inst11|LessThan2~0_combout\ & \inst11|pre_interno[0]~9_combout\)))) # (!\inst11|pre_interno\(0) & (\inst11|LessThan2~0_combout\ & 
-- ((\inst11|pre_interno[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno\(0),
	datab => \inst11|LessThan2~0_combout\,
	datac => \inst11|Add2~4_combout\,
	datad => \inst11|pre_interno[0]~9_combout\,
	combout => \inst11|pre_interno[0]~10_combout\);

-- Location: LCCOMB_X97_Y25_N2
\inst11|pre_interno[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pre_interno[0]~12_combout\ = (\inst11|pre_interno[1]~21_combout\ & (!\inst11|pre_interno[0]~10_combout\ & ((\inst11|pre_interno[1]~11_combout\) # (\inst11|pre_interno\(0))))) # (!\inst11|pre_interno[1]~21_combout\ & 
-- ((\inst11|pre_interno[1]~11_combout\) # ((\inst11|pre_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pre_interno[1]~21_combout\,
	datab => \inst11|pre_interno[1]~11_combout\,
	datac => \inst11|pre_interno\(0),
	datad => \inst11|pre_interno[0]~10_combout\,
	combout => \inst11|pre_interno[0]~12_combout\);

-- Location: FF_X97_Y25_N3
\inst11|pre_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pre_interno[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pre_interno\(0));

-- Location: LCCOMB_X101_Y24_N2
\inst958|saidatempopre_aquecimento[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[0]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst958|saidatempopre_aquecimento[0]~0_combout\);

-- Location: LCCOMB_X97_Y25_N4
\inst958|saidatempopre_aquecimento[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[0]~1_combout\ = (\inst958|s_currentState.PREAQ~q\ & ((\inst958|saidatempopre_aquecimento[0]~0_combout\) # ((\inst3|Mux0~0_combout\ & !\inst11|pre_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst11|pre_interno\(0),
	datac => \inst958|saidatempopre_aquecimento[0]~0_combout\,
	datad => \inst958|s_currentState.PREAQ~q\,
	combout => \inst958|saidatempopre_aquecimento[0]~1_combout\);

-- Location: LCCOMB_X98_Y25_N18
\inst|s_pre[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[2]~13_combout\ = (\inst|s_pre\(2) & ((GND) # (!\inst|s_pre[1]~12\))) # (!\inst|s_pre\(2) & (\inst|s_pre[1]~12\ $ (GND)))
-- \inst|s_pre[2]~14\ = CARRY((\inst|s_pre\(2)) # (!\inst|s_pre[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pre\(2),
	datad => VCC,
	cin => \inst|s_pre[1]~12\,
	combout => \inst|s_pre[2]~13_combout\,
	cout => \inst|s_pre[2]~14\);

-- Location: LCCOMB_X98_Y25_N20
\inst|s_pre[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[3]~15_combout\ = (\inst|s_pre\(3) & (\inst|s_pre[2]~14\ & VCC)) # (!\inst|s_pre\(3) & (!\inst|s_pre[2]~14\))
-- \inst|s_pre[3]~16\ = CARRY((!\inst|s_pre\(3) & !\inst|s_pre[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pre\(3),
	datad => VCC,
	cin => \inst|s_pre[2]~14\,
	combout => \inst|s_pre[3]~15_combout\,
	cout => \inst|s_pre[3]~16\);

-- Location: LCCOMB_X97_Y25_N6
\inst958|saidatempopre_aquecimento[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[3]~6_combout\ = (\inst958|s_currentState.PREAQ~q\ & (\inst3|Mux0~0_combout\ & \inst11|pre_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst11|pre_interno\(3),
	combout => \inst958|saidatempopre_aquecimento[3]~6_combout\);

-- Location: FF_X98_Y25_N21
\inst|s_pre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[3]~15_combout\,
	asdata => \inst958|saidatempopre_aquecimento[3]~6_combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(3));

-- Location: LCCOMB_X98_Y25_N22
\inst|s_pre[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[4]~17_combout\ = (\inst|s_pre\(4) & ((GND) # (!\inst|s_pre[3]~16\))) # (!\inst|s_pre\(4) & (\inst|s_pre[3]~16\ $ (GND)))
-- \inst|s_pre[4]~18\ = CARRY((\inst|s_pre\(4)) # (!\inst|s_pre[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pre\(4),
	datad => VCC,
	cin => \inst|s_pre[3]~16\,
	combout => \inst|s_pre[4]~17_combout\,
	cout => \inst|s_pre[4]~18\);

-- Location: LCCOMB_X95_Y24_N6
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X98_Y25_N23
\inst|s_pre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[4]~17_combout\,
	asdata => \~GND~combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(4));

-- Location: LCCOMB_X98_Y25_N24
\inst|s_pre[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[5]~19_combout\ = (\inst|s_pre\(5) & (\inst|s_pre[4]~18\ & VCC)) # (!\inst|s_pre\(5) & (!\inst|s_pre[4]~18\))
-- \inst|s_pre[5]~20\ = CARRY((!\inst|s_pre\(5) & !\inst|s_pre[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pre\(5),
	datad => VCC,
	cin => \inst|s_pre[4]~18\,
	combout => \inst|s_pre[5]~19_combout\,
	cout => \inst|s_pre[5]~20\);

-- Location: FF_X98_Y25_N25
\inst|s_pre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[5]~19_combout\,
	asdata => \~GND~combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(5));

-- Location: LCCOMB_X98_Y25_N26
\inst|s_pre[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[6]~21_combout\ = (\inst|s_pre\(6) & ((GND) # (!\inst|s_pre[5]~20\))) # (!\inst|s_pre\(6) & (\inst|s_pre[5]~20\ $ (GND)))
-- \inst|s_pre[6]~22\ = CARRY((\inst|s_pre\(6)) # (!\inst|s_pre[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pre\(6),
	datad => VCC,
	cin => \inst|s_pre[5]~20\,
	combout => \inst|s_pre[6]~21_combout\,
	cout => \inst|s_pre[6]~22\);

-- Location: FF_X98_Y25_N27
\inst|s_pre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[6]~21_combout\,
	asdata => \~GND~combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(6));

-- Location: LCCOMB_X98_Y25_N28
\inst|s_pre[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[7]~23_combout\ = \inst|s_pre[6]~22\ $ (!\inst|s_pre\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_pre\(7),
	cin => \inst|s_pre[6]~22\,
	combout => \inst|s_pre[7]~23_combout\);

-- Location: FF_X98_Y25_N29
\inst|s_pre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[7]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(7));

-- Location: LCCOMB_X98_Y25_N12
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_pre\(4) & (!\inst|s_pre\(5) & (!\inst|s_pre\(6) & !\inst|s_pre\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pre\(4),
	datab => \inst|s_pre\(5),
	datac => \inst|s_pre\(6),
	datad => \inst|s_pre\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X98_Y25_N8
\inst|s_pre~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre~10_combout\ = ((\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\)) # (!\inst958|s_currentState.PREAQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.PREAQ~q\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|s_pre~10_combout\);

-- Location: FF_X98_Y25_N15
\inst|s_pre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[0]~8_combout\,
	asdata => \inst958|saidatempopre_aquecimento[0]~1_combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(0));

-- Location: LCCOMB_X98_Y25_N16
\inst|s_pre[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pre[1]~11_combout\ = (\inst|s_pre\(1) & (\inst|s_pre[0]~9\ & VCC)) # (!\inst|s_pre\(1) & (!\inst|s_pre[0]~9\))
-- \inst|s_pre[1]~12\ = CARRY((!\inst|s_pre\(1) & !\inst|s_pre[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pre\(1),
	datad => VCC,
	cin => \inst|s_pre[0]~9\,
	combout => \inst|s_pre[1]~11_combout\,
	cout => \inst|s_pre[1]~12\);

-- Location: LCCOMB_X101_Y25_N16
\inst958|saidatempopre_aquecimento[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[1]~4_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatempopre_aquecimento[1]~4_combout\);

-- Location: LCCOMB_X97_Y25_N0
\inst958|saidatempopre_aquecimento[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[1]~5_combout\ = (\inst958|s_currentState.PREAQ~q\ & ((\inst958|saidatempopre_aquecimento[1]~4_combout\) # ((\inst3|Mux0~0_combout\ & \inst11|pre_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|saidatempopre_aquecimento[1]~4_combout\,
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst11|pre_interno\(1),
	combout => \inst958|saidatempopre_aquecimento[1]~5_combout\);

-- Location: FF_X98_Y25_N17
\inst|s_pre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[1]~11_combout\,
	asdata => \inst958|saidatempopre_aquecimento[1]~5_combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(1));

-- Location: LCCOMB_X101_Y25_N18
\inst958|saidatempopre_aquecimento[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[2]~2_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatempopre_aquecimento[2]~2_combout\);

-- Location: LCCOMB_X97_Y25_N24
\inst958|saidatempopre_aquecimento[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempopre_aquecimento[2]~3_combout\ = (\inst958|s_currentState.PREAQ~q\ & ((\inst958|saidatempopre_aquecimento[2]~2_combout\) # ((\inst3|Mux0~0_combout\ & \inst11|pre_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \inst958|saidatempopre_aquecimento[2]~2_combout\,
	datad => \inst11|pre_interno\(2),
	combout => \inst958|saidatempopre_aquecimento[2]~3_combout\);

-- Location: FF_X98_Y25_N19
\inst|s_pre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst|s_pre[2]~13_combout\,
	asdata => \inst958|saidatempopre_aquecimento[2]~3_combout\,
	sload => \inst|s_pre~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pre\(2));

-- Location: LCCOMB_X98_Y25_N30
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_pre\(2) & (!\inst|s_pre\(1) & (!\inst|s_pre\(0) & !\inst|s_pre\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pre\(2),
	datab => \inst|s_pre\(1),
	datac => \inst|s_pre\(0),
	datad => \inst|s_pre\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y25_N0
\inst958|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~10_combout\ = (\inst958|s_currentState.PREAQ~q\ & (\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.PREAQ~q\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst958|s_currentState~10_combout\);

-- Location: LCCOMB_X97_Y25_N8
\inst958|s_currentState.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState.IDLE~0_combout\ = (\SW[3]~input_o\ & (((\inst958|s_currentState.IDLE~q\)))) # (!\SW[3]~input_o\ & ((\inst958|s_currentState~10_combout\ & (\SW[4]~input_o\)) # (!\inst958|s_currentState~10_combout\ & 
-- ((\inst958|s_currentState.IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState~10_combout\,
	datad => \inst958|s_currentState.IDLE~q\,
	combout => \inst958|s_currentState.IDLE~0_combout\);

-- Location: LCCOMB_X98_Y25_N2
\inst958|s_currentState.IDLE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState.IDLE~1_combout\ = (\inst958|s_currentState~19_combout\ & (((\SW[4]~input_o\)))) # (!\inst958|s_currentState~19_combout\ & ((\inst958|s_currentState~21_combout\ & ((\inst958|s_currentState.IDLE~0_combout\))) # 
-- (!\inst958|s_currentState~21_combout\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~19_combout\,
	datab => \inst958|s_currentState~21_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst958|s_currentState.IDLE~0_combout\,
	combout => \inst958|s_currentState.IDLE~1_combout\);

-- Location: FF_X98_Y25_N3
\inst958|s_currentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst958|s_currentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.IDLE~q\);

-- Location: LCCOMB_X94_Y25_N18
\inst4|s_tempo[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[1]~11_combout\ = (\inst4|s_tempo\(1) & (\inst4|s_tempo[0]~9\ & VCC)) # (!\inst4|s_tempo\(1) & (!\inst4|s_tempo[0]~9\))
-- \inst4|s_tempo[1]~12\ = CARRY((!\inst4|s_tempo\(1) & !\inst4|s_tempo[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(1),
	datad => VCC,
	cin => \inst4|s_tempo[0]~9\,
	combout => \inst4|s_tempo[1]~11_combout\,
	cout => \inst4|s_tempo[1]~12\);

-- Location: LCCOMB_X94_Y25_N20
\inst4|s_tempo[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[2]~13_combout\ = (\inst4|s_tempo\(2) & ((GND) # (!\inst4|s_tempo[1]~12\))) # (!\inst4|s_tempo\(2) & (\inst4|s_tempo[1]~12\ $ (GND)))
-- \inst4|s_tempo[2]~14\ = CARRY((\inst4|s_tempo\(2)) # (!\inst4|s_tempo[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(2),
	datad => VCC,
	cin => \inst4|s_tempo[1]~12\,
	combout => \inst4|s_tempo[2]~13_combout\,
	cout => \inst4|s_tempo[2]~14\);

-- Location: LCCOMB_X99_Y25_N2
\inst958|saidatempococcao[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[2]~3_combout\ = (\inst958|s_currentState.COCCAO~q\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatempococcao[2]~3_combout\);

-- Location: LCCOMB_X95_Y24_N10
\inst11|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~4_combout\ = \inst11|tempo_interno\(0) $ (!\inst11|tempo_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tempo_interno\(0),
	datac => \inst11|tempo_interno\(1),
	combout => \inst11|Add1~4_combout\);

-- Location: LCCOMB_X95_Y25_N8
\inst11|tempo_interno[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[4]~22_combout\ = (\inst11|key_dec_prev~q\) # ((\KEY[1]~input_o\) # (!\inst11|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|key_dec_prev~q\,
	datac => \KEY[1]~input_o\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|tempo_interno[4]~22_combout\);

-- Location: LCCOMB_X95_Y24_N20
\inst11|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~0_combout\ = \inst11|tempo_interno\(0) $ (GND)
-- \inst11|Add4~1\ = CARRY(!\inst11|tempo_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tempo_interno\(0),
	datad => VCC,
	combout => \inst11|Add4~0_combout\,
	cout => \inst11|Add4~1\);

-- Location: LCCOMB_X95_Y24_N22
\inst11|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~2_combout\ = (\inst11|tempo_interno\(1) & (\inst11|Add4~1\ & VCC)) # (!\inst11|tempo_interno\(1) & (!\inst11|Add4~1\))
-- \inst11|Add4~3\ = CARRY((!\inst11|tempo_interno\(1) & !\inst11|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tempo_interno\(1),
	datad => VCC,
	cin => \inst11|Add4~1\,
	combout => \inst11|Add4~2_combout\,
	cout => \inst11|Add4~3\);

-- Location: LCCOMB_X95_Y25_N26
\inst11|tempo_interno[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[1]~3_combout\ = (\inst11|tempo_interno[4]~22_combout\ & (\inst11|Add1~4_combout\)) # (!\inst11|tempo_interno[4]~22_combout\ & ((\inst11|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~4_combout\,
	datab => \inst11|tempo_interno[4]~22_combout\,
	datad => \inst11|Add4~2_combout\,
	combout => \inst11|tempo_interno[1]~3_combout\);

-- Location: LCCOMB_X95_Y25_N22
\inst11|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~2_combout\ = \inst11|tempo_interno\(3) $ (((\inst11|tempo_interno\(1) & (\inst11|tempo_interno\(2) & !\inst11|tempo_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(1),
	datab => \inst11|tempo_interno\(2),
	datac => \inst11|tempo_interno\(3),
	datad => \inst11|tempo_interno\(0),
	combout => \inst11|Add1~2_combout\);

-- Location: LCCOMB_X95_Y24_N24
\inst11|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~4_combout\ = (\inst11|tempo_interno\(2) & ((GND) # (!\inst11|Add4~3\))) # (!\inst11|tempo_interno\(2) & (\inst11|Add4~3\ $ (GND)))
-- \inst11|Add4~5\ = CARRY((\inst11|tempo_interno\(2)) # (!\inst11|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(2),
	datad => VCC,
	cin => \inst11|Add4~3\,
	combout => \inst11|Add4~4_combout\,
	cout => \inst11|Add4~5\);

-- Location: LCCOMB_X95_Y24_N26
\inst11|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~6_combout\ = (\inst11|tempo_interno\(3) & (\inst11|Add4~5\ & VCC)) # (!\inst11|tempo_interno\(3) & (!\inst11|Add4~5\))
-- \inst11|Add4~7\ = CARRY((!\inst11|tempo_interno\(3) & !\inst11|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(3),
	datad => VCC,
	cin => \inst11|Add4~5\,
	combout => \inst11|Add4~6_combout\,
	cout => \inst11|Add4~7\);

-- Location: LCCOMB_X95_Y25_N10
\inst11|tempo_interno[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[3]~1_combout\ = (\inst11|tempo_interno[4]~22_combout\ & (\inst11|Add1~2_combout\)) # (!\inst11|tempo_interno[4]~22_combout\ & ((\inst11|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~2_combout\,
	datab => \inst11|tempo_interno[4]~22_combout\,
	datad => \inst11|Add4~6_combout\,
	combout => \inst11|tempo_interno[3]~1_combout\);

-- Location: FF_X95_Y25_N11
\inst11|tempo_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|tempo_interno[3]~1_combout\,
	asdata => \inst11|tempo_interno\(3),
	sload => \inst11|tempo_interno[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tempo_interno\(3));

-- Location: LCCOMB_X95_Y25_N24
\inst11|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~0_combout\ = (\inst11|tempo_interno\(1) & (\inst11|tempo_interno\(2) & (\inst11|tempo_interno\(3) & !\inst11|tempo_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(1),
	datab => \inst11|tempo_interno\(2),
	datac => \inst11|tempo_interno\(3),
	datad => \inst11|tempo_interno\(0),
	combout => \inst11|Add1~0_combout\);

-- Location: LCCOMB_X95_Y25_N6
\inst11|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~1_combout\ = \inst11|tempo_interno\(4) $ (\inst11|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|tempo_interno\(4),
	datad => \inst11|Add1~0_combout\,
	combout => \inst11|Add1~1_combout\);

-- Location: LCCOMB_X95_Y24_N28
\inst11|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~8_combout\ = \inst11|Add4~7\ $ (\inst11|tempo_interno\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|tempo_interno\(4),
	cin => \inst11|Add4~7\,
	combout => \inst11|Add4~8_combout\);

-- Location: LCCOMB_X95_Y25_N12
\inst11|tempo_interno[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[4]~0_combout\ = (\inst11|tempo_interno[4]~22_combout\ & (\inst11|Add1~1_combout\)) # (!\inst11|tempo_interno[4]~22_combout\ & ((\inst11|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~1_combout\,
	datab => \inst11|tempo_interno[4]~22_combout\,
	datad => \inst11|Add4~8_combout\,
	combout => \inst11|tempo_interno[4]~0_combout\);

-- Location: FF_X95_Y25_N13
\inst11|tempo_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|tempo_interno[4]~0_combout\,
	asdata => \inst11|tempo_interno\(4),
	sload => \inst11|tempo_interno[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tempo_interno\(4));

-- Location: LCCOMB_X95_Y25_N20
\inst11|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~0_combout\ = (\inst11|tempo_interno\(1) & (\inst11|tempo_interno\(2) & (\inst11|tempo_interno\(3) & \inst11|tempo_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(1),
	datab => \inst11|tempo_interno\(2),
	datac => \inst11|tempo_interno\(3),
	datad => \inst11|tempo_interno\(4),
	combout => \inst11|LessThan1~0_combout\);

-- Location: LCCOMB_X95_Y25_N2
\inst11|tempo_interno[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[4]~23_combout\ = ((!\inst11|LessThan4~0_combout\ & ((\KEY[0]~input_o\) # (\inst11|key_inc_prev~q\)))) # (!\inst11|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst11|key_inc_prev~q\,
	datac => \inst11|process_0~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|tempo_interno[4]~23_combout\);

-- Location: LCCOMB_X95_Y25_N4
\inst11|tempo_interno[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[4]~19_combout\ = ((\inst11|tempo_interno[4]~23_combout\ & ((\inst11|LessThan1~0_combout\) # (!\inst11|process_0~1_combout\)))) # (!\inst14|PS.TEMPOO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~1_combout\,
	datab => \inst11|LessThan1~0_combout\,
	datac => \inst14|PS.TEMPOO~q\,
	datad => \inst11|tempo_interno[4]~23_combout\,
	combout => \inst11|tempo_interno[4]~19_combout\);

-- Location: FF_X95_Y25_N27
\inst11|tempo_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|tempo_interno[1]~3_combout\,
	asdata => \inst11|tempo_interno\(1),
	sload => \inst11|tempo_interno[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tempo_interno\(1));

-- Location: LCCOMB_X95_Y25_N18
\inst11|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~0_combout\ = (\inst11|tempo_interno\(1)) # ((\inst11|tempo_interno\(2)) # ((\inst11|tempo_interno\(3)) # (\inst11|tempo_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno\(1),
	datab => \inst11|tempo_interno\(2),
	datac => \inst11|tempo_interno\(3),
	datad => \inst11|tempo_interno\(4),
	combout => \inst11|LessThan4~0_combout\);

-- Location: LCCOMB_X95_Y24_N14
\inst11|tempo_interno~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno~16_combout\ = \inst11|tempo_interno\(0) $ (((\inst11|key_inc_prev~q\) # ((\KEY[0]~input_o\) # (\inst11|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|key_inc_prev~q\,
	datab => \inst11|tempo_interno\(0),
	datac => \KEY[0]~input_o\,
	datad => \inst11|LessThan1~0_combout\,
	combout => \inst11|tempo_interno~16_combout\);

-- Location: LCCOMB_X95_Y24_N12
\inst11|tempo_interno[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[0]~17_combout\ = (\inst11|process_0~0_combout\ & ((\inst11|LessThan4~0_combout\ & ((\inst11|Add4~0_combout\))) # (!\inst11|LessThan4~0_combout\ & (\inst11|tempo_interno~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan4~0_combout\,
	datab => \inst11|process_0~0_combout\,
	datac => \inst11|tempo_interno~16_combout\,
	datad => \inst11|Add4~0_combout\,
	combout => \inst11|tempo_interno[0]~17_combout\);

-- Location: LCCOMB_X95_Y24_N16
\inst11|tempo_interno[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[0]~21_combout\ = (\KEY[1]~input_o\ & (\inst11|tempo_interno\(0) $ (((\inst11|LessThan1~0_combout\))))) # (!\KEY[1]~input_o\ & (\inst11|key_dec_prev~q\ & (\inst11|tempo_interno\(0) $ (\inst11|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \inst11|tempo_interno\(0),
	datac => \inst11|key_dec_prev~q\,
	datad => \inst11|LessThan1~0_combout\,
	combout => \inst11|tempo_interno[0]~21_combout\);

-- Location: LCCOMB_X95_Y25_N14
\inst11|tempo_interno~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno~20_combout\ = (\inst14|PS.TEMPOO~q\ & ((\inst11|process_0~1_combout\) # ((!\KEY[1]~input_o\ & !\inst11|key_dec_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~1_combout\,
	datab => \KEY[1]~input_o\,
	datac => \inst14|PS.TEMPOO~q\,
	datad => \inst11|key_dec_prev~q\,
	combout => \inst11|tempo_interno~20_combout\);

-- Location: LCCOMB_X95_Y24_N0
\inst11|tempo_interno[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[0]~18_combout\ = (\inst11|tempo_interno~20_combout\ & (!\inst11|tempo_interno[0]~17_combout\ & (!\inst11|tempo_interno[0]~21_combout\))) # (!\inst11|tempo_interno~20_combout\ & (((\inst11|tempo_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|tempo_interno[0]~17_combout\,
	datab => \inst11|tempo_interno[0]~21_combout\,
	datac => \inst11|tempo_interno\(0),
	datad => \inst11|tempo_interno~20_combout\,
	combout => \inst11|tempo_interno[0]~18_combout\);

-- Location: FF_X95_Y24_N1
\inst11|tempo_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|tempo_interno[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tempo_interno\(0));

-- Location: LCCOMB_X95_Y25_N28
\inst11|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~3_combout\ = \inst11|tempo_interno\(2) $ (((!\inst11|tempo_interno\(0) & \inst11|tempo_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|tempo_interno\(0),
	datac => \inst11|tempo_interno\(1),
	datad => \inst11|tempo_interno\(2),
	combout => \inst11|Add1~3_combout\);

-- Location: LCCOMB_X95_Y25_N16
\inst11|tempo_interno[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|tempo_interno[2]~2_combout\ = (\inst11|tempo_interno[4]~22_combout\ & (\inst11|Add1~3_combout\)) # (!\inst11|tempo_interno[4]~22_combout\ & ((\inst11|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~3_combout\,
	datab => \inst11|tempo_interno[4]~22_combout\,
	datad => \inst11|Add4~4_combout\,
	combout => \inst11|tempo_interno[2]~2_combout\);

-- Location: FF_X95_Y25_N17
\inst11|tempo_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|tempo_interno[2]~2_combout\,
	asdata => \inst11|tempo_interno\(2),
	sload => \inst11|tempo_interno[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|tempo_interno\(2));

-- Location: LCCOMB_X94_Y25_N12
\inst958|saidatempococcao[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[2]~4_combout\ = (\inst958|saidatempococcao[2]~3_combout\) # ((\inst3|Mux0~0_combout\ & (\inst958|s_currentState.COCCAO~q\ & \inst11|tempo_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst958|saidatempococcao[2]~3_combout\,
	datad => \inst11|tempo_interno\(2),
	combout => \inst958|saidatempococcao[2]~4_combout\);

-- Location: LCCOMB_X94_Y25_N6
\inst4|s_tempo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo~10_combout\ = ((!\inst4|Equal0~1_combout\ & !\inst4|Equal0~0_combout\)) # (!\inst958|s_currentState.COCCAO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.COCCAO~q\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|s_tempo~10_combout\);

-- Location: FF_X94_Y25_N21
\inst4|s_tempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[2]~13_combout\,
	asdata => \inst958|saidatempococcao[2]~4_combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(2));

-- Location: LCCOMB_X94_Y25_N22
\inst4|s_tempo[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[3]~15_combout\ = (\inst4|s_tempo\(3) & (\inst4|s_tempo[2]~14\ & VCC)) # (!\inst4|s_tempo\(3) & (!\inst4|s_tempo[2]~14\))
-- \inst4|s_tempo[3]~16\ = CARRY((!\inst4|s_tempo\(3) & !\inst4|s_tempo[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(3),
	datad => VCC,
	cin => \inst4|s_tempo[2]~14\,
	combout => \inst4|s_tempo[3]~15_combout\,
	cout => \inst4|s_tempo[3]~16\);

-- Location: LCCOMB_X95_Y25_N30
\inst958|saidatempococcao[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[3]~2_combout\ = (\inst958|s_currentState.COCCAO~q\ & ((\inst3|Mux0~0_combout\ & ((\inst11|tempo_interno\(3)))) # (!\inst3|Mux0~0_combout\ & (!\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|saidatemperatura[4]~3_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \inst11|tempo_interno\(3),
	combout => \inst958|saidatempococcao[3]~2_combout\);

-- Location: FF_X94_Y25_N23
\inst4|s_tempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[3]~15_combout\,
	asdata => \inst958|saidatempococcao[3]~2_combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(3));

-- Location: LCCOMB_X94_Y25_N24
\inst4|s_tempo[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[4]~17_combout\ = (\inst4|s_tempo\(4) & ((GND) # (!\inst4|s_tempo[3]~16\))) # (!\inst4|s_tempo\(4) & (\inst4|s_tempo[3]~16\ $ (GND)))
-- \inst4|s_tempo[4]~18\ = CARRY((\inst4|s_tempo\(4)) # (!\inst4|s_tempo[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(4),
	datad => VCC,
	cin => \inst4|s_tempo[3]~16\,
	combout => \inst4|s_tempo[4]~17_combout\,
	cout => \inst4|s_tempo[4]~18\);

-- Location: LCCOMB_X95_Y25_N0
\inst958|saidatempococcao[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[4]~1_combout\ = (\inst958|s_currentState.COCCAO~q\ & ((\inst3|Mux0~0_combout\ & ((\inst11|tempo_interno\(4)))) # (!\inst3|Mux0~0_combout\ & (\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|saidatemperatura[4]~3_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \inst11|tempo_interno\(4),
	combout => \inst958|saidatempococcao[4]~1_combout\);

-- Location: FF_X94_Y25_N25
\inst4|s_tempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[4]~17_combout\,
	asdata => \inst958|saidatempococcao[4]~1_combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(4));

-- Location: LCCOMB_X94_Y25_N26
\inst4|s_tempo[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[5]~19_combout\ = (\inst4|s_tempo\(5) & (\inst4|s_tempo[4]~18\ & VCC)) # (!\inst4|s_tempo\(5) & (!\inst4|s_tempo[4]~18\))
-- \inst4|s_tempo[5]~20\ = CARRY((!\inst4|s_tempo\(5) & !\inst4|s_tempo[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(5),
	datad => VCC,
	cin => \inst4|s_tempo[4]~18\,
	combout => \inst4|s_tempo[5]~19_combout\,
	cout => \inst4|s_tempo[5]~20\);

-- Location: FF_X94_Y25_N27
\inst4|s_tempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[5]~19_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(5));

-- Location: LCCOMB_X94_Y25_N28
\inst4|s_tempo[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[6]~21_combout\ = (\inst4|s_tempo\(6) & ((GND) # (!\inst4|s_tempo[5]~20\))) # (!\inst4|s_tempo\(6) & (\inst4|s_tempo[5]~20\ $ (GND)))
-- \inst4|s_tempo[6]~22\ = CARRY((\inst4|s_tempo\(6)) # (!\inst4|s_tempo[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_tempo\(6),
	datad => VCC,
	cin => \inst4|s_tempo[5]~20\,
	combout => \inst4|s_tempo[6]~21_combout\,
	cout => \inst4|s_tempo[6]~22\);

-- Location: FF_X94_Y25_N29
\inst4|s_tempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[6]~21_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(6));

-- Location: LCCOMB_X94_Y25_N30
\inst4|s_tempo[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_tempo[7]~23_combout\ = \inst4|s_tempo\(7) $ (!\inst4|s_tempo[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(7),
	cin => \inst4|s_tempo[6]~22\,
	combout => \inst4|s_tempo[7]~23_combout\);

-- Location: FF_X94_Y25_N31
\inst4|s_tempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[7]~23_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(7));

-- Location: LCCOMB_X94_Y25_N4
\inst4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst4|s_tempo\(7)) # ((\inst4|s_tempo\(4)) # ((\inst4|s_tempo\(5)) # (\inst4|s_tempo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(7),
	datab => \inst4|s_tempo\(4),
	datac => \inst4|s_tempo\(5),
	datad => \inst4|s_tempo\(6),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X94_Y25_N14
\inst958|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|Selector6~0_combout\ = ((!\inst4|Equal0~0_combout\ & (!\inst4|Equal0~1_combout\ & \inst958|s_currentState.COCCAO~q\))) # (!\inst958|s_currentState.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.IDLE~q\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst958|s_currentState.COCCAO~q\,
	combout => \inst958|Selector6~0_combout\);

-- Location: LCCOMB_X99_Y25_N20
\inst958|s_coccaojapassou\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_coccaojapassou~combout\ = (\inst958|Selector6~0_combout\ & (\inst958|s_currentState.COCCAO~q\)) # (!\inst958|Selector6~0_combout\ & ((\inst958|s_coccaojapassou~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.COCCAO~q\,
	datab => \inst958|s_coccaojapassou~combout\,
	datad => \inst958|Selector6~0_combout\,
	combout => \inst958|s_coccaojapassou~combout\);

-- Location: LCCOMB_X99_Y25_N10
\inst958|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~18_combout\ = (!\SW[3]~input_o\ & (\inst958|s_currentState.AIRFECHADA~q\ & !\inst958|s_coccaojapassou~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst958|s_currentState.AIRFECHADA~q\,
	datad => \inst958|s_coccaojapassou~combout\,
	combout => \inst958|s_currentState~18_combout\);

-- Location: LCCOMB_X98_Y25_N4
\inst958|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~11_combout\ = (!\SW[3]~input_o\ & ((\inst958|s_currentState.AIRFECHADA~q\) # ((\inst958|s_currentState.IDLE~q\ & \inst958|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst958|s_currentState.IDLE~q\,
	datac => \inst958|s_currentState.AIRFECHADA~q\,
	datad => \inst958|s_currentState~10_combout\,
	combout => \inst958|s_currentState~11_combout\);

-- Location: LCCOMB_X100_Y25_N0
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|s_temperatura\(6) & (!\inst5|s_temperatura\(7) & !\inst5|s_temperatura\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura\(6),
	datac => \inst5|s_temperatura\(7),
	datad => \inst5|s_temperatura\(5),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y25_N6
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|s_temperatura\(2) & (\inst5|s_temperatura\(4) & !\inst5|s_temperatura\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(2),
	datac => \inst5|s_temperatura\(4),
	datad => \inst5|s_temperatura\(3),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y25_N16
\inst958|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~13_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & (!\inst5|s_temperatura\(1) & (\inst5|Equal0~0_combout\ & \inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.ARREFECIMENTO~q\,
	datab => \inst5|s_temperatura\(1),
	datac => \inst5|Equal0~0_combout\,
	datad => \inst5|Equal0~1_combout\,
	combout => \inst958|s_currentState~13_combout\);

-- Location: LCCOMB_X99_Y25_N0
\inst958|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~15_combout\ = (\inst958|s_currentState.AIRABERTA~q\ & (((\SW[3]~input_o\)))) # (!\inst958|s_currentState.AIRABERTA~q\ & ((\inst958|s_currentState~14_combout\) # ((\inst958|s_currentState~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~14_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState.AIRABERTA~q\,
	datad => \inst958|s_currentState~13_combout\,
	combout => \inst958|s_currentState~15_combout\);

-- Location: LCCOMB_X99_Y25_N24
\inst958|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~16_combout\ = (\inst958|s_currentState~12_combout\) # ((\inst958|s_currentState.IDLE~q\ & (!\inst958|s_currentState.PREAQ~q\ & \inst958|s_currentState~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.IDLE~q\,
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \inst958|s_currentState~12_combout\,
	datad => \inst958|s_currentState~15_combout\,
	combout => \inst958|s_currentState~16_combout\);

-- Location: LCCOMB_X99_Y25_N8
\inst958|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~17_combout\ = ((\inst958|s_currentState~11_combout\) # ((!\inst958|s_currentState.AIRFECHADA~q\ & \inst958|s_currentState~16_combout\))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst958|s_currentState.AIRFECHADA~q\,
	datac => \inst958|s_currentState~11_combout\,
	datad => \inst958|s_currentState~16_combout\,
	combout => \inst958|s_currentState~17_combout\);

-- Location: FF_X99_Y25_N3
\inst958|s_currentState.COCCAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst958|s_currentState~18_combout\,
	sclr => \ALT_INV_SW[4]~input_o\,
	sload => VCC,
	ena => \inst958|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.COCCAO~q\);

-- Location: LCCOMB_X94_Y25_N10
\inst958|saidatempococcao[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[0]~0_combout\ = (\inst958|s_currentState.COCCAO~q\ & ((\inst3|Mux0~0_combout\ & ((!\inst11|tempo_interno\(0)))) # (!\inst3|Mux0~0_combout\ & (!\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[4]~3_combout\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \inst11|tempo_interno\(0),
	combout => \inst958|saidatempococcao[0]~0_combout\);

-- Location: FF_X94_Y25_N17
\inst4|s_tempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[0]~8_combout\,
	asdata => \inst958|saidatempococcao[0]~0_combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(0));

-- Location: LCCOMB_X99_Y25_N4
\inst958|saidatempococcao[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[1]~5_combout\ = (\inst958|s_currentState.COCCAO~q\ & ((\SW[2]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[2]~input_o\ & (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.COCCAO~q\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst958|saidatempococcao[1]~5_combout\);

-- Location: LCCOMB_X94_Y25_N8
\inst958|saidatempococcao[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatempococcao[1]~6_combout\ = (\inst958|saidatempococcao[1]~5_combout\) # ((\inst3|Mux0~0_combout\ & (\inst958|s_currentState.COCCAO~q\ & \inst11|tempo_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatempococcao[1]~5_combout\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \inst11|tempo_interno\(1),
	combout => \inst958|saidatempococcao[1]~6_combout\);

-- Location: FF_X94_Y25_N19
\inst4|s_tempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~q\,
	d => \inst4|s_tempo[1]~11_combout\,
	asdata => \inst958|saidatempococcao[1]~6_combout\,
	sload => \inst4|s_tempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_tempo\(1));

-- Location: LCCOMB_X94_Y25_N0
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|s_tempo\(1)) # ((\inst4|s_tempo\(0)) # ((\inst4|s_tempo\(3)) # (\inst4|s_tempo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(1),
	datab => \inst4|s_tempo\(0),
	datac => \inst4|s_tempo\(3),
	datad => \inst4|s_tempo\(2),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y25_N30
\inst958|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~14_combout\ = (!\inst4|Equal0~0_combout\ & (!\inst958|s_currentState.ARREFECIMENTO~q\ & !\inst4|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal0~0_combout\,
	datac => \inst958|s_currentState.ARREFECIMENTO~q\,
	datad => \inst4|Equal0~1_combout\,
	combout => \inst958|s_currentState~14_combout\);

-- Location: LCCOMB_X99_Y25_N22
\inst958|s_currentState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~19_combout\ = (!\inst958|s_currentState.PREAQ~q\ & ((\inst958|s_currentState~13_combout\) # ((\inst958|s_currentState~14_combout\ & \inst958|s_currentState.COCCAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~14_combout\,
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst958|s_currentState.PREAQ~q\,
	datad => \inst958|s_currentState~13_combout\,
	combout => \inst958|s_currentState~19_combout\);

-- Location: LCCOMB_X99_Y25_N6
\inst958|s_currentState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~25_combout\ = (!\inst958|s_currentState~19_combout\ & (\inst958|s_currentState~21_combout\ & ((\SW[3]~input_o\) # (!\inst958|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~19_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst958|s_currentState~21_combout\,
	datad => \inst958|s_currentState~10_combout\,
	combout => \inst958|s_currentState~25_combout\);

-- Location: LCCOMB_X97_Y25_N10
\inst958|s_currentState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~27_combout\ = (\SW[3]~input_o\ & \inst958|s_currentState.AIRABERTA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \inst958|s_currentState.AIRABERTA~q\,
	combout => \inst958|s_currentState~27_combout\);

-- Location: LCCOMB_X99_Y25_N12
\inst958|s_currentState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~28_combout\ = (\inst958|s_currentState~25_combout\ & ((\inst958|s_currentState.AIRFECHADA~q\) # ((\SW[4]~input_o\ & \inst958|s_currentState~27_combout\)))) # (!\inst958|s_currentState~25_combout\ & (\SW[4]~input_o\ & 
-- ((\inst958|s_currentState~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState~25_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst958|s_currentState.AIRFECHADA~q\,
	datad => \inst958|s_currentState~27_combout\,
	combout => \inst958|s_currentState~28_combout\);

-- Location: FF_X99_Y25_N13
\inst958|s_currentState.AIRFECHADA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst958|s_currentState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.AIRFECHADA~q\);

-- Location: LCCOMB_X99_Y25_N18
\inst958|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~9_combout\ = (!\SW[3]~input_o\ & (\inst958|s_currentState.AIRFECHADA~q\ & \inst958|s_coccaojapassou~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst958|s_currentState.AIRFECHADA~q\,
	datad => \inst958|s_coccaojapassou~combout\,
	combout => \inst958|s_currentState~9_combout\);

-- Location: FF_X99_Y25_N31
\inst958|s_currentState.ARREFECIMENTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst958|s_currentState~9_combout\,
	sclr => \ALT_INV_SW[4]~input_o\,
	sload => VCC,
	ena => \inst958|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst958|s_currentState.ARREFECIMENTO~q\);

-- Location: LCCOMB_X101_Y25_N8
\inst958|saidatemperatura[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[1]~8_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst958|saidatemperatura[1]~7_combout\) # ((\inst3|Mux0~0_combout\ & \inst11|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[1]~7_combout\,
	datac => \inst11|temp\(1),
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst958|saidatemperatura[1]~8_combout\);

-- Location: LCCOMB_X100_Y25_N24
\inst5|s_temperatura~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura~9_combout\ = (\inst5|s_temperatura\(4) & ((\inst5|s_temperatura\(3)) # ((\inst5|s_temperatura\(1) & \inst5|s_temperatura\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(3),
	datab => \inst5|s_temperatura\(4),
	datac => \inst5|s_temperatura\(1),
	datad => \inst5|s_temperatura\(2),
	combout => \inst5|s_temperatura~9_combout\);

-- Location: LCCOMB_X100_Y25_N28
\inst12|saida_temperatura[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[6]~0_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & (((\inst5|s_temperatura\(1)) # (!\inst5|Equal0~1_combout\)) # (!\inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.ARREFECIMENTO~q\,
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|s_temperatura\(1),
	datad => \inst5|Equal0~1_combout\,
	combout => \inst12|saida_temperatura[6]~0_combout\);

-- Location: LCCOMB_X100_Y25_N2
\inst5|s_temperatura~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura~10_combout\ = ((!\inst5|s_temperatura~9_combout\ & \inst5|Equal0~0_combout\)) # (!\inst12|saida_temperatura[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura~9_combout\,
	datac => \inst5|Equal0~0_combout\,
	datad => \inst12|saida_temperatura[6]~0_combout\,
	combout => \inst5|s_temperatura~10_combout\);

-- Location: FF_X100_Y25_N9
\inst5|s_temperatura[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[1]~7_combout\,
	asdata => \inst958|saidatemperatura[1]~8_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(1));

-- Location: LCCOMB_X100_Y25_N10
\inst5|s_temperatura[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[2]~11_combout\ = (\inst5|s_temperatura\(2) & (\inst5|s_temperatura[1]~8\ & VCC)) # (!\inst5|s_temperatura\(2) & (!\inst5|s_temperatura[1]~8\))
-- \inst5|s_temperatura[2]~12\ = CARRY((!\inst5|s_temperatura\(2) & !\inst5|s_temperatura[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(2),
	datad => VCC,
	cin => \inst5|s_temperatura[1]~8\,
	combout => \inst5|s_temperatura[2]~11_combout\,
	cout => \inst5|s_temperatura[2]~12\);

-- Location: LCCOMB_X100_Y25_N26
\inst958|saidatemperatura[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[2]~6_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst3|Mux0~0_combout\ & ((!\inst11|temp\(2)))) # (!\inst3|Mux0~0_combout\ & (!\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[4]~3_combout\,
	datac => \inst11|temp\(2),
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst958|saidatemperatura[2]~6_combout\);

-- Location: FF_X100_Y25_N11
\inst5|s_temperatura[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[2]~11_combout\,
	asdata => \inst958|saidatemperatura[2]~6_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(2));

-- Location: LCCOMB_X100_Y25_N12
\inst5|s_temperatura[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[3]~13_combout\ = (\inst5|s_temperatura\(3) & (\inst5|s_temperatura[2]~12\ $ (GND))) # (!\inst5|s_temperatura\(3) & (!\inst5|s_temperatura[2]~12\ & VCC))
-- \inst5|s_temperatura[3]~14\ = CARRY((\inst5|s_temperatura\(3) & !\inst5|s_temperatura[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(3),
	datad => VCC,
	cin => \inst5|s_temperatura[2]~12\,
	combout => \inst5|s_temperatura[3]~13_combout\,
	cout => \inst5|s_temperatura[3]~14\);

-- Location: LCCOMB_X100_Y25_N4
\inst958|saidatemperatura[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[3]~5_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst3|Mux0~0_combout\ & ((\inst11|temp\(3)))) # (!\inst3|Mux0~0_combout\ & (\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[4]~3_combout\,
	datac => \inst11|temp\(3),
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst958|saidatemperatura[3]~5_combout\);

-- Location: FF_X100_Y25_N13
\inst5|s_temperatura[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[3]~13_combout\,
	asdata => \inst958|saidatemperatura[3]~5_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(3));

-- Location: LCCOMB_X100_Y25_N14
\inst5|s_temperatura[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[4]~15_combout\ = (\inst5|s_temperatura\(4) & (\inst5|s_temperatura[3]~14\ & VCC)) # (!\inst5|s_temperatura\(4) & (!\inst5|s_temperatura[3]~14\))
-- \inst5|s_temperatura[4]~16\ = CARRY((!\inst5|s_temperatura\(4) & !\inst5|s_temperatura[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(4),
	datad => VCC,
	cin => \inst5|s_temperatura[3]~14\,
	combout => \inst5|s_temperatura[4]~15_combout\,
	cout => \inst5|s_temperatura[4]~16\);

-- Location: LCCOMB_X100_Y25_N22
\inst958|saidatemperatura[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[4]~4_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst3|Mux0~0_combout\ & ((!\inst11|temp\(4)))) # (!\inst3|Mux0~0_combout\ & (!\inst958|saidatemperatura[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[4]~3_combout\,
	datac => \inst11|temp\(4),
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst958|saidatemperatura[4]~4_combout\);

-- Location: FF_X100_Y25_N15
\inst5|s_temperatura[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[4]~15_combout\,
	asdata => \inst958|saidatemperatura[4]~4_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(4));

-- Location: LCCOMB_X100_Y25_N16
\inst5|s_temperatura[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[5]~17_combout\ = (\inst5|s_temperatura\(5) & ((GND) # (!\inst5|s_temperatura[4]~16\))) # (!\inst5|s_temperatura\(5) & (\inst5|s_temperatura[4]~16\ $ (GND)))
-- \inst5|s_temperatura[5]~18\ = CARRY((\inst5|s_temperatura\(5)) # (!\inst5|s_temperatura[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura\(5),
	datad => VCC,
	cin => \inst5|s_temperatura[4]~16\,
	combout => \inst5|s_temperatura[5]~17_combout\,
	cout => \inst5|s_temperatura[5]~18\);

-- Location: LCCOMB_X101_Y25_N24
\inst958|saidatemperatura[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[5]~1_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatemperatura[5]~1_combout\);

-- Location: LCCOMB_X100_Y25_N30
\inst958|saidatemperatura[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[5]~2_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst958|saidatemperatura[5]~1_combout\) # ((\inst3|Mux0~0_combout\ & \inst11|temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst958|saidatemperatura[5]~1_combout\,
	datac => \inst958|s_currentState.ARREFECIMENTO~q\,
	datad => \inst11|temp\(5),
	combout => \inst958|saidatemperatura[5]~2_combout\);

-- Location: FF_X100_Y25_N17
\inst5|s_temperatura[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[5]~17_combout\,
	asdata => \inst958|saidatemperatura[5]~2_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(5));

-- Location: LCCOMB_X100_Y25_N18
\inst5|s_temperatura[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[6]~19_combout\ = (\inst5|s_temperatura\(6) & (\inst5|s_temperatura[5]~18\ & VCC)) # (!\inst5|s_temperatura\(6) & (!\inst5|s_temperatura[5]~18\))
-- \inst5|s_temperatura[6]~20\ = CARRY((!\inst5|s_temperatura\(6) & !\inst5|s_temperatura[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura\(6),
	datad => VCC,
	cin => \inst5|s_temperatura[5]~18\,
	combout => \inst5|s_temperatura[6]~19_combout\,
	cout => \inst5|s_temperatura[6]~20\);

-- Location: LCCOMB_X101_Y25_N0
\inst958|saidatemperatura[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[6]~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst11|temp\(6) & !\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((!\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst11|temp\(6),
	datad => \SW[2]~input_o\,
	combout => \inst958|saidatemperatura[6]~0_combout\);

-- Location: LCCOMB_X101_Y25_N10
\inst958|saidatemperatura[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[6]~9_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & \inst958|saidatemperatura[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst958|s_currentState.ARREFECIMENTO~q\,
	datad => \inst958|saidatemperatura[6]~0_combout\,
	combout => \inst958|saidatemperatura[6]~9_combout\);

-- Location: FF_X100_Y25_N19
\inst5|s_temperatura[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[6]~19_combout\,
	asdata => \inst958|saidatemperatura[6]~9_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(6));

-- Location: LCCOMB_X100_Y25_N20
\inst5|s_temperatura[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_temperatura[7]~21_combout\ = \inst5|s_temperatura\(7) $ (\inst5|s_temperatura[6]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_temperatura\(7),
	cin => \inst5|s_temperatura[6]~20\,
	combout => \inst5|s_temperatura[7]~21_combout\);

-- Location: LCCOMB_X101_Y25_N14
\inst958|saidatemperatura[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|saidatemperatura[7]~10_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst11|temp\(7)) # (!\inst3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datac => \inst11|temp\(7),
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst958|saidatemperatura[7]~10_combout\);

-- Location: FF_X100_Y25_N21
\inst5|s_temperatura[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|pulse_reg~clkctrl_outclk\,
	d => \inst5|s_temperatura[7]~21_combout\,
	asdata => \inst958|saidatemperatura[7]~10_combout\,
	sload => \inst5|s_temperatura~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_temperatura\(7));

-- Location: LCCOMB_X101_Y25_N26
\inst12|saida_temperatura[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[7]~2_combout\ = (\SW[4]~input_o\ & ((\inst11|temp\(7)) # ((!\inst3|Mux0~0_combout\)))) # (!\SW[4]~input_o\ & (((\inst5|s_temperatura\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp\(7),
	datab => \inst5|s_temperatura\(7),
	datac => \SW[4]~input_o\,
	datad => \inst3|Mux0~0_combout\,
	combout => \inst12|saida_temperatura[7]~2_combout\);

-- Location: LCCOMB_X100_Y23_N4
\inst12|saida_temperatura[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[7]~1_combout\ = (\SW[4]~input_o\ & ((\inst958|s_currentState.ARREFECIMENTO~q\))) # (!\SW[4]~input_o\ & (\inst12|saida_temperatura[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[6]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst12|saida_temperatura[7]~1_combout\);

-- Location: LCCOMB_X101_Y25_N6
\inst12|saida_temperatura[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[6]~3_combout\ = (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\SW[4]~input_o\ & (\inst958|saidatemperatura[6]~0_combout\)) # (!\SW[4]~input_o\ & ((\inst5|s_temperatura\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.ARREFECIMENTO~q\,
	datab => \SW[4]~input_o\,
	datac => \inst958|saidatemperatura[6]~0_combout\,
	datad => \inst5|s_temperatura\(6),
	combout => \inst12|saida_temperatura[6]~3_combout\);

-- Location: LCCOMB_X101_Y25_N4
\inst12|saida_temperatura[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[5]~4_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatemperatura[5]~2_combout\)))) # (!\SW[4]~input_o\ & (\inst5|s_temperatura\(5) & ((\inst958|s_currentState.ARREFECIMENTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(5),
	datab => \inst958|saidatemperatura[5]~2_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst12|saida_temperatura[5]~4_combout\);

-- Location: LCCOMB_X100_Y23_N30
\inst12|saida_temperatura[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[4]~5_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatemperatura[4]~4_combout\)))) # (!\SW[4]~input_o\ & (\inst12|saida_temperatura[6]~0_combout\ & (\inst5|s_temperatura\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[6]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst5|s_temperatura\(4),
	datad => \inst958|saidatemperatura[4]~4_combout\,
	combout => \inst12|saida_temperatura[4]~5_combout\);

-- Location: LCCOMB_X100_Y23_N28
\inst12|saida_temperatura[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[3]~6_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatemperatura[3]~5_combout\)))) # (!\SW[4]~input_o\ & (\inst958|s_currentState.ARREFECIMENTO~q\ & ((\inst5|s_temperatura\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.ARREFECIMENTO~q\,
	datab => \SW[4]~input_o\,
	datac => \inst958|saidatemperatura[3]~5_combout\,
	datad => \inst5|s_temperatura\(3),
	combout => \inst12|saida_temperatura[3]~6_combout\);

-- Location: LCCOMB_X105_Y22_N10
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst12|saida_temperatura[3]~6_combout\ $ (VCC)
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst12|saida_temperatura[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[3]~6_combout\,
	datad => VCC,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X105_Y22_N12
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst12|saida_temperatura[4]~5_combout\ & (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst12|saida_temperatura[4]~5_combout\ & 
-- (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst12|saida_temperatura[4]~5_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[4]~5_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X105_Y22_N14
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst12|saida_temperatura[5]~4_combout\ & ((GND) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst12|saida_temperatura[5]~4_combout\ & 
-- (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst12|saida_temperatura[5]~4_combout\) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[5]~4_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X105_Y22_N16
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst12|saida_temperatura[6]~3_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst12|saida_temperatura[6]~3_combout\ & 
-- ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst12|saida_temperatura[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[6]~3_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X105_Y22_N18
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst12|saida_temperatura[7]~2_combout\ & (\inst12|saida_temperatura[7]~1_combout\ & VCC))) # 
-- (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst12|saida_temperatura[7]~2_combout\ & \inst12|saida_temperatura[7]~1_combout\)))))
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst12|saida_temperatura[7]~2_combout\ & (\inst12|saida_temperatura[7]~1_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[7]~2_combout\,
	datab => \inst12|saida_temperatura[7]~1_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X105_Y22_N20
\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X105_Y22_N22
\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\);

-- Location: LCCOMB_X105_Y22_N0
\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\ = (\inst12|saida_temperatura[7]~1_combout\ & (\inst12|saida_temperatura[7]~2_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[7]~1_combout\,
	datac => \inst12|saida_temperatura[7]~2_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\);

-- Location: LCCOMB_X105_Y22_N8
\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\);

-- Location: LCCOMB_X105_Y23_N28
\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\ = (\inst12|saida_temperatura[6]~3_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[6]~3_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\);

-- Location: LCCOMB_X105_Y23_N6
\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ = (\inst12|saida_temperatura[5]~4_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[5]~4_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\);

-- Location: LCCOMB_X105_Y22_N30
\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\);

-- Location: LCCOMB_X105_Y22_N28
\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\);

-- Location: LCCOMB_X105_Y23_N24
\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\ = (\inst12|saida_temperatura[4]~5_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[4]~5_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\);

-- Location: LCCOMB_X105_Y23_N26
\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\ = (\inst12|saida_temperatura[3]~6_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[3]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\);

-- Location: LCCOMB_X105_Y23_N4
\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\ = (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\);

-- Location: LCCOMB_X100_Y23_N14
\inst12|saida_temperatura[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[2]~7_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatemperatura[2]~6_combout\)))) # (!\SW[4]~input_o\ & (\inst12|saida_temperatura[6]~0_combout\ & ((\inst5|s_temperatura\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[6]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst958|saidatemperatura[2]~6_combout\,
	datad => \inst5|s_temperatura\(2),
	combout => \inst12|saida_temperatura[2]~7_combout\);

-- Location: LCCOMB_X105_Y23_N30
\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\ = (\inst12|saida_temperatura[2]~7_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[2]~7_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\);

-- Location: LCCOMB_X105_Y23_N0
\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\ = (\inst12|saida_temperatura[2]~7_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[2]~7_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\);

-- Location: LCCOMB_X105_Y23_N10
\inst13|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\ = (((\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\)))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY((\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~45_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[49]~44_combout\,
	datad => VCC,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X105_Y23_N12
\inst13|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~1\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\)))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~1\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\ & 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\)))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\ & 
-- !\inst13|Mod0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~42_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[50]~43_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X105_Y23_N14
\inst13|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~3\ & ((((\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\))))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~3\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\) # 
-- ((\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\) # (GND))))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\) # ((\inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\) # 
-- (!\inst13|Mod0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~41_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X105_Y23_N16
\inst13|Mod0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ & (((!\inst13|Mod0|auto_generated|divider|divider|op_6~5\)))) # 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ & !\inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\)) # 
-- (!\inst13|Mod0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[52]~39_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X105_Y23_N18
\inst13|Mod0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~7\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\)))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~7\ & ((((\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\)))))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|op_6~7\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~37_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[53]~36_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X105_Y23_N20
\inst13|Mod0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~9\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\)))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~9\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\ & 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\)))
-- \inst13|Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\ & 
-- !\inst13|Mod0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~35_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\,
	datad => VCC,
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \inst13|Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X105_Y23_N22
\inst13|Mod0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ = \inst13|Mod0|auto_generated|divider|divider|op_6~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X105_Y22_N2
\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\) # 
-- ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[54]~34_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\);

-- Location: LCCOMB_X106_Y24_N8
\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\ = (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\);

-- Location: LCCOMB_X105_Y22_N24
\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst12|saida_temperatura[6]~3_combout\))) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst12|saida_temperatura[6]~3_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\);

-- Location: LCCOMB_X107_Y24_N8
\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ = (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\);

-- Location: LCCOMB_X106_Y24_N10
\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\ = (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\);

-- Location: LCCOMB_X105_Y22_N26
\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst12|saida_temperatura[5]~4_combout\))) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst12|saida_temperatura[5]~4_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\);

-- Location: LCCOMB_X106_Y24_N24
\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => VCC,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y24_N26
\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ & 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y24_N28
\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\)))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y24_N30
\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y24_N4
\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X106_Y24_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\);

-- Location: LCCOMB_X106_Y24_N6
\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X106_Y24_N14
\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\);

-- Location: LCCOMB_X105_Y24_N22
\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X106_Y24_N12
\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\);

-- Location: LCCOMB_X105_Y22_N4
\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst12|saida_temperatura[4]~5_combout\)) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[4]~5_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\);

-- Location: LCCOMB_X105_Y24_N30
\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\ & !\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\);

-- Location: LCCOMB_X105_Y24_N20
\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X105_Y24_N16
\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X105_Y24_N28
\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\) # 
-- ((\inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\ & !\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\);

-- Location: LCCOMB_X105_Y24_N4
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\,
	datad => VCC,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X105_Y24_N6
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X105_Y24_N8
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\)))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X105_Y24_N10
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X105_Y24_N12
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X105_Y24_N2
\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[27]~81_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X105_Y25_N10
\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X105_Y25_N24
\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X105_Y24_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[26]~82_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X105_Y25_N30
\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X105_Y24_N18
\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[25]~83_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\);

-- Location: LCCOMB_X105_Y24_N24
\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[24]~84_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\);

-- Location: LCCOMB_X105_Y24_N14
\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X105_Y23_N8
\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst12|saida_temperatura[3]~6_combout\)) # (!\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[3]~6_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\);

-- Location: LCCOMB_X107_Y23_N2
\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\ & !\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\);

-- Location: LCCOMB_X105_Y25_N28
\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X105_Y25_N4
\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X105_Y25_N2
\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\);

-- Location: LCCOMB_X105_Y25_N12
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\,
	datad => VCC,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X105_Y25_N14
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X105_Y25_N16
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\)))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X105_Y25_N18
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X105_Y25_N20
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\))))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\) # (GND))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X105_Y25_N22
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X105_Y25_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\);

-- Location: LCCOMB_X106_Y25_N24
\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X107_Y25_N4
\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X105_Y25_N6
\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\);

-- Location: LCCOMB_X105_Y25_N8
\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[34]~87_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\);

-- Location: LCCOMB_X106_Y25_N2
\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X105_Y24_N26
\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[33]~88_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\);

-- Location: LCCOMB_X106_Y25_N28
\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X105_Y25_N26
\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[32]~89_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\);

-- Location: LCCOMB_X106_Y25_N22
\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X107_Y24_N26
\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst12|saida_temperatura[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst12|saida_temperatura[2]~7_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\);

-- Location: LCCOMB_X107_Y24_N28
\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\ = (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\);

-- Location: LCCOMB_X107_Y24_N12
\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X107_Y24_N14
\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X107_Y24_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\inst12|saida_temperatura[2]~7_combout\))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst12|saida_temperatura[2]~7_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\);

-- Location: LCCOMB_X106_Y25_N8
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\,
	datad => VCC,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X106_Y25_N10
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X106_Y25_N12
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\)))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X106_Y25_N14
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X106_Y25_N16
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\))))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\) # (GND))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # ((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\) # 
-- (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X106_Y25_N18
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X106_Y25_N20
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X107_Y25_N10
\inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\);

-- Location: LCCOMB_X106_Y25_N6
\inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[45]~90_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95_combout\);

-- Location: LCCOMB_X106_Y25_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[44]~91_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96_combout\);

-- Location: LCCOMB_X107_Y25_N0
\inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X107_Y25_N6
\inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X106_Y25_N30
\inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[43]~92_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97_combout\);

-- Location: LCCOMB_X107_Y25_N12
\inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\);

-- Location: LCCOMB_X106_Y25_N4
\inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[42]~93_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98_combout\);

-- Location: LCCOMB_X106_Y25_N26
\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[41]~94_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\);

-- Location: LCCOMB_X108_Y25_N26
\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\);

-- Location: LCCOMB_X107_Y24_N18
\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\) # 
-- ((!\inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[40]~101_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\);

-- Location: LCCOMB_X107_Y25_N2
\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\);

-- Location: LCCOMB_X101_Y25_N22
\inst12|saida_temperatura[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_temperatura[1]~8_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatemperatura[1]~8_combout\)))) # (!\SW[4]~input_o\ & (\inst5|s_temperatura\(1) & ((\inst958|s_currentState.ARREFECIMENTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_temperatura\(1),
	datab => \inst958|saidatemperatura[1]~8_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst958|s_currentState.ARREFECIMENTO~q\,
	combout => \inst12|saida_temperatura[1]~8_combout\);

-- Location: LCCOMB_X109_Y23_N22
\inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55_combout\ = (\inst12|saida_temperatura[1]~8_combout\ & !\inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[1]~8_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55_combout\);

-- Location: LCCOMB_X109_Y23_N16
\inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54_combout\ = (\inst12|saida_temperatura[1]~8_combout\ & \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[1]~8_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54_combout\);

-- Location: LCCOMB_X109_Y23_N24
\inst13|Mod0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~55_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[48]~54_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\);

-- Location: LCCOMB_X108_Y25_N30
\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- (\inst12|saida_temperatura[1]~8_combout\)) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst12|saida_temperatura[1]~8_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\);

-- Location: LCCOMB_X109_Y23_N8
\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\ = (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\);

-- Location: LCCOMB_X109_Y23_N10
\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\ = (\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst12|saida_temperatura[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst12|saida_temperatura[1]~8_combout\,
	combout => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\);

-- Location: LCCOMB_X109_Y23_N14
\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X108_Y25_N20
\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\);

-- Location: LCCOMB_X107_Y25_N16
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\,
	datad => VCC,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X107_Y25_N18
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\)))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X107_Y25_N20
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\)))))
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- (\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X107_Y25_N22
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[51]~98_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y25_N24
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\) # ((\inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97_combout\) # 
-- (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[52]~97_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X107_Y25_N26
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ & 
-- !\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~96_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X107_Y25_N28
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\) # ((\inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95_combout\) # 
-- (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[54]~95_combout\,
	datad => VCC,
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X107_Y25_N30
\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X107_Y25_N8
\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[49]~100_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\);

-- Location: LCCOMB_X107_Y25_N14
\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\);

-- Location: LCCOMB_X108_Y25_N4
\inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\ = (\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\) # 
-- ((\inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\)))) # (!\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~102_combout\,
	datab => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[48]~71_combout\,
	combout => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\);

-- Location: LCCOMB_X107_Y59_N8
\inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ $ (\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y59_N26
\inst15|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = (!\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ & \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y59_N20
\inst15|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = (\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ & !\inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y59_N22
\inst15|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = (\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & (!\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ & !\inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\)) # 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & (\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ & \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y59_N12
\inst15|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = (\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & (\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\)) # (!\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & 
-- (!\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\ & \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y59_N18
\inst15|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux5~0_combout\ = (\inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\ & ((\inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\) # (\inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod1|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datac => \inst13|Mod1|auto_generated|divider|divider|StageOut[59]~80_combout\,
	datad => \inst13|Mod1|auto_generated|divider|divider|StageOut[57]~78_combout\,
	combout => \inst15|Mux5~0_combout\);

-- Location: LCCOMB_X106_Y24_N16
\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datad => VCC,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y24_N18
\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ & 
-- (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\ & (!\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y24_N20
\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\)))))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~46_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y24_N22
\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y24_N2
\inst13|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X107_Y24_N20
\inst13|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X106_Y23_N12
\inst13|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X106_Y23_N16
\inst13|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[62]~58_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X106_Y23_N26
\inst13|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[61]~59_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X106_Y23_N18
\inst13|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X106_Y23_N30
\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~49_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X106_Y23_N24
\inst13|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X106_Y23_N28
\inst13|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[60]~60_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X106_Y23_N0
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X106_Y23_N2
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X106_Y23_N4
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X106_Y23_N6
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y23_N8
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y23_N10
\inst13|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((!\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X106_Y23_N22
\inst13|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X107_Y23_N4
\inst13|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X106_Y23_N20
\inst13|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X106_Y23_N14
\inst13|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X107_Y23_N14
\inst13|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X107_Y23_N0
\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~50_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X107_Y23_N12
\inst13|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X107_Y23_N18
\inst13|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\) # 
-- ((!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|StageOut[59]~61_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X107_Y23_N22
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X107_Y23_N24
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X107_Y23_N26
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X107_Y23_N28
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y23_N30
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y23_N10
\inst13|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X107_Y23_N16
\inst13|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X107_Y23_N6
\inst13|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X107_Y23_N20
\inst13|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X107_Y23_N8
\inst13|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X108_Y23_N14
\inst13|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X107_Y24_N6
\inst13|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\inst12|saida_temperatura[2]~7_combout\))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst12|saida_temperatura[2]~7_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X107_Y24_N30
\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~51_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[58]~52_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y24_N0
\inst13|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X108_Y23_N0
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X108_Y23_N2
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X108_Y23_N4
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X108_Y23_N6
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y23_N8
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y23_N12
\inst13|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X108_Y23_N28
\inst13|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X108_Y23_N30
\inst13|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X108_Y23_N10
\inst13|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X108_Y24_N30
\inst13|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X108_Y23_N26
\inst13|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X109_Y23_N12
\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\) # (\inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~56_combout\,
	datad => \inst13|Mod0|auto_generated|divider|divider|StageOut[57]~53_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y23_N2
\inst13|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X109_Y23_N18
\inst13|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\inst12|saida_temperatura[1]~8_combout\))) # (!\inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst13|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \inst12|saida_temperatura[1]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst13|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X108_Y23_N16
\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst13|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\inst13|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X108_Y23_N18
\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X108_Y23_N20
\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst13|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\) # 
-- (\inst13|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X108_Y23_N22
\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst13|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\inst13|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y23_N24
\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y23_N0
\inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y23_N30
\inst16|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux1~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y23_N28
\inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux2~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y23_N26
\inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux3~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y23_N4
\inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux4~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y23_N6
\inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux5~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y23_N20
\inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux6~0_combout\ = (\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst13|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst13|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst16|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y22_N16
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst12|saida_temperatura[3]~6_combout\ $ (VCC)
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst12|saida_temperatura[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[3]~6_combout\,
	datad => VCC,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X107_Y22_N18
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst12|saida_temperatura[4]~5_combout\ & (\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst12|saida_temperatura[4]~5_combout\ & 
-- (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst12|saida_temperatura[4]~5_combout\ & !\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[4]~5_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X107_Y22_N20
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst12|saida_temperatura[5]~4_combout\ & ((GND) # (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst12|saida_temperatura[5]~4_combout\ & 
-- (\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst12|saida_temperatura[5]~4_combout\) # (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[5]~4_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X107_Y22_N22
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst12|saida_temperatura[6]~3_combout\ & (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst12|saida_temperatura[6]~3_combout\ & 
-- ((\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst12|saida_temperatura[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_temperatura[6]~3_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X107_Y22_N24
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst12|saida_temperatura[7]~1_combout\ & (\inst12|saida_temperatura[7]~2_combout\ & VCC))) # 
-- (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst12|saida_temperatura[7]~1_combout\ & \inst12|saida_temperatura[7]~2_combout\)))))
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst12|saida_temperatura[7]~1_combout\ & (\inst12|saida_temperatura[7]~2_combout\ & !\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[7]~1_combout\,
	datab => \inst12|saida_temperatura[7]~2_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X107_Y22_N26
\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X107_Y22_N4
\inst13|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\inst12|saida_temperatura[7]~1_combout\ & (\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_temperatura[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[7]~1_combout\,
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_temperatura[7]~2_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X107_Y22_N14
\inst13|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X107_Y22_N8
\inst13|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X106_Y22_N4
\inst13|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\inst12|saida_temperatura[6]~3_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[6]~3_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X106_Y22_N26
\inst13|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\inst12|saida_temperatura[5]~4_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[5]~4_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X107_Y22_N10
\inst13|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X107_Y22_N28
\inst13|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X106_Y22_N24
\inst13|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\inst12|saida_temperatura[4]~5_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[4]~5_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X107_Y22_N30
\inst13|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X106_Y22_N2
\inst13|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\inst12|saida_temperatura[3]~6_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_temperatura[3]~6_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X106_Y22_N22
\inst13|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\inst12|saida_temperatura[2]~7_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_temperatura[2]~7_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X107_Y22_N12
\inst13|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_temperatura[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_temperatura[2]~7_combout\,
	combout => \inst13|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X106_Y22_N8
\inst13|Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY((\inst13|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\inst13|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X106_Y22_N10
\inst13|Div0|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\inst13|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\inst13|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\inst13|Div0|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~1_cout\,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X106_Y22_N12
\inst13|Div0|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\inst13|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\inst13|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\inst13|Div0|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~3_cout\,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X106_Y22_N14
\inst13|Div0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\inst13|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\inst13|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\inst13|Div0|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~5_cout\,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X106_Y22_N16
\inst13|Div0|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~9_cout\ = CARRY((!\inst13|Div0|auto_generated|divider|divider|op_6~7_cout\ & ((\inst13|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\inst13|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~7_cout\,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X106_Y22_N18
\inst13|Div0|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\inst13|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\inst13|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\inst13|Div0|auto_generated|divider|divider|op_6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \inst13|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~9_cout\,
	cout => \inst13|Div0|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X106_Y22_N20
\inst13|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\ = \inst13|Div0|auto_generated|divider|divider|op_6~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Div0|auto_generated|divider|divider|op_6~11_cout\,
	combout => \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X114_Y19_N0
\inst17|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = (!\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\inst13|Div0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst17|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N18
\inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = (!\inst13|Div0|auto_generated|divider|divider|op_6~12_combout\ & \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst17|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = (\inst13|Div0|auto_generated|divider|divider|op_6~12_combout\ & !\inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst13|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst17|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y25_N0
\inst12|saida_tempo_coccao[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[5]~1_combout\ = (\inst958|s_currentState.COCCAO~q\ & (!\SW[4]~input_o\ & ((\inst4|Equal0~0_combout\) # (\inst4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst4|Equal0~1_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst12|saida_tempo_coccao[5]~1_combout\);

-- Location: LCCOMB_X92_Y25_N26
\inst12|saida_tempo_coccao[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[4]~2_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatempococcao[4]~1_combout\)))) # (!\SW[4]~input_o\ & (\inst4|s_tempo\(4) & (\inst958|s_currentState.COCCAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(4),
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst958|saidatempococcao[4]~1_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst12|saida_tempo_coccao[4]~2_combout\);

-- Location: LCCOMB_X92_Y25_N4
\inst12|saida_tempo_coccao[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[3]~3_combout\ = (\SW[4]~input_o\ & (\inst958|saidatempococcao[3]~2_combout\)) # (!\SW[4]~input_o\ & (((\inst958|s_currentState.COCCAO~q\ & \inst4|s_tempo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst958|saidatempococcao[3]~2_combout\,
	datac => \inst958|s_currentState.COCCAO~q\,
	datad => \inst4|s_tempo\(3),
	combout => \inst12|saida_tempo_coccao[3]~3_combout\);

-- Location: LCCOMB_X92_Y21_N12
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst12|saida_tempo_coccao[3]~3_combout\ $ (VCC)
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst12|saida_tempo_coccao[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_coccao[3]~3_combout\,
	datad => VCC,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X92_Y21_N14
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst12|saida_tempo_coccao[4]~2_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst12|saida_tempo_coccao[4]~2_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst12|saida_tempo_coccao[4]~2_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_tempo_coccao[4]~2_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X92_Y21_N16
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\inst4|s_tempo\(5) & \inst12|saida_tempo_coccao[5]~1_combout\))))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\inst4|s_tempo\(5) & \inst12|saida_tempo_coccao[5]~1_combout\)) # (GND)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\inst4|s_tempo\(5) & \inst12|saida_tempo_coccao[5]~1_combout\)) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(5),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X92_Y21_N18
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\inst12|saida_tempo_coccao[5]~1_combout\)) # (!\inst4|s_tempo\(6)))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\inst4|s_tempo\(6) & \inst12|saida_tempo_coccao[5]~1_combout\)) # (GND)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst12|saida_tempo_coccao[5]~1_combout\)) # (!\inst4|s_tempo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(6),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X92_Y21_N20
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst4|s_tempo\(7) & (\inst12|saida_tempo_coccao[5]~1_combout\ & VCC))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst4|s_tempo\(7) & \inst12|saida_tempo_coccao[5]~1_combout\)))))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst4|s_tempo\(7) & (\inst12|saida_tempo_coccao[5]~1_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(7),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X92_Y21_N22
\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X92_Y21_N4
\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\inst4|s_tempo\(7) & (\inst12|saida_tempo_coccao[5]~1_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(7),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X91_Y21_N0
\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\);

-- Location: LCCOMB_X92_Y21_N30
\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\ = (\inst4|s_tempo\(6) & (\inst12|saida_tempo_coccao[5]~1_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(6),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\);

-- Location: LCCOMB_X91_Y21_N2
\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\);

-- Location: LCCOMB_X91_Y21_N4
\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\);

-- Location: LCCOMB_X92_Y21_N0
\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\ = (\inst4|s_tempo\(5) & (\inst12|saida_tempo_coccao[5]~1_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(5),
	datab => \inst12|saida_tempo_coccao[5]~1_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\);

-- Location: LCCOMB_X91_Y21_N6
\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\);

-- Location: LCCOMB_X92_Y21_N10
\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_tempo_coccao[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_tempo_coccao[4]~2_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\);

-- Location: LCCOMB_X91_Y21_N8
\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\);

-- Location: LCCOMB_X92_Y21_N8
\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_tempo_coccao[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_tempo_coccao[3]~3_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\);

-- Location: LCCOMB_X92_Y25_N2
\inst12|saida_tempo_coccao[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[2]~4_combout\ = (\SW[4]~input_o\ & (\inst958|saidatempococcao[2]~4_combout\)) # (!\SW[4]~input_o\ & (((\inst958|s_currentState.COCCAO~q\ & \inst4|s_tempo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|saidatempococcao[2]~4_combout\,
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst4|s_tempo\(2),
	datad => \SW[4]~input_o\,
	combout => \inst12|saida_tempo_coccao[2]~4_combout\);

-- Location: LCCOMB_X90_Y21_N16
\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_tempo_coccao[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_tempo_coccao[2]~4_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\);

-- Location: LCCOMB_X90_Y21_N6
\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\ = (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst12|saida_tempo_coccao[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_tempo_coccao[2]~4_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\);

-- Location: LCCOMB_X91_Y21_N12
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~32_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[49]~33_combout\,
	datad => VCC,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X91_Y21_N14
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\)))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\ & 
-- !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~31_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[50]~30_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X91_Y21_N16
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\))))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\) # (GND))))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\) # ((\inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~29_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[51]~28_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X91_Y21_N18
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\ & (((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\ & !\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\)) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~27_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X91_Y21_N20
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\)))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\)))))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~25_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X91_Y21_N22
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\)))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\ & 
-- !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X91_Y21_N24
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X91_Y21_N30
\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\);

-- Location: LCCOMB_X86_Y20_N28
\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\);

-- Location: LCCOMB_X91_Y21_N10
\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[53]~24_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\);

-- Location: LCCOMB_X86_Y20_N30
\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\ = (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\);

-- Location: LCCOMB_X86_Y20_N16
\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\);

-- Location: LCCOMB_X91_Y21_N28
\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[52]~26_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\);

-- Location: LCCOMB_X87_Y20_N14
\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\,
	datad => VCC,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X87_Y20_N16
\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X87_Y20_N18
\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\)))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X87_Y20_N20
\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X88_Y20_N28
\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X87_Y20_N24
\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X88_Y20_N26
\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X87_Y20_N6
\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X87_Y20_N12
\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X88_Y20_N18
\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X86_Y19_N30
\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\);

-- Location: LCCOMB_X92_Y21_N2
\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst12|saida_tempo_coccao[4]~2_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst12|saida_tempo_coccao[4]~2_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\);

-- Location: LCCOMB_X86_Y19_N6
\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X88_Y20_N0
\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X88_Y20_N16
\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X88_Y20_N4
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => VCC,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X88_Y20_N6
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X88_Y20_N8
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\)))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X88_Y20_N10
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X88_Y20_N12
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y19_N8
\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\);

-- Location: LCCOMB_X92_Y21_N28
\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst12|saida_tempo_coccao[3]~3_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst12|saida_tempo_coccao[3]~3_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\);

-- Location: LCCOMB_X86_Y19_N0
\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X89_Y20_N0
\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X88_Y20_N30
\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X89_Y20_N10
\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X88_Y20_N24
\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X88_Y20_N2
\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X88_Y20_N22
\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X89_Y20_N8
\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X88_Y20_N20
\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X88_Y20_N14
\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X89_Y20_N2
\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X89_Y20_N12
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datad => VCC,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X89_Y20_N14
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X89_Y20_N16
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X89_Y20_N18
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X89_Y20_N20
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\))))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # (GND))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X89_Y20_N22
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X89_Y20_N26
\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X90_Y20_N4
\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X89_Y20_N6
\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X90_Y20_N6
\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X89_Y20_N24
\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X90_Y20_N12
\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X89_Y20_N30
\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X90_Y20_N30
\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X89_Y20_N28
\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X89_Y20_N4
\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X90_Y21_N26
\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\);

-- Location: LCCOMB_X90_Y21_N24
\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst12|saida_tempo_coccao[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst12|saida_tempo_coccao[2]~4_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\);

-- Location: LCCOMB_X90_Y21_N28
\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X90_Y21_N8
\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X90_Y21_N4
\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_coccao[2]~4_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst12|saida_tempo_coccao[2]~4_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X90_Y20_N14
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => VCC,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X90_Y20_N16
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X90_Y20_N18
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y20_N20
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X90_Y20_N22
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\))))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # (GND))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # ((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X90_Y20_N24
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X90_Y20_N26
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X90_Y20_N2
\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X91_Y20_N2
\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X90_Y21_N30
\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((!\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X91_Y20_N28
\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\);

-- Location: LCCOMB_X94_Y21_N28
\inst12|saida_tempo_coccao[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[1]~5_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatempococcao[1]~6_combout\)))) # (!\SW[4]~input_o\ & (\inst4|s_tempo\(1) & (\inst958|s_currentState.COCCAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_tempo\(1),
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst958|saidatempococcao[1]~6_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst12|saida_tempo_coccao[1]~5_combout\);

-- Location: LCCOMB_X90_Y17_N4
\inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44_combout\ = (\inst12|saida_tempo_coccao[1]~5_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_coccao[1]~5_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44_combout\);

-- Location: LCCOMB_X90_Y17_N22
\inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45_combout\ = (\inst12|saida_tempo_coccao[1]~5_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_coccao[1]~5_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45_combout\);

-- Location: LCCOMB_X90_Y17_N20
\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~44_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[48]~45_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X90_Y17_N8
\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\);

-- Location: LCCOMB_X90_Y17_N10
\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\ = (\inst12|saida_tempo_coccao[1]~5_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_coccao[1]~5_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\);

-- Location: LCCOMB_X90_Y17_N26
\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X90_Y17_N14
\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X90_Y17_N18
\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_coccao[1]~5_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst12|saida_tempo_coccao[1]~5_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X91_Y20_N10
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => VCC,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X91_Y20_N12
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X91_Y20_N14
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))))
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X90_Y20_N0
\inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\);

-- Location: LCCOMB_X91_Y20_N0
\inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\);

-- Location: LCCOMB_X90_Y20_N10
\inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X91_Y19_N0
\inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X91_Y20_N6
\inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\);

-- Location: LCCOMB_X90_Y20_N28
\inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X90_Y20_N8
\inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X91_Y20_N4
\inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ = (!\inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\);

-- Location: LCCOMB_X91_Y20_N16
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X91_Y20_N18
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\) # ((\inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X91_Y20_N20
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ & 
-- !\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X91_Y20_N22
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\) # ((\inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datad => VCC,
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X91_Y20_N24
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X91_Y20_N30
\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\);

-- Location: LCCOMB_X91_Y20_N8
\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\);

-- Location: LCCOMB_X94_Y25_N2
\inst12|saida_tempo_coccao[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_coccao[0]~0_combout\ = (\SW[4]~input_o\ & (\inst958|saidatempococcao[0]~0_combout\)) # (!\SW[4]~input_o\ & (((\inst958|s_currentState.COCCAO~q\ & \inst4|s_tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|saidatempococcao[0]~0_combout\,
	datab => \inst958|s_currentState.COCCAO~q\,
	datac => \inst4|s_tempo\(0),
	datad => \SW[4]~input_o\,
	combout => \inst12|saida_tempo_coccao[0]~0_combout\);

-- Location: LCCOMB_X86_Y19_N22
\inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34_combout\ = (\inst12|saida_tempo_coccao[0]~0_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_coccao[0]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34_combout\);

-- Location: LCCOMB_X86_Y19_N20
\inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35_combout\ = (\inst12|saida_tempo_coccao[0]~0_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_coccao[0]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35_combout\);

-- Location: LCCOMB_X86_Y19_N28
\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~34_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[56]~35_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X86_Y19_N14
\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst12|saida_tempo_coccao[0]~0_combout\)) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_tempo_coccao[0]~0_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\);

-- Location: LCCOMB_X91_Y20_N26
\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- ((\inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	combout => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X83_Y4_N28
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\) # 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ $ (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y4_N22
\inst8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ $ 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & 
-- ((\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\) # (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y4_N16
\inst8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\)) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y4_N30
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & !\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y4_N8
\inst8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y4_N2
\inst8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))) # 
-- (!\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ $ (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y4_N12
\inst8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (!\inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (\inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ (\inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst6|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst6|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst6|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y20_N20
\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~38_combout\,
	datad => VCC,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X86_Y20_N22
\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~37_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X86_Y20_N24
\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\)))))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~36_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X86_Y20_N26
\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X86_Y20_N0
\inst6|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[62]~48_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X86_Y20_N6
\inst6|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[63]~47_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X86_Y20_N10
\inst6|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X86_Y20_N8
\inst6|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X86_Y20_N2
\inst6|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\) # 
-- ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[61]~49_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X86_Y20_N14
\inst6|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X86_Y19_N18
\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~39_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X86_Y20_N4
\inst6|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X86_Y19_N12
\inst6|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[60]~50_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X85_Y20_N2
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X85_Y20_N4
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X85_Y20_N6
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X85_Y20_N8
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y20_N10
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y20_N12
\inst6|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X85_Y20_N16
\inst6|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X85_Y20_N12
\inst6|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X86_Y20_N18
\inst6|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X86_Y19_N26
\inst6|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X85_Y20_N18
\inst6|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X86_Y19_N24
\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~40_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X85_Y20_N0
\inst6|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X86_Y19_N4
\inst6|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\) # 
-- ((!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[59]~51_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X85_Y20_N20
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X85_Y20_N22
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X85_Y20_N24
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X85_Y20_N26
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y20_N28
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y20_N30
\inst6|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X86_Y17_N8
\inst6|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X85_Y17_N10
\inst6|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X85_Y17_N6
\inst6|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X90_Y21_N2
\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~42_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[58]~41_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X86_Y17_N10
\inst6|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X90_Y21_N18
\inst6|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_coccao[2]~4_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst12|saida_tempo_coccao[2]~4_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X86_Y17_N12
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X86_Y17_N14
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X86_Y17_N16
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X85_Y20_N14
\inst6|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X85_Y17_N20
\inst6|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X86_Y17_N18
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y17_N20
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y17_N0
\inst6|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X86_Y17_N4
\inst6|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X85_Y17_N16
\inst6|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X85_Y17_N28
\inst6|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X86_Y17_N6
\inst6|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X87_Y17_N24
\inst6|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X90_Y17_N12
\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~46_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[57]~43_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X90_Y17_N24
\inst6|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X90_Y17_N28
\inst6|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_coccao[1]~5_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \inst12|saida_tempo_coccao[1]~5_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst6|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X86_Y17_N22
\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst6|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\inst6|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X86_Y17_N24
\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X86_Y17_N26
\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst6|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst6|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X86_Y17_N28
\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst6|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\inst6|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & 
-- !\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datad => VCC,
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y17_N30
\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y17_N30
\inst9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y17_N4
\inst9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y17_N22
\inst9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y17_N8
\inst9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y17_N2
\inst9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y17_N26
\inst9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y17_N24
\inst9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst6|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst6|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst6|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y25_N28
\inst12|saida_tempo_pre_aquecimento[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[7]~1_combout\ = (!\SW[4]~input_o\ & (\inst958|s_currentState.PREAQ~q\ & ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\);

-- Location: LCCOMB_X97_Y25_N30
\inst12|saida_tempo_pre_aquecimento[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[3]~2_combout\ = (\SW[4]~input_o\ & (\inst11|pre_interno\(3) & (\inst3|Mux0~0_combout\))) # (!\SW[4]~input_o\ & (((\inst|s_pre\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst11|pre_interno\(3),
	datac => \inst3|Mux0~0_combout\,
	datad => \inst|s_pre\(3),
	combout => \inst12|saida_tempo_pre_aquecimento[3]~2_combout\);

-- Location: LCCOMB_X92_Y16_N20
\inst12|saida_tempo_pre_aquecimento[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[3]~3_combout\ = (\inst958|s_currentState.PREAQ~q\ & \inst12|saida_tempo_pre_aquecimento[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst958|s_currentState.PREAQ~q\,
	datad => \inst12|saida_tempo_pre_aquecimento[3]~2_combout\,
	combout => \inst12|saida_tempo_pre_aquecimento[3]~3_combout\);

-- Location: LCCOMB_X92_Y16_N8
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst12|saida_tempo_pre_aquecimento[3]~3_combout\ $ (VCC)
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst12|saida_tempo_pre_aquecimento[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|saida_tempo_pre_aquecimento[3]~3_combout\,
	datad => VCC,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X92_Y16_N10
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & ((\inst|s_pre\(4) & (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst|s_pre\(4) & 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # (!\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (((!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & ((!\inst|s_pre\(4)) # (!\inst12|saida_tempo_pre_aquecimento[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst|s_pre\(4),
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X92_Y16_N12
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(5)))))) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(5))) # (GND)))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(5))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst|s_pre\(5),
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X92_Y16_N14
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\inst|s_pre\(6))) # (!\inst12|saida_tempo_pre_aquecimento[7]~1_combout\))) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(6))) # (GND)))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst|s_pre\(6))) # (!\inst12|saida_tempo_pre_aquecimento[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst|s_pre\(6),
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X92_Y16_N16
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (\inst|s_pre\(7) & VCC))) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(7))))))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (\inst|s_pre\(7) & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst|s_pre\(7),
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X92_Y16_N18
\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X92_Y16_N30
\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & \inst|s_pre\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datad => \inst|s_pre\(7),
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\);

-- Location: LCCOMB_X92_Y16_N4
\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\ = (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\);

-- Location: LCCOMB_X92_Y16_N2
\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\ = (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (\inst|s_pre\(6) & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst|s_pre\(6),
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\);

-- Location: LCCOMB_X91_Y16_N18
\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\);

-- Location: LCCOMB_X92_Y16_N6
\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\ = (!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\);

-- Location: LCCOMB_X92_Y16_N24
\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\ = (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|s_pre\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|s_pre\(5),
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\);

-- Location: LCCOMB_X91_Y16_N24
\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\);

-- Location: LCCOMB_X92_Y16_N0
\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\ = (\inst12|saida_tempo_pre_aquecimento[7]~1_combout\ & (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|s_pre\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[7]~1_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|s_pre\(4),
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\);

-- Location: LCCOMB_X92_Y16_N22
\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\);

-- Location: LCCOMB_X92_Y16_N28
\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\ = (\inst12|saida_tempo_pre_aquecimento[3]~2_combout\ & (\inst958|s_currentState.PREAQ~q\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[3]~2_combout\,
	datac => \inst958|s_currentState.PREAQ~q\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\);

-- Location: LCCOMB_X97_Y25_N22
\inst12|saida_tempo_pre_aquecimento[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[2]~4_combout\ = (\SW[4]~input_o\ & (\inst958|saidatempopre_aquecimento[2]~3_combout\)) # (!\SW[4]~input_o\ & (((\inst958|s_currentState.PREAQ~q\ & \inst|s_pre\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst958|saidatempopre_aquecimento[2]~3_combout\,
	datac => \inst958|s_currentState.PREAQ~q\,
	datad => \inst|s_pre\(2),
	combout => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\);

-- Location: LCCOMB_X91_Y16_N22
\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\ = (\inst12|saida_tempo_pre_aquecimento[2]~4_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\);

-- Location: LCCOMB_X91_Y16_N16
\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\ = (\inst12|saida_tempo_pre_aquecimento[2]~4_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\);

-- Location: LCCOMB_X91_Y16_N0
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\)))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~21_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[49]~22_combout\,
	datad => VCC,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X91_Y16_N2
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\)))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ & 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\)))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\ & 
-- !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\,
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X91_Y16_N4
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\))))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\) # (GND))))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\) # ((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~19_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\,
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X91_Y16_N6
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\ & (((!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\ & (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\ & !\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\)) # 
-- (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~17_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\,
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X91_Y16_N8
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\)))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\)))))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~15_combout\,
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X91_Y16_N10
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\)))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\ & 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\)))
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\ & 
-- !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~13_combout\,
	datad => VCC,
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X91_Y16_N12
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X91_Y16_N30
\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\) # 
-- ((!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|StageOut[54]~12_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\);

-- Location: LCCOMB_X88_Y15_N8
\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\);

-- Location: LCCOMB_X87_Y15_N12
\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ = (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\);

-- Location: LCCOMB_X91_Y16_N20
\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\) # 
-- ((!\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[53]~14_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\);

-- Location: LCCOMB_X88_Y15_N2
\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\);

-- Location: LCCOMB_X91_Y16_N26
\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[52]~16_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\);

-- Location: LCCOMB_X87_Y15_N0
\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\,
	datad => VCC,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X87_Y15_N2
\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ & 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X87_Y15_N4
\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\)))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X87_Y15_N6
\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X87_Y15_N10
\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X88_Y15_N22
\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X87_Y15_N30
\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X87_Y15_N24
\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X88_Y15_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X87_Y15_N28
\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X91_Y16_N28
\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[51]~18_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\);

-- Location: LCCOMB_X87_Y12_N10
\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\) # 
-- ((!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X87_Y12_N28
\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\ = (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\);

-- Location: LCCOMB_X87_Y12_N12
\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X87_Y12_N18
\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X87_Y15_N14
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datad => VCC,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X87_Y15_N16
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X87_Y15_N18
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X87_Y15_N20
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X87_Y15_N22
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y14_N16
\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X87_Y15_N8
\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X87_Y14_N26
\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X87_Y14_N0
\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X87_Y14_N20
\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X87_Y15_N26
\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X87_Y14_N30
\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X87_Y14_N2
\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X91_Y16_N14
\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[50]~36_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\);

-- Location: LCCOMB_X88_Y14_N20
\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X88_Y14_N28
\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\);

-- Location: LCCOMB_X88_Y14_N0
\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X88_Y14_N18
\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ = (!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X87_Y14_N4
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datad => VCC,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X87_Y14_N6
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X87_Y14_N8
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X87_Y14_N10
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X87_Y14_N12
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\))))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # (GND))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X87_Y14_N14
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X88_Y14_N8
\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X87_Y14_N28
\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X88_Y14_N2
\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X87_Y14_N22
\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X88_Y14_N16
\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X87_Y14_N24
\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X89_Y14_N12
\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X87_Y14_N18
\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X88_Y14_N10
\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X88_Y14_N6
\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X91_Y14_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_pre_aquecimento[2]~4_combout\))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X91_Y14_N18
\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ = (\inst12|saida_tempo_pre_aquecimento[2]~4_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\);

-- Location: LCCOMB_X91_Y14_N24
\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\);

-- Location: LCCOMB_X90_Y14_N24
\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X89_Y14_N2
\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ = (!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X89_Y14_N14
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X89_Y14_N16
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X89_Y14_N18
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X89_Y14_N20
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X89_Y14_N22
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\))))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # (GND))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # ((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X89_Y14_N24
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X89_Y14_N26
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X89_Y11_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\);

-- Location: LCCOMB_X88_Y14_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\);

-- Location: LCCOMB_X88_Y14_N22
\inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X89_Y11_N18
\inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X89_Y11_N20
\inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ = (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\);

-- Location: LCCOMB_X88_Y14_N12
\inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X89_Y14_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X89_Y11_N22
\inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\);

-- Location: LCCOMB_X88_Y14_N14
\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X89_Y11_N12
\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X89_Y14_N6
\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((!\inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X89_Y11_N26
\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\);

-- Location: LCCOMB_X97_Y25_N14
\inst12|saida_tempo_pre_aquecimento[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[1]~5_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatempopre_aquecimento[1]~5_combout\)))) # (!\SW[4]~input_o\ & (\inst|s_pre\(1) & (\inst958|s_currentState.PREAQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pre\(1),
	datab => \inst958|s_currentState.PREAQ~q\,
	datac => \SW[4]~input_o\,
	datad => \inst958|saidatempopre_aquecimento[1]~5_combout\,
	combout => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\);

-- Location: LCCOMB_X88_Y13_N20
\inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33_combout\ = (\inst12|saida_tempo_pre_aquecimento[1]~5_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33_combout\);

-- Location: LCCOMB_X88_Y13_N18
\inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34_combout\ = (\inst12|saida_tempo_pre_aquecimento[1]~5_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34_combout\);

-- Location: LCCOMB_X88_Y13_N24
\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~33_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[48]~34_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X88_Y13_N28
\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_pre_aquecimento[1]~5_combout\))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X88_Y13_N8
\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\);

-- Location: LCCOMB_X88_Y13_N10
\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\ = (\inst12|saida_tempo_pre_aquecimento[1]~5_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\);

-- Location: LCCOMB_X88_Y13_N22
\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X88_Y11_N24
\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (!\inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X88_Y11_N8
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X88_Y11_N10
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X88_Y11_N12
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))))
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X88_Y11_N14
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X88_Y11_N16
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\) # ((\inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X88_Y11_N18
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ & 
-- !\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X88_Y11_N20
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\) # ((\inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datad => VCC,
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X88_Y11_N22
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X88_Y11_N6
\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\);

-- Location: LCCOMB_X88_Y11_N4
\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\);

-- Location: LCCOMB_X97_Y25_N18
\inst12|saida_tempo_pre_aquecimento[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|saida_tempo_pre_aquecimento[0]~0_combout\ = (\SW[4]~input_o\ & (((\inst958|saidatempopre_aquecimento[0]~1_combout\)))) # (!\SW[4]~input_o\ & (\inst|s_pre\(0) & ((\inst958|s_currentState.PREAQ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst|s_pre\(0),
	datac => \inst958|saidatempopre_aquecimento[0]~1_combout\,
	datad => \inst958|s_currentState.PREAQ~q\,
	combout => \inst12|saida_tempo_pre_aquecimento[0]~0_combout\);

-- Location: LCCOMB_X88_Y3_N8
\inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24_combout\ = (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst12|saida_tempo_pre_aquecimento[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst12|saida_tempo_pre_aquecimento[0]~0_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24_combout\);

-- Location: LCCOMB_X88_Y3_N10
\inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23_combout\ = (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst12|saida_tempo_pre_aquecimento[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst12|saida_tempo_pre_aquecimento[0]~0_combout\,
	combout => \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23_combout\);

-- Location: LCCOMB_X88_Y3_N24
\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~24_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[56]~23_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X88_Y3_N22
\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst12|saida_tempo_pre_aquecimento[0]~0_combout\)) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[0]~0_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\);

-- Location: LCCOMB_X88_Y11_N26
\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # 
-- ((\inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	combout => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X88_Y3_N28
\inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\) # 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ $ (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y3_N14
\inst19|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ $ 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & 
-- ((\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\) # (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y3_N4
\inst19|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\)) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y3_N18
\inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & !\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y3_N12
\inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux4~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y3_N26
\inst19|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & ((\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))) # 
-- (!\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ $ (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y3_N20
\inst19|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~0_combout\ = (\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ & (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\)))) # (!\inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ & (!\inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ & 
-- (\inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ $ (\inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	datab => \inst18|Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datac => \inst18|Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \inst18|Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	combout => \inst19|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y15_N24
\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\,
	datad => VCC,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X88_Y15_N26
\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ & 
-- (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ & (!\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X88_Y15_N28
\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\)))))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- (\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X88_Y15_N30
\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X88_Y15_N18
\inst18|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\) # 
-- ((!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[63]~37_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X88_Y15_N0
\inst18|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X88_Y15_N20
\inst18|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[62]~38_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X88_Y15_N14
\inst18|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X88_Y15_N10
\inst18|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[61]~39_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X88_Y15_N12
\inst18|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X87_Y12_N26
\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X87_Y12_N16
\inst18|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X87_Y12_N4
\inst18|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[60]~40_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X88_Y12_N2
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X88_Y12_N4
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X88_Y12_N6
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X88_Y12_N8
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y12_N10
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y12_N12
\inst18|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X88_Y15_N16
\inst18|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X88_Y15_N6
\inst18|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X88_Y12_N0
\inst18|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X88_Y12_N26
\inst18|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X87_Y12_N6
\inst18|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X88_Y14_N24
\inst18|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\) # 
-- ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X88_Y14_N26
\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~41_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X88_Y12_N14
\inst18|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X88_Y12_N16
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X88_Y12_N18
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X88_Y12_N20
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X88_Y12_N22
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y12_N24
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y12_N28
\inst18|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X88_Y10_N0
\inst18|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X89_Y10_N4
\inst18|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X88_Y12_N30
\inst18|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X88_Y10_N10
\inst18|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X88_Y14_N30
\inst18|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X91_Y14_N22
\inst18|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst12|saida_tempo_pre_aquecimento[2]~4_combout\)) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|saida_tempo_pre_aquecimento[2]~4_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X91_Y14_N12
\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[58]~31_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X91_Y14_N26
\inst18|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X88_Y10_N12
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X88_Y10_N14
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X88_Y10_N16
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X88_Y10_N18
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y10_N20
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y10_N6
\inst18|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X87_Y10_N24
\inst18|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X88_Y10_N8
\inst18|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X88_Y10_N4
\inst18|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X89_Y10_N2
\inst18|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X88_Y10_N2
\inst18|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X88_Y13_N12
\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\) # (\inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~35_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|StageOut[57]~32_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X88_Y13_N6
\inst18|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X88_Y13_N14
\inst18|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst12|saida_tempo_pre_aquecimento[1]~5_combout\))) # (!\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \inst12|saida_tempo_pre_aquecimento[1]~5_combout\,
	datad => \inst18|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst18|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X88_Y10_N22
\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst18|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\inst18|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X88_Y10_N24
\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X88_Y10_N26
\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst18|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst18|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X88_Y10_N28
\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst18|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\inst18|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y10_N30
\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X84_Y10_N4
\inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux0~0_combout\);

-- Location: LCCOMB_X84_Y10_N26
\inst20|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (((\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux1~0_combout\);

-- Location: LCCOMB_X84_Y10_N12
\inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y10_N22
\inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux3~0_combout\);

-- Location: LCCOMB_X84_Y10_N8
\inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux4~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y10_N14
\inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux5~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y10_N20
\inst20|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = (\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst18|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst18|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y25_N12
\inst958|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|s_currentState~8_combout\ = (!\inst958|s_currentState.PREAQ~q\ & \inst958|s_currentState.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst958|s_currentState.PREAQ~q\,
	datad => \inst958|s_currentState.IDLE~q\,
	combout => \inst958|s_currentState~8_combout\);

-- Location: LCCOMB_X97_Y25_N26
\inst958|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|WideOr0~combout\ = (\inst958|s_currentState.AIRABERTA~q\) # ((\inst958|s_currentState.PREAQ~q\) # (!\inst958|s_currentState.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst958|s_currentState.AIRABERTA~q\,
	datab => \inst958|s_currentState.PREAQ~q\,
	datad => \inst958|s_currentState.IDLE~q\,
	combout => \inst958|WideOr0~combout\);

-- Location: LCCOMB_X92_Y25_N12
\inst958|estadoatual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst958|estadoatual\(1) = (\inst958|s_currentState.ARREFECIMENTO~q\) # (\inst958|s_currentState.COCCAO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst958|s_currentState.ARREFECIMENTO~q\,
	datac => \inst958|s_currentState.COCCAO~q\,
	combout => \inst958|estadoatual\(1));

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

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;
END structure;


