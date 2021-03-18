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

-- DATE "04/18/2013 22:24:23"

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

ENTITY 	Exercicio_1 IS
    PORT (
	E0 : IN std_logic;
	E1 : IN std_logic;
	E2 : IN std_logic;
	E3 : IN std_logic;
	S_Reitor : OUT STD.STANDARD.bit;
	S_VReitor : OUT STD.STANDARD.bit;
	S_Assessor : OUT STD.STANDARD.bit;
	S_Secretaria : OUT STD.STANDARD.bit
	);
END Exercicio_1;

-- Design Ports Information
-- E0	=>  Location: PIN_24
-- E1	=>  Location: PIN_21
-- E2	=>  Location: PIN_20
-- E3	=>  Location: PIN_12
-- S_Assessor	=>  Location: PIN_5
-- S_Secretaria	=>  Location: PIN_8
-- S_Reitor	=>  Location: PIN_6
-- S_VReitor	=>  Location: PIN_11

ARCHITECTURE structure OF Exercicio_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_E0 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_E3 : std_logic;
SIGNAL ww_S_Reitor : std_logic;
SIGNAL ww_S_VReitor : std_logic;
SIGNAL ww_S_Assessor : std_logic;
SIGNAL ww_S_Secretaria : std_logic;
SIGNAL \S_Assessor$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Reitor$latch~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_VReitor$latch~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Assessor~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Secretaria~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \E1~dataout\ : std_logic;
SIGNAL \E2~dataout\ : std_logic;
SIGNAL \E0~dataout\ : std_logic;
SIGNAL \S_Assessor~7_pexpout\ : std_logic;
SIGNAL \E3~dataout\ : std_logic;
SIGNAL \S_Assessor$latch~6_dataout\ : std_logic;
SIGNAL \S_Secretaria~6_pexpout\ : std_logic;
SIGNAL \S_Secretaria$latch~6_dataout\ : std_logic;
SIGNAL \S_Reitor$latch~8_dataout\ : std_logic;
SIGNAL \S_VReitor$latch~10_pexpout\ : std_logic;
SIGNAL \S_VReitor$latch~6_dataout\ : std_logic;
SIGNAL \ALT_INV_E0~dataout\ : std_logic;
SIGNAL \ALT_INV_E1~dataout\ : std_logic;
SIGNAL \ALT_INV_E2~dataout\ : std_logic;

BEGIN

ww_E0 <= E0;
ww_E1 <= E1;
ww_E2 <= E2;
ww_E3 <= E3;
S_Reitor <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S_Reitor);
S_VReitor <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S_VReitor);
S_Assessor <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S_Assessor);
S_Secretaria <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S_Secretaria);

\S_Assessor$latch~6_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E3~dataout\ & \S_Assessor$latch~6_dataout\);

\S_Assessor$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E1~dataout\ & \S_Assessor$latch~6_dataout\);

\S_Assessor$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E2~dataout\ & \S_Assessor$latch~6_dataout\);

\S_Assessor$latch~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor$latch~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E0~dataout\ & \S_Assessor$latch~6_dataout\);

\S_Assessor$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Assessor$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E2~dataout\ & \S_Secretaria$latch~6_dataout\);

\S_Secretaria$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E1~dataout\ & \S_Secretaria$latch~6_dataout\);

\S_Secretaria$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E3~dataout\ & NOT \E2~dataout\ & \S_Secretaria$latch~6_dataout\);

\S_Secretaria$latch~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E0~dataout\ & \S_Secretaria$latch~6_dataout\);

\S_Secretaria$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Secretaria$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E1~dataout\ & \S_Reitor$latch~8_dataout\);

\S_Reitor$latch~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E0~dataout\);

\S_Reitor$latch~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E2~dataout\ & \S_Reitor$latch~8_dataout\);

\S_Reitor$latch~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E3~dataout\ & \S_Reitor$latch~8_dataout\);

\S_Reitor$latch~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Reitor$latch~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Reitor$latch~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~6_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E2~dataout\ & \S_VReitor$latch~6_dataout\);

\S_VReitor$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E1~dataout\ & \S_VReitor$latch~6_dataout\);

