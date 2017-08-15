-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "06/02/2013 12:18:14"

-- 
-- Device: Altera EP3SE50F484C2 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY IEEE;
LIBRARY STRATIXIII;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXIII.STRATIXIII_COMPONENTS.ALL;

ENTITY 	relogio IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	change1 : BUFFER std_logic;
	change2 : BUFFER std_logic;
	un_seg_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	dez_seg_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	un_min_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	dez_min_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	un_hora_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	dez_hora_bcd : OUT STD.STANDARD.bit_vector(6 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- clr	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change1	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- change2	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[4]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_seg_bcd[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_seg_bcd[6]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[5]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_min_bcd[6]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_min_bcd[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- un_hora_bcd[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[4]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dez_hora_bcd[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default

ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_change1 : std_logic;
SIGNAL ww_change2 : std_logic;
SIGNAL ww_un_seg_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dez_seg_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_un_min_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dez_min_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_un_hora_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dez_hora_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \P7|display[1]~0_combout\ : std_logic;
SIGNAL \P3|dez[3]~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \P1|un[0]~3_combout\ : std_logic;
SIGNAL \P1|dez[1]~2_combout\ : std_logic;
SIGNAL \P1|dez[2]~1_combout\ : std_logic;
SIGNAL \P1|process_0~2_combout\ : std_logic;
SIGNAL \P1|un~1_combout\ : std_logic;
SIGNAL \P1|un[2]~0_combout\ : std_logic;
SIGNAL \P1|change~0_combout\ : std_logic;
SIGNAL \P1|un~2_combout\ : std_logic;
SIGNAL \P1|process_0~3_combout\ : std_logic;
SIGNAL \P1|dez[0]~0_combout\ : std_logic;
SIGNAL \P1|process_0~0_combout\ : std_logic;
SIGNAL \P1|process_0~1_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \P1|comb~0_combout\ : std_logic;
SIGNAL \P1|change~combout\ : std_logic;
SIGNAL \P2|un[0]~2_combout\ : std_logic;
SIGNAL \P2|dez[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \P2|Add1~2_combout\ : std_logic;
SIGNAL \P2|process_0~1_combout\ : std_logic;
SIGNAL \P2|un~0_combout\ : std_logic;
SIGNAL \P2|un~1_combout\ : std_logic;
SIGNAL \P2|Add0~0_combout\ : std_logic;
SIGNAL \P6|Equal9~0_combout\ : std_logic;
SIGNAL \P2|change2~0_combout\ : std_logic;
SIGNAL \P2|dez[3]~0_combout\ : std_logic;
SIGNAL \P2|dez[0]~1_combout\ : std_logic;
SIGNAL \P2|Add1~0_combout\ : std_logic;
SIGNAL \P2|Add1~1_combout\ : std_logic;
SIGNAL \P2|process_0~0_combout\ : std_logic;
SIGNAL \P2|comb~0_combout\ : std_logic;
SIGNAL \P2|change2~combout\ : std_logic;
SIGNAL \P4|comb~0_combout\ : std_logic;
SIGNAL \P4|comb~1_combout\ : std_logic;
SIGNAL \P4|display[1]~0_combout\ : std_logic;
SIGNAL \P4|comb~2_combout\ : std_logic;
SIGNAL \P4|comb~3_combout\ : std_logic;
SIGNAL \P4|display[2]~1_combout\ : std_logic;
SIGNAL \P4|comb~4_combout\ : std_logic;
SIGNAL \P4|comb~5_combout\ : std_logic;
SIGNAL \P4|Equal9~0_combout\ : std_logic;
SIGNAL \P4|comb~6_combout\ : std_logic;
SIGNAL \P4|comb~7_combout\ : std_logic;
SIGNAL \P4|comb~8_combout\ : std_logic;
SIGNAL \P4|display[5]~2_combout\ : std_logic;
SIGNAL \P4|comb~10_combout\ : std_logic;
SIGNAL \P4|comb~9_combout\ : std_logic;
SIGNAL \P4|comb~11_combout\ : std_logic;
SIGNAL \P4|comb~12_combout\ : std_logic;
SIGNAL \P5|display[0]~0_combout\ : std_logic;
SIGNAL \P5|comb~0_combout\ : std_logic;
SIGNAL \P5|comb~1_combout\ : std_logic;
SIGNAL \P5|Equal9~0_combout\ : std_logic;
SIGNAL \P5|display[4]~1_combout\ : std_logic;
SIGNAL \P5|display[5]~2_combout\ : std_logic;
SIGNAL \P5|display[6]~3_combout\ : std_logic;
SIGNAL \P6|comb~1_combout\ : std_logic;
SIGNAL \P6|comb~0_combout\ : std_logic;
SIGNAL \P6|display[1]~0_combout\ : std_logic;
SIGNAL \P6|comb~2_combout\ : std_logic;
SIGNAL \P6|comb~3_combout\ : std_logic;
SIGNAL \P6|display[2]~1_combout\ : std_logic;
SIGNAL \P6|comb~4_combout\ : std_logic;
SIGNAL \P6|comb~5_combout\ : std_logic;
SIGNAL \P6|Equal9~1_combout\ : std_logic;
SIGNAL \P6|comb~6_combout\ : std_logic;
SIGNAL \P6|comb~7_combout\ : std_logic;
SIGNAL \P6|comb~8_combout\ : std_logic;
SIGNAL \P6|display[5]~2_combout\ : std_logic;
SIGNAL \P6|comb~9_combout\ : std_logic;
SIGNAL \P6|comb~10_combout\ : std_logic;
SIGNAL \P6|comb~11_combout\ : std_logic;
SIGNAL \P6|comb~12_combout\ : std_logic;
SIGNAL \P7|comb~0_combout\ : std_logic;
SIGNAL \P7|comb~1_combout\ : std_logic;
SIGNAL \P7|comb~2_combout\ : std_logic;
SIGNAL \P7|comb~3_combout\ : std_logic;
SIGNAL \P7|display[2]~1_combout\ : std_logic;
SIGNAL \P7|comb~4_combout\ : std_logic;
SIGNAL \P7|comb~5_combout\ : std_logic;
SIGNAL \P7|Equal9~0_combout\ : std_logic;
SIGNAL \P7|comb~6_combout\ : std_logic;
SIGNAL \P7|comb~7_combout\ : std_logic;
SIGNAL \P7|comb~8_combout\ : std_logic;
SIGNAL \P7|comb~9_combout\ : std_logic;
SIGNAL \P7|display[5]~2_combout\ : std_logic;
SIGNAL \P7|comb~10_combout\ : std_logic;
SIGNAL \P7|comb~11_combout\ : std_logic;
SIGNAL \P7|comb~12_combout\ : std_logic;
SIGNAL \P3|dez[0]~1_combout\ : std_logic;
SIGNAL \P3|Add1~2_combout\ : std_logic;
SIGNAL \P3|dez[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \P3|Add1~1_combout\ : std_logic;
SIGNAL \P3|Add1~0_combout\ : std_logic;
SIGNAL \P9|display[4]~3_combout\ : std_logic;
SIGNAL \P3|Add0~0_combout\ : std_logic;
SIGNAL \P3|un~0_combout\ : std_logic;
SIGNAL \P3|process_0~0_combout\ : std_logic;
SIGNAL \P3|un~2_combout\ : std_logic;
SIGNAL \P3|un[3]~1_combout\ : std_logic;
SIGNAL \P3|un[0]~3_combout\ : std_logic;
SIGNAL \P8|comb~0_combout\ : std_logic;
SIGNAL \P8|comb~1_combout\ : std_logic;
SIGNAL \P8|display[1]~0_combout\ : std_logic;
SIGNAL \P8|comb~3_combout\ : std_logic;
SIGNAL \P8|comb~2_combout\ : std_logic;
SIGNAL \P8|display[2]~1_combout\ : std_logic;
SIGNAL \P8|comb~4_combout\ : std_logic;
SIGNAL \P8|comb~5_combout\ : std_logic;
SIGNAL \P8|comb~6_combout\ : std_logic;
SIGNAL \P8|Equal9~0_combout\ : std_logic;
SIGNAL \P8|comb~7_combout\ : std_logic;
SIGNAL \P8|comb~8_combout\ : std_logic;
SIGNAL \P8|display[5]~2_combout\ : std_logic;
SIGNAL \P8|comb~9_combout\ : std_logic;
SIGNAL \P8|comb~10_combout\ : std_logic;
SIGNAL \P8|comb~12_combout\ : std_logic;
SIGNAL \P8|comb~11_combout\ : std_logic;
SIGNAL \P9|comb~1_combout\ : std_logic;
SIGNAL \P9|comb~0_combout\ : std_logic;
SIGNAL \P9|display[1]~0_combout\ : std_logic;
SIGNAL \P9|comb~2_combout\ : std_logic;
SIGNAL \P9|comb~3_combout\ : std_logic;
SIGNAL \P9|display[2]~1_combout\ : std_logic;
SIGNAL \P9|comb~5_combout\ : std_logic;
SIGNAL \P9|comb~4_combout\ : std_logic;
SIGNAL \P9|comb~6_combout\ : std_logic;
SIGNAL \P9|Equal9~0_combout\ : std_logic;
SIGNAL \P9|comb~7_combout\ : std_logic;
SIGNAL \P9|comb~8_combout\ : std_logic;
SIGNAL \P9|display[5]~2_combout\ : std_logic;
SIGNAL \P9|comb~10_combout\ : std_logic;
SIGNAL \P9|comb~9_combout\ : std_logic;
SIGNAL \P9|comb~11_combout\ : std_logic;
SIGNAL \P9|comb~12_combout\ : std_logic;
SIGNAL \P4|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P3|dez\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P3|un\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P2|dez\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P2|un\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P1|dez\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P1|un\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P9|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P8|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P7|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P6|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P1|ALT_INV_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \P5|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL \P1|ALT_INV_un\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \P1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \P1|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P6|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \P4|ALT_INV_display[1]~0_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \P4|ALT_INV_display[2]~1_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \P4|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \P4|ALT_INV_display[5]~2_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \P4|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \P1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \P1|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \P1|ALT_INV_change~0_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \P6|ALT_INV_display[1]~0_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \P6|ALT_INV_display[2]~1_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \P6|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \P6|ALT_INV_display[5]~2_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \P6|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \P7|ALT_INV_display[1]~0_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \P7|ALT_INV_display[2]~1_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \P7|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \P7|ALT_INV_display[5]~2_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \P7|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \P8|ALT_INV_display[1]~0_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \P8|ALT_INV_display[2]~1_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \P8|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \P8|ALT_INV_display[5]~2_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \P8|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \P9|ALT_INV_display[1]~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \P9|ALT_INV_display[2]~1_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \P9|ALT_INV_display[5]~2_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \P9|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \P2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_change2~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \P2|ALT_INV_un~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_un~1_combout\ : std_logic;
SIGNAL \P2|ALT_INV_un[0]~2_combout\ : std_logic;
SIGNAL \P2|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_dez[3]~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_dez[0]~1_combout\ : std_logic;
SIGNAL \P2|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \P2|ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \P9|ALT_INV_display[4]~3_combout\ : std_logic;
SIGNAL \P3|ALT_INV_un~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_un[3]~1_combout\ : std_logic;
SIGNAL \P3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_un~2_combout\ : std_logic;
SIGNAL \P3|ALT_INV_un[0]~3_combout\ : std_logic;
SIGNAL \P3|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_dez[3]~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \P3|ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \P3|ALT_INV_dez[0]~1_combout\ : std_logic;
SIGNAL \P1|ALT_INV_change~combout\ : std_logic;
SIGNAL \P2|ALT_INV_change2~combout\ : std_logic;
SIGNAL \P4|ALT_INV_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P6|ALT_INV_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P7|ALT_INV_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P8|ALT_INV_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P9|ALT_INV_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \P2|ALT_INV_un\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \P2|ALT_INV_dez\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \P3|ALT_INV_un\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \P3|ALT_INV_dez\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \P3|ALT_INV_dez[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \P2|ALT_INV_dez[3]~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
change1 <= ww_change1;
change2 <= ww_change2;
un_seg_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_un_seg_bcd);
dez_seg_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_dez_seg_bcd);
un_min_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_un_min_bcd);
dez_min_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_dez_min_bcd);
un_hora_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_un_hora_bcd);
dez_hora_bcd <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_dez_hora_bcd);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\P1|ALT_INV_dez\(0) <= NOT \P1|dez\(0);
\P1|ALT_INV_dez\(2) <= NOT \P1|dez\(2);
\P1|ALT_INV_dez\(1) <= NOT \P1|dez\(1);
\P5|ALT_INV_comb~1_combout\ <= NOT \P5|comb~1_combout\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
\P1|ALT_INV_un\(3) <= NOT \P1|un\(3);
\P1|ALT_INV_un\(0) <= NOT \P1|un\(0);
\P1|ALT_INV_un\(2) <= NOT \P1|un\(2);
\P1|ALT_INV_un\(1) <= NOT \P1|un\(1);
\P1|ALT_INV_process_0~0_combout\ <= NOT \P1|process_0~0_combout\;
\P1|ALT_INV_process_0~1_combout\ <= NOT \P1|process_0~1_combout\;
\P1|ALT_INV_comb~0_combout\ <= NOT \P1|comb~0_combout\;
\P6|ALT_INV_Equal9~0_combout\ <= NOT \P6|Equal9~0_combout\;
\P2|ALT_INV_process_0~0_combout\ <= NOT \P2|process_0~0_combout\;
\P2|ALT_INV_comb~0_combout\ <= NOT \P2|comb~0_combout\;
\P4|ALT_INV_comb~0_combout\ <= NOT \P4|comb~0_combout\;
\P4|ALT_INV_comb~1_combout\ <= NOT \P4|comb~1_combout\;
\P4|ALT_INV_display[1]~0_combout\ <= NOT \P4|display[1]~0_combout\;
\P4|ALT_INV_comb~2_combout\ <= NOT \P4|comb~2_combout\;
\P4|ALT_INV_comb~3_combout\ <= NOT \P4|comb~3_combout\;
\P4|ALT_INV_display[2]~1_combout\ <= NOT \P4|display[2]~1_combout\;
\P4|ALT_INV_comb~4_combout\ <= NOT \P4|comb~4_combout\;
\P4|ALT_INV_comb~5_combout\ <= NOT \P4|comb~5_combout\;
\P4|ALT_INV_comb~6_combout\ <= NOT \P4|comb~6_combout\;
\P4|ALT_INV_Equal9~0_combout\ <= NOT \P4|Equal9~0_combout\;
\P4|ALT_INV_comb~7_combout\ <= NOT \P4|comb~7_combout\;
\P4|ALT_INV_comb~8_combout\ <= NOT \P4|comb~8_combout\;
\P4|ALT_INV_display[5]~2_combout\ <= NOT \P4|display[5]~2_combout\;
\P4|ALT_INV_comb~9_combout\ <= NOT \P4|comb~9_combout\;
\P4|ALT_INV_comb~10_combout\ <= NOT \P4|comb~10_combout\;
\P4|ALT_INV_comb~11_combout\ <= NOT \P4|comb~11_combout\;
\P4|ALT_INV_comb~12_combout\ <= NOT \P4|comb~12_combout\;
\P1|ALT_INV_process_0~2_combout\ <= NOT \P1|process_0~2_combout\;
\P1|ALT_INV_process_0~3_combout\ <= NOT \P1|process_0~3_combout\;
\P1|ALT_INV_change~0_combout\ <= NOT \P1|change~0_combout\;
\P6|ALT_INV_comb~0_combout\ <= NOT \P6|comb~0_combout\;
\P6|ALT_INV_comb~1_combout\ <= NOT \P6|comb~1_combout\;
\P6|ALT_INV_display[1]~0_combout\ <= NOT \P6|display[1]~0_combout\;
\P6|ALT_INV_comb~2_combout\ <= NOT \P6|comb~2_combout\;
\P6|ALT_INV_comb~3_combout\ <= NOT \P6|comb~3_combout\;
\P6|ALT_INV_display[2]~1_combout\ <= NOT \P6|display[2]~1_combout\;
\P6|ALT_INV_comb~4_combout\ <= NOT \P6|comb~4_combout\;
\P6|ALT_INV_comb~5_combout\ <= NOT \P6|comb~5_combout\;
\P6|ALT_INV_comb~6_combout\ <= NOT \P6|comb~6_combout\;
\P6|ALT_INV_Equal9~1_combout\ <= NOT \P6|Equal9~1_combout\;
\P6|ALT_INV_comb~7_combout\ <= NOT \P6|comb~7_combout\;
\P6|ALT_INV_comb~8_combout\ <= NOT \P6|comb~8_combout\;
\P6|ALT_INV_display[5]~2_combout\ <= NOT \P6|display[5]~2_combout\;
\P6|ALT_INV_comb~9_combout\ <= NOT \P6|comb~9_combout\;
\P6|ALT_INV_comb~10_combout\ <= NOT \P6|comb~10_combout\;
\P6|ALT_INV_comb~11_combout\ <= NOT \P6|comb~11_combout\;
\P6|ALT_INV_comb~12_combout\ <= NOT \P6|comb~12_combout\;
\P7|ALT_INV_comb~0_combout\ <= NOT \P7|comb~0_combout\;
\P7|ALT_INV_comb~1_combout\ <= NOT \P7|comb~1_combout\;
\P7|ALT_INV_display[1]~0_combout\ <= NOT \P7|display[1]~0_combout\;
\P7|ALT_INV_comb~2_combout\ <= NOT \P7|comb~2_combout\;
\P7|ALT_INV_comb~3_combout\ <= NOT \P7|comb~3_combout\;
\P7|ALT_INV_display[2]~1_combout\ <= NOT \P7|display[2]~1_combout\;
\P7|ALT_INV_comb~4_combout\ <= NOT \P7|comb~4_combout\;
\P7|ALT_INV_comb~5_combout\ <= NOT \P7|comb~5_combout\;
\P7|ALT_INV_comb~6_combout\ <= NOT \P7|comb~6_combout\;
\P7|ALT_INV_Equal9~0_combout\ <= NOT \P7|Equal9~0_combout\;
\P7|ALT_INV_comb~7_combout\ <= NOT \P7|comb~7_combout\;
\P7|ALT_INV_comb~8_combout\ <= NOT \P7|comb~8_combout\;
\P7|ALT_INV_display[5]~2_combout\ <= NOT \P7|display[5]~2_combout\;
\P7|ALT_INV_comb~9_combout\ <= NOT \P7|comb~9_combout\;
\P7|ALT_INV_comb~10_combout\ <= NOT \P7|comb~10_combout\;
\P7|ALT_INV_comb~11_combout\ <= NOT \P7|comb~11_combout\;
\P7|ALT_INV_comb~12_combout\ <= NOT \P7|comb~12_combout\;
\P8|ALT_INV_comb~0_combout\ <= NOT \P8|comb~0_combout\;
\P8|ALT_INV_comb~1_combout\ <= NOT \P8|comb~1_combout\;
\P8|ALT_INV_display[1]~0_combout\ <= NOT \P8|display[1]~0_combout\;
\P8|ALT_INV_comb~2_combout\ <= NOT \P8|comb~2_combout\;
\P8|ALT_INV_comb~3_combout\ <= NOT \P8|comb~3_combout\;
\P8|ALT_INV_display[2]~1_combout\ <= NOT \P8|display[2]~1_combout\;
\P8|ALT_INV_comb~4_combout\ <= NOT \P8|comb~4_combout\;
\P8|ALT_INV_comb~5_combout\ <= NOT \P8|comb~5_combout\;
\P8|ALT_INV_comb~6_combout\ <= NOT \P8|comb~6_combout\;
\P8|ALT_INV_Equal9~0_combout\ <= NOT \P8|Equal9~0_combout\;
\P8|ALT_INV_comb~7_combout\ <= NOT \P8|comb~7_combout\;
\P8|ALT_INV_comb~8_combout\ <= NOT \P8|comb~8_combout\;
\P8|ALT_INV_display[5]~2_combout\ <= NOT \P8|display[5]~2_combout\;
\P8|ALT_INV_comb~9_combout\ <= NOT \P8|comb~9_combout\;
\P8|ALT_INV_comb~10_combout\ <= NOT \P8|comb~10_combout\;
\P8|ALT_INV_comb~11_combout\ <= NOT \P8|comb~11_combout\;
\P8|ALT_INV_comb~12_combout\ <= NOT \P8|comb~12_combout\;
\P9|ALT_INV_comb~0_combout\ <= NOT \P9|comb~0_combout\;
\P9|ALT_INV_comb~1_combout\ <= NOT \P9|comb~1_combout\;
\P9|ALT_INV_display[1]~0_combout\ <= NOT \P9|display[1]~0_combout\;
\P9|ALT_INV_comb~2_combout\ <= NOT \P9|comb~2_combout\;
\P9|ALT_INV_comb~3_combout\ <= NOT \P9|comb~3_combout\;
\P9|ALT_INV_display[2]~1_combout\ <= NOT \P9|display[2]~1_combout\;
\P9|ALT_INV_comb~4_combout\ <= NOT \P9|comb~4_combout\;
\P9|ALT_INV_comb~5_combout\ <= NOT \P9|comb~5_combout\;
\P9|ALT_INV_comb~6_combout\ <= NOT \P9|comb~6_combout\;
\P9|ALT_INV_Equal9~0_combout\ <= NOT \P9|Equal9~0_combout\;
\P9|ALT_INV_comb~7_combout\ <= NOT \P9|comb~7_combout\;
\P9|ALT_INV_comb~8_combout\ <= NOT \P9|comb~8_combout\;
\P9|ALT_INV_display[5]~2_combout\ <= NOT \P9|display[5]~2_combout\;
\P9|ALT_INV_comb~9_combout\ <= NOT \P9|comb~9_combout\;
\P9|ALT_INV_comb~10_combout\ <= NOT \P9|comb~10_combout\;
\P9|ALT_INV_comb~11_combout\ <= NOT \P9|comb~11_combout\;
\P9|ALT_INV_comb~12_combout\ <= NOT \P9|comb~12_combout\;
\P2|ALT_INV_Add0~0_combout\ <= NOT \P2|Add0~0_combout\;
\P2|ALT_INV_change2~0_combout\ <= NOT \P2|change2~0_combout\;
\P2|ALT_INV_process_0~1_combout\ <= NOT \P2|process_0~1_combout\;
\P2|ALT_INV_un~0_combout\ <= NOT \P2|un~0_combout\;
\P2|ALT_INV_un~1_combout\ <= NOT \P2|un~1_combout\;
\P2|ALT_INV_un[0]~2_combout\ <= NOT \P2|un[0]~2_combout\;
\P2|ALT_INV_Add1~0_combout\ <= NOT \P2|Add1~0_combout\;
\P2|ALT_INV_dez[3]~0_combout\ <= NOT \P2|dez[3]~0_combout\;
\P2|ALT_INV_dez[0]~1_combout\ <= NOT \P2|dez[0]~1_combout\;
\P2|ALT_INV_Add1~1_combout\ <= NOT \P2|Add1~1_combout\;
\P2|ALT_INV_Add1~2_combout\ <= NOT \P2|Add1~2_combout\;
\P9|ALT_INV_display[4]~3_combout\ <= NOT \P9|display[4]~3_combout\;
\P3|ALT_INV_un~0_combout\ <= NOT \P3|un~0_combout\;
\P3|ALT_INV_un[3]~1_combout\ <= NOT \P3|un[3]~1_combout\;
\P3|ALT_INV_Add0~0_combout\ <= NOT \P3|Add0~0_combout\;
\P3|ALT_INV_process_0~0_combout\ <= NOT \P3|process_0~0_combout\;
\P3|ALT_INV_un~2_combout\ <= NOT \P3|un~2_combout\;
\P3|ALT_INV_un[0]~3_combout\ <= NOT \P3|un[0]~3_combout\;
\P3|ALT_INV_Add1~0_combout\ <= NOT \P3|Add1~0_combout\;
\P3|ALT_INV_dez[3]~0_combout\ <= NOT \P3|dez[3]~0_combout\;
\P3|ALT_INV_Add1~1_combout\ <= NOT \P3|Add1~1_combout\;
\P3|ALT_INV_Add1~2_combout\ <= NOT \P3|Add1~2_combout\;
\P3|ALT_INV_dez[0]~1_combout\ <= NOT \P3|dez[0]~1_combout\;
\P1|ALT_INV_change~combout\ <= NOT \P1|change~combout\;
\P2|ALT_INV_change2~combout\ <= NOT \P2|change2~combout\;
\P4|ALT_INV_display\(0) <= NOT \P4|display\(0);
\P4|ALT_INV_display\(1) <= NOT \P4|display\(1);
\P4|ALT_INV_display\(2) <= NOT \P4|display\(2);
\P4|ALT_INV_display\(3) <= NOT \P4|display\(3);
\P4|ALT_INV_display\(4) <= NOT \P4|display\(4);
\P4|ALT_INV_display\(5) <= NOT \P4|display\(5);
\P4|ALT_INV_display\(6) <= NOT \P4|display\(6);
\P6|ALT_INV_display\(0) <= NOT \P6|display\(0);
\P6|ALT_INV_display\(1) <= NOT \P6|display\(1);
\P6|ALT_INV_display\(2) <= NOT \P6|display\(2);
\P6|ALT_INV_display\(3) <= NOT \P6|display\(3);
\P6|ALT_INV_display\(4) <= NOT \P6|display\(4);
\P6|ALT_INV_display\(5) <= NOT \P6|display\(5);
\P6|ALT_INV_display\(6) <= NOT \P6|display\(6);
\P7|ALT_INV_display\(0) <= NOT \P7|display\(0);
\P7|ALT_INV_display\(1) <= NOT \P7|display\(1);
\P7|ALT_INV_display\(2) <= NOT \P7|display\(2);
\P7|ALT_INV_display\(3) <= NOT \P7|display\(3);
\P7|ALT_INV_display\(4) <= NOT \P7|display\(4);
\P7|ALT_INV_display\(5) <= NOT \P7|display\(5);
\P7|ALT_INV_display\(6) <= NOT \P7|display\(6);
\P8|ALT_INV_display\(0) <= NOT \P8|display\(0);
\P8|ALT_INV_display\(1) <= NOT \P8|display\(1);
\P8|ALT_INV_display\(2) <= NOT \P8|display\(2);
\P8|ALT_INV_display\(3) <= NOT \P8|display\(3);
\P8|ALT_INV_display\(4) <= NOT \P8|display\(4);
\P8|ALT_INV_display\(5) <= NOT \P8|display\(5);
\P8|ALT_INV_display\(6) <= NOT \P8|display\(6);
\P9|ALT_INV_display\(0) <= NOT \P9|display\(0);
\P9|ALT_INV_display\(1) <= NOT \P9|display\(1);
\P9|ALT_INV_display\(2) <= NOT \P9|display\(2);
\P9|ALT_INV_display\(3) <= NOT \P9|display\(3);
\P9|ALT_INV_display\(4) <= NOT \P9|display\(4);
\P9|ALT_INV_display\(5) <= NOT \P9|display\(5);
\P9|ALT_INV_display\(6) <= NOT \P9|display\(6);
\P2|ALT_INV_un\(2) <= NOT \P2|un\(2);
\P2|ALT_INV_un\(1) <= NOT \P2|un\(1);
\P2|ALT_INV_un\(3) <= NOT \P2|un\(3);
\P2|ALT_INV_dez\(1) <= NOT \P2|dez\(1);
\P2|ALT_INV_dez\(3) <= NOT \P2|dez\(3);
\P2|ALT_INV_dez\(2) <= NOT \P2|dez\(2);
\P3|ALT_INV_un\(3) <= NOT \P3|un\(3);
\P3|ALT_INV_un\(2) <= NOT \P3|un\(2);
\P3|ALT_INV_un\(1) <= NOT \P3|un\(1);
\P3|ALT_INV_dez\(3) <= NOT \P3|dez\(3);
\P3|ALT_INV_dez\(2) <= NOT \P3|dez\(2);
\P3|ALT_INV_dez\(1) <= NOT \P3|dez\(1);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\P3|ALT_INV_dez[3]~0clkctrl_outclk\ <= NOT \P3|dez[3]~0clkctrl_outclk\;
\P2|ALT_INV_dez[3]~0clkctrl_outclk\ <= NOT \P2|dez[3]~0clkctrl_outclk\;

-- Location: IOIBUF_X0_Y28_N1
\clk~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: MLABCELL_X12_Y19_N38
\P7|display[1]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display[1]~0_combout\ = ( \P2|dez\(1) & ( (\P2|dez\(2) & (!\P2|dez\(3) & !\P2|dez[0]~1_combout\)) ) ) # ( !\P2|dez\(1) & ( (!\P2|dez\(2) & (\P2|dez\(3) & !\P2|dez[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_dez\(2),
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P7|display[1]~0_combout\);

-- Location: MLABCELL_X1_Y25_N24
\P3|dez[3]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|dez[3]~0_combout\ = ( \P9|display[4]~3_combout\ & ( (\P3|process_0~0_combout\ & \P2|change2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_process_0~0_combout\,
	datad => \P2|ALT_INV_change2~combout\,
	dataf => \P9|ALT_INV_display[4]~3_combout\,
	combout => \P3|dez[3]~0_combout\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : stratixiii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X22_Y51_N64
\change1~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|change~combout\,
	devoe => ww_devoe,
	o => ww_change1);

-- Location: IOOBUF_X0_Y22_N95
\change2~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|change2~combout\,
	devoe => ww_devoe,
	o => ww_change2);

-- Location: IOOBUF_X53_Y19_N20
\un_seg_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(0),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(0));

-- Location: IOOBUF_X16_Y51_N82
\un_seg_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(1),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(1));

