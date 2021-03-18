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

-- DATE "05/28/2013 18:52:54"

-- 
-- Device: Altera EPM7064STC100-7 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	logica_relogio IS
    PORT (
	clr : IN std_logic;
	clk : IN std_logic;
	s6 : BUFFER std_logic_vector(3 DOWNTO 0);
	s5 : BUFFER std_logic_vector(3 DOWNTO 0);
	s4 : BUFFER std_logic_vector(3 DOWNTO 0);
	s3 : BUFFER std_logic_vector(3 DOWNTO 0);
	s2 : BUFFER std_logic_vector(3 DOWNTO 0);
	s1 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END logica_relogio;

-- Design Ports Information
-- clr	=>  Location: PIN_89
-- clk	=>  Location: PIN_87
-- s6[1]	=>  Location: PIN_9
-- s3[0]	=>  Location: PIN_13
-- s6[2]	=>  Location: PIN_99
-- s3[1]	=>  Location: PIN_36
-- s6[3]	=>  Location: PIN_97
-- s3[2]	=>  Location: PIN_33
-- s3[3]	=>  Location: PIN_12
-- s5[0]	=>  Location: PIN_6
-- s5[1]	=>  Location: PIN_93
-- s5[2]	=>  Location: PIN_8
-- s5[3]	=>  Location: PIN_94
-- s4[0]	=>  Location: PIN_98
-- s4[1]	=>  Location: PIN_100
-- s4[2]	=>  Location: PIN_10
-- s4[3]	=>  Location: PIN_21
-- s2[0]	=>  Location: PIN_96
-- s2[1]	=>  Location: PIN_19
-- s2[2]	=>  Location: PIN_32
-- s2[3]	=>  Location: PIN_25
-- s1[0]	=>  Location: PIN_30
-- s1[1]	=>  Location: PIN_23
-- s1[2]	=>  Location: PIN_20
-- s1[3]	=>  Location: PIN_17
-- s6[0]	=>  Location: PIN_92

ARCHITECTURE structure OF logica_relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s5_rtl_1|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|_~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[0]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[0]~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[1]~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[2]~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s1[3]~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[0]~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[1]~34_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs[2]~38_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]~5_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs[0]~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal0~2sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~9sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \clr~dataout\ : std_logic;
SIGNAL \s3_rtl_3|dffs[0]~29_pexpout\ : std_logic;
SIGNAL \s2_rtl_4|dffs[0]~5_dataout\ : std_logic;
SIGNAL \s2_rtl_4|dffs[0]~6_dataout\ : std_logic;
SIGNAL \s2_rtl_4|dffs[0]~7_dataout\ : std_logic;
SIGNAL \s3_rtl_3|dffs[1]~34_pexpout\ : std_logic;
SIGNAL \s1[1]~reg0_dataout\ : std_logic;
SIGNAL \s1[2]~reg0_dataout\ : std_logic;
SIGNAL \s1[3]~reg0_dataout\ : std_logic;
SIGNAL \s1[0]~reg0_dataout\ : std_logic;
SIGNAL \s3_rtl_3|dffs[2]~38_pexpout\ : std_logic;
SIGNAL \s6_rtl_0|dffs[0]~8_dataout\ : std_logic;
SIGNAL \Equal0~2sexp_dataout\ : std_logic;
SIGNAL \process_0~9sexp_dataout\ : std_logic;
SIGNAL \s4_rtl_2|_~7_dataout\ : std_logic;
SIGNAL \s4_rtl_2|dffs[0]~26_dataout\ : std_logic;
SIGNAL \s5_rtl_1|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6_rtl_0|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s2_rtl_4|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s3_rtl_3|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s4_rtl_2|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6_rtl_0|ALT_INV_dffs[0]~8_dataout\ : std_logic;
SIGNAL \s6_rtl_0|ALT_INV_dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s3_rtl_3|ALT_INV_dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s5_rtl_1|ALT_INV_dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s4_rtl_2|ALT_INV_dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s4_rtl_2|ALT_INV_dffs[0]~26_dataout\ : std_logic;
SIGNAL \s2_rtl_4|ALT_INV_dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_s1[0]~reg0_dataout\ : std_logic;
SIGNAL \ALT_INV_s1[1]~reg0_dataout\ : std_logic;
SIGNAL \ALT_INV_s1[2]~reg0_dataout\ : std_logic;
SIGNAL \ALT_INV_s1[3]~reg0_dataout\ : std_logic;
SIGNAL \ALT_INV_clr~dataout\ : std_logic;
SIGNAL \ALT_INV_clk~dataout\ : std_logic;

BEGIN

ww_clr <= clr;
ww_clk <= clk;
s6 <= ww_s6;
s5 <= ww_s5;
s4 <= ww_s4;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;

\s6_rtl_0|dffs[0]~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3));

\s6_rtl_0|dffs[0]~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s6_rtl_0|dffs[0]~8_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s6_rtl_0|dffs[0]~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & NOT \s6_rtl_0|dffs\(0) & \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s6_rtl_0|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(1) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & NOT \s4_rtl_2|dffs\(1) & \s4_rtl_2|dffs\(0) & \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(0) & NOT \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & NOT \s4_rtl_2|dffs\(1) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(0) & \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & NOT \s4_rtl_2|dffs\(1) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(0));

\s3_rtl_3|dffs[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(2) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & NOT \s4_rtl_2|dffs\(1) & \s4_rtl_2|dffs\(0) & \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(0) & \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(2) & NOT \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[2]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(2) & NOT \s6_rtl_0|dffs\(0));

\s6_rtl_0|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s6_rtl_0|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & \s3_rtl_3|dffs\(0) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(0) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(2) & NOT \s3_rtl_3|dffs\(3) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(0) & \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(3) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1));

\s6_rtl_0|dffs[3]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(3) & \s6_rtl_0|dffs[0]~8_dataout\);

\s6_rtl_0|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s6_rtl_0|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(3) & \s3_rtl_3|dffs\(1) & \s3_rtl_3|dffs\(0) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & \s3_rtl_3|dffs\(2) & NOT \s4_rtl_2|dffs\(2));

\s3_rtl_3|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(2) & \s4_rtl_2|dffs\(2));

\s3_rtl_3|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2));

\s3_rtl_3|dffs[2]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(0) & NOT \s3_rtl_3|dffs\(2));