\S_VReitor$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E3~dataout\ & \S_VReitor$latch~6_dataout\);

\S_VReitor$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E2~dataout\ & \E1~dataout\);

\S_VReitor$latch~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E0~dataout\ & \E1~dataout\);

\S_VReitor$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_VReitor$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E0~dataout\ & \S_VReitor$latch~6_dataout\);

\S_VReitor$latch~10_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_VReitor$latch~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_VReitor$latch~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E0~dataout\ & \E2~dataout\ & NOT \E1~dataout\);

\S_Assessor~7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Assessor~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Assessor~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \E0~dataout\ & \E3~dataout\ & NOT \E2~dataout\ & NOT \E1~dataout\);

\S_Secretaria~6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Secretaria~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Secretaria~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_E0~dataout\ <= NOT \E0~dataout\;
\ALT_INV_E1~dataout\ <= NOT \E1~dataout\;
\ALT_INV_E2~dataout\ <= NOT \E2~dataout\;

-- Location: PIN_21
\E1~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E1,
	dataout => \E1~dataout\);

-- Location: PIN_20
\E2~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E2,
	dataout => \E2~dataout\);

-- Location: PIN_24
\E0~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E0,
	dataout => \E0~dataout\);

-- Location: LC1
\S_Assessor~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_Assessor~7_pterm0_bus\,
	pterm1 => \S_Assessor~7_pterm1_bus\,
	pterm2 => \S_Assessor~7_pterm2_bus\,
	pterm3 => \S_Assessor~7_pterm3_bus\,
	pterm4 => \S_Assessor~7_pterm4_bus\,
	pterm5 => \S_Assessor~7_pterm5_bus\,
	pxor => \S_Assessor~7_pxor_bus\,
	pclk => \S_Assessor~7_pclk_bus\,
	papre => \S_Assessor~7_papre_bus\,
	paclr => \S_Assessor~7_paclr_bus\,
	pena => \S_Assessor~7_pena_bus\,
	pexpout => \S_Assessor~7_pexpout\);

-- Location: PIN_12
\E3~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E3,
	dataout => \E3~dataout\);

-- Location: LC2
\S_Assessor$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \S_Assessor~7_pexpout\,
	pterm0 => \S_Assessor$latch~6_pterm0_bus\,
	pterm1 => \S_Assessor$latch~6_pterm1_bus\,
	pterm2 => \S_Assessor$latch~6_pterm2_bus\,
	pterm3 => \S_Assessor$latch~6_pterm3_bus\,
	pterm4 => \S_Assessor$latch~6_pterm4_bus\,
	pterm5 => \S_Assessor$latch~6_pterm5_bus\,
	pxor => \S_Assessor$latch~6_pxor_bus\,
	pclk => \S_Assessor$latch~6_pclk_bus\,
	papre => \S_Assessor$latch~6_papre_bus\,
	paclr => \S_Assessor$latch~6_paclr_bus\,
	pena => \S_Assessor$latch~6_pena_bus\,
	dataout => \S_Assessor$latch~6_dataout\);

-- Location: LC4
\S_Secretaria~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_Secretaria~6_pterm0_bus\,
	pterm1 => \S_Secretaria~6_pterm1_bus\,
	pterm2 => \S_Secretaria~6_pterm2_bus\,
	pterm3 => \S_Secretaria~6_pterm3_bus\,
	pterm4 => \S_Secretaria~6_pterm4_bus\,
	pterm5 => \S_Secretaria~6_pterm5_bus\,
	pxor => \S_Secretaria~6_pxor_bus\,
	pclk => \S_Secretaria~6_pclk_bus\,
	papre => \S_Secretaria~6_papre_bus\,
	paclr => \S_Secretaria~6_paclr_bus\,
	pena => \S_Secretaria~6_pena_bus\,
	pexpout => \S_Secretaria~6_pexpout\);

