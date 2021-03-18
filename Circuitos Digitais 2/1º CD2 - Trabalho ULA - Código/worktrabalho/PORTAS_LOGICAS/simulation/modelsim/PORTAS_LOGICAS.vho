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

-- DATE "05/13/2013 23:15:12"

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

ENTITY 	PORTAS_LOGICAS IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	E_PL : IN STD.STANDARD.bit_vector(5 DOWNTO 0);
	S : OUT STD.STANDARD.bit_vector(5 DOWNTO 0)
	);
END PORTAS_LOGICAS;

-- Design Ports Information
-- A	=>  Location: PIN_24
-- B	=>  Location: PIN_21
-- E_PL[0]	=>  Location: PIN_20
-- E_PL[1]	=>  Location: PIN_33
-- E_PL[2]	=>  Location: PIN_36
-- E_PL[3]	=>  Location: PIN_44
-- E_PL[4]	=>  Location: PIN_25
-- E_PL[5]	=>  Location: PIN_19
-- S[0]	=>  Location: PIN_4
-- S[1]	=>  Location: PIN_5
-- S[2]	=>  Location: PIN_6
-- S[3]	=>  Location: PIN_8
-- S[4]	=>  Location: PIN_9
-- S[5]	=>  Location: PIN_11

ARCHITECTURE structure OF PORTAS_LOGICAS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_E_PL : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(5 DOWNTO 0);
SIGNAL \S~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[0]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~11sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[1]~12sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~13sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[2]~14sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[3]~15sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[4]~17sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S[5]~18sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \A~dataout\ : std_logic;
SIGNAL \B~dataout\ : std_logic;
SIGNAL \S[0]$latch~6_dataout\ : std_logic;
SIGNAL \S~11sexpand0_dataout\ : std_logic;
SIGNAL \S[1]~12sexpand0_dataout\ : std_logic;
SIGNAL \S[1]$latch~6_dataout\ : std_logic;
SIGNAL \S~13sexpand1_dataout\ : std_logic;
SIGNAL \S[2]~14sexpand0_dataout\ : std_logic;
SIGNAL \S[2]$latch~6_dataout\ : std_logic;
SIGNAL \S[3]~15sexpand0_dataout\ : std_logic;
SIGNAL \S[3]$latch~6_dataout\ : std_logic;
SIGNAL \S~16_dataout\ : std_logic;
SIGNAL \S[4]~17sexpand0_dataout\ : std_logic;
SIGNAL \S[4]$latch~6_dataout\ : std_logic;
SIGNAL \S[5]~18sexpand0_dataout\ : std_logic;
SIGNAL \S[5]$latch~6_dataout\ : std_logic;
SIGNAL \E_PL~dataout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_S~16_dataout\ : std_logic;
SIGNAL \ALT_INV_A~dataout\ : std_logic;
SIGNAL \ALT_INV_B~dataout\ : std_logic;
SIGNAL \ALT_INV_E_PL~dataout\ : std_logic_vector(5 DOWNTO 1);

BEGIN

ww_A <= A;
ww_B <= B;
ww_E_PL <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(E_PL);
S <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_S);

\S~16_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \B~dataout\);

\S~16_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A~dataout\);

\S~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[0]$latch~6_dataout\ & NOT \E_PL~dataout\(5));

\S[0]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \B~dataout\ & \A~dataout\ & \E_PL~dataout\(5));

\S[0]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \B~dataout\ & \A~dataout\ & \S[0]$latch~6_dataout\);

\S[0]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[0]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[0]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[1]~12sexpand0_dataout\ & \S[1]$latch~6_dataout\);

\S[1]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S~11sexpand0_dataout\ & \S[1]$latch~6_dataout\);

\S[1]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & \E_PL~dataout\(4) & \S~11sexpand0_dataout\);

\S[1]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[1]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[1]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[2]~14sexpand0_dataout\ & \S[2]$latch~6_dataout\);

\S[2]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S~13sexpand1_dataout\ & \S[2]$latch~6_dataout\);

\S[2]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & \E_PL~dataout\(3) & \S~13sexpand1_dataout\);

\S[2]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[2]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[2]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[3]~15sexpand0_dataout\ & \S[3]$latch~6_dataout\);

\S[3]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \B~dataout\ & NOT \A~dataout\ & \S[3]$latch~6_dataout\);

\S[3]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & \E_PL~dataout\(2) & NOT \B~dataout\ & NOT \A~dataout\);

\S[3]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[3]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[3]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[4]~17sexpand0_dataout\ & \S[4]$latch~6_dataout\);

\S[4]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[4]$latch~6_dataout\ & \S~16_dataout\);

\S[4]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & NOT \E_PL~dataout\(2) & \E_PL~dataout\(1) & \S~16_dataout\);

\S[4]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[4]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[4]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[5]~18sexpand0_dataout\ & \S[5]$latch~6_dataout\);

