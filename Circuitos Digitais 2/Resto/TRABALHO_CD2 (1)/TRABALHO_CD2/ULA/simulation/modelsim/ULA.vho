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

-- DATE "05/10/2013 10:53:58"

-- 
-- Device: Altera EPM7032SLC44-5 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	ULA IS
    PORT (
	A_B_Cin : IN std_logic_vector(2 DOWNTO 0);
	SEL_ULA : IN std_logic_vector(2 DOWNTO 0);
	SAIDA_DECO : BUFFER std_logic_vector(7 DOWNTO 0);
	S_Cout : BUFFER std_logic_vector(1 DOWNTO 0);
	S_Cout2 : BUFFER std_logic_vector(1 DOWNTO 0);
	S : OUT std_logic;
	Cout : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- A_B_Cin[0]	=>  Location: PIN_39
-- A_B_Cin[1]	=>  Location: PIN_36
-- A_B_Cin[2]	=>  Location: PIN_33
-- SEL_ULA[0]	=>  Location: PIN_29
-- SEL_ULA[1]	=>  Location: PIN_44
-- SEL_ULA[2]	=>  Location: PIN_25
-- SAIDA_DECO[0]	=>  Location: PIN_6
-- SAIDA_DECO[1]	=>  Location: PIN_11
-- SAIDA_DECO[2]	=>  Location: PIN_8
-- SAIDA_DECO[3]	=>  Location: PIN_12
-- SAIDA_DECO[4]	=>  Location: PIN_9
-- SAIDA_DECO[5]	=>  Location: PIN_14
-- S_Cout[1]	=>  Location: PIN_16
-- SAIDA_DECO[6]	=>  Location: PIN_17
-- SAIDA_DECO[7]	=>  Location: PIN_18
-- S_Cout[0]	=>  Location: PIN_19
-- S_Cout2[0]	=>  Location: PIN_20
-- S_Cout2[1]	=>  Location: PIN_21
-- Cout	=>  Location: PIN_27
-- S	=>  Location: PIN_5

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_A_B_Cin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SEL_ULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SAIDA_DECO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S_Cout : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S_Cout2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \P3|Mux0~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~34_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~37_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux1~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P1|Mux0~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P2|S_Cout[0]~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Cout$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~30_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~12sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~38_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \P3|Mux0~20_dataout\ : std_logic;
SIGNAL \P3|Mux0~27_dataout\ : std_logic;
SIGNAL \P3|Mux0~22_dataout\ : std_logic;
SIGNAL \P3|Mux0~29_dataout\ : std_logic;
SIGNAL \P3|Mux0~24_dataout\ : std_logic;
SIGNAL \P3|Mux0~31_dataout\ : std_logic;
SIGNAL \P1|Mux0~3_dataout\ : std_logic;
SIGNAL \P3|Mux0~34_dataout\ : std_logic;
SIGNAL \P3|Mux0~37_dataout\ : std_logic;
SIGNAL \P1|Mux1~6_dataout\ : std_logic;
SIGNAL \P2|S_Cout[0]~9_dataout\ : std_logic;
SIGNAL \P1|Mux0~8_dataout\ : std_logic;
SIGNAL \P2|S_Cout[0]~13_dataout\ : std_logic;
SIGNAL \P3|Mux0~12sexpand0_dataout\ : std_logic;
SIGNAL \Cout~3_dataout\ : std_logic;
SIGNAL \P3|Mux0~38_dataout\ : std_logic;
SIGNAL \Cout$latch~6_dataout\ : std_logic;
SIGNAL \S~30_pexpout\ : std_logic;
SIGNAL \S~23_dataout\ : std_logic;
SIGNAL \A_B_Cin~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SEL_ULA~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_A_B_Cin~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_SEL_ULA~dataout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_A_B_Cin <= A_B_Cin;
ww_SEL_ULA <= SEL_ULA;
SAIDA_DECO <= ww_SAIDA_DECO;
S_Cout <= ww_S_Cout;
S_Cout2 <= ww_S_Cout2;
S <= ww_S;
Cout <= ww_Cout;

\P3|Mux0~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0) & NOT \SEL_ULA~dataout\(2));