-- Location: LC5
\S_Secretaria$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \S_Secretaria~6_pexpout\,
	pterm0 => \S_Secretaria$latch~6_pterm0_bus\,
	pterm1 => \S_Secretaria$latch~6_pterm1_bus\,
	pterm2 => \S_Secretaria$latch~6_pterm2_bus\,
	pterm3 => \S_Secretaria$latch~6_pterm3_bus\,
	pterm4 => \S_Secretaria$latch~6_pterm4_bus\,
	pterm5 => \S_Secretaria$latch~6_pterm5_bus\,
	pxor => \S_Secretaria$latch~6_pxor_bus\,
	pclk => \S_Secretaria$latch~6_pclk_bus\,
	papre => \S_Secretaria$latch~6_papre_bus\,
	paclr => \S_Secretaria$latch~6_paclr_bus\,
	pena => \S_Secretaria$latch~6_pena_bus\,
	dataout => \S_Secretaria$latch~6_dataout\);

-- Location: LC3
\S_Reitor$latch~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_Reitor$latch~8_pterm0_bus\,
	pterm1 => \S_Reitor$latch~8_pterm1_bus\,
	pterm2 => \S_Reitor$latch~8_pterm2_bus\,
	pterm3 => \S_Reitor$latch~8_pterm3_bus\,
	pterm4 => \S_Reitor$latch~8_pterm4_bus\,
	pterm5 => \S_Reitor$latch~8_pterm5_bus\,
	pxor => \S_Reitor$latch~8_pxor_bus\,
	pclk => \S_Reitor$latch~8_pclk_bus\,
	papre => \S_Reitor$latch~8_papre_bus\,
	paclr => \S_Reitor$latch~8_paclr_bus\,
	pena => \S_Reitor$latch~8_pena_bus\,
	dataout => \S_Reitor$latch~8_dataout\);

-- Location: LC6
\S_VReitor$latch~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_VReitor$latch~10_pterm0_bus\,
	pterm1 => \S_VReitor$latch~10_pterm1_bus\,
	pterm2 => \S_VReitor$latch~10_pterm2_bus\,
	pterm3 => \S_VReitor$latch~10_pterm3_bus\,
	pterm4 => \S_VReitor$latch~10_pterm4_bus\,
	pterm5 => \S_VReitor$latch~10_pterm5_bus\,
	pxor => \S_VReitor$latch~10_pxor_bus\,
	pclk => \S_VReitor$latch~10_pclk_bus\,
	papre => \S_VReitor$latch~10_papre_bus\,
	paclr => \S_VReitor$latch~10_paclr_bus\,
	pena => \S_VReitor$latch~10_pena_bus\,
	pexpout => \S_VReitor$latch~10_pexpout\);

-- Location: LC7
\S_VReitor$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \S_VReitor$latch~10_pexpout\,
	pterm0 => \S_VReitor$latch~6_pterm0_bus\,
	pterm1 => \S_VReitor$latch~6_pterm1_bus\,
	pterm2 => \S_VReitor$latch~6_pterm2_bus\,
	pterm3 => \S_VReitor$latch~6_pterm3_bus\,
	pterm4 => \S_VReitor$latch~6_pterm4_bus\,
	pterm5 => \S_VReitor$latch~6_pterm5_bus\,
	pxor => \S_VReitor$latch~6_pxor_bus\,
	pclk => \S_VReitor$latch~6_pclk_bus\,
	papre => \S_VReitor$latch~6_papre_bus\,
	paclr => \S_VReitor$latch~6_paclr_bus\,
	pena => \S_VReitor$latch~6_pena_bus\,
	dataout => \S_VReitor$latch~6_dataout\);

-- Location: PIN_5
\S_Assessor~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_Assessor$latch~6_dataout\,
	oe => VCC,
	padio => ww_S_Assessor);

-- Location: PIN_8
\S_Secretaria~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_Secretaria$latch~6_dataout\,
	oe => VCC,
	padio => ww_S_Secretaria);

-- Location: PIN_6
\S_Reitor~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_Reitor$latch~8_dataout\,
	oe => VCC,
	padio => ww_S_Reitor);

-- Location: PIN_11
\S_VReitor~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_VReitor$latch~6_dataout\,
	oe => VCC,
	padio => ww_S_VReitor);
END structure;