\S[5]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \S[5]$latch~6_dataout\ & NOT \S~16_dataout\);

\S[5]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & NOT \E_PL~dataout\(2) & NOT \E_PL~dataout\(1) & \E_PL~dataout\(0) & NOT \S~16_dataout\);

\S[5]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S[5]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S[5]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~11sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \B~dataout\ & \A~dataout\);

\S[1]~12sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & \E_PL~dataout\(4));

\S~13sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \B~dataout\ & NOT \A~dataout\);

\S[2]~14sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & \E_PL~dataout\(3));

\S[3]~15sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & \E_PL~dataout\(2));

\S[4]~17sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & NOT \E_PL~dataout\(2) & \E_PL~dataout\(1));

\S[5]~18sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E_PL~dataout\(5) & NOT \E_PL~dataout\(4) & NOT \E_PL~dataout\(3) & NOT \E_PL~dataout\(2) & NOT \E_PL~dataout\(1) & \E_PL~dataout\(0));
\ALT_INV_S~16_dataout\ <= NOT \S~16_dataout\;
\ALT_INV_A~dataout\ <= NOT \A~dataout\;
\ALT_INV_B~dataout\ <= NOT \B~dataout\;
\ALT_INV_E_PL~dataout\(1) <= NOT \E_PL~dataout\(1);
\ALT_INV_E_PL~dataout\(2) <= NOT \E_PL~dataout\(2);
\ALT_INV_E_PL~dataout\(3) <= NOT \E_PL~dataout\(3);
\ALT_INV_E_PL~dataout\(4) <= NOT \E_PL~dataout\(4);
\ALT_INV_E_PL~dataout\(5) <= NOT \E_PL~dataout\(5);

-- Location: PIN_19
\E_PL[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(5),
	dataout => \E_PL~dataout\(5));

-- Location: PIN_24
\A~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	dataout => \A~dataout\);

-- Location: PIN_21
\B~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	dataout => \B~dataout\);

-- Location: LC1
\S[0]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[0]$latch~6_pterm0_bus\,
	pterm1 => \S[0]$latch~6_pterm1_bus\,
	pterm2 => \S[0]$latch~6_pterm2_bus\,
	pterm3 => \S[0]$latch~6_pterm3_bus\,
	pterm4 => \S[0]$latch~6_pterm4_bus\,
	pterm5 => \S[0]$latch~6_pterm5_bus\,
	pxor => \S[0]$latch~6_pxor_bus\,
	pclk => \S[0]$latch~6_pclk_bus\,
	papre => \S[0]$latch~6_papre_bus\,
	paclr => \S[0]$latch~6_paclr_bus\,
	pena => \S[0]$latch~6_pena_bus\,
	dataout => \S[0]$latch~6_dataout\);

-- Location: SEXP1
\S~11sexpand0\ : max_sexp
PORT MAP (
	datain => \S~11sexpand0_datain_bus\,
	dataout => \S~11sexpand0_dataout\);

-- Location: PIN_25
\E_PL[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(4),
	dataout => \E_PL~dataout\(4));

-- Location: SEXP2
\S[1]~12sexpand0\ : max_sexp
PORT MAP (
	datain => \S[1]~12sexpand0_datain_bus\,
	dataout => \S[1]~12sexpand0_dataout\);

-- Location: LC2
\S[1]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[1]$latch~6_pterm0_bus\,
	pterm1 => \S[1]$latch~6_pterm1_bus\,
	pterm2 => \S[1]$latch~6_pterm2_bus\,
	pterm3 => \S[1]$latch~6_pterm3_bus\,
	pterm4 => \S[1]$latch~6_pterm4_bus\,
	pterm5 => \S[1]$latch~6_pterm5_bus\,
	pxor => \S[1]$latch~6_pxor_bus\,
	pclk => \S[1]$latch~6_pclk_bus\,
	papre => \S[1]$latch~6_papre_bus\,
	paclr => \S[1]$latch~6_paclr_bus\,
	pena => \S[1]$latch~6_pena_bus\,
	dataout => \S[1]$latch~6_dataout\);

-- Location: SEXP3
\S~13sexpand1\ : max_sexp
PORT MAP (
	datain => \S~13sexpand1_datain_bus\,
	dataout => \S~13sexpand1_dataout\);

-- Location: PIN_44
\E_PL[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(3),
	dataout => \E_PL~dataout\(3));

-- Location: SEXP4
\S[2]~14sexpand0\ : max_sexp
PORT MAP (
	datain => \S[2]~14sexpand0_datain_bus\,
	dataout => \S[2]~14sexpand0_dataout\);