\P3|Mux0~20_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\P3|Mux0~22_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0) & \SEL_ULA~dataout\(2));

\P3|Mux0~24_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(1) & \SEL_ULA~dataout\(0) & NOT \SEL_ULA~dataout\(2));

\P3|Mux0~27_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & \SEL_ULA~dataout\(0));

\P3|Mux0~29_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL_ULA~dataout\(1) & \SEL_ULA~dataout\(0) & \SEL_ULA~dataout\(2));

\P3|Mux0~31_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1));

\P1|Mux0~3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & NOT \A_B_Cin~dataout\(1));

\P1|Mux0~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(0));

\P1|Mux0~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P1|Mux0~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\P3|Mux0~34_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~34_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~34_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & \SEL_ULA~dataout\(0));

\P3|Mux0~37_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P3|Mux0~37_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~37_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & \A_B_Cin~dataout\(0));

\P1|Mux1~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(0));

\P1|Mux1~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1));

\P1|Mux1~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P1|Mux1~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux1~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(0));

\P2|S_Cout[0]~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & \A_B_Cin~dataout\(0));

\P2|S_Cout[0]~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & NOT \A_B_Cin~dataout\(2));

\P2|S_Cout[0]~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P2|S_Cout[0]~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1));

\P1|Mux0~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & NOT \A_B_Cin~dataout\(1));

\P1|Mux0~8_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(0));

\P1|Mux0~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P1|Mux0~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P1|Mux0~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(0));

\P2|S_Cout[0]~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & \A_B_Cin~dataout\(0));

\P2|S_Cout[0]~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & NOT \A_B_Cin~dataout\(2));

\P2|S_Cout[0]~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\P2|S_Cout[0]~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P2|S_Cout[0]~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout~3_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1) & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\Cout~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(0) & \P2|S_Cout[0]~13_dataout\);

\Cout~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \P3|Mux0~12sexpand0_dataout\ & \P2|S_Cout[0]~13_dataout\);

\Cout~3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(0) & \A_B_Cin~dataout\(1) & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\Cout~3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(0) & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\Cout~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Cout~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \P3|Mux0~38_dataout\ & \Cout$latch~6_dataout\);

\Cout$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Cout$latch~6_dataout\ & \Cout~3_dataout\);

\Cout$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1) & \Cout~3_dataout\);

\Cout$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Cout$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Cout$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~23_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(0) & \SEL_ULA~dataout\(2) & \A_B_Cin~dataout\(2) & \SEL_ULA~dataout\(1));

\S~23_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & NOT \SEL_ULA~dataout\(1) & \SEL_ULA~dataout\(0));

\S~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(0) & \SEL_ULA~dataout\(2) & NOT \A_B_Cin~dataout\(2) & \SEL_ULA~dataout\(1));

\S~23_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \A_B_Cin~dataout\(2) & NOT \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(0));

\S~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~23_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & \SEL_ULA~dataout\(2));

\S~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~30_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1) & NOT \SEL_ULA~dataout\(2) & NOT \SEL_ULA~dataout\(0));

\S~30_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(1) & NOT \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(0));

\S~30_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(1) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(2) & NOT \SEL_ULA~dataout\(0));

\S~30_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & \SEL_ULA~dataout\(1) & NOT \SEL_ULA~dataout\(2) & NOT \SEL_ULA~dataout\(0));

\S~30_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & NOT \A_B_Cin~dataout\(1) & NOT \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(0));

\S~30_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~30_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~30_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~30_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S~30_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~30_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\P3|Mux0~12sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1));

\P3|Mux0~38_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL_ULA~dataout\(2) & \SEL_ULA~dataout\(1));
\ALT_INV_A_B_Cin~dataout\(0) <= NOT \A_B_Cin~dataout\(0);
\ALT_INV_A_B_Cin~dataout\(1) <= NOT \A_B_Cin~dataout\(1);
\ALT_INV_A_B_Cin~dataout\(2) <= NOT \A_B_Cin~dataout\(2);
\ALT_INV_SEL_ULA~dataout\(0) <= NOT \SEL_ULA~dataout\(0);
\ALT_INV_SEL_ULA~dataout\(1) <= NOT \SEL_ULA~dataout\(1);
\ALT_INV_SEL_ULA~dataout\(2) <= NOT \SEL_ULA~dataout\(2);