-- Location: IOOBUF_X19_Y0_N20
\un_seg_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(2),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(2));

-- Location: IOOBUF_X16_Y0_N113
\un_seg_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(3),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(3));

-- Location: IOOBUF_X0_Y20_N82
\un_seg_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(4),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(4));

-- Location: IOOBUF_X16_Y0_N51
\un_seg_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(5),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(5));

-- Location: IOOBUF_X53_Y19_N113
\un_seg_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|display\(6),
	devoe => ww_devoe,
	o => ww_un_seg_bcd(6));

-- Location: IOOBUF_X0_Y16_N113
\dez_seg_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|display[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(0));

-- Location: IOOBUF_X0_Y16_N20
\dez_seg_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|comb~0_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(1));

-- Location: IOOBUF_X53_Y16_N33
\dez_seg_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|ALT_INV_comb~1_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(2));

-- Location: IOOBUF_X16_Y0_N20
\dez_seg_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|Equal9~0_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(3));

-- Location: IOOBUF_X0_Y16_N64
\dez_seg_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|display[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(4));

-- Location: IOOBUF_X16_Y51_N51
\dez_seg_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|display[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(5));

-- Location: IOOBUF_X0_Y17_N51
\dez_seg_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|display[6]~3_combout\,
	devoe => ww_devoe,
	o => ww_dez_seg_bcd(6));