\s3_rtl_3|dffs[2]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(2));

\s3_rtl_3|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s3_rtl_3|dffs\(0) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & \s3_rtl_3|dffs\(1) & \s3_rtl_3|dffs\(2));

\s3_rtl_3|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(3) & \s6_rtl_0|dffs[0]~8_dataout\);

\s3_rtl_3|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s5_rtl_1|dffs\(0));

\s5_rtl_1|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & NOT \s5_rtl_1|dffs\(0));

\s5_rtl_1|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s5_rtl_1|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s6_rtl_0|dffs[0]~8_dataout\ & NOT \s5_rtl_1|dffs\(0) & \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal0~2sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s5_rtl_1|dffs\(3) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & NOT \s5_rtl_1|dffs\(2) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s5_rtl_1|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s5_rtl_1|dffs\(0) & \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s5_rtl_1|dffs\(3) & \s5_rtl_1|dffs\(2) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1));

\s5_rtl_1|dffs[2]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s5_rtl_1|dffs\(2) & \s6_rtl_0|dffs[0]~8_dataout\);

\s5_rtl_1|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s5_rtl_1|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s5_rtl_1|dffs\(0) & \s5_rtl_1|dffs\(1) & 
\s5_rtl_1|dffs\(2));

\s5_rtl_1|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs[0]~8_dataout\);

\s5_rtl_1|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s5_rtl_1|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s5_rtl_1|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & NOT 
\s6_rtl_0|dffs[0]~8_dataout\ & NOT \s4_rtl_2|dffs\(0));

\s4_rtl_2|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s3_rtl_3|dffs\(2) & NOT \s3_rtl_3|dffs\(3));

\s4_rtl_2|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & NOT \s4_rtl_2|dffs\(3) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0));

\s4_rtl_2|dffs[0]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & \s4_rtl_2|dffs\(2) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0));

\s4_rtl_2|dffs[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & \s4_rtl_2|dffs\(1) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0));

\s4_rtl_2|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT 
\s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s6_rtl_0|dffs[0]~8_dataout\ & NOT \s4_rtl_2|dffs\(0) & \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~9sexp_dataout\ & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & 
\s3_rtl_3|dffs\(2) & NOT \s3_rtl_3|dffs\(3) & NOT \s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & NOT \s4_rtl_2|dffs\(3) & NOT 
\s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & NOT 
\s6_rtl_0|dffs[0]~8_dataout\ & \s4_rtl_2|dffs\(0) & \s4_rtl_2|dffs\(1));

\s4_rtl_2|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(2) & \s6_rtl_0|dffs[0]~8_dataout\);

\s4_rtl_2|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(3));

\s4_rtl_2|_~7_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3) & \s4_rtl_2|dffs\(0) & 
\s4_rtl_2|dffs\(1) & \s4_rtl_2|dffs\(2));

\s4_rtl_2|_~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|_~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|_~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]~26_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3));

\s4_rtl_2|dffs[0]~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & NOT \s3_rtl_3|dffs\(0));

\s4_rtl_2|dffs[0]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s4_rtl_2|dffs[0]~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & \s3_rtl_3|dffs\(1));

\s4_rtl_2|dffs[0]~26_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s4_rtl_2|dffs\(2) & \s4_rtl_2|dffs\(3) & NOT \s3_rtl_3|dffs\(2));

\s4_rtl_2|dffs[0]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|dffs[0]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[0]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[3]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs[0]~26_dataout\ & \s4_rtl_2|_~7_dataout\);

\s4_rtl_2|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(3) & NOT \s4_rtl_2|dffs[0]~26_dataout\ & \s4_rtl_2|_~7_dataout\);

\s4_rtl_2|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(3) & NOT \s4_rtl_2|dffs[0]~26_dataout\ & \s4_rtl_2|_~7_dataout\);

\s4_rtl_2|dffs[3]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs[0]~26_dataout\ & \s4_rtl_2|_~7_dataout\);

\s4_rtl_2|dffs[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(1) & NOT \s4_rtl_2|dffs[0]~26_dataout\ & \s4_rtl_2|_~7_dataout\);

\s4_rtl_2|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s4_rtl_2|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s4_rtl_2|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(0) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\ & \s2_rtl_4|dffs[0]~5_dataout\);

\s2_rtl_4|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & 
\s2_rtl_4|dffs[0]~6_dataout\ & NOT \s2_rtl_4|dffs\(0));

\s2_rtl_4|dffs[0]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs[0]~7_dataout\ & \s2_rtl_4|dffs\(0) & \s2_rtl_4|dffs[0]~5_dataout\);

\s2_rtl_4|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s2_rtl_4|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \s2_rtl_4|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & 
\s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s2_rtl_4|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(3) & \s2_rtl_4|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & 
NOT \s4_rtl_2|dffs\(3));

\s2_rtl_4|dffs[1]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT 
\s4_rtl_2|dffs\(3));

\s2_rtl_4|dffs[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT 
\s4_rtl_2|dffs\(3));

\s2_rtl_4|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s2_rtl_4|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s2_rtl_4|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & \s2_rtl_4|dffs\(0) & 
\s2_rtl_4|dffs\(1));

\s2_rtl_4|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s2_rtl_4|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[3]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3) & \s2_rtl_4|dffs\(0) & 
\s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2));

\s2_rtl_4|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(3) & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s1[0]~reg0_dataout\);

\s2_rtl_4|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[3]~reg0_dataout\ & \s2_rtl_4|dffs\(3) & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2));

\s2_rtl_4|dffs[3]_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[2]~reg0_dataout\ & \s2_rtl_4|dffs\(3) & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2));

\s2_rtl_4|dffs[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s1[1]~reg0_dataout\ & \s2_rtl_4|dffs\(3) & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2));

\s2_rtl_4|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s2_rtl_4|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3) & \s1[3]~reg0_dataout\);

\s1[0]~reg0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[2]~reg0_dataout\ & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3));

\s1[0]~reg0_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s1[1]~reg0_dataout\ & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3));

\s1[0]~reg0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[0]~reg0_dataout\ & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3));

\s1[0]~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s1[0]~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[0]~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \s1[1]~reg0_dataout\ & NOT \s2_rtl_4|dffs\(1) & NOT \s1[0]~reg0_dataout\ & NOT \s2_rtl_4|dffs\(0) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\);