-- Location: PIN_25
\SEL_ULA[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL_ULA(2),
	dataout => \SEL_ULA~dataout\(2));

-- Location: PIN_29
\SEL_ULA[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL_ULA(0),
	dataout => \SEL_ULA~dataout\(0));

-- Location: PIN_44
\SEL_ULA[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL_ULA(1),
	dataout => \SEL_ULA~dataout\(1));

-- Location: LC3
\P3|Mux0~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~20_pterm0_bus\,
	pterm1 => \P3|Mux0~20_pterm1_bus\,
	pterm2 => \P3|Mux0~20_pterm2_bus\,
	pterm3 => \P3|Mux0~20_pterm3_bus\,
	pterm4 => \P3|Mux0~20_pterm4_bus\,
	pterm5 => \P3|Mux0~20_pterm5_bus\,
	pxor => \P3|Mux0~20_pxor_bus\,
	pclk => \P3|Mux0~20_pclk_bus\,
	papre => \P3|Mux0~20_papre_bus\,
	paclr => \P3|Mux0~20_paclr_bus\,
	pena => \P3|Mux0~20_pena_bus\,
	dataout => \P3|Mux0~20_dataout\);

-- Location: LC7
\P3|Mux0~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~27_pterm0_bus\,
	pterm1 => \P3|Mux0~27_pterm1_bus\,
	pterm2 => \P3|Mux0~27_pterm2_bus\,
	pterm3 => \P3|Mux0~27_pterm3_bus\,
	pterm4 => \P3|Mux0~27_pterm4_bus\,
	pterm5 => \P3|Mux0~27_pterm5_bus\,
	pxor => \P3|Mux0~27_pxor_bus\,
	pclk => \P3|Mux0~27_pclk_bus\,
	papre => \P3|Mux0~27_papre_bus\,
	paclr => \P3|Mux0~27_paclr_bus\,
	pena => \P3|Mux0~27_pena_bus\,
	dataout => \P3|Mux0~27_dataout\);

-- Location: LC5
\P3|Mux0~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~22_pterm0_bus\,
	pterm1 => \P3|Mux0~22_pterm1_bus\,
	pterm2 => \P3|Mux0~22_pterm2_bus\,
	pterm3 => \P3|Mux0~22_pterm3_bus\,
	pterm4 => \P3|Mux0~22_pterm4_bus\,
	pterm5 => \P3|Mux0~22_pterm5_bus\,
	pxor => \P3|Mux0~22_pxor_bus\,
	pclk => \P3|Mux0~22_pclk_bus\,
	papre => \P3|Mux0~22_papre_bus\,
	paclr => \P3|Mux0~22_paclr_bus\,
	pena => \P3|Mux0~22_pena_bus\,
	dataout => \P3|Mux0~22_dataout\);

-- Location: LC8
\P3|Mux0~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~29_pterm0_bus\,
	pterm1 => \P3|Mux0~29_pterm1_bus\,
	pterm2 => \P3|Mux0~29_pterm2_bus\,
	pterm3 => \P3|Mux0~29_pterm3_bus\,
	pterm4 => \P3|Mux0~29_pterm4_bus\,
	pterm5 => \P3|Mux0~29_pterm5_bus\,
	pxor => \P3|Mux0~29_pxor_bus\,
	pclk => \P3|Mux0~29_pclk_bus\,
	papre => \P3|Mux0~29_papre_bus\,
	paclr => \P3|Mux0~29_paclr_bus\,
	pena => \P3|Mux0~29_pena_bus\,
	dataout => \P3|Mux0~29_dataout\);