-- Location: IOOBUF_X0_Y17_N113
\un_min_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(0),
	devoe => ww_devoe,
	o => ww_un_min_bcd(0));

-- Location: IOOBUF_X0_Y21_N82
\un_min_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(1),
	devoe => ww_devoe,
	o => ww_un_min_bcd(1));

-- Location: IOOBUF_X0_Y19_N113
\un_min_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(2),
	devoe => ww_devoe,
	o => ww_un_min_bcd(2));

-- Location: IOOBUF_X0_Y19_N82
\un_min_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(3),
	devoe => ww_devoe,
	o => ww_un_min_bcd(3));

-- Location: IOOBUF_X16_Y0_N82
\un_min_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(4),
	devoe => ww_devoe,
	o => ww_un_min_bcd(4));

-- Location: IOOBUF_X0_Y16_N33
\un_min_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(5),
	devoe => ww_devoe,
	o => ww_un_min_bcd(5));

-- Location: IOOBUF_X0_Y19_N51
\un_min_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P6|display\(6),
	devoe => ww_devoe,
	o => ww_un_min_bcd(6));

-- Location: IOOBUF_X17_Y0_N82
\dez_min_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(0),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(0));

-- Location: IOOBUF_X17_Y0_N20
\dez_min_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(1),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(1));

-- Location: IOOBUF_X0_Y19_N20
\dez_min_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(2),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(2));

-- Location: IOOBUF_X53_Y19_N82
\dez_min_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(3),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(3));

-- Location: IOOBUF_X16_Y51_N20
\dez_min_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(4),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(4));

-- Location: IOOBUF_X53_Y19_N51
\dez_min_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(5),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(5));

-- Location: IOOBUF_X0_Y20_N51
\dez_min_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P7|display\(6),
	devoe => ww_devoe,
	o => ww_dez_min_bcd(6));

-- Location: IOOBUF_X0_Y22_N33
\un_hora_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(0),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(0));

-- Location: IOOBUF_X0_Y35_N113
\un_hora_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(1),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(1));

-- Location: IOOBUF_X0_Y30_N20
\un_hora_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(2),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(2));

-- Location: IOOBUF_X0_Y30_N82
\un_hora_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(3),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(3));

-- Location: IOOBUF_X0_Y22_N64
\un_hora_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(4),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(4));

-- Location: IOOBUF_X0_Y30_N51
\un_hora_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(5),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(5));

-- Location: IOOBUF_X0_Y29_N33
\un_hora_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P8|display\(6),
	devoe => ww_devoe,
	o => ww_un_hora_bcd(6));

-- Location: IOOBUF_X0_Y29_N2
\dez_hora_bcd[0]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(0),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(0));

-- Location: IOOBUF_X0_Y29_N64
\dez_hora_bcd[1]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(1),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(1));

-- Location: IOOBUF_X16_Y51_N113
\dez_hora_bcd[2]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(2),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(2));

-- Location: IOOBUF_X0_Y30_N113
\dez_hora_bcd[3]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(3),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(3));

-- Location: IOOBUF_X0_Y31_N113
\dez_hora_bcd[4]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(4),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(4));

-- Location: IOOBUF_X0_Y29_N95
\dez_hora_bcd[5]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(5),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(5));

-- Location: IOOBUF_X0_Y22_N2
\dez_hora_bcd[6]~output\ : stratixiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|display\(6),
	devoe => ww_devoe,
	o => ww_dez_hora_bcd(6));

-- Location: LABCELL_X13_Y19_N34
\P1|un[0]~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|un[0]~3_combout\ = !\P1|un\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P1|ALT_INV_un\(0),
	combout => \P1|un[0]~3_combout\);