\s1[1]~reg0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(1) & \s1[0]~reg0_dataout\ & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3));

\s1[1]~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s1[1]~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[1]~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[2]~reg0_dataout\);

\s1[2]~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3) & \s1[0]~reg0_dataout\ & \s1[1]~reg0_dataout\);

\s1[2]~reg0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s1[2]~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[2]~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s1[3]~reg0_dataout\);

\s1[3]~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3) & \s1[0]~reg0_dataout\ & \s1[1]~reg0_dataout\ & \s1[2]~reg0_dataout\);

\s1[3]~reg0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s1[3]~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s1[3]~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \s6_rtl_0|dffs\(0) & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT 
\s4_rtl_2|dffs\(3));

\s6_rtl_0|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\ & NOT 
\s6_rtl_0|dffs\(0));

\s6_rtl_0|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s6_rtl_0|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s6_rtl_0|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(3) & NOT \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(2) & NOT \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]~29_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(0));

\s3_rtl_3|dffs[0]~29_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s3_rtl_3|dffs[0]~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[0]~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[0]~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s3_rtl_3|dffs[1]~34_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(3) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]~34_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s4_rtl_2|dffs\(2) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[1]~34_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[1]~34_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[1]~34_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(0) & NOT \s2_rtl_4|dffs\(1) & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\);

\s3_rtl_3|dffs[2]~38_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s3_rtl_3|dffs\(2) & NOT \s3_rtl_3|dffs\(1));

\s3_rtl_3|dffs[2]~38_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s4_rtl_2|dffs\(3) & NOT \s3_rtl_3|dffs\(2));

\s3_rtl_3|dffs[2]~38_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\s3_rtl_3|dffs[2]~38_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s3_rtl_3|dffs[2]~38_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\s2_rtl_4|dffs[0]~5_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s3_rtl_3|dffs\(0) & NOT \s3_rtl_3|dffs\(1) & \s4_rtl_2|dffs\(0) & NOT \s4_rtl_2|dffs\(1) & NOT \s3_rtl_3|dffs\(2) & \s3_rtl_3|dffs\(3) & \s4_rtl_2|dffs\(2) & NOT \s4_rtl_2|dffs\(3));

\s2_rtl_4|dffs[0]~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s2_rtl_4|dffs\(2) & NOT \s2_rtl_4|dffs\(3) & \s1[1]~reg0_dataout\ & NOT \s1[2]~reg0_dataout\ & NOT \s1[3]~reg0_dataout\ & NOT \s1[0]~reg0_dataout\ & NOT \s2_rtl_4|dffs\(1));

\s2_rtl_4|dffs[0]~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s2_rtl_4|dffs\(1) & NOT \s2_rtl_4|dffs\(2) & \s2_rtl_4|dffs\(3));

\Equal0~2sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3));

\process_0~9sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \s5_rtl_1|dffs\(0) & NOT \s5_rtl_1|dffs\(1) & \s5_rtl_1|dffs\(2) & NOT \s5_rtl_1|dffs\(3) & \s6_rtl_0|dffs\(0) & NOT \s6_rtl_0|dffs\(1) & NOT \s6_rtl_0|dffs\(2) & \s6_rtl_0|dffs\(3));
\s6_rtl_0|ALT_INV_dffs[0]~8_dataout\ <= NOT \s6_rtl_0|dffs[0]~8_dataout\;
\s6_rtl_0|ALT_INV_dffs\(1) <= NOT \s6_rtl_0|dffs\(1);
\s3_rtl_3|ALT_INV_dffs\(0) <= NOT \s3_rtl_3|dffs\(0);
\s6_rtl_0|ALT_INV_dffs\(2) <= NOT \s6_rtl_0|dffs\(2);
\s3_rtl_3|ALT_INV_dffs\(1) <= NOT \s3_rtl_3|dffs\(1);
\s3_rtl_3|ALT_INV_dffs\(2) <= NOT \s3_rtl_3|dffs\(2);
\s3_rtl_3|ALT_INV_dffs\(3) <= NOT \s3_rtl_3|dffs\(3);
\s5_rtl_1|ALT_INV_dffs\(0) <= NOT \s5_rtl_1|dffs\(0);
\s5_rtl_1|ALT_INV_dffs\(1) <= NOT \s5_rtl_1|dffs\(1);
\s5_rtl_1|ALT_INV_dffs\(2) <= NOT \s5_rtl_1|dffs\(2);
\s5_rtl_1|ALT_INV_dffs\(3) <= NOT \s5_rtl_1|dffs\(3);
\s4_rtl_2|ALT_INV_dffs\(0) <= NOT \s4_rtl_2|dffs\(0);
\s4_rtl_2|ALT_INV_dffs\(1) <= NOT \s4_rtl_2|dffs\(1);
\s4_rtl_2|ALT_INV_dffs\(2) <= NOT \s4_rtl_2|dffs\(2);
\s4_rtl_2|ALT_INV_dffs[0]~26_dataout\ <= NOT \s4_rtl_2|dffs[0]~26_dataout\;
\s4_rtl_2|ALT_INV_dffs\(3) <= NOT \s4_rtl_2|dffs\(3);
\s2_rtl_4|ALT_INV_dffs\(0) <= NOT \s2_rtl_4|dffs\(0);
\s2_rtl_4|ALT_INV_dffs\(1) <= NOT \s2_rtl_4|dffs\(1);
\s2_rtl_4|ALT_INV_dffs\(2) <= NOT \s2_rtl_4|dffs\(2);
\s2_rtl_4|ALT_INV_dffs\(3) <= NOT \s2_rtl_4|dffs\(3);
\ALT_INV_s1[0]~reg0_dataout\ <= NOT \s1[0]~reg0_dataout\;
\ALT_INV_s1[1]~reg0_dataout\ <= NOT \s1[1]~reg0_dataout\;
\ALT_INV_s1[2]~reg0_dataout\ <= NOT \s1[2]~reg0_dataout\;
\ALT_INV_s1[3]~reg0_dataout\ <= NOT \s1[3]~reg0_dataout\;
\s6_rtl_0|ALT_INV_dffs\(0) <= NOT \s6_rtl_0|dffs\(0);
\ALT_INV_clr~dataout\ <= NOT \clr~dataout\;
\ALT_INV_clk~dataout\ <= NOT \clk~dataout\;