-- Location: LC6
\P3|Mux0~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~24_pterm0_bus\,
	pterm1 => \P3|Mux0~24_pterm1_bus\,
	pterm2 => \P3|Mux0~24_pterm2_bus\,
	pterm3 => \P3|Mux0~24_pterm3_bus\,
	pterm4 => \P3|Mux0~24_pterm4_bus\,
	pterm5 => \P3|Mux0~24_pterm5_bus\,
	pxor => \P3|Mux0~24_pxor_bus\,
	pclk => \P3|Mux0~24_pclk_bus\,
	papre => \P3|Mux0~24_papre_bus\,
	paclr => \P3|Mux0~24_paclr_bus\,
	pena => \P3|Mux0~24_pena_bus\,
	dataout => \P3|Mux0~24_dataout\);

-- Location: LC10
\P3|Mux0~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~31_pterm0_bus\,
	pterm1 => \P3|Mux0~31_pterm1_bus\,
	pterm2 => \P3|Mux0~31_pterm2_bus\,
	pterm3 => \P3|Mux0~31_pterm3_bus\,
	pterm4 => \P3|Mux0~31_pterm4_bus\,
	pterm5 => \P3|Mux0~31_pterm5_bus\,
	pxor => \P3|Mux0~31_pxor_bus\,
	pclk => \P3|Mux0~31_pclk_bus\,
	papre => \P3|Mux0~31_papre_bus\,
	paclr => \P3|Mux0~31_paclr_bus\,
	pena => \P3|Mux0~31_pena_bus\,
	dataout => \P3|Mux0~31_dataout\);

-- Location: PIN_36
\A_B_Cin[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_B_Cin(1),
	dataout => \A_B_Cin~dataout\(1));

-- Location: PIN_33
\A_B_Cin[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_B_Cin(2),
	dataout => \A_B_Cin~dataout\(2));

-- Location: PIN_39
\A_B_Cin[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_B_Cin(0),
	dataout => \A_B_Cin~dataout\(0));

-- Location: LC11
\P1|Mux0~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P1|Mux0~3_pterm0_bus\,
	pterm1 => \P1|Mux0~3_pterm1_bus\,
	pterm2 => \P1|Mux0~3_pterm2_bus\,
	pterm3 => \P1|Mux0~3_pterm3_bus\,
	pterm4 => \P1|Mux0~3_pterm4_bus\,
	pterm5 => \P1|Mux0~3_pterm5_bus\,
	pxor => \P1|Mux0~3_pxor_bus\,
	pclk => \P1|Mux0~3_pclk_bus\,
	papre => \P1|Mux0~3_papre_bus\,
	paclr => \P1|Mux0~3_paclr_bus\,
	pena => \P1|Mux0~3_pena_bus\,
	dataout => \P1|Mux0~3_dataout\);

-- Location: LC12
\P3|Mux0~34\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~34_pterm0_bus\,
	pterm1 => \P3|Mux0~34_pterm1_bus\,
	pterm2 => \P3|Mux0~34_pterm2_bus\,
	pterm3 => \P3|Mux0~34_pterm3_bus\,
	pterm4 => \P3|Mux0~34_pterm4_bus\,
	pterm5 => \P3|Mux0~34_pterm5_bus\,
	pxor => \P3|Mux0~34_pxor_bus\,
	pclk => \P3|Mux0~34_pclk_bus\,
	papre => \P3|Mux0~34_papre_bus\,
	paclr => \P3|Mux0~34_paclr_bus\,
	pena => \P3|Mux0~34_pena_bus\,
	dataout => \P3|Mux0~34_dataout\);

-- Location: LC13
\P3|Mux0~37\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P3|Mux0~37_pterm0_bus\,
	pterm1 => \P3|Mux0~37_pterm1_bus\,
	pterm2 => \P3|Mux0~37_pterm2_bus\,
	pterm3 => \P3|Mux0~37_pterm3_bus\,
	pterm4 => \P3|Mux0~37_pterm4_bus\,
	pterm5 => \P3|Mux0~37_pterm5_bus\,
	pxor => \P3|Mux0~37_pxor_bus\,
	pclk => \P3|Mux0~37_pclk_bus\,
	papre => \P3|Mux0~37_papre_bus\,
	paclr => \P3|Mux0~37_paclr_bus\,
	pena => \P3|Mux0~37_pena_bus\,
	dataout => \P3|Mux0~37_dataout\);