-- Location: LABCELL_X13_Y19_N4
\P1|dez[1]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|dez[1]~2_combout\ = ( \P1|process_0~3_combout\ & ( !\P1|dez\(1) $ (((!\P1|dez\(0)) # (\P1|dez\(2)))) ) ) # ( !\P1|process_0~3_combout\ & ( \P1|dez\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datac => \P1|ALT_INV_dez\(2),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_process_0~3_combout\,
	combout => \P1|dez[1]~2_combout\);

-- Location: FF_X13_Y19_N5
\P1|dez[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|dez[1]~2_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|dez\(1));

-- Location: LABCELL_X13_Y19_N6
\P1|dez[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|dez[2]~1_combout\ = ( \P1|process_0~3_combout\ & ( ((\P1|dez\(0) & \P1|dez\(1))) # (\P1|dez\(2)) ) ) # ( !\P1|process_0~3_combout\ & ( \P1|dez\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datac => \P1|ALT_INV_dez\(1),
	datad => \P1|ALT_INV_dez\(2),
	dataf => \P1|ALT_INV_process_0~3_combout\,
	combout => \P1|dez[2]~1_combout\);

-- Location: FF_X13_Y19_N7
\P1|dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|dez[2]~1_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|dez\(2));

-- Location: LABCELL_X13_Y19_N28
\P1|process_0~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|process_0~2_combout\ = ( \P1|dez\(0) & ( \P1|dez\(2) ) ) # ( !\P1|dez\(0) & ( (\P1|dez\(2) & \P1|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P1|ALT_INV_dez\(2),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(0),
	combout => \P1|process_0~2_combout\);

-- Location: LABCELL_X13_Y19_N26
\P1|un~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|un~1_combout\ = ( \P1|process_0~2_combout\ & ( !\P1|un\(0) $ (!\P1|un\(1)) ) ) # ( !\P1|process_0~2_combout\ & ( (!\P1|process_0~3_combout\ & (!\P1|un\(0) $ (!\P1|un\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1|ALT_INV_un\(0),
	datac => \P1|ALT_INV_process_0~3_combout\,
	datad => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_process_0~2_combout\,
	combout => \P1|un~1_combout\);

-- Location: FF_X13_Y19_N27
\P1|un[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|un~1_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|un\(1));

-- Location: LABCELL_X13_Y19_N20
\P1|un[2]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|un[2]~0_combout\ = ( \P1|un\(1) & ( !\P1|un\(0) $ (!\P1|un\(2)) ) ) # ( !\P1|un\(1) & ( \P1|un\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P1|ALT_INV_un\(0),
	datad => \P1|ALT_INV_un\(2),
	dataf => \P1|ALT_INV_un\(1),
	combout => \P1|un[2]~0_combout\);

-- Location: FF_X13_Y19_N21
\P1|un[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|un[2]~0_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|un\(2));

-- Location: LABCELL_X13_Y19_N32
\P1|change~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|change~0_combout\ = ( \P1|process_0~0_combout\ & ( (!\clr~input_o\) # ((\P1|un\(1) & (!\P1|un\(0) & !\P1|un\(2)))) ) ) # ( !\P1|process_0~0_combout\ & ( !\clr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010111010101010101011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clr~input_o\,
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(0),
	datad => \P1|ALT_INV_un\(2),
	dataf => \P1|ALT_INV_process_0~0_combout\,
	combout => \P1|change~0_combout\);

-- Location: FF_X13_Y19_N35
\P1|un[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|un[0]~3_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|un\(0));

-- Location: LABCELL_X13_Y19_N0
\P1|un~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|un~2_combout\ = ( \P1|process_0~2_combout\ & ( !\P1|un\(3) $ (((!\P1|un\(2)) # ((!\P1|un\(1)) # (!\P1|un\(0))))) ) ) # ( !\P1|process_0~2_combout\ & ( (!\P1|un\(2) & (\P1|un\(3) & ((!\P1|un\(0)) # (\P1|un\(1))))) # (\P1|un\(2) & (!\P1|un\(3) $ 
-- (((!\P1|un\(1)) # (!\P1|un\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110110000000011111011000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(0),
	datad => \P1|ALT_INV_un\(3),
	dataf => \P1|ALT_INV_process_0~2_combout\,
	combout => \P1|un~2_combout\);

-- Location: FF_X13_Y19_N1
\P1|un[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|un~2_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|un\(3));

-- Location: LABCELL_X13_Y19_N24
\P1|process_0~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|process_0~3_combout\ = ( \P1|un\(3) & ( (\P1|un\(0) & (!\P1|un\(2) & !\P1|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1|ALT_INV_un\(0),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_un\(3),
	combout => \P1|process_0~3_combout\);

-- Location: LABCELL_X13_Y19_N38
\P1|dez[0]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|dez[0]~0_combout\ = ( \P1|process_0~2_combout\ & ( \P1|dez\(0) ) ) # ( !\P1|process_0~2_combout\ & ( !\P1|process_0~3_combout\ $ (!\P1|dez\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P1|ALT_INV_process_0~3_combout\,
	datad => \P1|ALT_INV_dez\(0),
	dataf => \P1|ALT_INV_process_0~2_combout\,
	combout => \P1|dez[0]~0_combout\);

-- Location: FF_X13_Y19_N39
\P1|dez[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \P1|dez[0]~0_combout\,
	clrn => \P1|ALT_INV_change~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P1|dez\(0));

-- Location: LABCELL_X13_Y19_N36
\P1|process_0~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|process_0~0_combout\ = ( \P1|dez\(2) & ( (\P1|un\(3) & (\P1|dez\(0) & !\P1|dez\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_dez\(0),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P1|process_0~0_combout\);

-- Location: LABCELL_X13_Y19_N30
\P1|process_0~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|process_0~1_combout\ = ( !\P1|un\(0) & ( (\P1|un\(1) & (\P1|process_0~0_combout\ & !\P1|un\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_process_0~0_combout\,
	datad => \P1|ALT_INV_un\(2),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P1|process_0~1_combout\);

-- Location: IOIBUF_X0_Y20_N94
\clr~input\ : stratixiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LABCELL_X13_Y19_N2
\P1|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|comb~0_combout\ = ( \clr~input_o\ ) # ( !\clr~input_o\ & ( \P1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P1|ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_clr~input_o\,
	combout => \P1|comb~0_combout\);

-- Location: LABCELL_X13_Y19_N16
\P1|change\ : stratixiii_lcell_comb
-- Equation(s):
-- \P1|change~combout\ = ( \P1|change~combout\ & ( \P1|comb~0_combout\ ) ) # ( !\P1|change~combout\ & ( (\P1|comb~0_combout\ & \P1|process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1|ALT_INV_comb~0_combout\,
	datad => \P1|ALT_INV_process_0~1_combout\,
	dataf => \P1|ALT_INV_change~combout\,
	combout => \P1|change~combout\);

-- Location: LABCELL_X13_Y19_N14
\P2|un[0]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un[0]~2_combout\ = ( \P1|change~combout\ & ( (!\P2|change2~0_combout\ & !\P2|un[0]~2_combout\) ) ) # ( !\P1|change~combout\ & ( (!\P2|change2~0_combout\ & \P2|un[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_change2~0_combout\,
	datac => \P2|ALT_INV_un[0]~2_combout\,
	dataf => \P1|ALT_INV_change~combout\,
	combout => \P2|un[0]~2_combout\);

-- Location: CLKCTRL_G9
\P2|dez[3]~0clkctrl\ : stratixiii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \P2|dez[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \P2|dez[3]~0clkctrl_outclk\);

-- Location: MLABCELL_X12_Y19_N22
\P2|Add1~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|Add1~2_combout\ = ( \P2|dez\(1) & ( !\P2|dez[0]~1_combout\ $ (!\P2|dez\(2)) ) ) # ( !\P2|dez\(1) & ( \P2|dez\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_dez[0]~1_combout\,
	datad => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P2|Add1~2_combout\);

-- Location: MLABCELL_X12_Y19_N8
\P2|dez[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|dez\(2) = ( \P2|Add1~2_combout\ & ( (!\P2|change2~0_combout\ & ((GLOBAL(\P2|dez[3]~0clkctrl_outclk\)) # (\P2|dez\(2)))) ) ) # ( !\P2|Add1~2_combout\ & ( (!\P2|change2~0_combout\ & (\P2|dez\(2) & !GLOBAL(\P2|dez[3]~0clkctrl_outclk\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_change2~0_combout\,
	datac => \P2|ALT_INV_dez\(2),
	datad => \P2|ALT_INV_dez[3]~0clkctrl_outclk\,
	dataf => \P2|ALT_INV_Add1~2_combout\,
	combout => \P2|dez\(2));

-- Location: MLABCELL_X12_Y19_N24
\P2|process_0~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|process_0~1_combout\ = ( \P2|dez\(1) & ( (!\P2|dez\(3) & !\P2|dez\(2)) ) ) # ( !\P2|dez\(1) & ( (!\P2|dez\(3) & ((!\P2|dez[0]~1_combout\) # (!\P2|dez\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez[0]~1_combout\,
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P2|process_0~1_combout\);

-- Location: LABCELL_X13_Y19_N22
\P2|un~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un~0_combout\ = ( \P2|process_0~1_combout\ & ( (!\P6|Equal9~0_combout\ & (!\P2|un\(1) $ (!\P2|un[0]~2_combout\))) ) ) # ( !\P2|process_0~1_combout\ & ( !\P2|un\(1) $ (!\P2|un[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P6|ALT_INV_Equal9~0_combout\,
	datac => \P2|ALT_INV_un\(1),
	datad => \P2|ALT_INV_un[0]~2_combout\,
	dataf => \P2|ALT_INV_process_0~1_combout\,
	combout => \P2|un~0_combout\);

-- Location: MLABCELL_X12_Y19_N16
\P2|un[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un\(1) = ( \P2|un~0_combout\ & ( (!\P2|change2~0_combout\ & ((\P1|change~combout\) # (\P2|un\(1)))) ) ) # ( !\P2|un~0_combout\ & ( (\P2|un\(1) & (!\P2|change2~0_combout\ & !\P1|change~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datac => \P2|ALT_INV_change2~0_combout\,
	datad => \P1|ALT_INV_change~combout\,
	dataf => \P2|ALT_INV_un~0_combout\,
	combout => \P2|un\(1));

-- Location: MLABCELL_X12_Y19_N12
\P2|un~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un~1_combout\ = ( \P2|process_0~1_combout\ & ( (!\P2|un\(2) & (\P2|un\(3) & ((!\P2|un[0]~2_combout\) # (\P2|un\(1))))) # (\P2|un\(2) & (!\P2|un\(3) $ (((!\P2|un[0]~2_combout\) # (!\P2|un\(1)))))) ) ) # ( !\P2|process_0~1_combout\ & ( !\P2|un\(3) $ 
-- (((!\P2|un\(2)) # ((!\P2|un[0]~2_combout\) # (!\P2|un\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110001111000001101000111100000110100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(2),
	datab => \P2|ALT_INV_un[0]~2_combout\,
	datac => \P2|ALT_INV_un\(3),
	datad => \P2|ALT_INV_un\(1),
	dataf => \P2|ALT_INV_process_0~1_combout\,
	combout => \P2|un~1_combout\);

-- Location: MLABCELL_X12_Y19_N36
\P2|un[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un\(3) = ( !\P2|change2~0_combout\ & ( (!\P1|change~combout\ & (\P2|un\(3))) # (\P1|change~combout\ & ((\P2|un~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datac => \P2|ALT_INV_un~1_combout\,
	datad => \P1|ALT_INV_change~combout\,
	dataf => \P2|ALT_INV_change2~0_combout\,
	combout => \P2|un\(3));

-- Location: MLABCELL_X12_Y19_N28
\P2|Add0~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|Add0~0_combout\ = ( \P2|un\(1) & ( !\P2|un[0]~2_combout\ $ (!\P2|un\(2)) ) ) # ( !\P2|un\(1) & ( \P2|un\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_un[0]~2_combout\,
	datad => \P2|ALT_INV_un\(2),
	dataf => \P2|ALT_INV_un\(1),
	combout => \P2|Add0~0_combout\);

-- Location: MLABCELL_X12_Y19_N2
\P2|un[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|un\(2) = ( !\P2|change2~0_combout\ & ( (!\P1|change~combout\ & (\P2|un\(2))) # (\P1|change~combout\ & ((\P2|Add0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_Add0~0_combout\,
	datad => \P1|ALT_INV_change~combout\,
	dataf => \P2|ALT_INV_change2~0_combout\,
	combout => \P2|un\(2));

-- Location: MLABCELL_X12_Y19_N20
\P6|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|Equal9~0_combout\ = ( !\P2|un\(2) & ( (\P2|un[0]~2_combout\ & (!\P2|un\(1) & \P2|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_un[0]~2_combout\,
	datac => \P2|ALT_INV_un\(1),
	datad => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un\(2),
	combout => \P6|Equal9~0_combout\);

-- Location: MLABCELL_X12_Y19_N32
\P2|change2~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|change2~0_combout\ = ( \P2|dez\(2) & ( \P2|dez\(1) & ( !\clr~input_o\ ) ) ) # ( !\P2|dez\(2) & ( \P2|dez\(1) & ( !\clr~input_o\ ) ) ) # ( \P2|dez\(2) & ( !\P2|dez\(1) & ( (!\clr~input_o\) # ((\P6|Equal9~0_combout\ & (!\P2|dez\(3) & 
-- \P2|dez[0]~1_combout\))) ) ) ) # ( !\P2|dez\(2) & ( !\P2|dez\(1) & ( !\clr~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101011101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clr~input_o\,
	datab => \P6|ALT_INV_Equal9~0_combout\,
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	datae => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P2|change2~0_combout\);

-- Location: LABCELL_X13_Y19_N8
\P2|dez[3]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|dez[3]~0_combout\ = ( \P1|change~combout\ & ( (\P6|Equal9~0_combout\ & \P2|process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P6|ALT_INV_Equal9~0_combout\,
	datad => \P2|ALT_INV_process_0~1_combout\,
	dataf => \P1|ALT_INV_change~combout\,
	combout => \P2|dez[3]~0_combout\);

-- Location: MLABCELL_X12_Y19_N18
\P2|dez[0]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|dez[0]~1_combout\ = ( \P2|dez[3]~0_combout\ & ( (!\P2|change2~0_combout\ & !\P2|dez[0]~1_combout\) ) ) # ( !\P2|dez[3]~0_combout\ & ( (!\P2|change2~0_combout\ & \P2|dez[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_change2~0_combout\,
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	dataf => \P2|ALT_INV_dez[3]~0_combout\,
	combout => \P2|dez[0]~1_combout\);

-- Location: MLABCELL_X12_Y19_N14
\P2|Add1~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|Add1~0_combout\ = !\P2|dez\(1) $ (!\P2|dez[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_dez\(1),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P2|Add1~0_combout\);

-- Location: MLABCELL_X12_Y19_N6
\P2|dez[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|dez\(1) = ( GLOBAL(\P2|dez[3]~0clkctrl_outclk\) & ( (!\P2|change2~0_combout\ & \P2|Add1~0_combout\) ) ) # ( !GLOBAL(\P2|dez[3]~0clkctrl_outclk\) & ( (!\P2|change2~0_combout\ & \P2|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_change2~0_combout\,
	datac => \P2|ALT_INV_dez\(1),
	datad => \P2|ALT_INV_Add1~0_combout\,
	dataf => \P2|ALT_INV_dez[3]~0clkctrl_outclk\,
	combout => \P2|dez\(1));

-- Location: MLABCELL_X12_Y19_N4
\P2|Add1~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|Add1~1_combout\ = ( \P2|dez\(2) & ( !\P2|dez\(3) $ (((!\P2|dez\(1)) # (!\P2|dez[0]~1_combout\))) ) ) # ( !\P2|dez\(2) & ( \P2|dez\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_dez\(1),
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	dataf => \P2|ALT_INV_dez\(2),
	combout => \P2|Add1~1_combout\);

-- Location: MLABCELL_X12_Y19_N0
\P2|dez[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|dez\(3) = ( GLOBAL(\P2|dez[3]~0clkctrl_outclk\) & ( (!\P2|change2~0_combout\ & \P2|Add1~1_combout\) ) ) # ( !GLOBAL(\P2|dez[3]~0clkctrl_outclk\) & ( (!\P2|change2~0_combout\ & \P2|dez\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_change2~0_combout\,
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_Add1~1_combout\,
	dataf => \P2|ALT_INV_dez[3]~0clkctrl_outclk\,
	combout => \P2|dez\(3));

-- Location: LABCELL_X8_Y19_N2
\P2|process_0~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|process_0~0_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(1) & (!\P2|dez\(3) & (\P2|dez\(2) & \P6|Equal9~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(1),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(2),
	datad => \P6|ALT_INV_Equal9~0_combout\,
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P2|process_0~0_combout\);

-- Location: LABCELL_X8_Y19_N4
\P2|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|comb~0_combout\ = ( \clr~input_o\ ) # ( !\clr~input_o\ & ( \P2|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_clr~input_o\,
	combout => \P2|comb~0_combout\);

-- Location: MLABCELL_X1_Y25_N26
\P2|change2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P2|change2~combout\ = ( \P2|change2~combout\ & ( \P2|comb~0_combout\ ) ) # ( !\P2|change2~combout\ & ( (\P2|process_0~0_combout\ & \P2|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_process_0~0_combout\,
	datad => \P2|ALT_INV_comb~0_combout\,
	dataf => \P2|ALT_INV_change2~combout\,
	combout => \P2|change2~combout\);

-- Location: LABCELL_X13_Y18_N2
\P4|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~0_combout\ = ( \P1|un\(0) & ( (!\P1|un\(2) & (\P1|un\(3) & !\P1|un\(1))) # (\P1|un\(2) & (!\P1|un\(3))) ) ) # ( !\P1|un\(0) & ( (!\P1|un\(2) & ((!\P1|un\(1)))) # (\P1|un\(2) & (!\P1|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010001100100011001000110010001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|comb~0_combout\);

-- Location: LABCELL_X13_Y18_N4
\P4|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~1_combout\ = ( \P1|un\(0) & ( (!\P1|un\(3) & !\P1|un\(2)) ) ) # ( !\P1|un\(0) & ( (!\P1|un\(3) & (!\P1|un\(2) & \P1|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|comb~1_combout\);

-- Location: LABCELL_X13_Y18_N6
\P4|display[0]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(0) = ( \P4|display\(0) & ( !\P4|comb~0_combout\ ) ) # ( !\P4|display\(0) & ( (!\P4|comb~0_combout\ & \P4|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~0_combout\,
	datad => \P4|ALT_INV_comb~1_combout\,
	dataf => \P4|ALT_INV_display\(0),
	combout => \P4|display\(0));

-- Location: LABCELL_X13_Y19_N10
\P4|display[1]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display[1]~0_combout\ = (!\P1|un\(0) & ((!\P1|un\(1) & (\P1|un\(3) & !\P1|un\(2))) # (\P1|un\(1) & (!\P1|un\(3) & \P1|un\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000000010000100000000001000010000000000100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(1),
	datab => \P1|ALT_INV_un\(0),
	datac => \P1|ALT_INV_un\(3),
	datad => \P1|ALT_INV_un\(2),
	combout => \P4|display[1]~0_combout\);

-- Location: LABCELL_X13_Y18_N30
\P4|comb~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~2_combout\ = ( \P4|display[1]~0_combout\ & ( (!\P1|un\(3)) # ((!\P1|un\(2) & !\P1|un\(1))) ) ) # ( !\P4|display[1]~0_combout\ & ( (!\P1|un\(2) & (!\P1|un\(3) & !\P1|un\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(3),
	datad => \P1|ALT_INV_un\(0),
	dataf => \P4|ALT_INV_display[1]~0_combout\,
	combout => \P4|comb~2_combout\);

-- Location: LABCELL_X13_Y18_N28
\P4|comb~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~3_combout\ = ( !\P4|display[1]~0_combout\ & ( (!\P1|un\(2) & ((!\P1|un\(3) & ((\P1|un\(0)))) # (\P1|un\(3) & (!\P1|un\(1))))) # (\P1|un\(2) & (((!\P1|un\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110001000010111111000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(0),
	datad => \P1|ALT_INV_un\(3),
	dataf => \P4|ALT_INV_display[1]~0_combout\,
	combout => \P4|comb~3_combout\);

-- Location: LABCELL_X13_Y18_N14
\P4|display[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(1) = ( \P4|display\(1) & ( !\P4|comb~2_combout\ ) ) # ( !\P4|display\(1) & ( (!\P4|comb~2_combout\ & \P4|comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~2_combout\,
	datad => \P4|ALT_INV_comb~3_combout\,
	dataf => \P4|ALT_INV_display\(1),
	combout => \P4|display\(1));

-- Location: LABCELL_X13_Y19_N12
\P4|display[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display[2]~1_combout\ = ( \P1|un\(0) & ( (\P1|un\(2) & (\P1|un\(1) & !\P1|un\(3))) ) ) # ( !\P1|un\(0) & ( (\P1|un\(2) & (!\P1|un\(1) & !\P1|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P1|ALT_INV_un\(2),
	datac => \P1|ALT_INV_un\(1),
	datad => \P1|ALT_INV_un\(3),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|display[2]~1_combout\);

-- Location: LABCELL_X13_Y18_N12
\P4|comb~4\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~4_combout\ = ( !\P4|display[2]~1_combout\ & ( (!\P1|un\(1) & ((!\P1|un\(2) & ((!\P1|un\(0)) # (\P1|un\(3)))) # (\P1|un\(2) & ((!\P1|un\(3)))))) # (\P1|un\(1) & (((!\P1|un\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111000000101111111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(0),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(3),
	dataf => \P4|ALT_INV_display[2]~1_combout\,
	combout => \P4|comb~4_combout\);

-- Location: LABCELL_X13_Y18_N18
\P4|comb~5\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~5_combout\ = ( \P4|display[2]~1_combout\ & ( (!\P1|un\(3)) # ((!\P1|un\(1) & !\P1|un\(2))) ) ) # ( !\P4|display[2]~1_combout\ & ( (\P1|un\(0) & (!\P1|un\(1) & (!\P1|un\(3) & !\P1|un\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(0),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(3),
	datad => \P1|ALT_INV_un\(2),
	dataf => \P4|ALT_INV_display[2]~1_combout\,
	combout => \P4|comb~5_combout\);

-- Location: LABCELL_X13_Y18_N16
\P4|display[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(2) = ( \P4|display\(2) & ( !\P4|comb~4_combout\ ) ) # ( !\P4|display\(2) & ( (!\P4|comb~4_combout\ & \P4|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~4_combout\,
	datad => \P4|ALT_INV_comb~5_combout\,
	dataf => \P4|ALT_INV_display\(2),
	combout => \P4|display\(2));

-- Location: LABCELL_X13_Y18_N24
\P4|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|Equal9~0_combout\ = ( !\P1|un\(0) & ( (!\P1|un\(2) & (\P1|un\(1) & !\P1|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(3),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|Equal9~0_combout\);

-- Location: LABCELL_X13_Y18_N22
\P4|comb~6\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~6_combout\ = ( \P1|un\(0) & ( (!\P1|un\(3)) # ((!\P1|un\(2) & !\P1|un\(1))) ) ) # ( !\P1|un\(0) & ( (!\P1|un\(2) & ((!\P1|un\(1)))) # (\P1|un\(2) & (!\P1|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|comb~6_combout\);

-- Location: LABCELL_X13_Y18_N20
\P4|display[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(3) = ( \P4|display\(3) & ( !\P4|comb~6_combout\ ) ) # ( !\P4|display\(3) & ( (\P4|Equal9~0_combout\ & !\P4|comb~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_Equal9~0_combout\,
	datad => \P4|ALT_INV_comb~6_combout\,
	dataf => \P4|ALT_INV_display\(3),
	combout => \P4|display\(3));

-- Location: LABCELL_X13_Y18_N26
\P4|comb~7\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~7_combout\ = ( \P1|un\(0) & ( (!\P1|un\(2) & (!\P1|un\(1) $ (!\P1|un\(3)))) # (\P1|un\(2) & (!\P1|un\(1) & !\P1|un\(3))) ) ) # ( !\P1|un\(0) & ( !\P1|un\(3) $ (((!\P1|un\(2) & !\P1|un\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(3),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|comb~7_combout\);

-- Location: LABCELL_X13_Y18_N8
\P4|comb~8\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~8_combout\ = (!\P1|un\(3) & ((!\P1|un\(2) & ((!\P1|un\(1)))) # (\P1|un\(2) & (\P1|un\(0) & \P1|un\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000100110000000000010011000000000001001100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(0),
	datab => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(1),
	combout => \P4|comb~8_combout\);

-- Location: LABCELL_X13_Y18_N10
\P4|display[4]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(4) = ( \P4|display\(4) & ( !\P4|comb~7_combout\ ) ) # ( !\P4|display\(4) & ( (!\P4|comb~7_combout\ & \P4|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~7_combout\,
	datad => \P4|ALT_INV_comb~8_combout\,
	dataf => \P4|ALT_INV_display\(4),
	combout => \P4|display\(4));

-- Location: LABCELL_X13_Y19_N18
\P4|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display[5]~2_combout\ = ( \P1|un\(0) & ( (!\P1|un\(1) & (\P1|un\(2) & !\P1|un\(3))) ) ) # ( !\P1|un\(0) & ( (\P1|un\(1) & (\P1|un\(2) & !\P1|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(3),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|display[5]~2_combout\);

-- Location: LABCELL_X13_Y18_N34
\P4|comb~10\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~10_combout\ = (\P4|display[5]~2_combout\ & ((!\P1|un\(3)) # ((!\P1|un\(2) & !\P1|un\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000100000001111000010000000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P4|ALT_INV_display[5]~2_combout\,
	datad => \P1|ALT_INV_un\(3),
	combout => \P4|comb~10_combout\);

-- Location: LABCELL_X13_Y18_N32
\P4|comb~9\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~9_combout\ = (!\P4|display[5]~2_combout\ & ((!\P1|un\(3)) # ((!\P1|un\(2) & !\P1|un\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011111000000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(1),
	datac => \P1|ALT_INV_un\(3),
	datad => \P4|ALT_INV_display[5]~2_combout\,
	combout => \P4|comb~9_combout\);

-- Location: MLABCELL_X15_Y10_N20
\P4|display[5]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(5) = ( !\P4|comb~9_combout\ & ( \P4|display\(5) ) ) # ( !\P4|comb~9_combout\ & ( !\P4|display\(5) & ( \P4|comb~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~10_combout\,
	datae => \P4|ALT_INV_comb~9_combout\,
	dataf => \P4|ALT_INV_display\(5),
	combout => \P4|display\(5));

-- Location: LABCELL_X13_Y18_N0
\P4|comb~11\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~11_combout\ = ( \P1|un\(0) & ( !\P1|un\(3) $ (((!\P1|un\(2) & !\P1|un\(1)))) ) ) # ( !\P1|un\(0) & ( (!\P1|un\(1) & (!\P1|un\(2))) # (\P1|un\(1) & ((!\P1|un\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011001100101010101100110001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(2),
	datab => \P1|ALT_INV_un\(3),
	datad => \P1|ALT_INV_un\(1),
	dataf => \P1|ALT_INV_un\(0),
	combout => \P4|comb~11_combout\);

-- Location: LABCELL_X13_Y18_N36
\P4|comb~12\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|comb~12_combout\ = (!\P1|un\(3) & (!\P1|un\(1) & (!\P1|un\(0) $ (!\P1|un\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_un\(0),
	datab => \P1|ALT_INV_un\(3),
	datac => \P1|ALT_INV_un\(2),
	datad => \P1|ALT_INV_un\(1),
	combout => \P4|comb~12_combout\);

-- Location: LABCELL_X13_Y18_N38
\P4|display[6]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P4|display\(6) = ( \P4|display\(6) & ( !\P4|comb~11_combout\ ) ) # ( !\P4|display\(6) & ( (!\P4|comb~11_combout\ & \P4|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P4|ALT_INV_comb~11_combout\,
	datad => \P4|ALT_INV_comb~12_combout\,
	dataf => \P4|ALT_INV_display\(6),
	combout => \P4|display\(6));

-- Location: MLABCELL_X4_Y15_N22
\P5|display[0]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|display[0]~0_combout\ = ( !\P1|dez\(2) & ( (\P1|dez\(1)) # (\P1|dez\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|display[0]~0_combout\);

-- Location: MLABCELL_X4_Y15_N24
\P5|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|comb~0_combout\ = ( \P1|dez\(2) & ( (!\P1|dez\(1)) # (\P1|dez\(0)) ) ) # ( !\P1|dez\(2) & ( \P1|dez\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datac => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|comb~0_combout\);

-- Location: MLABCELL_X4_Y15_N26
\P5|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|comb~1_combout\ = ( \P1|dez\(2) & ( !\P1|dez\(0) $ (!\P1|dez\(1)) ) ) # ( !\P1|dez\(2) & ( (!\P1|dez\(0)) # (\P1|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|comb~1_combout\);

-- Location: MLABCELL_X4_Y15_N30
\P5|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|Equal9~0_combout\ = ( !\P1|dez\(2) & ( (!\P1|dez\(0) & \P1|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datad => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|Equal9~0_combout\);

-- Location: MLABCELL_X4_Y15_N28
\P5|display[4]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|display[4]~1_combout\ = ( \P1|dez\(2) & ( (\P1|dez\(0) & \P1|dez\(1)) ) ) # ( !\P1|dez\(2) & ( !\P1|dez\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datac => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|display[4]~1_combout\);

-- Location: MLABCELL_X4_Y15_N20
\P5|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|display[5]~2_combout\ = ( \P1|dez\(2) & ( !\P1|dez\(0) $ (!\P1|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datac => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|display[5]~2_combout\);

-- Location: MLABCELL_X4_Y15_N32
\P5|display[6]~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P5|display[6]~3_combout\ = ( !\P1|dez\(1) & ( \P1|dez\(2) & ( !\P1|dez\(0) ) ) ) # ( !\P1|dez\(1) & ( !\P1|dez\(2) & ( \P1|dez\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1|ALT_INV_dez\(0),
	datae => \P1|ALT_INV_dez\(1),
	dataf => \P1|ALT_INV_dez\(2),
	combout => \P5|display[6]~3_combout\);

-- Location: LABCELL_X11_Y18_N6
\P6|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~1_combout\ = ( !\P2|un\(2) & ( (!\P2|un\(3) & ((\P2|un[0]~2_combout\) # (\P2|un\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datab => \P2|ALT_INV_un[0]~2_combout\,
	datac => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un\(2),
	combout => \P6|comb~1_combout\);

-- Location: LABCELL_X11_Y18_N22
\P6|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~0_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P2|un\(2) & (!\P2|un\(1) & \P2|un\(3))) # (\P2|un\(2) & ((!\P2|un\(3)))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P2|un\(2) & (!\P2|un\(1))) # (\P2|un\(2) & ((!\P2|un\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000000001111101000000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datac => \P2|ALT_INV_un\(2),
	datad => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~0_combout\);

-- Location: LABCELL_X11_Y18_N20
\P6|display[0]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(0) = ( \P6|display\(0) & ( !\P6|comb~0_combout\ ) ) # ( !\P6|display\(0) & ( (\P6|comb~1_combout\ & !\P6|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P6|ALT_INV_comb~1_combout\,
	datad => \P6|ALT_INV_comb~0_combout\,
	dataf => \P6|ALT_INV_display\(0),
	combout => \P6|display\(0));

-- Location: MLABCELL_X12_Y19_N26
\P6|display[1]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display[1]~0_combout\ = ( \P2|un\(1) & ( (!\P2|un\(3) & (!\P2|un[0]~2_combout\ & \P2|un\(2))) ) ) # ( !\P2|un\(1) & ( (\P2|un\(3) & (!\P2|un[0]~2_combout\ & !\P2|un\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_un\(3),
	datac => \P2|ALT_INV_un[0]~2_combout\,
	datad => \P2|ALT_INV_un\(2),
	dataf => \P2|ALT_INV_un\(1),
	combout => \P6|display[1]~0_combout\);

-- Location: LABCELL_X11_Y18_N4
\P6|comb~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~2_combout\ = ( \P6|display[1]~0_combout\ & ( (!\P2|un\(3)) # ((!\P2|un\(1) & !\P2|un\(2))) ) ) # ( !\P6|display[1]~0_combout\ & ( (!\P2|un[0]~2_combout\ & (!\P2|un\(3) & !\P2|un\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datab => \P2|ALT_INV_un[0]~2_combout\,
	datac => \P2|ALT_INV_un\(3),
	datad => \P2|ALT_INV_un\(2),
	dataf => \P6|ALT_INV_display[1]~0_combout\,
	combout => \P6|comb~2_combout\);

-- Location: LABCELL_X11_Y18_N30
\P6|comb~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~3_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P6|display[1]~0_combout\ & ((!\P2|un\(3)) # ((!\P2|un\(1) & !\P2|un\(2))))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P6|display[1]~0_combout\ & ((!\P2|un\(2) & (!\P2|un\(1) & \P2|un\(3))) # (\P2|un\(2) & 
-- ((!\P2|un\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010000000001100001000000011110000100000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datab => \P2|ALT_INV_un\(2),
	datac => \P6|ALT_INV_display[1]~0_combout\,
	datad => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~3_combout\);

-- Location: LABCELL_X11_Y18_N28
\P6|display[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(1) = ( \P6|display\(1) & ( !\P6|comb~2_combout\ ) ) # ( !\P6|display\(1) & ( (!\P6|comb~2_combout\ & \P6|comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P6|ALT_INV_comb~2_combout\,
	datad => \P6|ALT_INV_comb~3_combout\,
	dataf => \P6|ALT_INV_display\(1),
	combout => \P6|display\(1));

-- Location: LABCELL_X11_Y18_N12
\P6|display[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display[2]~1_combout\ = ( \P2|un\(1) & ( (!\P2|un\(3) & (\P2|un\(2) & \P2|un[0]~2_combout\)) ) ) # ( !\P2|un\(1) & ( (!\P2|un\(3) & (\P2|un\(2) & !\P2|un[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un[0]~2_combout\,
	dataf => \P2|ALT_INV_un\(1),
	combout => \P6|display[2]~1_combout\);

-- Location: LABCELL_X11_Y18_N14
\P6|comb~4\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~4_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P6|display[2]~1_combout\ & (!\P2|un\(3) $ (((!\P2|un\(2) & !\P2|un\(1)))))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P6|display[2]~1_combout\ & ((!\P2|un\(3)) # ((!\P2|un\(2) & !\P2|un\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000001101010000000000110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(1),
	datad => \P6|ALT_INV_display[2]~1_combout\,
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~4_combout\);

-- Location: LABCELL_X11_Y18_N18
\P6|comb~5\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~5_combout\ = ( \P2|un\(1) & ( (\P6|display[2]~1_combout\ & !\P2|un\(3)) ) ) # ( !\P2|un\(1) & ( (!\P6|display[2]~1_combout\ & (\P2|un[0]~2_combout\ & (!\P2|un\(2) & !\P2|un\(3)))) # (\P6|display[2]~1_combout\ & (((!\P2|un\(2)) # (!\P2|un\(3))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010000011101010101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P6|ALT_INV_display[2]~1_combout\,
	datab => \P2|ALT_INV_un[0]~2_combout\,
	datac => \P2|ALT_INV_un\(2),
	datad => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un\(1),
	combout => \P6|comb~5_combout\);

-- Location: LABCELL_X11_Y18_N16
\P6|display[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(2) = ( \P6|display\(2) & ( !\P6|comb~4_combout\ ) ) # ( !\P6|display\(2) & ( (!\P6|comb~4_combout\ & \P6|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P6|ALT_INV_comb~4_combout\,
	datad => \P6|ALT_INV_comb~5_combout\,
	dataf => \P6|ALT_INV_display\(2),
	combout => \P6|display\(2));

-- Location: LABCELL_X11_Y18_N24
\P6|Equal9~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|Equal9~1_combout\ = ( !\P2|un[0]~2_combout\ & ( (\P2|un\(1) & (!\P2|un\(2) & !\P2|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|Equal9~1_combout\);

-- Location: LABCELL_X11_Y18_N0
\P6|comb~6\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~6_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P2|un\(3)) # ((!\P2|un\(2) & !\P2|un\(1))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P2|un\(2) & (!\P2|un\(1))) # (\P2|un\(2) & ((!\P2|un\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111000000111100111100000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(1),
	datad => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~6_combout\);

-- Location: LABCELL_X11_Y18_N2
\P6|display[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(3) = ( \P6|display\(3) & ( !\P6|comb~6_combout\ ) ) # ( !\P6|display\(3) & ( (\P6|Equal9~1_combout\ & !\P6|comb~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P6|ALT_INV_Equal9~1_combout\,
	datad => \P6|ALT_INV_comb~6_combout\,
	dataf => \P6|ALT_INV_display\(3),
	combout => \P6|display\(3));

-- Location: LABCELL_X11_Y18_N26
\P6|comb~7\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~7_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P2|un\(1) & (!\P2|un\(2) $ (!\P2|un\(3)))) # (\P2|un\(1) & (!\P2|un\(2) & !\P2|un\(3))) ) ) # ( !\P2|un[0]~2_combout\ & ( !\P2|un\(3) $ (((!\P2|un\(1) & !\P2|un\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(1),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~7_combout\);

-- Location: LABCELL_X11_Y18_N8
\P6|comb~8\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~8_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P2|un\(3) & (!\P2|un\(2) $ (\P2|un\(1)))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P2|un\(3) & (!\P2|un\(2) & !\P2|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(1),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|comb~8_combout\);

-- Location: LABCELL_X11_Y18_N10
\P6|display[4]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(4) = ( \P6|display\(4) & ( !\P6|comb~7_combout\ ) ) # ( !\P6|display\(4) & ( (!\P6|comb~7_combout\ & \P6|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P6|ALT_INV_comb~7_combout\,
	datad => \P6|ALT_INV_comb~8_combout\,
	dataf => \P6|ALT_INV_display\(4),
	combout => \P6|display\(4));

-- Location: LABCELL_X11_Y18_N32
\P6|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display[5]~2_combout\ = ( \P2|un[0]~2_combout\ & ( (!\P2|un\(3) & (\P2|un\(2) & !\P2|un\(1))) ) ) # ( !\P2|un[0]~2_combout\ & ( (!\P2|un\(3) & (\P2|un\(2) & \P2|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(1),
	dataf => \P2|ALT_INV_un[0]~2_combout\,
	combout => \P6|display[5]~2_combout\);

-- Location: LABCELL_X11_Y18_N34
\P6|comb~9\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~9_combout\ = ( \P2|un\(1) & ( (!\P2|un\(3) & !\P6|display[5]~2_combout\) ) ) # ( !\P2|un\(1) & ( (!\P6|display[5]~2_combout\ & ((!\P2|un\(3)) # (!\P2|un\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datad => \P6|ALT_INV_display[5]~2_combout\,
	dataf => \P2|ALT_INV_un\(1),
	combout => \P6|comb~9_combout\);

-- Location: LABCELL_X11_Y18_N36
\P6|comb~10\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~10_combout\ = ( \P6|display[5]~2_combout\ & ( (!\P2|un\(3)) # ((!\P2|un\(2) & !\P2|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datab => \P2|ALT_INV_un\(2),
	datac => \P2|ALT_INV_un\(1),
	dataf => \P6|ALT_INV_display[5]~2_combout\,
	combout => \P6|comb~10_combout\);

-- Location: LABCELL_X11_Y18_N38
\P6|display[5]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(5) = ( \P6|display\(5) & ( !\P6|comb~9_combout\ ) ) # ( !\P6|display\(5) & ( (!\P6|comb~9_combout\ & \P6|comb~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P6|ALT_INV_comb~9_combout\,
	datad => \P6|ALT_INV_comb~10_combout\,
	dataf => \P6|ALT_INV_display\(5),
	combout => \P6|display\(5));

-- Location: MLABCELL_X12_Y18_N22
\P6|comb~11\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~11_combout\ = ( \P2|un\(2) & ( (!\P2|un\(3) & ((\P2|un[0]~2_combout\) # (\P2|un\(1)))) ) ) # ( !\P2|un\(2) & ( (!\P2|un\(3) & ((!\P2|un[0]~2_combout\) # (\P2|un\(1)))) # (\P2|un\(3) & (!\P2|un\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001011010111110100101101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_un\(3),
	datac => \P2|ALT_INV_un\(1),
	datad => \P2|ALT_INV_un[0]~2_combout\,
	dataf => \P2|ALT_INV_un\(2),
	combout => \P6|comb~11_combout\);

-- Location: MLABCELL_X12_Y18_N26
\P6|comb~12\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|comb~12_combout\ = ( !\P2|un\(3) & ( \P2|un\(2) & ( (!\P2|un\(1) & !\P2|un[0]~2_combout\) ) ) ) # ( !\P2|un\(3) & ( !\P2|un\(2) & ( (!\P2|un\(1) & \P2|un[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_un\(1),
	datac => \P2|ALT_INV_un[0]~2_combout\,
	datae => \P2|ALT_INV_un\(3),
	dataf => \P2|ALT_INV_un\(2),
	combout => \P6|comb~12_combout\);

-- Location: MLABCELL_X12_Y18_N20
\P6|display[6]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P6|display\(6) = ( \P6|display\(6) & ( !\P6|comb~11_combout\ ) ) # ( !\P6|display\(6) & ( (!\P6|comb~11_combout\ & \P6|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P6|ALT_INV_comb~11_combout\,
	datad => \P6|ALT_INV_comb~12_combout\,
	dataf => \P6|ALT_INV_display\(6),
	combout => \P6|display\(6));

-- Location: LABCELL_X8_Y19_N6
\P7|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~0_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & (\P2|dez\(3) & !\P2|dez\(1))) # (\P2|dez\(2) & (!\P2|dez\(3))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & ((!\P2|dez\(1)))) # (\P2|dez\(2) & (!\P2|dez\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000111110100101000001011010010100000101101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~0_combout\);

-- Location: LABCELL_X8_Y19_N30
\P7|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~1_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & !\P2|dez\(3)) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & (!\P2|dez\(3) & \P2|dez\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~1_combout\);

-- Location: LABCELL_X8_Y19_N28
\P7|display[0]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(0) = ( \P7|display\(0) & ( !\P7|comb~0_combout\ ) ) # ( !\P7|display\(0) & ( (!\P7|comb~0_combout\ & \P7|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P7|ALT_INV_comb~0_combout\,
	datad => \P7|ALT_INV_comb~1_combout\,
	dataf => \P7|ALT_INV_display\(0),
	combout => \P7|display\(0));

-- Location: LABCELL_X8_Y19_N32
\P7|comb~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~2_combout\ = ( \P2|dez[0]~1_combout\ & ( (\P7|display[1]~0_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P7|display[1]~0_combout\ & (!\P2|dez\(3) & (!\P2|dez\(2)))) # 
-- (\P7|display[1]~0_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011000100110101001100010001010100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P7|ALT_INV_display[1]~0_combout\,
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(2),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~2_combout\);

-- Location: LABCELL_X8_Y19_N34
\P7|comb~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~3_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P7|display[1]~0_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P7|display[1]~0_combout\ & ((!\P2|dez\(3) & (\P2|dez\(2))) # (\P2|dez\(3) & 
-- (!\P2|dez\(2) & !\P2|dez\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001000001010000000100010101000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P7|ALT_INV_display[1]~0_combout\,
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(2),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~3_combout\);

-- Location: LABCELL_X8_Y19_N16
\P7|display[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(1) = ( \P7|display\(1) & ( !\P7|comb~2_combout\ ) ) # ( !\P7|display\(1) & ( (!\P7|comb~2_combout\ & \P7|comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P7|ALT_INV_comb~2_combout\,
	datad => \P7|ALT_INV_comb~3_combout\,
	dataf => \P7|ALT_INV_display\(1),
	combout => \P7|display\(1));

-- Location: MLABCELL_X12_Y19_N30
\P7|display[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display[2]~1_combout\ = ( \P2|dez\(1) & ( (\P2|dez\(2) & (!\P2|dez\(3) & \P2|dez[0]~1_combout\)) ) ) # ( !\P2|dez\(1) & ( (\P2|dez\(2) & (!\P2|dez\(3) & !\P2|dez[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P7|display[2]~1_combout\);

-- Location: LABCELL_X8_Y19_N18
\P7|comb~4\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~4_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P7|display[2]~1_combout\ & (!\P2|dez\(3) $ (((!\P2|dez\(2) & !\P2|dez\(1)))))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P7|display[2]~1_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000001100000110000000110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P7|ALT_INV_display[2]~1_combout\,
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~4_combout\);

-- Location: LABCELL_X8_Y19_N22
\P7|comb~5\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~5_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P7|display[2]~1_combout\ & (!\P2|dez\(2) & (!\P2|dez\(3) & !\P2|dez\(1)))) # (\P7|display[2]~1_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) ) # ( !\P2|dez[0]~1_combout\ & ( 
-- (\P7|display[2]~1_combout\ & ((!\P2|dez\(3)) # ((!\P2|dez\(2) & !\P2|dez\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011000010110010001100001011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P7|ALT_INV_display[2]~1_combout\,
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~5_combout\);

-- Location: LABCELL_X8_Y19_N20
\P7|display[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(2) = ( \P7|display\(2) & ( !\P7|comb~4_combout\ ) ) # ( !\P7|display\(2) & ( (!\P7|comb~4_combout\ & \P7|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P7|ALT_INV_comb~4_combout\,
	datad => \P7|ALT_INV_comb~5_combout\,
	dataf => \P7|ALT_INV_display\(2),
	combout => \P7|display\(2));

-- Location: LABCELL_X8_Y19_N8
\P7|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|Equal9~0_combout\ = ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & (!\P2|dez\(3) & \P2|dez\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|Equal9~0_combout\);

-- Location: LABCELL_X8_Y19_N26
\P7|comb~6\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~6_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(3)) # ((!\P2|dez\(1) & !\P2|dez\(2))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & (!\P2|dez\(1))) # (\P2|dez\(2) & ((!\P2|dez\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000101110001011100011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(1),
	datab => \P2|ALT_INV_dez\(2),
	datac => \P2|ALT_INV_dez\(3),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~6_combout\);

-- Location: LABCELL_X8_Y19_N24
\P7|display[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(3) = ( \P7|display\(3) & ( !\P7|comb~6_combout\ ) ) # ( !\P7|display\(3) & ( (\P7|Equal9~0_combout\ & !\P7|comb~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P7|ALT_INV_Equal9~0_combout\,
	datad => \P7|ALT_INV_comb~6_combout\,
	dataf => \P7|ALT_INV_display\(3),
	combout => \P7|display\(3));

-- Location: LABCELL_X8_Y19_N0
\P7|comb~7\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~7_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(1) & (!\P2|dez\(3) $ (!\P2|dez\(2)))) # (\P2|dez\(1) & (!\P2|dez\(3) & !\P2|dez\(2))) ) ) # ( !\P2|dez[0]~1_combout\ & ( !\P2|dez\(3) $ (((!\P2|dez\(1) & !\P2|dez\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(1),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~7_combout\);

-- Location: LABCELL_X8_Y19_N12
\P7|comb~8\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~8_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(3) & (!\P2|dez\(2) $ (\P2|dez\(1)))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(2) & (!\P2|dez\(3) & !\P2|dez\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~8_combout\);

-- Location: LABCELL_X8_Y19_N14
\P7|display[4]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(4) = ( \P7|display\(4) & ( !\P7|comb~7_combout\ ) ) # ( !\P7|display\(4) & ( (!\P7|comb~7_combout\ & \P7|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P7|ALT_INV_comb~7_combout\,
	datad => \P7|ALT_INV_comb~8_combout\,
	dataf => \P7|ALT_INV_display\(4),
	combout => \P7|display\(4));

-- Location: LABCELL_X11_Y19_N22
\P7|comb~9\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~9_combout\ = ( \P2|dez\(1) & ( (!\P7|display[5]~2_combout\ & !\P2|dez\(3)) ) ) # ( !\P2|dez\(1) & ( (!\P7|display[5]~2_combout\ & ((!\P2|dez\(3)) # (!\P2|dez\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P7|ALT_INV_display[5]~2_combout\,
	datac => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez\(1),
	combout => \P7|comb~9_combout\);

-- Location: MLABCELL_X12_Y19_N10
\P7|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display[5]~2_combout\ = ( !\P2|dez\(3) & ( (\P2|dez\(2) & (!\P2|dez\(1) $ (!\P2|dez[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_dez\(2),
	datac => \P2|ALT_INV_dez\(1),
	datad => \P2|ALT_INV_dez[0]~1_combout\,
	dataf => \P2|ALT_INV_dez\(3),
	combout => \P7|display[5]~2_combout\);

-- Location: LABCELL_X11_Y19_N24
\P7|comb~10\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~10_combout\ = ( \P2|dez\(2) & ( \P7|display[5]~2_combout\ & ( !\P2|dez\(3) ) ) ) # ( !\P2|dez\(2) & ( \P7|display[5]~2_combout\ & ( (!\P2|dez\(3)) # (!\P2|dez\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(1),
	datae => \P2|ALT_INV_dez\(2),
	dataf => \P7|ALT_INV_display[5]~2_combout\,
	combout => \P7|comb~10_combout\);

-- Location: LABCELL_X11_Y19_N20
\P7|display[5]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(5) = ( \P7|display\(5) & ( !\P7|comb~9_combout\ ) ) # ( !\P7|display\(5) & ( (!\P7|comb~9_combout\ & \P7|comb~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P7|ALT_INV_comb~9_combout\,
	datac => \P7|ALT_INV_comb~10_combout\,
	dataf => \P7|ALT_INV_display\(5),
	combout => \P7|display\(5));

-- Location: LABCELL_X8_Y19_N10
\P7|comb~11\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~11_combout\ = ( \P2|dez[0]~1_combout\ & ( !\P2|dez\(3) $ (((!\P2|dez\(2) & !\P2|dez\(1)))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(1) & (!\P2|dez\(2))) # (\P2|dez\(1) & ((!\P2|dez\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011001100101010101100110001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(2),
	datab => \P2|ALT_INV_dez\(3),
	datad => \P2|ALT_INV_dez\(1),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~11_combout\);

-- Location: LABCELL_X8_Y19_N36
\P7|comb~12\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|comb~12_combout\ = ( \P2|dez[0]~1_combout\ & ( (!\P2|dez\(1) & (!\P2|dez\(3) & !\P2|dez\(2))) ) ) # ( !\P2|dez[0]~1_combout\ & ( (!\P2|dez\(1) & (!\P2|dez\(3) & \P2|dez\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_dez\(1),
	datab => \P2|ALT_INV_dez\(3),
	datac => \P2|ALT_INV_dez\(2),
	dataf => \P2|ALT_INV_dez[0]~1_combout\,
	combout => \P7|comb~12_combout\);

-- Location: LABCELL_X8_Y19_N38
\P7|display[6]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P7|display\(6) = ( \P7|display\(6) & ( !\P7|comb~11_combout\ ) ) # ( !\P7|display\(6) & ( (!\P7|comb~11_combout\ & \P7|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P7|ALT_INV_comb~11_combout\,
	datad => \P7|ALT_INV_comb~12_combout\,
	dataf => \P7|ALT_INV_display\(6),
	combout => \P7|display\(6));

-- Location: MLABCELL_X1_Y25_N0
\P3|dez[0]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|dez[0]~1_combout\ = ( !\P3|un[3]~1_combout\ & ( !\P3|dez[3]~0_combout\ $ (!\P3|dez[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[3]~0_combout\,
	datac => \P3|ALT_INV_dez[0]~1_combout\,
	dataf => \P3|ALT_INV_un[3]~1_combout\,
	combout => \P3|dez[0]~1_combout\);

-- Location: MLABCELL_X1_Y25_N14
\P3|Add1~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|Add1~2_combout\ = ( \P3|dez\(1) & ( !\P3|dez[0]~1_combout\ ) ) # ( !\P3|dez\(1) & ( \P3|dez[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P3|ALT_INV_dez[0]~1_combout\,
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P3|Add1~2_combout\);

-- Location: CLKCTRL_G1
\P3|dez[3]~0clkctrl\ : stratixiii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \P3|dez[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \P3|dez[3]~0clkctrl_outclk\);

-- Location: MLABCELL_X1_Y25_N28
\P3|dez[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|dez\(1) = ( GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (!\P3|un[3]~1_combout\ & \P3|Add1~2_combout\) ) ) # ( !GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (!\P3|un[3]~1_combout\ & \P3|dez\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_un[3]~1_combout\,
	datac => \P3|ALT_INV_dez\(1),
	datad => \P3|ALT_INV_Add1~2_combout\,
	dataf => \P3|ALT_INV_dez[3]~0clkctrl_outclk\,
	combout => \P3|dez\(1));

-- Location: MLABCELL_X1_Y25_N32
\P3|Add1~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|Add1~1_combout\ = ( \P3|dez\(1) & ( !\P3|dez\(2) $ (!\P3|dez[0]~1_combout\) ) ) # ( !\P3|dez\(1) & ( \P3|dez\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(2),
	datad => \P3|ALT_INV_dez[0]~1_combout\,
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P3|Add1~1_combout\);

-- Location: MLABCELL_X1_Y25_N34
\P3|dez[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|dez\(2) = ( GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (!\P3|un[3]~1_combout\ & \P3|Add1~1_combout\) ) ) # ( !GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (!\P3|un[3]~1_combout\ & \P3|dez\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_un[3]~1_combout\,
	datac => \P3|ALT_INV_dez\(2),
	datad => \P3|ALT_INV_Add1~1_combout\,
	dataf => \P3|ALT_INV_dez[3]~0clkctrl_outclk\,
	combout => \P3|dez\(2));

-- Location: MLABCELL_X1_Y27_N26
\P3|Add1~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|Add1~0_combout\ = ( \P3|dez\(1) & ( !\P3|dez\(3) $ (((!\P3|dez[0]~1_combout\) # (!\P3|dez\(2)))) ) ) # ( !\P3|dez\(1) & ( \P3|dez\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_dez\(3),
	datac => \P3|ALT_INV_dez[0]~1_combout\,
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P3|Add1~0_combout\);

-- Location: MLABCELL_X1_Y25_N10
\P3|dez[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|dez\(3) = ( GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (!\P3|un[3]~1_combout\ & \P3|Add1~0_combout\) ) ) # ( !GLOBAL(\P3|dez[3]~0clkctrl_outclk\) & ( (\P3|dez\(3) & !\P3|un[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_dez\(3),
	datac => \P3|ALT_INV_un[3]~1_combout\,
	datad => \P3|ALT_INV_Add1~0_combout\,
	dataf => \P3|ALT_INV_dez[3]~0clkctrl_outclk\,
	combout => \P3|dez\(3));

-- Location: MLABCELL_X1_Y25_N2
\P9|display[4]~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display[4]~3_combout\ = ( !\P3|dez\(1) & ( (!\P3|dez\(3) & !\P3|dez\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P3|ALT_INV_dez\(3),
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|display[4]~3_combout\);

-- Location: MLABCELL_X1_Y25_N22
\P3|Add0~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|Add0~0_combout\ = ( \P3|un[0]~3_combout\ & ( !\P3|un\(1) $ (!\P3|un\(2)) ) ) # ( !\P3|un[0]~3_combout\ & ( \P3|un\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P3|ALT_INV_un\(1),
	datad => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un[0]~3_combout\,
	combout => \P3|Add0~0_combout\);

-- Location: MLABCELL_X1_Y25_N4
\P3|un[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un\(2) = ( !\P3|un[3]~1_combout\ & ( (!\P2|change2~combout\ & (\P3|un\(2))) # (\P2|change2~combout\ & ((\P3|Add0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datac => \P2|ALT_INV_change2~combout\,
	datad => \P3|ALT_INV_Add0~0_combout\,
	dataf => \P3|ALT_INV_un[3]~1_combout\,
	combout => \P3|un\(2));

-- Location: MLABCELL_X1_Y25_N36
\P3|un~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un~0_combout\ = ( \P3|un[0]~3_combout\ & ( (!\P3|un\(2) & (\P3|un\(3) & ((!\P9|display[4]~3_combout\) # (\P3|un\(1))))) # (\P3|un\(2) & ((!\P3|un\(3) $ (!\P3|un\(1))))) ) ) # ( !\P3|un[0]~3_combout\ & ( \P3|un\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100011001111000010001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_display[4]~3_combout\,
	datab => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un\(2),
	datad => \P3|ALT_INV_un\(1),
	dataf => \P3|ALT_INV_un[0]~3_combout\,
	combout => \P3|un~0_combout\);

-- Location: MLABCELL_X1_Y25_N30
\P3|un[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un\(3) = ( \P2|change2~combout\ & ( (\P3|un~0_combout\ & !\P3|un[3]~1_combout\) ) ) # ( !\P2|change2~combout\ & ( (\P3|un\(3) & !\P3|un[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un~0_combout\,
	datad => \P3|ALT_INV_un[3]~1_combout\,
	dataf => \P2|ALT_INV_change2~combout\,
	combout => \P3|un\(3));

-- Location: MLABCELL_X1_Y25_N6
\P3|process_0~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|process_0~0_combout\ = ( \P3|un\(3) & ( (\P3|un[0]~3_combout\ & (!\P3|un\(1) & !\P3|un\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_un[0]~3_combout\,
	datac => \P3|ALT_INV_un\(1),
	datad => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un\(3),
	combout => \P3|process_0~0_combout\);

-- Location: MLABCELL_X1_Y25_N12
\P3|un~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un~2_combout\ = ( \P3|process_0~0_combout\ & ( (!\P9|display[4]~3_combout\ & (!\P3|un\(1) $ (!\P3|un[0]~3_combout\))) ) ) # ( !\P3|process_0~0_combout\ & ( !\P3|un\(1) $ (!\P3|un[0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(1),
	datab => \P9|ALT_INV_display[4]~3_combout\,
	datad => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_process_0~0_combout\,
	combout => \P3|un~2_combout\);

-- Location: MLABCELL_X1_Y25_N20
\P3|un[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un\(1) = ( !\P3|un[3]~1_combout\ & ( (!\P2|change2~combout\ & (\P3|un\(1))) # (\P2|change2~combout\ & ((\P3|un~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(1),
	datac => \P2|ALT_INV_change2~combout\,
	datad => \P3|ALT_INV_un~2_combout\,
	dataf => \P3|ALT_INV_un[3]~1_combout\,
	combout => \P3|un\(1));

-- Location: MLABCELL_X1_Y25_N16
\P3|un[3]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un[3]~1_combout\ = ( \P3|un\(2) & ( \P3|un\(3) & ( !\clr~input_o\ ) ) ) # ( !\P3|un\(2) & ( \P3|un\(3) & ( !\clr~input_o\ ) ) ) # ( \P3|un\(2) & ( !\P3|un\(3) & ( !\clr~input_o\ ) ) ) # ( !\P3|un\(2) & ( !\P3|un\(3) & ( (!\clr~input_o\) # 
-- ((\P9|Equal9~0_combout\ & (\P3|un\(1) & \P3|un[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001101110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Equal9~0_combout\,
	datab => \ALT_INV_clr~input_o\,
	datac => \P3|ALT_INV_un\(1),
	datad => \P3|ALT_INV_un[0]~3_combout\,
	datae => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un\(3),
	combout => \P3|un[3]~1_combout\);

-- Location: MLABCELL_X1_Y25_N38
\P3|un[0]~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P3|un[0]~3_combout\ = ( \P2|change2~combout\ & ( (!\P3|un[3]~1_combout\ & !\P3|un[0]~3_combout\) ) ) # ( !\P2|change2~combout\ & ( (!\P3|un[3]~1_combout\ & \P3|un[0]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P3|ALT_INV_un[3]~1_combout\,
	datad => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P2|ALT_INV_change2~combout\,
	combout => \P3|un[0]~3_combout\);

-- Location: MLABCELL_X1_Y26_N0
\P8|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~0_combout\ = ( \P3|un\(1) & ( (!\P3|un\(3) & \P3|un\(2)) ) ) # ( !\P3|un\(1) & ( (!\P3|un\(3) & ((!\P3|un[0]~3_combout\) # (\P3|un\(2)))) # (\P3|un\(3) & ((!\P3|un\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101011011010110110101101101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(3),
	datab => \P3|ALT_INV_un[0]~3_combout\,
	datac => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|comb~0_combout\);

-- Location: MLABCELL_X1_Y26_N24
\P8|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~1_combout\ = ( !\P3|un\(3) & ( (!\P3|un\(2) & ((\P3|un[0]~3_combout\) # (\P3|un\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~1_combout\);

-- Location: MLABCELL_X1_Y26_N2
\P8|display[0]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(0) = ( \P8|display\(0) & ( !\P8|comb~0_combout\ ) ) # ( !\P8|display\(0) & ( (!\P8|comb~0_combout\ & \P8|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~0_combout\,
	datad => \P8|ALT_INV_comb~1_combout\,
	dataf => \P8|ALT_INV_display\(0),
	combout => \P8|display\(0));

-- Location: MLABCELL_X1_Y26_N26
\P8|display[1]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display[1]~0_combout\ = ( \P3|un\(3) & ( (!\P3|un\(2) & (!\P3|un\(1) & !\P3|un[0]~3_combout\)) ) ) # ( !\P3|un\(3) & ( (\P3|un\(2) & (\P3|un\(1) & !\P3|un[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|display[1]~0_combout\);

-- Location: MLABCELL_X1_Y26_N10
\P8|comb~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~3_combout\ = ( \P3|un[0]~3_combout\ & ( (!\P8|display[1]~0_combout\ & ((!\P3|un\(3)) # ((!\P3|un\(2) & !\P3|un\(1))))) ) ) # ( !\P3|un[0]~3_combout\ & ( (!\P8|display[1]~0_combout\ & ((!\P3|un\(3) & (\P3|un\(2))) # (\P3|un\(3) & (!\P3|un\(2) & 
-- !\P3|un\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000100000011000000010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(3),
	datab => \P3|ALT_INV_un\(2),
	datac => \P8|ALT_INV_display[1]~0_combout\,
	datad => \P3|ALT_INV_un\(1),
	dataf => \P3|ALT_INV_un[0]~3_combout\,
	combout => \P8|comb~3_combout\);

-- Location: MLABCELL_X1_Y26_N8
\P8|comb~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~2_combout\ = ( \P3|un\(1) & ( (!\P3|un\(3) & (((!\P3|un\(2) & !\P3|un[0]~3_combout\)) # (\P8|display[1]~0_combout\))) ) ) # ( !\P3|un\(1) & ( (!\P3|un\(3) & (((!\P3|un\(2) & !\P3|un[0]~3_combout\)) # (\P8|display[1]~0_combout\))) # (\P3|un\(3) & 
-- (!\P3|un\(2) & ((\P8|display[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101110100000001110111010000000101010101000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(3),
	datab => \P3|ALT_INV_un\(2),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	datad => \P8|ALT_INV_display[1]~0_combout\,
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|comb~2_combout\);

-- Location: MLABCELL_X1_Y26_N20
\P8|display[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(1) = ( \P8|display\(1) & ( !\P8|comb~2_combout\ ) ) # ( !\P8|display\(1) & ( (\P8|comb~3_combout\ & !\P8|comb~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P8|ALT_INV_comb~3_combout\,
	datac => \P8|ALT_INV_comb~2_combout\,
	dataf => \P8|ALT_INV_display\(1),
	combout => \P8|display\(1));

-- Location: MLABCELL_X1_Y26_N12
\P8|display[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display[2]~1_combout\ = ( \P3|un\(1) & ( (\P3|un\(2) & (!\P3|un\(3) & \P3|un[0]~3_combout\)) ) ) # ( !\P3|un\(1) & ( (\P3|un\(2) & (!\P3|un\(3) & !\P3|un[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|display[2]~1_combout\);

-- Location: MLABCELL_X1_Y26_N14
\P8|comb~4\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~4_combout\ = ( \P3|un\(1) & ( (!\P3|un\(3) & !\P8|display[2]~1_combout\) ) ) # ( !\P3|un\(1) & ( (!\P8|display[2]~1_combout\ & ((!\P3|un\(2) & ((!\P3|un[0]~3_combout\) # (\P3|un\(3)))) # (\P3|un\(2) & (!\P3|un\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011000000000111001100000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	datad => \P8|ALT_INV_display[2]~1_combout\,
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|comb~4_combout\);

-- Location: MLABCELL_X1_Y26_N18
\P8|comb~5\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~5_combout\ = ( \P3|un\(2) & ( (\P8|display[2]~1_combout\ & !\P3|un\(3)) ) ) # ( !\P3|un\(2) & ( (!\P8|display[2]~1_combout\ & (!\P3|un\(1) & (!\P3|un\(3) & \P3|un[0]~3_combout\))) # (\P8|display[2]~1_combout\ & ((!\P3|un\(1)) # ((!\P3|un\(3))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011010100010101001101010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_display[2]~1_combout\,
	datab => \P3|ALT_INV_un\(1),
	datac => \P3|ALT_INV_un\(3),
	datad => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(2),
	combout => \P8|comb~5_combout\);

-- Location: MLABCELL_X1_Y26_N16
\P8|display[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(2) = ( \P8|display\(2) & ( !\P8|comb~4_combout\ ) ) # ( !\P8|display\(2) & ( (!\P8|comb~4_combout\ & \P8|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~4_combout\,
	datad => \P8|ALT_INV_comb~5_combout\,
	dataf => \P8|ALT_INV_display\(2),
	combout => \P8|display\(2));

-- Location: MLABCELL_X1_Y26_N22
\P8|comb~6\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~6_combout\ = ( \P3|un\(3) & ( (!\P3|un\(2) & !\P3|un\(1)) ) ) # ( !\P3|un\(3) & ( ((!\P3|un\(1)) # (\P3|un[0]~3_combout\)) # (\P3|un\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	datad => \P3|ALT_INV_un\(1),
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~6_combout\);

-- Location: MLABCELL_X1_Y26_N4
\P8|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|Equal9~0_combout\ = ( \P3|un\(1) & ( (!\P3|un[0]~3_combout\ & (!\P3|un\(3) & !\P3|un\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_un[0]~3_combout\,
	datac => \P3|ALT_INV_un\(3),
	datad => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|Equal9~0_combout\);

-- Location: MLABCELL_X1_Y26_N6
\P8|display[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(3) = ( \P8|display\(3) & ( !\P8|comb~6_combout\ ) ) # ( !\P8|display\(3) & ( (!\P8|comb~6_combout\ & \P8|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~6_combout\,
	datad => \P8|ALT_INV_Equal9~0_combout\,
	dataf => \P8|ALT_INV_display\(3),
	combout => \P8|display\(3));

-- Location: MLABCELL_X1_Y26_N28
\P8|comb~7\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~7_combout\ = ( \P3|un\(3) & ( (!\P3|un\(2) & !\P3|un\(1)) ) ) # ( !\P3|un\(3) & ( (!\P3|un\(2) & (\P3|un\(1))) # (\P3|un\(2) & ((!\P3|un\(1)) # (!\P3|un[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~7_combout\);

-- Location: MLABCELL_X1_Y26_N30
\P8|comb~8\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~8_combout\ = ( !\P3|un\(3) & ( (!\P3|un\(2) & (!\P3|un\(1))) # (\P3|un\(2) & (\P3|un\(1) & \P3|un[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~8_combout\);

-- Location: MLABCELL_X1_Y26_N32
\P8|display[4]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(4) = ( \P8|display\(4) & ( !\P8|comb~7_combout\ ) ) # ( !\P8|display\(4) & ( (!\P8|comb~7_combout\ & \P8|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~7_combout\,
	datad => \P8|ALT_INV_comb~8_combout\,
	dataf => \P8|ALT_INV_display\(4),
	combout => \P8|display\(4));

-- Location: MLABCELL_X1_Y26_N34
\P8|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display[5]~2_combout\ = ( \P3|un\(1) & ( (\P3|un\(2) & (!\P3|un\(3) & !\P3|un[0]~3_combout\)) ) ) # ( !\P3|un\(1) & ( (\P3|un\(2) & (!\P3|un\(3) & \P3|un[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un[0]~3_combout\,
	dataf => \P3|ALT_INV_un\(1),
	combout => \P8|display[5]~2_combout\);

-- Location: MLABCELL_X1_Y26_N36
\P8|comb~9\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~9_combout\ = ( \P3|un\(3) & ( (!\P3|un\(2) & (!\P3|un\(1) & !\P8|display[5]~2_combout\)) ) ) # ( !\P3|un\(3) & ( !\P8|display[5]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datad => \P8|ALT_INV_display[5]~2_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~9_combout\);

-- Location: MLABCELL_X1_Y26_N38
\P8|comb~10\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~10_combout\ = ( \P3|un\(3) & ( (!\P3|un\(2) & (!\P3|un\(1) & \P8|display[5]~2_combout\)) ) ) # ( !\P3|un\(3) & ( \P8|display[5]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(2),
	datab => \P3|ALT_INV_un\(1),
	datad => \P8|ALT_INV_display[5]~2_combout\,
	dataf => \P3|ALT_INV_un\(3),
	combout => \P8|comb~10_combout\);

-- Location: MLABCELL_X1_Y30_N20
\P8|display[5]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(5) = ( \P8|comb~10_combout\ & ( \P8|display\(5) & ( !\P8|comb~9_combout\ ) ) ) # ( !\P8|comb~10_combout\ & ( \P8|display\(5) & ( !\P8|comb~9_combout\ ) ) ) # ( \P8|comb~10_combout\ & ( !\P8|display\(5) & ( !\P8|comb~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~9_combout\,
	datae => \P8|ALT_INV_comb~10_combout\,
	dataf => \P8|ALT_INV_display\(5),
	combout => \P8|display\(5));

-- Location: LABCELL_X2_Y26_N24
\P8|comb~12\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~12_combout\ = ( !\P3|un\(2) & ( \P3|un[0]~3_combout\ & ( (!\P3|un\(3) & !\P3|un\(1)) ) ) ) # ( \P3|un\(2) & ( !\P3|un[0]~3_combout\ & ( (!\P3|un\(3) & !\P3|un\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(3),
	datac => \P3|ALT_INV_un\(1),
	datae => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un[0]~3_combout\,
	combout => \P8|comb~12_combout\);

-- Location: LABCELL_X2_Y26_N22
\P8|comb~11\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|comb~11_combout\ = ( \P3|un[0]~3_combout\ & ( !\P3|un\(3) $ (((!\P3|un\(1) & !\P3|un\(2)))) ) ) # ( !\P3|un[0]~3_combout\ & ( (!\P3|un\(1) & ((!\P3|un\(2)))) # (\P3|un\(1) & (!\P3|un\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100111011100100010001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_un\(1),
	datab => \P3|ALT_INV_un\(3),
	datad => \P3|ALT_INV_un\(2),
	dataf => \P3|ALT_INV_un[0]~3_combout\,
	combout => \P8|comb~11_combout\);

-- Location: LABCELL_X2_Y26_N20
\P8|display[6]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P8|display\(6) = ( \P8|display\(6) & ( !\P8|comb~11_combout\ ) ) # ( !\P8|display\(6) & ( (\P8|comb~12_combout\ & !\P8|comb~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P8|ALT_INV_comb~12_combout\,
	datad => \P8|ALT_INV_comb~11_combout\,
	dataf => \P8|ALT_INV_display\(6),
	combout => \P8|display\(6));

-- Location: MLABCELL_X1_Y29_N22
\P9|comb~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~1_combout\ = ( !\P3|dez\(2) & ( (!\P3|dez\(3) & ((\P3|dez\(1)) # (\P3|dez[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P3|ALT_INV_dez\(1),
	datad => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(2),
	combout => \P9|comb~1_combout\);

-- Location: MLABCELL_X1_Y29_N20
\P9|comb~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~0_combout\ = ( \P3|dez\(2) & ( !\P3|dez\(3) ) ) # ( !\P3|dez\(2) & ( (!\P3|dez\(1) & ((!\P3|dez[0]~1_combout\) # (\P3|dez\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P3|ALT_INV_dez\(1),
	datac => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(2),
	combout => \P9|comb~0_combout\);

-- Location: MLABCELL_X1_Y29_N24
\P9|display[0]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(0) = ( \P9|display\(0) & ( !\P9|comb~0_combout\ ) ) # ( !\P9|display\(0) & ( (\P9|comb~1_combout\ & !\P9|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P9|ALT_INV_comb~1_combout\,
	datac => \P9|ALT_INV_comb~0_combout\,
	dataf => \P9|ALT_INV_display\(0),
	combout => \P9|display\(0));

-- Location: MLABCELL_X1_Y29_N26
\P9|display[1]~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display[1]~0_combout\ = ( !\P3|dez[0]~1_combout\ & ( (!\P3|dez\(3) & (\P3|dez\(1) & \P3|dez\(2))) # (\P3|dez\(3) & (!\P3|dez\(1) & !\P3|dez\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(3),
	datac => \P3|ALT_INV_dez\(1),
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez[0]~1_combout\,
	combout => \P9|display[1]~0_combout\);

-- Location: MLABCELL_X1_Y29_N8
\P9|comb~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~2_combout\ = ( \P3|dez\(1) & ( (!\P3|dez\(3) & (((!\P3|dez[0]~1_combout\ & !\P3|dez\(2))) # (\P9|display[1]~0_combout\))) ) ) # ( !\P3|dez\(1) & ( (!\P9|display[1]~0_combout\ & (!\P3|dez[0]~1_combout\ & (!\P3|dez\(3) & !\P3|dez\(2)))) # 
-- (\P9|display[1]~0_combout\ & (((!\P3|dez\(3)) # (!\P3|dez\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100110000101100110011000010110000001100001011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P9|ALT_INV_display[1]~0_combout\,
	datac => \P3|ALT_INV_dez\(3),
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|comb~2_combout\);

-- Location: MLABCELL_X1_Y29_N10
\P9|comb~3\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~3_combout\ = ( \P3|dez\(1) & ( (!\P9|display[1]~0_combout\ & (!\P3|dez\(3) & ((\P3|dez\(2)) # (\P3|dez[0]~1_combout\)))) ) ) # ( !\P3|dez\(1) & ( (!\P9|display[1]~0_combout\ & ((!\P3|dez\(2) & ((\P3|dez\(3)) # (\P3|dez[0]~1_combout\))) # 
-- (\P3|dez\(2) & ((!\P3|dez\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011000000010011001100000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P9|ALT_INV_display[1]~0_combout\,
	datac => \P3|ALT_INV_dez\(2),
	datad => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|comb~3_combout\);

-- Location: MLABCELL_X1_Y29_N0
\P9|display[1]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(1) = ( \P9|comb~3_combout\ & ( !\P9|comb~2_combout\ ) ) # ( !\P9|comb~3_combout\ & ( (!\P9|comb~2_combout\ & \P9|display\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P9|ALT_INV_comb~2_combout\,
	datad => \P9|ALT_INV_display\(1),
	dataf => \P9|ALT_INV_comb~3_combout\,
	combout => \P9|display\(1));

-- Location: MLABCELL_X1_Y29_N34
\P9|display[2]~1\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display[2]~1_combout\ = ( \P3|dez\(2) & ( (!\P3|dez\(3) & (!\P3|dez[0]~1_combout\ $ (\P3|dez\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datac => \P3|ALT_INV_dez\(1),
	datad => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(2),
	combout => \P9|display[2]~1_combout\);

-- Location: MLABCELL_X1_Y29_N18
\P9|comb~5\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~5_combout\ = ( \P3|dez[0]~1_combout\ & ( (!\P9|display[2]~1_combout\ & (!\P3|dez\(2) & (!\P3|dez\(1) & !\P3|dez\(3)))) # (\P9|display[2]~1_combout\ & ((!\P3|dez\(3)) # ((!\P3|dez\(2) & !\P3|dez\(1))))) ) ) # ( !\P3|dez[0]~1_combout\ & ( 
-- (\P9|display[2]~1_combout\ & ((!\P3|dez\(3)) # ((!\P3|dez\(2) & !\P3|dez\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000100010001111000010001000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(2),
	datab => \P3|ALT_INV_dez\(1),
	datac => \P9|ALT_INV_display[2]~1_combout\,
	datad => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez[0]~1_combout\,
	combout => \P9|comb~5_combout\);

-- Location: MLABCELL_X1_Y29_N32
\P9|comb~4\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~4_combout\ = ( \P3|dez\(1) & ( (!\P3|dez\(3) & !\P9|display[2]~1_combout\) ) ) # ( !\P3|dez\(1) & ( (!\P9|display[2]~1_combout\ & ((!\P3|dez\(2) & ((!\P3|dez[0]~1_combout\) # (\P3|dez\(3)))) # (\P3|dez\(2) & ((!\P3|dez\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110000000000101111000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P3|ALT_INV_dez\(2),
	datac => \P3|ALT_INV_dez\(3),
	datad => \P9|ALT_INV_display[2]~1_combout\,
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|comb~4_combout\);

-- Location: MLABCELL_X1_Y29_N16
\P9|display[2]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(2) = ( \P9|display\(2) & ( !\P9|comb~4_combout\ ) ) # ( !\P9|display\(2) & ( (\P9|comb~5_combout\ & !\P9|comb~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P9|ALT_INV_comb~5_combout\,
	datad => \P9|ALT_INV_comb~4_combout\,
	dataf => \P9|ALT_INV_display\(2),
	combout => \P9|display\(2));

-- Location: MLABCELL_X1_Y29_N2
\P9|comb~6\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~6_combout\ = ( \P3|dez\(1) & ( (!\P3|dez\(3) & ((\P3|dez\(2)) # (\P3|dez[0]~1_combout\))) ) ) # ( !\P3|dez\(1) & ( (!\P3|dez\(3)) # (!\P3|dez\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datac => \P3|ALT_INV_dez\(3),
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|comb~6_combout\);

-- Location: MLABCELL_X1_Y25_N8
\P9|Equal9~0\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|Equal9~0_combout\ = ( \P3|dez\(1) & ( (!\P3|dez\(3) & (!\P3|dez[0]~1_combout\ & !\P3|dez\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P3|ALT_INV_dez\(3),
	datac => \P3|ALT_INV_dez[0]~1_combout\,
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|Equal9~0_combout\);

-- Location: MLABCELL_X1_Y29_N6
\P9|display[3]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(3) = ( \P9|display\(3) & ( !\P9|comb~6_combout\ ) ) # ( !\P9|display\(3) & ( (!\P9|comb~6_combout\ & \P9|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P9|ALT_INV_comb~6_combout\,
	datad => \P9|ALT_INV_Equal9~0_combout\,
	dataf => \P9|ALT_INV_display\(3),
	combout => \P9|display\(3));

-- Location: MLABCELL_X1_Y29_N4
\P9|comb~7\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~7_combout\ = (!\P3|dez\(1) & (!\P3|dez\(2) $ (((!\P3|dez\(3)))))) # (\P3|dez\(1) & (!\P3|dez\(3) & ((!\P3|dez\(2)) # (!\P3|dez[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011010001000011101101000100001110110100010000111011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(1),
	datab => \P3|ALT_INV_dez\(2),
	datac => \P3|ALT_INV_dez[0]~1_combout\,
	datad => \P3|ALT_INV_dez\(3),
	combout => \P9|comb~7_combout\);

-- Location: MLABCELL_X1_Y29_N30
\P9|comb~8\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~8_combout\ = (!\P3|dez\(3) & ((!\P3|dez\(1) & (!\P3|dez\(2))) # (\P3|dez\(1) & (\P3|dez\(2) & \P3|dez[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000010100000001000001010000000100000101000000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(3),
	datab => \P3|ALT_INV_dez\(1),
	datac => \P3|ALT_INV_dez\(2),
	datad => \P3|ALT_INV_dez[0]~1_combout\,
	combout => \P9|comb~8_combout\);

-- Location: MLABCELL_X1_Y29_N28
\P9|display[4]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(4) = ( \P9|display\(4) & ( !\P9|comb~7_combout\ ) ) # ( !\P9|display\(4) & ( (!\P9|comb~7_combout\ & \P9|comb~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P9|ALT_INV_comb~7_combout\,
	datad => \P9|ALT_INV_comb~8_combout\,
	dataf => \P9|ALT_INV_display\(4),
	combout => \P9|display\(4));

-- Location: MLABCELL_X1_Y29_N14
\P9|display[5]~2\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display[5]~2_combout\ = ( \P3|dez\(2) & ( (!\P3|dez\(3) & (!\P3|dez[0]~1_combout\ $ (!\P3|dez\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P3|ALT_INV_dez\(1),
	datad => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(2),
	combout => \P9|display[5]~2_combout\);

-- Location: MLABCELL_X1_Y27_N24
\P9|comb~10\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~10_combout\ = ( \P9|display[5]~2_combout\ & ( (!\P3|dez\(3)) # ((!\P3|dez\(1) & !\P3|dez\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(1),
	datab => \P3|ALT_INV_dez\(3),
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P9|ALT_INV_display[5]~2_combout\,
	combout => \P9|comb~10_combout\);

-- Location: MLABCELL_X1_Y27_N22
\P9|comb~9\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~9_combout\ = (!\P9|display[5]~2_combout\ & ((!\P3|dez\(3)) # ((!\P3|dez\(1) & !\P3|dez\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(1),
	datab => \P3|ALT_INV_dez\(3),
	datac => \P9|ALT_INV_display[5]~2_combout\,
	datad => \P3|ALT_INV_dez\(2),
	combout => \P9|comb~9_combout\);

-- Location: MLABCELL_X1_Y27_N20
\P9|display[5]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(5) = ( \P9|display\(5) & ( !\P9|comb~9_combout\ ) ) # ( !\P9|display\(5) & ( (\P9|comb~10_combout\ & !\P9|comb~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P9|ALT_INV_comb~10_combout\,
	datad => \P9|ALT_INV_comb~9_combout\,
	dataf => \P9|ALT_INV_display\(5),
	combout => \P9|display\(5));

-- Location: MLABCELL_X1_Y29_N12
\P9|comb~11\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~11_combout\ = ( \P3|dez\(2) & ( (!\P3|dez\(3) & ((\P3|dez\(1)) # (\P3|dez[0]~1_combout\))) ) ) # ( !\P3|dez\(2) & ( (!\P3|dez\(1) & ((!\P3|dez[0]~1_combout\) # (\P3|dez\(3)))) # (\P3|dez\(1) & ((!\P3|dez\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110010111100101111001011110001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez[0]~1_combout\,
	datab => \P3|ALT_INV_dez\(1),
	datac => \P3|ALT_INV_dez\(3),
	dataf => \P3|ALT_INV_dez\(2),
	combout => \P9|comb~11_combout\);

-- Location: MLABCELL_X1_Y29_N36
\P9|comb~12\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|comb~12_combout\ = ( !\P3|dez\(1) & ( (!\P3|dez\(3) & (!\P3|dez[0]~1_combout\ $ (!\P3|dez\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3|ALT_INV_dez\(3),
	datac => \P3|ALT_INV_dez[0]~1_combout\,
	datad => \P3|ALT_INV_dez\(2),
	dataf => \P3|ALT_INV_dez\(1),
	combout => \P9|comb~12_combout\);

-- Location: MLABCELL_X1_Y29_N38
\P9|display[6]\ : stratixiii_lcell_comb
-- Equation(s):
-- \P9|display\(6) = ( \P9|display\(6) & ( !\P9|comb~11_combout\ ) ) # ( !\P9|display\(6) & ( (!\P9|comb~11_combout\ & \P9|comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \P9|ALT_INV_comb~11_combout\,
	datac => \P9|ALT_INV_comb~12_combout\,
	dataf => \P9|ALT_INV_display\(6),
	combout => \P9|display\(6));
END structure;


