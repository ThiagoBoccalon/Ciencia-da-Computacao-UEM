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

-- DATE "04/24/2013 10:03:27"

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

ENTITY 	Exercicio_2_Fluxo IS
    PORT (
	Driv : IN std_logic;
	Pass : IN std_logic;
	Ing : IN std_logic;
	Beltd : IN std_logic;
	Alarme : OUT STD.STANDARD.bit
	);
END Exercicio_2_Fluxo;

-- Design Ports Information
-- Driv	=>  Location: PIN_20
-- Pass	=>  Location: PIN_25
-- Ing	=>  Location: PIN_24
-- Beltd	=>  Location: PIN_21
-- Alarme	=>  Location: PIN_4

ARCHITECTURE structure OF Exercicio_2_Fluxo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_Driv : std_logic;
SIGNAL ww_Pass : std_logic;
SIGNAL ww_Ing : std_logic;
SIGNAL ww_Beltd : std_logic;
SIGNAL ww_Alarme : std_logic;
SIGNAL \Alarme~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Alarme~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Ing~dataout\ : std_logic;
SIGNAL \Beltd~dataout\ : std_logic;
SIGNAL \Alarme~2_dataout\ : std_logic;
SIGNAL \ALT_INV_Beltd~dataout\ : std_logic;

BEGIN

ww_Driv <= Driv;
ww_Pass <= Pass;
ww_Ing <= Ing;
ww_Beltd <= Beltd;
Alarme <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Alarme);

\Alarme~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Beltd~dataout\ & \Ing~dataout\);

\Alarme~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Alarme~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Alarme~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_Beltd~dataout\ <= NOT \Beltd~dataout\;

-- Location: PIN_24
\Ing~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ing,
	dataout => \Ing~dataout\);

-- Location: PIN_21
\Beltd~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Beltd,
	dataout => \Beltd~dataout\);

-- Location: LC1
\Alarme~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Alarme~2_pterm0_bus\,
	pterm1 => \Alarme~2_pterm1_bus\,
	pterm2 => \Alarme~2_pterm2_bus\,
	pterm3 => \Alarme~2_pterm3_bus\,
	pterm4 => \Alarme~2_pterm4_bus\,
	pterm5 => \Alarme~2_pterm5_bus\,
	pxor => \Alarme~2_pxor_bus\,
	pclk => \Alarme~2_pclk_bus\,
	papre => \Alarme~2_papre_bus\,
	paclr => \Alarme~2_paclr_bus\,
	pena => \Alarme~2_pena_bus\,
	dataout => \Alarme~2_dataout\);

-- Location: PIN_20
\Driv~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Driv);

-- Location: PIN_25
\Pass~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Pass);

-- Location: PIN_4
\Alarme~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Alarme~2_dataout\,
	oe => VCC,
	padio => ww_Alarme);
END structure;