-- Location: PIN_87
\clk~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	dataout => \clk~dataout\);

-- Location: PIN_89
\clr~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr,
	dataout => \clr~dataout\);

-- Location: LC1
\s3_rtl_3|dffs[0]~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \s3_rtl_3|dffs[0]~29_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[0]~29_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[0]~29_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[0]~29_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[0]~29_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[0]~29_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[0]~29_pxor_bus\,
	pclk => \s3_rtl_3|dffs[0]~29_pclk_bus\,
	papre => \s3_rtl_3|dffs[0]~29_papre_bus\,
	paclr => \s3_rtl_3|dffs[0]~29_paclr_bus\,
	pena => \s3_rtl_3|dffs[0]~29_pena_bus\,
	pexpout => \s3_rtl_3|dffs[0]~29_pexpout\);

-- Location: LC2
\s3_rtl_3|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pexpin => \s3_rtl_3|dffs[0]~29_pexpout\,
	pterm0 => \s3_rtl_3|dffs[0]_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[0]_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[0]_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[0]_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[0]_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[0]_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[0]_pxor_bus\,
	pclk => \s3_rtl_3|dffs[0]_pclk_bus\,
	papre => \s3_rtl_3|dffs[0]_papre_bus\,
	paclr => \s3_rtl_3|dffs[0]_paclr_bus\,
	pena => \s3_rtl_3|dffs[0]_pena_bus\,
	dataout => \s3_rtl_3|dffs\(0));

-- Location: SEXP4
\s2_rtl_4|dffs[0]~5\ : max_sexp
PORT MAP (
	datain => \s2_rtl_4|dffs[0]~5_datain_bus\,
	dataout => \s2_rtl_4|dffs[0]~5_dataout\);

-- Location: SEXP5
\s2_rtl_4|dffs[0]~6\ : max_sexp
PORT MAP (
	datain => \s2_rtl_4|dffs[0]~6_datain_bus\,
	dataout => \s2_rtl_4|dffs[0]~6_dataout\);

-- Location: SEXP3
\s2_rtl_4|dffs[0]~7\ : max_sexp
PORT MAP (
	datain => \s2_rtl_4|dffs[0]~7_datain_bus\,
	dataout => \s2_rtl_4|dffs[0]~7_dataout\);

-- Location: LC13
\s2_rtl_4|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s2_rtl_4|dffs[0]_pterm0_bus\,
	pterm1 => \s2_rtl_4|dffs[0]_pterm1_bus\,
	pterm2 => \s2_rtl_4|dffs[0]_pterm2_bus\,
	pterm3 => \s2_rtl_4|dffs[0]_pterm3_bus\,
	pterm4 => \s2_rtl_4|dffs[0]_pterm4_bus\,
	pterm5 => \s2_rtl_4|dffs[0]_pterm5_bus\,
	pxor => \s2_rtl_4|dffs[0]_pxor_bus\,
	pclk => \s2_rtl_4|dffs[0]_pclk_bus\,
	papre => \s2_rtl_4|dffs[0]_papre_bus\,
	paclr => \s2_rtl_4|dffs[0]_paclr_bus\,
	pena => \s2_rtl_4|dffs[0]_pena_bus\,
	dataout => \s2_rtl_4|dffs\(0));

-- Location: LC17
\s3_rtl_3|dffs[1]~34\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \s3_rtl_3|dffs[1]~34_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[1]~34_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[1]~34_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[1]~34_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[1]~34_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[1]~34_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[1]~34_pxor_bus\,
	pclk => \s3_rtl_3|dffs[1]~34_pclk_bus\,
	papre => \s3_rtl_3|dffs[1]~34_papre_bus\,
	paclr => \s3_rtl_3|dffs[1]~34_paclr_bus\,
	pena => \s3_rtl_3|dffs[1]~34_pena_bus\,
	pexpout => \s3_rtl_3|dffs[1]~34_pexpout\);

-- Location: LC18
\s3_rtl_3|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pexpin => \s3_rtl_3|dffs[1]~34_pexpout\,
	pterm0 => \s3_rtl_3|dffs[1]_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[1]_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[1]_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[1]_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[1]_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[1]_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[1]_pxor_bus\,
	pclk => \s3_rtl_3|dffs[1]_pclk_bus\,
	papre => \s3_rtl_3|dffs[1]_papre_bus\,
	paclr => \s3_rtl_3|dffs[1]_paclr_bus\,
	pena => \s3_rtl_3|dffs[1]_pena_bus\,
	dataout => \s3_rtl_3|dffs\(1));

-- Location: LC29
\s2_rtl_4|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s2_rtl_4|dffs[1]_pterm0_bus\,
	pterm1 => \s2_rtl_4|dffs[1]_pterm1_bus\,
	pterm2 => \s2_rtl_4|dffs[1]_pterm2_bus\,
	pterm3 => \s2_rtl_4|dffs[1]_pterm3_bus\,
	pterm4 => \s2_rtl_4|dffs[1]_pterm4_bus\,
	pterm5 => \s2_rtl_4|dffs[1]_pterm5_bus\,
	pxor => \s2_rtl_4|dffs[1]_pxor_bus\,
	pclk => \s2_rtl_4|dffs[1]_pclk_bus\,
	papre => \s2_rtl_4|dffs[1]_papre_bus\,
	paclr => \s2_rtl_4|dffs[1]_paclr_bus\,
	pena => \s2_rtl_4|dffs[1]_pena_bus\,
	dataout => \s2_rtl_4|dffs\(1));

-- Location: LC21
\s2_rtl_4|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s2_rtl_4|dffs[2]_pterm0_bus\,
	pterm1 => \s2_rtl_4|dffs[2]_pterm1_bus\,
	pterm2 => \s2_rtl_4|dffs[2]_pterm2_bus\,
	pterm3 => \s2_rtl_4|dffs[2]_pterm3_bus\,
	pterm4 => \s2_rtl_4|dffs[2]_pterm4_bus\,
	pterm5 => \s2_rtl_4|dffs[2]_pterm5_bus\,
	pxor => \s2_rtl_4|dffs[2]_pxor_bus\,
	pclk => \s2_rtl_4|dffs[2]_pclk_bus\,
	papre => \s2_rtl_4|dffs[2]_papre_bus\,
	paclr => \s2_rtl_4|dffs[2]_paclr_bus\,
	pena => \s2_rtl_4|dffs[2]_pena_bus\,
	dataout => \s2_rtl_4|dffs\(2));

