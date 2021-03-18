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

-- DATE "05/13/2013 11:30:04"

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

ENTITY 	DECODIFICADOR_8x1 IS
    PORT (
	E0 : IN std_logic;
	E1 : IN std_logic;
	E2 : IN std_logic;
	E3 : IN std_logic;
	E4 : IN std_logic;
	E5 : IN std_logic;
	E6 : IN std_logic;
	E7 : IN std_logic;
	SAIDA_ULA : OUT STD.STANDARD.bit;
	SEL : IN STD.STANDARD.bit_vector(2 DOWNTO 0)
	);
END DECODIFICADOR_8x1;

-- Design Ports Information
-- E0	=>  Location: PIN_24
-- E1	=>  Location: PIN_21
-- E2	=>  Location: PIN_20
-- E3	=>  Location: PIN_25
-- E4	=>  Location: PIN_19
-- E5	=>  Location: PIN_18
-- E6	=>  Location: PIN_17
-- E7	=>  Location: PIN_28
-- SEL[0]	=>  Location: PIN_16
-- SEL[1]	=>  Location: PIN_33
-- SEL[2]	=>  Location: PIN_12
-- SAIDA_ULA	=>  Location: PIN_5

ARCHITECTURE structure OF DECODIFICADOR_8x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_E0 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_E3 : std_logic;
SIGNAL ww_E4 : std_logic;
SIGNAL ww_E5 : std_logic;
SIGNAL ww_E6 : std_logic;
SIGNAL ww_E7 : std_logic;
SIGNAL ww_SAIDA_ULA : std_logic;
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mux0~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \E0~dataout\ : std_logic;
SIGNAL \E2~dataout\ : std_logic;
SIGNAL \E1~dataout\ : std_logic;
SIGNAL \Mux0~27_pexpout\ : std_logic;
SIGNAL \E3~dataout\ : std_logic;
SIGNAL \E4~dataout\ : std_logic;
SIGNAL \E6~dataout\ : std_logic;
SIGNAL \E7~dataout\ : std_logic;
SIGNAL \E5~dataout\ : std_logic;
SIGNAL \Mux0~26_dataout\ : std_logic;
SIGNAL \SEL~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_SEL~dataout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_E0 <= E0;
ww_E1 <= E1;
ww_E2 <= E2;
ww_E3 <= E3;
ww_E4 <= E4;
ww_E5 <= E5;
ww_E6 <= E6;
ww_E7 <= E7;
SAIDA_ULA <= IEEE.STD_LOGIC_1164.TO_BIT(ww_SAIDA_ULA);
ww_SEL <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SEL);

\Mux0~26_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E5~dataout\ & NOT \SEL~dataout\(1) & \SEL~dataout\(0) & \SEL~dataout\(2));

\Mux0~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SEL~dataout\(1) & \SEL~dataout\(0) & NOT \SEL~dataout\(2) & \E3~dataout\);

\Mux0~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E4~dataout\ & NOT \SEL~dataout\(1) & NOT \SEL~dataout\(0) & \SEL~dataout\(2));

\Mux0~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E6~dataout\ & \SEL~dataout\(1) & NOT \SEL~dataout\(0) & \SEL~dataout\(2));

\Mux0~26_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E7~dataout\ & \SEL~dataout\(1) & \SEL~dataout\(0) & \SEL~dataout\(2));

\Mux0~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SEL~dataout\(1) & NOT \SEL~dataout\(0) & NOT \SEL~dataout\(2) & \E0~dataout\);

\Mux0~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E2~dataout\ & \SEL~dataout\(1) & NOT \SEL~dataout\(0) & NOT \SEL~dataout\(2));

\Mux0~27_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \E1~dataout\ & NOT \SEL~dataout\(1) & \SEL~dataout\(0) & NOT \SEL~dataout\(2));

\Mux0~27_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_SEL~dataout\(0) <= NOT \SEL~dataout\(0);
\ALT_INV_SEL~dataout\(1) <= NOT \SEL~dataout\(1);
\ALT_INV_SEL~dataout\(2) <= NOT \SEL~dataout\(2);

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

-- Location: PIN_12
\SEL[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL(2),
	dataout => \SEL~dataout\(2));

-- Location: PIN_16
\SEL[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL(0),
	dataout => \SEL~dataout\(0));

-- Location: PIN_33
\SEL[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SEL(1),
	dataout => \SEL~dataout\(1));

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

-- Location: LC1
\Mux0~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux0~27_pterm0_bus\,
	pterm1 => \Mux0~27_pterm1_bus\,
	pterm2 => \Mux0~27_pterm2_bus\,
	pterm3 => \Mux0~27_pterm3_bus\,
	pterm4 => \Mux0~27_pterm4_bus\,
	pterm5 => \Mux0~27_pterm5_bus\,
	pxor => \Mux0~27_pxor_bus\,
	pclk => \Mux0~27_pclk_bus\,
	papre => \Mux0~27_papre_bus\,
	paclr => \Mux0~27_paclr_bus\,
	pena => \Mux0~27_pena_bus\,
	pexpout => \Mux0~27_pexpout\);

-- Location: PIN_25
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

-- Location: PIN_19
\E4~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E4,
	dataout => \E4~dataout\);

-- Location: PIN_17
\E6~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E6,
	dataout => \E6~dataout\);

-- Location: PIN_28
\E7~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E7,
	dataout => \E7~dataout\);

-- Location: PIN_18
\E5~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E5,
	dataout => \E5~dataout\);

-- Location: LC2
\Mux0~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux0~27_pexpout\,
	pterm0 => \Mux0~26_pterm0_bus\,
	pterm1 => \Mux0~26_pterm1_bus\,
	pterm2 => \Mux0~26_pterm2_bus\,
	pterm3 => \Mux0~26_pterm3_bus\,
	pterm4 => \Mux0~26_pterm4_bus\,
	pterm5 => \Mux0~26_pterm5_bus\,
	pxor => \Mux0~26_pxor_bus\,
	pclk => \Mux0~26_pclk_bus\,
	papre => \Mux0~26_papre_bus\,
	paclr => \Mux0~26_paclr_bus\,
	pena => \Mux0~26_pena_bus\,
	dataout => \Mux0~26_dataout\);

-- Location: PIN_5
\SAIDA_ULA~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~26_dataout\,
	oe => VCC,
	padio => ww_SAIDA_ULA);
END structure;


