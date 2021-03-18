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

-- DATE "05/09/2013 16:20:42"

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

ENTITY 	SUBTRATOR IS
    PORT (
	EN_SUB : IN STD.STANDARD.bit_vector(2 DOWNTO 0);
	S_Cout : OUT STD.STANDARD.bit_vector(1 DOWNTO 0)
	);
END SUBTRATOR;

-- Design Ports Information
-- EN_SUB[0]	=>  Location: PIN_24
-- EN_SUB[1]	=>  Location: PIN_21
-- EN_SUB[2]	=>  Location: PIN_20
-- S_Cout[1]	=>  Location: PIN_4
-- S_Cout[0]	=>  Location: PIN_5

ARCHITECTURE structure OF SUBTRATOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_EN_SUB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S_Cout : std_logic_vector(1 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[0]~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \S_Cout[1]~5_dataout\ : std_logic;
SIGNAL \S_Cout[0]~13_dataout\ : std_logic;
SIGNAL \EN_SUB~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_EN_SUB~dataout\ : std_logic_vector(2 DOWNTO 1);

BEGIN

ww_EN_SUB <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(EN_SUB);
S_Cout <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_S_Cout);

\S_Cout[1]~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \EN_SUB~dataout\(2) & \EN_SUB~dataout\(1));

\S_Cout[1]~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN_SUB~dataout\(2) & NOT \EN_SUB~dataout\(1));

\S_Cout[1]~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN_SUB~dataout\(0));

\S_Cout[1]~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Cout[1]~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[1]~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \EN_SUB~dataout\(2) & \EN_SUB~dataout\(0));

\S_Cout[0]~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN_SUB~dataout\(1) & \EN_SUB~dataout\(0));

\S_Cout[0]~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN_SUB~dataout\(1) & NOT \EN_SUB~dataout\(2));

\S_Cout[0]~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\S_Cout[0]~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\S_Cout[0]~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_EN_SUB~dataout\(1) <= NOT \EN_SUB~dataout\(1);
\ALT_INV_EN_SUB~dataout\(2) <= NOT \EN_SUB~dataout\(2);

-- Location: PIN_21
\EN_SUB[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EN_SUB(1),
	dataout => \EN_SUB~dataout\(1));

-- Location: PIN_20
\EN_SUB[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EN_SUB(2),
	dataout => \EN_SUB~dataout\(2));

-- Location: PIN_24
\EN_SUB[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EN_SUB(0),
	dataout => \EN_SUB~dataout\(0));

-- Location: LC1
\S_Cout[1]~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_Cout[1]~5_pterm0_bus\,
	pterm1 => \S_Cout[1]~5_pterm1_bus\,
	pterm2 => \S_Cout[1]~5_pterm2_bus\,
	pterm3 => \S_Cout[1]~5_pterm3_bus\,
	pterm4 => \S_Cout[1]~5_pterm4_bus\,
	pterm5 => \S_Cout[1]~5_pterm5_bus\,
	pxor => \S_Cout[1]~5_pxor_bus\,
	pclk => \S_Cout[1]~5_pclk_bus\,
	papre => \S_Cout[1]~5_papre_bus\,
	paclr => \S_Cout[1]~5_paclr_bus\,
	pena => \S_Cout[1]~5_pena_bus\,
	dataout => \S_Cout[1]~5_dataout\);

-- Location: LC2
\S_Cout[0]~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \S_Cout[0]~13_pterm0_bus\,
	pterm1 => \S_Cout[0]~13_pterm1_bus\,
	pterm2 => \S_Cout[0]~13_pterm2_bus\,
	pterm3 => \S_Cout[0]~13_pterm3_bus\,
	pterm4 => \S_Cout[0]~13_pterm4_bus\,
	pterm5 => \S_Cout[0]~13_pterm5_bus\,
	pxor => \S_Cout[0]~13_pxor_bus\,
	pclk => \S_Cout[0]~13_pclk_bus\,
	papre => \S_Cout[0]~13_papre_bus\,
	paclr => \S_Cout[0]~13_paclr_bus\,
	pena => \S_Cout[0]~13_pena_bus\,
	dataout => \S_Cout[0]~13_dataout\);

-- Location: PIN_4
\S_Cout[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_Cout[1]~5_dataout\,
	oe => VCC,
	padio => ww_S_Cout(1));

-- Location: PIN_5
\S_Cout[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \S_Cout[0]~13_dataout\,
	oe => VCC,
	padio => ww_S_Cout(0));
END structure;