-- Location: LC25
\s2_rtl_4|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s2_rtl_4|dffs[3]_pterm0_bus\,
	pterm1 => \s2_rtl_4|dffs[3]_pterm1_bus\,
	pterm2 => \s2_rtl_4|dffs[3]_pterm2_bus\,
	pterm3 => \s2_rtl_4|dffs[3]_pterm3_bus\,
	pterm4 => \s2_rtl_4|dffs[3]_pterm4_bus\,
	pterm5 => \s2_rtl_4|dffs[3]_pterm5_bus\,
	pxor => \s2_rtl_4|dffs[3]_pxor_bus\,
	pclk => \s2_rtl_4|dffs[3]_pclk_bus\,
	papre => \s2_rtl_4|dffs[3]_papre_bus\,
	paclr => \s2_rtl_4|dffs[3]_paclr_bus\,
	pena => \s2_rtl_4|dffs[3]_pena_bus\,
	dataout => \s2_rtl_4|dffs\(3));

-- Location: LC26
\s1[1]~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s1[1]~reg0_pterm0_bus\,
	pterm1 => \s1[1]~reg0_pterm1_bus\,
	pterm2 => \s1[1]~reg0_pterm2_bus\,
	pterm3 => \s1[1]~reg0_pterm3_bus\,
	pterm4 => \s1[1]~reg0_pterm4_bus\,
	pterm5 => \s1[1]~reg0_pterm5_bus\,
	pxor => \s1[1]~reg0_pxor_bus\,
	pclk => \s1[1]~reg0_pclk_bus\,
	papre => \s1[1]~reg0_papre_bus\,
	paclr => \s1[1]~reg0_paclr_bus\,
	pena => \s1[1]~reg0_pena_bus\,
	dataout => \s1[1]~reg0_dataout\);

-- Location: LC28
\s1[2]~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s1[2]~reg0_pterm0_bus\,
	pterm1 => \s1[2]~reg0_pterm1_bus\,
	pterm2 => \s1[2]~reg0_pterm2_bus\,
	pterm3 => \s1[2]~reg0_pterm3_bus\,
	pterm4 => \s1[2]~reg0_pterm4_bus\,
	pterm5 => \s1[2]~reg0_pterm5_bus\,
	pxor => \s1[2]~reg0_pxor_bus\,
	pclk => \s1[2]~reg0_pclk_bus\,
	papre => \s1[2]~reg0_papre_bus\,
	paclr => \s1[2]~reg0_paclr_bus\,
	pena => \s1[2]~reg0_pena_bus\,
	dataout => \s1[2]~reg0_dataout\);

-- Location: LC30
\s1[3]~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s1[3]~reg0_pterm0_bus\,
	pterm1 => \s1[3]~reg0_pterm1_bus\,
	pterm2 => \s1[3]~reg0_pterm2_bus\,
	pterm3 => \s1[3]~reg0_pterm3_bus\,
	pterm4 => \s1[3]~reg0_pterm4_bus\,
	pterm5 => \s1[3]~reg0_pterm5_bus\,
	pxor => \s1[3]~reg0_pxor_bus\,
	pclk => \s1[3]~reg0_pclk_bus\,
	papre => \s1[3]~reg0_papre_bus\,
	paclr => \s1[3]~reg0_paclr_bus\,
	pena => \s1[3]~reg0_pena_bus\,
	dataout => \s1[3]~reg0_dataout\);

-- Location: LC23
\s1[0]~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s1[0]~reg0_pterm0_bus\,
	pterm1 => \s1[0]~reg0_pterm1_bus\,
	pterm2 => \s1[0]~reg0_pterm2_bus\,
	pterm3 => \s1[0]~reg0_pterm3_bus\,
	pterm4 => \s1[0]~reg0_pterm4_bus\,
	pterm5 => \s1[0]~reg0_pterm5_bus\,
	pxor => \s1[0]~reg0_pxor_bus\,
	pclk => \s1[0]~reg0_pclk_bus\,
	papre => \s1[0]~reg0_papre_bus\,
	paclr => \s1[0]~reg0_paclr_bus\,
	pena => \s1[0]~reg0_pena_bus\,
	dataout => \s1[0]~reg0_dataout\);

-- Location: LC19
\s3_rtl_3|dffs[2]~38\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \s3_rtl_3|dffs[2]~38_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[2]~38_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[2]~38_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[2]~38_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[2]~38_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[2]~38_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[2]~38_pxor_bus\,
	pclk => \s3_rtl_3|dffs[2]~38_pclk_bus\,
	papre => \s3_rtl_3|dffs[2]~38_papre_bus\,
	paclr => \s3_rtl_3|dffs[2]~38_paclr_bus\,
	pena => \s3_rtl_3|dffs[2]~38_pena_bus\,
	pexpout => \s3_rtl_3|dffs[2]~38_pexpout\);

-- Location: LC20
\s3_rtl_3|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pexpin => \s3_rtl_3|dffs[2]~38_pexpout\,
	pterm0 => \s3_rtl_3|dffs[2]_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[2]_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[2]_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[2]_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[2]_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[2]_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[2]_pxor_bus\,
	pclk => \s3_rtl_3|dffs[2]_pclk_bus\,
	papre => \s3_rtl_3|dffs[2]_papre_bus\,
	paclr => \s3_rtl_3|dffs[2]_paclr_bus\,
	pena => \s3_rtl_3|dffs[2]_pena_bus\,
	dataout => \s3_rtl_3|dffs\(2));

-- Location: LC22
\s6_rtl_0|dffs[0]~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \s6_rtl_0|dffs[0]~8_pterm0_bus\,
	pterm1 => \s6_rtl_0|dffs[0]~8_pterm1_bus\,
	pterm2 => \s6_rtl_0|dffs[0]~8_pterm2_bus\,
	pterm3 => \s6_rtl_0|dffs[0]~8_pterm3_bus\,
	pterm4 => \s6_rtl_0|dffs[0]~8_pterm4_bus\,
	pterm5 => \s6_rtl_0|dffs[0]~8_pterm5_bus\,
	pxor => \s6_rtl_0|dffs[0]~8_pxor_bus\,
	pclk => \s6_rtl_0|dffs[0]~8_pclk_bus\,
	papre => \s6_rtl_0|dffs[0]~8_papre_bus\,
	paclr => \s6_rtl_0|dffs[0]~8_paclr_bus\,
	pena => \s6_rtl_0|dffs[0]~8_pena_bus\,
	dataout => \s6_rtl_0|dffs[0]~8_dataout\);