-- Location: LC14
\P1|Mux1~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P1|Mux1~6_pterm0_bus\,
	pterm1 => \P1|Mux1~6_pterm1_bus\,
	pterm2 => \P1|Mux1~6_pterm2_bus\,
	pterm3 => \P1|Mux1~6_pterm3_bus\,
	pterm4 => \P1|Mux1~6_pterm4_bus\,
	pterm5 => \P1|Mux1~6_pterm5_bus\,
	pxor => \P1|Mux1~6_pxor_bus\,
	pclk => \P1|Mux1~6_pclk_bus\,
	papre => \P1|Mux1~6_papre_bus\,
	paclr => \P1|Mux1~6_paclr_bus\,
	pena => \P1|Mux1~6_pena_bus\,
	dataout => \P1|Mux1~6_dataout\);

-- Location: LC15
\P2|S_Cout[0]~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P2|S_Cout[0]~9_pterm0_bus\,
	pterm1 => \P2|S_Cout[0]~9_pterm1_bus\,
	pterm2 => \P2|S_Cout[0]~9_pterm2_bus\,
	pterm3 => \P2|S_Cout[0]~9_pterm3_bus\,
	pterm4 => \P2|S_Cout[0]~9_pterm4_bus\,
	pterm5 => \P2|S_Cout[0]~9_pterm5_bus\,
	pxor => \P2|S_Cout[0]~9_pxor_bus\,
	pclk => \P2|S_Cout[0]~9_pclk_bus\,
	papre => \P2|S_Cout[0]~9_papre_bus\,
	paclr => \P2|S_Cout[0]~9_paclr_bus\,
	pena => \P2|S_Cout[0]~9_pena_bus\,
	dataout => \P2|S_Cout[0]~9_dataout\);

-- Location: LC16
\P1|Mux0~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P1|Mux0~8_pterm0_bus\,
	pterm1 => \P1|Mux0~8_pterm1_bus\,
	pterm2 => \P1|Mux0~8_pterm2_bus\,
	pterm3 => \P1|Mux0~8_pterm3_bus\,
	pterm4 => \P1|Mux0~8_pterm4_bus\,
	pterm5 => \P1|Mux0~8_pterm5_bus\,
	pxor => \P1|Mux0~8_pxor_bus\,
	pclk => \P1|Mux0~8_pclk_bus\,
	papre => \P1|Mux0~8_papre_bus\,
	paclr => \P1|Mux0~8_paclr_bus\,
	pena => \P1|Mux0~8_pena_bus\,
	dataout => \P1|Mux0~8_dataout\);

-- Location: LC4
\P2|S_Cout[0]~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \P2|S_Cout[0]~13_pterm0_bus\,
	pterm1 => \P2|S_Cout[0]~13_pterm1_bus\,
	pterm2 => \P2|S_Cout[0]~13_pterm2_bus\,
	pterm3 => \P2|S_Cout[0]~13_pterm3_bus\,
	pterm4 => \P2|S_Cout[0]~13_pterm4_bus\,
	pterm5 => \P2|S_Cout[0]~13_pterm5_bus\,
	pxor => \P2|S_Cout[0]~13_pxor_bus\,
	pclk => \P2|S_Cout[0]~13_pclk_bus\,
	papre => \P2|S_Cout[0]~13_papre_bus\,
	paclr => \P2|S_Cout[0]~13_paclr_bus\,
	pena => \P2|S_Cout[0]~13_pena_bus\,
	dataout => \P2|S_Cout[0]~13_dataout\);

-- Location: SEXP3
\P3|Mux0~12sexpand0\ : max_sexp
PORT MAP (
	datain => \P3|Mux0~12sexpand0_datain_bus\,
	dataout => \P3|Mux0~12sexpand0_dataout\);

-- Location: LC9
\Cout~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Cout~3_pterm0_bus\,
	pterm1 => \Cout~3_pterm1_bus\,
	pterm2 => \Cout~3_pterm2_bus\,
	pterm3 => \Cout~3_pterm3_bus\,
	pterm4 => \Cout~3_pterm4_bus\,
	pterm5 => \Cout~3_pterm5_bus\,
	pxor => \Cout~3_pxor_bus\,
	pclk => \Cout~3_pclk_bus\,
	papre => \Cout~3_papre_bus\,
	paclr => \Cout~3_paclr_bus\,
	pena => \Cout~3_pena_bus\,
	dataout => \Cout~3_dataout\);

