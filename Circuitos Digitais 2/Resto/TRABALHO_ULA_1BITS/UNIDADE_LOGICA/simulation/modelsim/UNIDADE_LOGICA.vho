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

-- DATE "05/02/2013 16:30:42"

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

ENTITY 	UNIDADE_LOGICA IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	SEL : IN std_logic;
	Y : OUT STD.STANDARD.bit
	);
END UNIDADE_LOGICA;

-- Design Ports Information
-- A	=>  Location: PIN_24
-- B	=>  Location: PIN_21
-- SEL	=>  Location: PIN_20
-- Y	=>  Location: PIN_4

ARCHITECTURE structure OF UNIDADE_LOGICA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_SEL : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \Y~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Y~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \A~dataout\ : std_logic;
SIGNAL \B~dataout\ : std_logic;
SIGNAL \SEL~dataout\ : std_logic;
SIGNAL \Y~4_dataout\ : std_logic;
SIGNAL \ALT_INV_A~dataout\ : std_logic;
SIGNAL \ALT_INV_B~dataout\ : std_logic;
SIGNAL \ALT_INV_SEL~dataout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_SEL <= SEL;
Y <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Y);

\Y~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \B~dataout\ & NOT \A~dataout\);

\Y~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL~dataout\ & NOT \A~dataout\);

\Y~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Y~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Y~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_A~dataout\ <= NOT \A~dataout\;
\ALT_INV_B~dataout\ <= NOT \B~dataout\;
\ALT_INV_SEL~dataout\ <= NOT \SEL~dataout\;

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

-- Location: PIN_20
\SEL~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL,
	dataout => \SEL~dataout\);

-- Location: LC1
\Y~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Y~4_pterm0_bus\,
	pterm1 => \Y~4_pterm1_bus\,
	pterm2 => \Y~4_pterm2_bus\,
	pterm3 => \Y~4_pterm3_bus\,
	pterm4 => \Y~4_pterm4_bus\,
	pterm5 => \Y~4_pterm5_bus\,
	pxor => \Y~4_pxor_bus\,
	pclk => \Y~4_pclk_bus\,
	papre => \Y~4_papre_bus\,
	paclr => \Y~4_paclr_bus\,
	pena => \Y~4_pena_bus\,
	dataout => \Y~4_dataout\);

-- Location: PIN_4
\Y~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Y~4_dataout\,
	oe => VCC,
	padio => ww_Y);
END structure;