-- Location: LC3
\S[2]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[2]$latch~6_pterm0_bus\,
	pterm1 => \S[2]$latch~6_pterm1_bus\,
	pterm2 => \S[2]$latch~6_pterm2_bus\,
	pterm3 => \S[2]$latch~6_pterm3_bus\,
	pterm4 => \S[2]$latch~6_pterm4_bus\,
	pterm5 => \S[2]$latch~6_pterm5_bus\,
	pxor => \S[2]$latch~6_pxor_bus\,
	pclk => \S[2]$latch~6_pclk_bus\,
	papre => \S[2]$latch~6_papre_bus\,
	paclr => \S[2]$latch~6_paclr_bus\,
	pena => \S[2]$latch~6_pena_bus\,
	dataout => \S[2]$latch~6_dataout\);

-- Location: SEXP5
\S[3]~15sexpand0\ : max_sexp
PORT MAP (
	datain => \S[3]~15sexpand0_datain_bus\,
	dataout => \S[3]~15sexpand0_dataout\);

-- Location: PIN_36
\E_PL[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(2),
	dataout => \E_PL~dataout\(2));

-- Location: LC5
\S[3]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[3]$latch~6_pterm0_bus\,
	pterm1 => \S[3]$latch~6_pterm1_bus\,
	pterm2 => \S[3]$latch~6_pterm2_bus\,
	pterm3 => \S[3]$latch~6_pterm3_bus\,
	pterm4 => \S[3]$latch~6_pterm4_bus\,
	pterm5 => \S[3]$latch~6_pterm5_bus\,
	pxor => \S[3]$latch~6_pxor_bus\,
	pclk => \S[3]$latch~6_pclk_bus\,
	papre => \S[3]$latch~6_papre_bus\,
	paclr => \S[3]$latch~6_paclr_bus\,
	pena => \S[3]$latch~6_pena_bus\,
	dataout => \S[3]$latch~6_dataout\);

-- Location: LC4
\S~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S~16_pterm0_bus\,
	pterm1 => \S~16_pterm1_bus\,
	pterm2 => \S~16_pterm2_bus\,
	pterm3 => \S~16_pterm3_bus\,
	pterm4 => \S~16_pterm4_bus\,
	pterm5 => \S~16_pterm5_bus\,
	pxor => \S~16_pxor_bus\,
	pclk => \S~16_pclk_bus\,
	papre => \S~16_papre_bus\,
	paclr => \S~16_paclr_bus\,
	pena => \S~16_pena_bus\,
	dataout => \S~16_dataout\);

-- Location: PIN_33
\E_PL[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(1),
	dataout => \E_PL~dataout\(1));

-- Location: SEXP6
\S[4]~17sexpand0\ : max_sexp
PORT MAP (
	datain => \S[4]~17sexpand0_datain_bus\,
	dataout => \S[4]~17sexpand0_dataout\);

-- Location: LC6
\S[4]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[4]$latch~6_pterm0_bus\,
	pterm1 => \S[4]$latch~6_pterm1_bus\,
	pterm2 => \S[4]$latch~6_pterm2_bus\,
	pterm3 => \S[4]$latch~6_pterm3_bus\,
	pterm4 => \S[4]$latch~6_pterm4_bus\,
	pterm5 => \S[4]$latch~6_pterm5_bus\,
	pxor => \S[4]$latch~6_pxor_bus\,
	pclk => \S[4]$latch~6_pclk_bus\,
	papre => \S[4]$latch~6_papre_bus\,
	paclr => \S[4]$latch~6_paclr_bus\,
	pena => \S[4]$latch~6_pena_bus\,
	dataout => \S[4]$latch~6_dataout\);

-- Location: PIN_20
\E_PL[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E_PL(0),
	dataout => \E_PL~dataout\(0));

-- Location: SEXP7
\S[5]~18sexpand0\ : max_sexp
PORT MAP (
	datain => \S[5]~18sexpand0_datain_bus\,
	dataout => \S[5]~18sexpand0_dataout\);

-- Location: LC7
\S[5]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S[5]$latch~6_pterm0_bus\,
	pterm1 => \S[5]$latch~6_pterm1_bus\,
	pterm2 => \S[5]$latch~6_pterm2_bus\,
	pterm3 => \S[5]$latch~6_pterm3_bus\,
	pterm4 => \S[5]$latch~6_pterm4_bus\,
	pterm5 => \S[5]$latch~6_pterm5_bus\,
	pxor => \S[5]$latch~6_pxor_bus\,
	pclk => \S[5]$latch~6_pclk_bus\,
	papre => \S[5]$latch~6_papre_bus\,
	paclr => \S[5]$latch~6_paclr_bus\,
	pena => \S[5]$latch~6_pena_bus\,
	dataout => \S[5]$latch~6_dataout\);

-- Location: PIN_4
\S[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[0]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_5
\S[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[1]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_6
\S[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[2]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_8
\S[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[3]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_9
\S[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[4]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_11
\S[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S[5]$latch~6_dataout\,
	oe => VCC,
	padio => ww_S(5));
END structure;