-- Location: LC3
\s3_rtl_3|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s3_rtl_3|dffs[3]_pterm0_bus\,
	pterm1 => \s3_rtl_3|dffs[3]_pterm1_bus\,
	pterm2 => \s3_rtl_3|dffs[3]_pterm2_bus\,
	pterm3 => \s3_rtl_3|dffs[3]_pterm3_bus\,
	pterm4 => \s3_rtl_3|dffs[3]_pterm4_bus\,
	pterm5 => \s3_rtl_3|dffs[3]_pterm5_bus\,
	pxor => \s3_rtl_3|dffs[3]_pxor_bus\,
	pclk => \s3_rtl_3|dffs[3]_pclk_bus\,
	papre => \s3_rtl_3|dffs[3]_papre_bus\,
	paclr => \s3_rtl_3|dffs[3]_paclr_bus\,
	pena => \s3_rtl_3|dffs[3]_pena_bus\,
	dataout => \s3_rtl_3|dffs\(3));

-- Location: SEXP6
\Equal0~2sexp\ : max_sexp
PORT MAP (
	datain => \Equal0~2sexp_datain_bus\,
	dataout => \Equal0~2sexp_dataout\);

-- Location: LC10
\s6_rtl_0|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s6_rtl_0|dffs[2]_pterm0_bus\,
	pterm1 => \s6_rtl_0|dffs[2]_pterm1_bus\,
	pterm2 => \s6_rtl_0|dffs[2]_pterm2_bus\,
	pterm3 => \s6_rtl_0|dffs[2]_pterm3_bus\,
	pterm4 => \s6_rtl_0|dffs[2]_pterm4_bus\,
	pterm5 => \s6_rtl_0|dffs[2]_pterm5_bus\,
	pxor => \s6_rtl_0|dffs[2]_pxor_bus\,
	pclk => \s6_rtl_0|dffs[2]_pclk_bus\,
	papre => \s6_rtl_0|dffs[2]_papre_bus\,
	paclr => \s6_rtl_0|dffs[2]_paclr_bus\,
	pena => \s6_rtl_0|dffs[2]_pena_bus\,
	dataout => \s6_rtl_0|dffs\(2));

-- Location: LC12
\s6_rtl_0|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s6_rtl_0|dffs[3]_pterm0_bus\,
	pterm1 => \s6_rtl_0|dffs[3]_pterm1_bus\,
	pterm2 => \s6_rtl_0|dffs[3]_pterm2_bus\,
	pterm3 => \s6_rtl_0|dffs[3]_pterm3_bus\,
	pterm4 => \s6_rtl_0|dffs[3]_pterm4_bus\,
	pterm5 => \s6_rtl_0|dffs[3]_pterm5_bus\,
	pxor => \s6_rtl_0|dffs[3]_pxor_bus\,
	pclk => \s6_rtl_0|dffs[3]_pclk_bus\,
	papre => \s6_rtl_0|dffs[3]_papre_bus\,
	paclr => \s6_rtl_0|dffs[3]_paclr_bus\,
	pena => \s6_rtl_0|dffs[3]_pena_bus\,
	dataout => \s6_rtl_0|dffs\(3));

-- Location: LC7
\s5_rtl_1|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s5_rtl_1|dffs[0]_pterm0_bus\,
	pterm1 => \s5_rtl_1|dffs[0]_pterm1_bus\,
	pterm2 => \s5_rtl_1|dffs[0]_pterm2_bus\,
	pterm3 => \s5_rtl_1|dffs[0]_pterm3_bus\,
	pterm4 => \s5_rtl_1|dffs[0]_pterm4_bus\,
	pterm5 => \s5_rtl_1|dffs[0]_pterm5_bus\,
	pxor => \s5_rtl_1|dffs[0]_pxor_bus\,
	pclk => \s5_rtl_1|dffs[0]_pclk_bus\,
	papre => \s5_rtl_1|dffs[0]_papre_bus\,
	paclr => \s5_rtl_1|dffs[0]_paclr_bus\,
	pena => \s5_rtl_1|dffs[0]_pena_bus\,
	dataout => \s5_rtl_1|dffs\(0));

-- Location: LC15
\s5_rtl_1|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s5_rtl_1|dffs[1]_pterm0_bus\,
	pterm1 => \s5_rtl_1|dffs[1]_pterm1_bus\,
	pterm2 => \s5_rtl_1|dffs[1]_pterm2_bus\,
	pterm3 => \s5_rtl_1|dffs[1]_pterm3_bus\,
	pterm4 => \s5_rtl_1|dffs[1]_pterm4_bus\,
	pterm5 => \s5_rtl_1|dffs[1]_pterm5_bus\,
	pxor => \s5_rtl_1|dffs[1]_pxor_bus\,
	pclk => \s5_rtl_1|dffs[1]_pclk_bus\,
	papre => \s5_rtl_1|dffs[1]_papre_bus\,
	paclr => \s5_rtl_1|dffs[1]_paclr_bus\,
	pena => \s5_rtl_1|dffs[1]_pena_bus\,
	dataout => \s5_rtl_1|dffs\(1));

-- Location: LC6
\s5_rtl_1|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s5_rtl_1|dffs[2]_pterm0_bus\,
	pterm1 => \s5_rtl_1|dffs[2]_pterm1_bus\,
	pterm2 => \s5_rtl_1|dffs[2]_pterm2_bus\,
	pterm3 => \s5_rtl_1|dffs[2]_pterm3_bus\,
	pterm4 => \s5_rtl_1|dffs[2]_pterm4_bus\,
	pterm5 => \s5_rtl_1|dffs[2]_pterm5_bus\,
	pxor => \s5_rtl_1|dffs[2]_pxor_bus\,
	pclk => \s5_rtl_1|dffs[2]_pclk_bus\,
	papre => \s5_rtl_1|dffs[2]_papre_bus\,
	paclr => \s5_rtl_1|dffs[2]_paclr_bus\,
	pena => \s5_rtl_1|dffs[2]_pena_bus\,
	dataout => \s5_rtl_1|dffs\(2));

