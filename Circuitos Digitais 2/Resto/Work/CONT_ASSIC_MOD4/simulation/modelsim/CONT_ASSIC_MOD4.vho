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

-- DATE "05/20/2013 08:34:46"

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

ENTITY 	CONT_ASSIC_MOD4 IS
    PORT (
	CLR : IN std_logic;
	CLK : IN std_logic;
	ES : IN std_logic;
	Q_OUT : BUFFER std_logic_vector(1 DOWNTO 0);
	QB_OUT : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END CONT_ASSIC_MOD4;

-- Design Ports Information
-- CLR	=>  Location: PIN_1
-- CLK	=>  Location: PIN_43
-- ES	=>  Location: PIN_24
-- Q_OUT[1]	=>  Location: PIN_4
-- Q_OUT[0]	=>  Location: PIN_6
-- QB_OUT[1]	=>  Location: PIN_5
-- QB_OUT[0]	=>  Location: PIN_8

ARCHITECTURE structure OF CONT_ASSIC_MOD4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ES : std_logic;
SIGNAL ww_Q_OUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_QB_OUT : std_logic_vector(1 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QV_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C1|QBARV_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QV_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \FFT_C2|QBARV_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \CLR~dataout\ : std_logic;
SIGNAL \ES~dataout\ : std_logic;
SIGNAL \FFT_C1|QV~dataout\ : std_logic;
SIGNAL \FFT_C2|QV~dataout\ : std_logic;
SIGNAL \FFT_C1|QBARV~dataout\ : std_logic;
SIGNAL \FFT_C2|QBARV~dataout\ : std_logic;
SIGNAL \FFT_C1|ALT_INV_QV~dataout\ : std_logic;
SIGNAL \FFT_C2|ALT_INV_QV~dataout\ : std_logic;
SIGNAL \FFT_C2|ALT_INV_QBARV~dataout\ : std_logic;
SIGNAL \ALT_INV_CLR~dataout\ : std_logic;
SIGNAL \ALT_INV_CLK~dataout\ : std_logic;
SIGNAL \ALT_INV_ES~dataout\ : std_logic;

BEGIN

ww_CLR <= CLR;
ww_CLK <= CLK;
ww_ES <= ES;
Q_OUT <= ww_Q_OUT;
QB_OUT <= ww_QB_OUT;

\FFT_C1|QV_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ES~dataout\);

\FFT_C1|QV_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QV_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \FFT_C1|QV~dataout\);

\FFT_C1|QBARV_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ES~dataout\);

\FFT_C1|QBARV_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C1|QBARV_papre_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLR~dataout\);

\FFT_C2|QV_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ES~dataout\);

\FFT_C2|QV_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \FFT_C1|QV~dataout\);

\FFT_C2|QV_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\FFT_C2|QV_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QV_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ES~dataout\ & NOT \FFT_C2|QV~dataout\);

\FFT_C2|QBARV_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \FFT_C2|QBARV~dataout\ & NOT \ES~dataout\);

\FFT_C2|QBARV_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \FFT_C1|QV~dataout\);

\FFT_C2|QBARV_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\FFT_C2|QBARV_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\FFT_C2|QBARV_papre_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLR~dataout\);
\FFT_C1|ALT_INV_QV~dataout\ <= NOT \FFT_C1|QV~dataout\;
\FFT_C2|ALT_INV_QV~dataout\ <= NOT \FFT_C2|QV~dataout\;
\FFT_C2|ALT_INV_QBARV~dataout\ <= NOT \FFT_C2|QBARV~dataout\;
\ALT_INV_CLR~dataout\ <= NOT \CLR~dataout\;
\ALT_INV_CLK~dataout\ <= NOT \CLK~dataout\;
\ALT_INV_ES~dataout\ <= NOT \ES~dataout\;

-- Location: PIN_43
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	dataout => \CLK~dataout\);

-- Location: PIN_1
\CLR~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLR,
	dataout => \CLR~dataout\);

-- Location: PIN_24
\ES~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ES,
	dataout => \ES~dataout\);

