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

-- DATE "03/27/2013 10:14:43"

-- 
-- Device: Altera EPM7064STC100-10 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	mux_case IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	s : IN STD.STANDARD.bit_vector(1 DOWNTO 0);
	f : OUT STD.STANDARD.bit
	);
END mux_case;

-- Design Ports Information
-- a	=>  Location: PIN_85
-- b	=>  Location: PIN_92
-- c	=>  Location: PIN_84
-- d	=>  Location: PIN_93
-- s[0]	=>  Location: PIN_61
-- s[1]	=>  Location: PIN_94
-- f	=>  Location: PIN_14

ARCHITECTURE structure OF mux_case IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic;
SIGNAL \Mux0~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \a~dataout\ : std_logic;
SIGNAL \c~dataout\ : std_logic;
SIGNAL \b~dataout\ : std_logic;
SIGNAL \d~dataout\ : std_logic;
SIGNAL \Mux0~13_dataout\ : std_logic;
SIGNAL \s~dataout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_s~dataout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_s <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(s);
f <= IEEE.STD_LOGIC_1164.TO_BIT(ww_f);

\Mux0~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \s~dataout\(1) & NOT \s~dataout\(0) & \a~dataout\);

\Mux0~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \c~dataout\ & \s~dataout\(1) & NOT \s~dataout\(0));

\Mux0~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \b~dataout\ & NOT \s~dataout\(1) & \s~dataout\(0));

\Mux0~13_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \d~dataout\ & \s~dataout\(1) & \s~dataout\(0));

\Mux0~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_s~dataout\(0) <= NOT \s~dataout\(0);
\ALT_INV_s~dataout\(1) <= NOT \s~dataout\(1);

-- Location: PIN_85
\a~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	dataout => \a~dataout\);

-- Location: PIN_61
\s[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(0),
	dataout => \s~dataout\(0));

-- Location: PIN_94
\s[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_s(1),
	dataout => \s~dataout\(1));

-- Location: PIN_84
\c~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_c,
	dataout => \c~dataout\);

-- Location: PIN_92
\b~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	dataout => \b~dataout\);

-- Location: PIN_93
\d~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d,
	dataout => \d~dataout\);

-- Location: LC1
\Mux0~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux0~13_pterm0_bus\,
	pterm1 => \Mux0~13_pterm1_bus\,
	pterm2 => \Mux0~13_pterm2_bus\,
	pterm3 => \Mux0~13_pterm3_bus\,
	pterm4 => \Mux0~13_pterm4_bus\,
	pterm5 => \Mux0~13_pterm5_bus\,
	pxor => \Mux0~13_pxor_bus\,
	pclk => \Mux0~13_pclk_bus\,
	papre => \Mux0~13_papre_bus\,
	paclr => \Mux0~13_paclr_bus\,
	pena => \Mux0~13_pena_bus\,
	dataout => \Mux0~13_dataout\);

-- Location: PIN_14
\f~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~13_dataout\,
	oe => VCC,
	padio => ww_f);
END structure;