-- Location: LC14
\s5_rtl_1|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s5_rtl_1|dffs[3]_pterm0_bus\,
	pterm1 => \s5_rtl_1|dffs[3]_pterm1_bus\,
	pterm2 => \s5_rtl_1|dffs[3]_pterm2_bus\,
	pterm3 => \s5_rtl_1|dffs[3]_pterm3_bus\,
	pterm4 => \s5_rtl_1|dffs[3]_pterm4_bus\,
	pterm5 => \s5_rtl_1|dffs[3]_pterm5_bus\,
	pxor => \s5_rtl_1|dffs[3]_pxor_bus\,
	pclk => \s5_rtl_1|dffs[3]_pclk_bus\,
	papre => \s5_rtl_1|dffs[3]_papre_bus\,
	paclr => \s5_rtl_1|dffs[3]_paclr_bus\,
	pena => \s5_rtl_1|dffs[3]_pena_bus\,
	dataout => \s5_rtl_1|dffs\(3));

-- Location: SEXP1
\process_0~9sexp\ : max_sexp
PORT MAP (
	datain => \process_0~9sexp_datain_bus\,
	dataout => \process_0~9sexp_dataout\);

-- Location: LC11
\s4_rtl_2|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s4_rtl_2|dffs[0]_pterm0_bus\,
	pterm1 => \s4_rtl_2|dffs[0]_pterm1_bus\,
	pterm2 => \s4_rtl_2|dffs[0]_pterm2_bus\,
	pterm3 => \s4_rtl_2|dffs[0]_pterm3_bus\,
	pterm4 => \s4_rtl_2|dffs[0]_pterm4_bus\,
	pterm5 => \s4_rtl_2|dffs[0]_pterm5_bus\,
	pxor => \s4_rtl_2|dffs[0]_pxor_bus\,
	pclk => \s4_rtl_2|dffs[0]_pclk_bus\,
	papre => \s4_rtl_2|dffs[0]_papre_bus\,
	paclr => \s4_rtl_2|dffs[0]_paclr_bus\,
	pena => \s4_rtl_2|dffs[0]_pena_bus\,
	dataout => \s4_rtl_2|dffs\(0));

-- Location: LC9
\s4_rtl_2|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s4_rtl_2|dffs[1]_pterm0_bus\,
	pterm1 => \s4_rtl_2|dffs[1]_pterm1_bus\,
	pterm2 => \s4_rtl_2|dffs[1]_pterm2_bus\,
	pterm3 => \s4_rtl_2|dffs[1]_pterm3_bus\,
	pterm4 => \s4_rtl_2|dffs[1]_pterm4_bus\,
	pterm5 => \s4_rtl_2|dffs[1]_pterm5_bus\,
	pxor => \s4_rtl_2|dffs[1]_pxor_bus\,
	pclk => \s4_rtl_2|dffs[1]_pclk_bus\,
	papre => \s4_rtl_2|dffs[1]_papre_bus\,
	paclr => \s4_rtl_2|dffs[1]_paclr_bus\,
	pena => \s4_rtl_2|dffs[1]_pena_bus\,
	dataout => \s4_rtl_2|dffs\(1));

-- Location: LC4
\s4_rtl_2|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s4_rtl_2|dffs[2]_pterm0_bus\,
	pterm1 => \s4_rtl_2|dffs[2]_pterm1_bus\,
	pterm2 => \s4_rtl_2|dffs[2]_pterm2_bus\,
	pterm3 => \s4_rtl_2|dffs[2]_pterm3_bus\,
	pterm4 => \s4_rtl_2|dffs[2]_pterm4_bus\,
	pterm5 => \s4_rtl_2|dffs[2]_pterm5_bus\,
	pxor => \s4_rtl_2|dffs[2]_pxor_bus\,
	pclk => \s4_rtl_2|dffs[2]_pclk_bus\,
	papre => \s4_rtl_2|dffs[2]_papre_bus\,
	paclr => \s4_rtl_2|dffs[2]_paclr_bus\,
	pena => \s4_rtl_2|dffs[2]_pena_bus\,
	dataout => \s4_rtl_2|dffs\(2));

-- Location: LC8
\s4_rtl_2|_~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \s4_rtl_2|_~7_pterm0_bus\,
	pterm1 => \s4_rtl_2|_~7_pterm1_bus\,
	pterm2 => \s4_rtl_2|_~7_pterm2_bus\,
	pterm3 => \s4_rtl_2|_~7_pterm3_bus\,
	pterm4 => \s4_rtl_2|_~7_pterm4_bus\,
	pterm5 => \s4_rtl_2|_~7_pterm5_bus\,
	pxor => \s4_rtl_2|_~7_pxor_bus\,
	pclk => \s4_rtl_2|_~7_pclk_bus\,
	papre => \s4_rtl_2|_~7_papre_bus\,
	paclr => \s4_rtl_2|_~7_paclr_bus\,
	pena => \s4_rtl_2|_~7_pena_bus\,
	dataout => \s4_rtl_2|_~7_dataout\);

-- Location: LC31
\s4_rtl_2|dffs[0]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \s4_rtl_2|dffs[0]~26_pterm0_bus\,
	pterm1 => \s4_rtl_2|dffs[0]~26_pterm1_bus\,
	pterm2 => \s4_rtl_2|dffs[0]~26_pterm2_bus\,
	pterm3 => \s4_rtl_2|dffs[0]~26_pterm3_bus\,
	pterm4 => \s4_rtl_2|dffs[0]~26_pterm4_bus\,
	pterm5 => \s4_rtl_2|dffs[0]~26_pterm5_bus\,
	pxor => \s4_rtl_2|dffs[0]~26_pxor_bus\,
	pclk => \s4_rtl_2|dffs[0]~26_pclk_bus\,
	papre => \s4_rtl_2|dffs[0]~26_papre_bus\,
	paclr => \s4_rtl_2|dffs[0]~26_paclr_bus\,
	pena => \s4_rtl_2|dffs[0]~26_pena_bus\,
	dataout => \s4_rtl_2|dffs[0]~26_dataout\);