-- Location: SEXP29
\P3|Mux0~38\ : max_sexp
PORT MAP (
	datain => \P3|Mux0~38_datain_bus\,
	dataout => \P3|Mux0~38_dataout\);

-- Location: LC29
\Cout$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Cout$latch~6_pterm0_bus\,
	pterm1 => \Cout$latch~6_pterm1_bus\,
	pterm2 => \Cout$latch~6_pterm2_bus\,
	pterm3 => \Cout$latch~6_pterm3_bus\,
	pterm4 => \Cout$latch~6_pterm4_bus\,
	pterm5 => \Cout$latch~6_pterm5_bus\,
	pxor => \Cout$latch~6_pxor_bus\,
	pclk => \Cout$latch~6_pclk_bus\,
	papre => \Cout$latch~6_papre_bus\,
	paclr => \Cout$latch~6_paclr_bus\,
	pena => \Cout$latch~6_pena_bus\,
	dataout => \Cout$latch~6_dataout\);

-- Location: LC1
\S~30\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \S~30_pterm0_bus\,
	pterm1 => \S~30_pterm1_bus\,
	pterm2 => \S~30_pterm2_bus\,
	pterm3 => \S~30_pterm3_bus\,
	pterm4 => \S~30_pterm4_bus\,
	pterm5 => \S~30_pterm5_bus\,
	pxor => \S~30_pxor_bus\,
	pclk => \S~30_pclk_bus\,
	papre => \S~30_papre_bus\,
	paclr => \S~30_paclr_bus\,
	pena => \S~30_pena_bus\,
	pexpout => \S~30_pexpout\);

-- Location: LC2
\S~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \S~30_pexpout\,
	pterm0 => \S~23_pterm0_bus\,
	pterm1 => \S~23_pterm1_bus\,
	pterm2 => \S~23_pterm2_bus\,
	pterm3 => \S~23_pterm3_bus\,
	pterm4 => \S~23_pterm4_bus\,
	pterm5 => \S~23_pterm5_bus\,
	pxor => \S~23_pxor_bus\,
	pclk => \S~23_pclk_bus\,
	papre => \S~23_papre_bus\,
	paclr => \S~23_paclr_bus\,
	pena => \S~23_pena_bus\,
	dataout => \S~23_dataout\);

-- Location: PIN_6
\SAIDA_DECO[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~20_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(0));

-- Location: PIN_11
\SAIDA_DECO[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~27_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(1));

-- Location: PIN_8
\SAIDA_DECO[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~22_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(2));

-- Location: PIN_12
\SAIDA_DECO[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~29_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(3));

-- Location: PIN_9
\SAIDA_DECO[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~24_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(4));

-- Location: PIN_14
\SAIDA_DECO[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~31_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(5));

-- Location: PIN_16
\S_Cout[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P1|Mux0~3_dataout\,
	oe => VCC,
	padio => ww_S_Cout(1));

-- Location: PIN_17
\SAIDA_DECO[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~34_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(6));

-- Location: PIN_18
\SAIDA_DECO[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P3|Mux0~37_dataout\,
	oe => VCC,
	padio => ww_SAIDA_DECO(7));

-- Location: PIN_19
\S_Cout[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P1|Mux1~6_dataout\,
	oe => VCC,
	padio => ww_S_Cout(0));

-- Location: PIN_20
\S_Cout2[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P2|S_Cout[0]~9_dataout\,
	oe => VCC,
	padio => ww_S_Cout2(0));

-- Location: PIN_21
\S_Cout2[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \P1|Mux0~8_dataout\,
	oe => VCC,
	padio => ww_S_Cout2(1));

-- Location: PIN_27
\Cout~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Cout$latch~6_dataout\,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_5
\S~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S~23_dataout\,
	oe => VCC,
	padio => ww_S);
END structure;


