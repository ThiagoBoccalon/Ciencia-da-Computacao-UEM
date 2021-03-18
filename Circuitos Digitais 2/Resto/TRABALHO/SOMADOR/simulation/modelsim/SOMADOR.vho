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

-- DATE "05/14/2013 00:25:51"

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

ENTITY 	SOMADOR IS
    PORT (
	A_B_Cin : IN STD.STANDARD.bit_vector(2 DOWNTO 0);
	TV : IN STD.STANDARD.bit_vector(2 DOWNTO 0);
	C_Out : OUT STD.STANDARD.bit;
	S : OUT STD.STANDARD.bit
	);
END SOMADOR;

-- Design Ports Information
-- A_B_Cin[0]	=>  Location: PIN_24
-- A_B_Cin[1]	=>  Location: PIN_21
-- A_B_Cin[2]	=>  Location: PIN_20
-- TV[0]	=>  Location: PIN_25
-- TV[1]	=>  Location: PIN_19
-- TV[2]	=>  Location: PIN_18
-- S	=>  Location: PIN_4
-- C_Out	=>  Location: PIN_5

ARCHITECTURE structure OF SOMADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_A_B_Cin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_TV : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C_Out : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \Mux0~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~1_dataout\ : std_logic;
SIGNAL \Mux1~7_dataout\ : std_logic;
SIGNAL \A_B_Cin~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \TV~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_A_B_Cin~dataout\ : std_logic_vector(2 DOWNTO 1);

BEGIN

ww_A_B_Cin <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(A_B_Cin);
ww_TV <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(TV);
C_Out <= IEEE.STD_LOGIC_1164.TO_BIT(ww_C_Out);
S <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S);

\Mux0~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \A_B_Cin~dataout\(2) & \A_B_Cin~dataout\(1));

\Mux0~1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(2) & NOT \A_B_Cin~dataout\(1));

\Mux0~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \A_B_Cin~dataout\(0));

\Mux0~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \TV~dataout\(2) & \TV~dataout\(1));

\Mux1~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \TV~dataout\(0) & \TV~dataout\(1));

\Mux1~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \TV~dataout\(0) & \TV~dataout\(2));

\Mux1~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux1~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_A_B_Cin~dataout\(1) <= NOT \A_B_Cin~dataout\(1);
\ALT_INV_A_B_Cin~dataout\(2) <= NOT \A_B_Cin~dataout\(2);

-- Location: PIN_21
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

-- Location: PIN_20
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

-- Location: PIN_24
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

-- Location: LC1
\Mux0~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux0~1_pterm0_bus\,
	pterm1 => \Mux0~1_pterm1_bus\,
	pterm2 => \Mux0~1_pterm2_bus\,
	pterm3 => \Mux0~1_pterm3_bus\,
	pterm4 => \Mux0~1_pterm4_bus\,
	pterm5 => \Mux0~1_pterm5_bus\,
	pxor => \Mux0~1_pxor_bus\,
	pclk => \Mux0~1_pclk_bus\,
	papre => \Mux0~1_papre_bus\,
	paclr => \Mux0~1_paclr_bus\,
	pena => \Mux0~1_pena_bus\,
	dataout => \Mux0~1_dataout\);

-- Location: PIN_19
\TV[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TV(1),
	dataout => \TV~dataout\(1));

-- Location: PIN_18
\TV[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TV(2),
	dataout => \TV~dataout\(2));

-- Location: PIN_25
\TV[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TV(0),
	dataout => \TV~dataout\(0));

-- Location: LC2
\Mux1~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux1~7_pterm0_bus\,
	pterm1 => \Mux1~7_pterm1_bus\,
	pterm2 => \Mux1~7_pterm2_bus\,
	pterm3 => \Mux1~7_pterm3_bus\,
	pterm4 => \Mux1~7_pterm4_bus\,
	pterm5 => \Mux1~7_pterm5_bus\,
	pxor => \Mux1~7_pxor_bus\,
	pclk => \Mux1~7_pclk_bus\,
	papre => \Mux1~7_papre_bus\,
	paclr => \Mux1~7_paclr_bus\,
	pena => \Mux1~7_pena_bus\,
	dataout => \Mux1~7_dataout\);

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
	datain => \Mux0~1_dataout\,
	oe => VCC,
	padio => ww_S);

-- Location: PIN_5
\C_Out~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~7_dataout\,
	oe => VCC,
	padio => ww_C_Out);
END structure;