-- Location: LC27
\s4_rtl_2|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s4_rtl_2|dffs[3]_pterm0_bus\,
	pterm1 => \s4_rtl_2|dffs[3]_pterm1_bus\,
	pterm2 => \s4_rtl_2|dffs[3]_pterm2_bus\,
	pterm3 => \s4_rtl_2|dffs[3]_pterm3_bus\,
	pterm4 => \s4_rtl_2|dffs[3]_pterm4_bus\,
	pterm5 => \s4_rtl_2|dffs[3]_pterm5_bus\,
	pxor => \s4_rtl_2|dffs[3]_pxor_bus\,
	pclk => \s4_rtl_2|dffs[3]_pclk_bus\,
	papre => \s4_rtl_2|dffs[3]_papre_bus\,
	paclr => \s4_rtl_2|dffs[3]_paclr_bus\,
	pena => \s4_rtl_2|dffs[3]_pena_bus\,
	dataout => \s4_rtl_2|dffs\(3));

-- Location: LC16
\s6_rtl_0|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s6_rtl_0|dffs[0]_pterm0_bus\,
	pterm1 => \s6_rtl_0|dffs[0]_pterm1_bus\,
	pterm2 => \s6_rtl_0|dffs[0]_pterm2_bus\,
	pterm3 => \s6_rtl_0|dffs[0]_pterm3_bus\,
	pterm4 => \s6_rtl_0|dffs[0]_pterm4_bus\,
	pterm5 => \s6_rtl_0|dffs[0]_pterm5_bus\,
	pxor => \s6_rtl_0|dffs[0]_pxor_bus\,
	pclk => \s6_rtl_0|dffs[0]_pclk_bus\,
	papre => \s6_rtl_0|dffs[0]_papre_bus\,
	paclr => \s6_rtl_0|dffs[0]_paclr_bus\,
	pena => \s6_rtl_0|dffs[0]_pena_bus\,
	dataout => \s6_rtl_0|dffs\(0));

-- Location: LC5
\s6_rtl_0|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	aclr => \ALT_INV_clr~dataout\,
	pterm0 => \s6_rtl_0|dffs[1]_pterm0_bus\,
	pterm1 => \s6_rtl_0|dffs[1]_pterm1_bus\,
	pterm2 => \s6_rtl_0|dffs[1]_pterm2_bus\,
	pterm3 => \s6_rtl_0|dffs[1]_pterm3_bus\,
	pterm4 => \s6_rtl_0|dffs[1]_pterm4_bus\,
	pterm5 => \s6_rtl_0|dffs[1]_pterm5_bus\,
	pxor => \s6_rtl_0|dffs[1]_pxor_bus\,
	pclk => \s6_rtl_0|dffs[1]_pclk_bus\,
	papre => \s6_rtl_0|dffs[1]_papre_bus\,
	paclr => \s6_rtl_0|dffs[1]_paclr_bus\,
	pena => \s6_rtl_0|dffs[1]_pena_bus\,
	dataout => \s6_rtl_0|dffs\(1));

-- Location: PIN_9
\s6[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s6_rtl_0|dffs\(1),
	oe => VCC,
	padio => ww_s6(1));

-- Location: PIN_13
\s3[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s3_rtl_3|dffs\(0),
	oe => VCC,
	padio => ww_s3(0));

-- Location: PIN_99
\s6[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s6_rtl_0|dffs\(2),
	oe => VCC,
	padio => ww_s6(2));

-- Location: PIN_36
\s3[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s3_rtl_3|dffs\(1),
	oe => VCC,
	padio => ww_s3(1));

-- Location: PIN_97
\s6[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s6_rtl_0|dffs\(3),
	oe => VCC,
	padio => ww_s6(3));

-- Location: PIN_33
\s3[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s3_rtl_3|dffs\(2),
	oe => VCC,
	padio => ww_s3(2));

-- Location: PIN_12
\s3[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s3_rtl_3|dffs\(3),
	oe => VCC,
	padio => ww_s3(3));

-- Location: PIN_6
\s5[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s5_rtl_1|dffs\(0),
	oe => VCC,
	padio => ww_s5(0));

-- Location: PIN_93
\s5[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s5_rtl_1|dffs\(1),
	oe => VCC,
	padio => ww_s5(1));

-- Location: PIN_8
\s5[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s5_rtl_1|dffs\(2),
	oe => VCC,
	padio => ww_s5(2));

-- Location: PIN_94
\s5[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s5_rtl_1|dffs\(3),
	oe => VCC,
	padio => ww_s5(3));

-- Location: PIN_98
\s4[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s4_rtl_2|dffs\(0),
	oe => VCC,
	padio => ww_s4(0));

-- Location: PIN_100
\s4[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s4_rtl_2|dffs\(1),
	oe => VCC,
	padio => ww_s4(1));

-- Location: PIN_10
\s4[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s4_rtl_2|dffs\(2),
	oe => VCC,
	padio => ww_s4(2));

-- Location: PIN_21
\s4[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s4_rtl_2|dffs\(3),
	oe => VCC,
	padio => ww_s4(3));

-- Location: PIN_96
\s2[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s2_rtl_4|dffs\(0),
	oe => VCC,
	padio => ww_s2(0));

-- Location: PIN_19
\s2[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s2_rtl_4|dffs\(1),
	oe => VCC,
	padio => ww_s2(1));

-- Location: PIN_32
\s2[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s2_rtl_4|dffs\(2),
	oe => VCC,
	padio => ww_s2(2));

-- Location: PIN_25
\s2[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s2_rtl_4|dffs\(3),
	oe => VCC,
	padio => ww_s2(3));

-- Location: PIN_30
\s1[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s1[0]~reg0_dataout\,
	oe => VCC,
	padio => ww_s1(0));

-- Location: PIN_23
\s1[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s1[1]~reg0_dataout\,
	oe => VCC,
	padio => ww_s1(1));

-- Location: PIN_20
\s1[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s1[2]~reg0_dataout\,
	oe => VCC,
	padio => ww_s1(2));

-- Location: PIN_17
\s1[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s1[3]~reg0_dataout\,
	oe => VCC,
	padio => ww_s1(3));

-- Location: PIN_92
\s6[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \s6_rtl_0|dffs\(0),
	oe => VCC,
	padio => ww_s6(0));
END structure;