-- Location: LC1
\FFT_C1|QV\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~dataout\,
	aclr => \ALT_INV_CLR~dataout\,
	pterm0 => \FFT_C1|QV_pterm0_bus\,
	pterm1 => \FFT_C1|QV_pterm1_bus\,
	pterm2 => \FFT_C1|QV_pterm2_bus\,
	pterm3 => \FFT_C1|QV_pterm3_bus\,
	pterm4 => \FFT_C1|QV_pterm4_bus\,
	pterm5 => \FFT_C1|QV_pterm5_bus\,
	pxor => \FFT_C1|QV_pxor_bus\,
	pclk => \FFT_C1|QV_pclk_bus\,
	papre => \FFT_C1|QV_papre_bus\,
	paclr => \FFT_C1|QV_paclr_bus\,
	pena => \FFT_C1|QV_pena_bus\,
	dataout => \FFT_C1|QV~dataout\);

-- Location: LC3
\FFT_C2|QV\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLR~dataout\,
	pterm0 => \FFT_C2|QV_pterm0_bus\,
	pterm1 => \FFT_C2|QV_pterm1_bus\,
	pterm2 => \FFT_C2|QV_pterm2_bus\,
	pterm3 => \FFT_C2|QV_pterm3_bus\,
	pterm4 => \FFT_C2|QV_pterm4_bus\,
	pterm5 => \FFT_C2|QV_pterm5_bus\,
	pxor => \FFT_C2|QV_pxor_bus\,
	pclk => \FFT_C2|QV_pclk_bus\,
	papre => \FFT_C2|QV_papre_bus\,
	paclr => \FFT_C2|QV_paclr_bus\,
	pena => \FFT_C2|QV_pena_bus\,
	dataout => \FFT_C2|QV~dataout\);

-- Location: LC2
\FFT_C1|QBARV\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~dataout\,
	pterm0 => \FFT_C1|QBARV_pterm0_bus\,
	pterm1 => \FFT_C1|QBARV_pterm1_bus\,
	pterm2 => \FFT_C1|QBARV_pterm2_bus\,
	pterm3 => \FFT_C1|QBARV_pterm3_bus\,
	pterm4 => \FFT_C1|QBARV_pterm4_bus\,
	pterm5 => \FFT_C1|QBARV_pterm5_bus\,
	pxor => \FFT_C1|QBARV_pxor_bus\,
	pclk => \FFT_C1|QBARV_pclk_bus\,
	papre => \FFT_C1|QBARV_papre_bus\,
	paclr => \FFT_C1|QBARV_paclr_bus\,
	pena => \FFT_C1|QBARV_pena_bus\,
	dataout => \FFT_C1|QBARV~dataout\);

-- Location: LC5
\FFT_C2|QBARV\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \FFT_C2|QBARV_pterm0_bus\,
	pterm1 => \FFT_C2|QBARV_pterm1_bus\,
	pterm2 => \FFT_C2|QBARV_pterm2_bus\,
	pterm3 => \FFT_C2|QBARV_pterm3_bus\,
	pterm4 => \FFT_C2|QBARV_pterm4_bus\,
	pterm5 => \FFT_C2|QBARV_pterm5_bus\,
	pxor => \FFT_C2|QBARV_pxor_bus\,
	pclk => \FFT_C2|QBARV_pclk_bus\,
	papre => \FFT_C2|QBARV_papre_bus\,
	paclr => \FFT_C2|QBARV_paclr_bus\,
	pena => \FFT_C2|QBARV_pena_bus\,
	dataout => \FFT_C2|QBARV~dataout\);

-- Location: PIN_4
\Q_OUT[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \FFT_C1|QV~dataout\,
	oe => VCC,
	padio => ww_Q_OUT(1));

-- Location: PIN_6
\Q_OUT[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \FFT_C2|QV~dataout\,
	oe => VCC,
	padio => ww_Q_OUT(0));

-- Location: PIN_5
\QB_OUT[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \FFT_C1|QBARV~dataout\,
	oe => VCC,
	padio => ww_QB_OUT(1));

-- Location: PIN_8
\QB_OUT[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \FFT_C2|QBARV~dataout\,
	oe => VCC,
	padio => ww_QB_OUT(0));
END structure;


