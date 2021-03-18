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

-- DATE "05/14/2013 11:36:08"

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

ENTITY 	OR_8 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	S : OUT STD.STANDARD.bit
	);
END OR_8;

-- Design Ports Information
-- A	=>  Location: PIN_24
-- B	=>  Location: PIN_21
-- C	=>  Location: PIN_20
-- D	=>  Location: PIN_25
-- E	=>  Location: PIN_19
-- F	=>  Location: PIN_18
-- G	=>  Location: PIN_17
-- H	=>  Location: PIN_28
-- S	=>  Location: PIN_4

ARCHITECTURE structure OF OR_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \S~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \A~dataout\ : std_logic;
SIGNAL \B~dataout\ : std_logic;
SIGNAL \C~dataout\ : std_logic;
SIGNAL \D~dataout\ : std_logic;
SIGNAL \E~dataout\ : std_logic;
SIGNAL \F~dataout\ : std_logic;
SIGNAL \G~dataout\ : std_logic;
SIGNAL \H~dataout\ : std_logic;
SIGNAL \S~1_dataout\ : std_logic;
SIGNAL \ALT_INV_A~dataout\ : std_logic;
SIGNAL \ALT_INV_B~dataout\ : std_logic;
SIGNAL \ALT_INV_C~dataout\ : std_logic;
SIGNAL \ALT_INV_D~dataout\ : std_logic;
SIGNAL \ALT_INV_E~dataout\ : std_logic;
SIGNAL \ALT_INV_F~dataout\ : std_logic;
SIGNAL \ALT_INV_G~dataout\ : std_logic;
SIGNAL \ALT_INV_H~dataout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ww_F <= F;
ww_G <= G;
ww_H <= H;
S <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S);

\S~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & NOT \H~dataout\ & NOT \G~dataout\ & NOT \F~dataout\ & NOT \E~dataout\ & NOT \D~dataout\ & NOT \C~dataout\ & NOT \B~dataout\ & NOT \A~dataout\);

\S~1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_A~dataout\ <= NOT \A~dataout\;
\ALT_INV_B~dataout\ <= NOT \B~dataout\;
\ALT_INV_C~dataout\ <= NOT \C~dataout\;
\ALT_INV_D~dataout\ <= NOT \D~dataout\;
\ALT_INV_E~dataout\ <= NOT \E~dataout\;
\ALT_INV_F~dataout\ <= NOT \F~dataout\;
\ALT_INV_G~dataout\ <= NOT \G~dataout\;
\ALT_INV_H~dataout\ <= NOT \H~dataout\;

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
\C~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	dataout => \C~dataout\);

-- Location: PIN_25
\D~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	dataout => \D~dataout\);

-- Location: PIN_19
\E~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	dataout => \E~dataout\);

-- Location: PIN_18
\F~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_F,
	dataout => \F~dataout\);

-- Location: PIN_17
\G~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_G,
	dataout => \G~dataout\);

-- Location: PIN_28
\H~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_H,
	dataout => \H~dataout\);

-- Location: LC1
\S~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S~1_pterm0_bus\,
	pterm1 => \S~1_pterm1_bus\,
	pterm2 => \S~1_pterm2_bus\,
	pterm3 => \S~1_pterm3_bus\,
	pterm4 => \S~1_pterm4_bus\,
	pterm5 => \S~1_pterm5_bus\,
	pxor => \S~1_pxor_bus\,
	pclk => \S~1_pclk_bus\,
	papre => \S~1_papre_bus\,
	paclr => \S~1_paclr_bus\,
	pena => \S~1_pena_bus\,
	dataout => \S~1_dataout\);

-- Location: PIN_4
\S~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S~1_dataout\,
	oe => VCC,
	padio => ww_S);
END structure;


