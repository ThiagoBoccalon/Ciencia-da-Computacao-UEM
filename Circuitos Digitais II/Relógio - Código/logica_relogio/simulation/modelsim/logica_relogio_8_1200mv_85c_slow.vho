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

-- DATE "05/26/2013 11:15:03"

-- 
-- Device: Altera EP4CGX15BN11C8 Package QFN148
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	logica_relogio IS
    PORT (
	clr : IN std_logic;
	clk : IN std_logic;
	s6 : BUFFER STD.STANDARD.integer range 0 TO 9;
	s5 : BUFFER STD.STANDARD.integer range 0 TO 9;
	s4 : BUFFER STD.STANDARD.integer range 0 TO 9;
	s3 : BUFFER STD.STANDARD.integer range 0 TO 9;
	s2 : BUFFER STD.STANDARD.integer range 0 TO 9;
	s1 : BUFFER STD.STANDARD.integer range 0 TO 9
	);
END logica_relogio;

-- Design Ports Information
-- clk	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_A31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6[0]	=>  Location: PIN_A33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6[1]	=>  Location: PIN_B32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6[2]	=>  Location: PIN_A34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6[3]	=>  Location: PIN_A40,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5[0]	=>  Location: PIN_A35,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5[1]	=>  Location: PIN_B33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5[2]	=>  Location: PIN_B31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5[3]	=>  Location: PIN_A47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[0]	=>  Location: PIN_A38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[1]	=>  Location: PIN_A39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[2]	=>  Location: PIN_B56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[3]	=>  Location: PIN_A37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[0]	=>  Location: PIN_A49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[1]	=>  Location: PIN_B38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[2]	=>  Location: PIN_A36,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[3]	=>  Location: PIN_A44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[0]	=>  Location: PIN_A48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[1]	=>  Location: PIN_A43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[2]	=>  Location: PIN_A45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[3]	=>  Location: PIN_B39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[0]	=>  Location: PIN_A46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[1]	=>  Location: PIN_A63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[2]	=>  Location: PIN_B54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[3]	=>  Location: PIN_B55,	 I/O Standard: 2.5 V,	 Current Strength: Default

ARCHITECTURE structure OF logica_relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s6[0]~3_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \s6[0]~reg0_q\ : std_logic;
SIGNAL \s6~1_combout\ : std_logic;
SIGNAL \s6[2]~reg0_q\ : std_logic;
SIGNAL \s6~0_combout\ : std_logic;
SIGNAL \s6[1]~reg0_q\ : std_logic;
SIGNAL \s6~2_combout\ : std_logic;
SIGNAL \s6[3]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \s5[1]~reg0_q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \s5~5_combout\ : std_logic;
SIGNAL \s5[2]~reg0_q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \s5~4_combout\ : std_logic;
SIGNAL \s5[0]~reg0_q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \s5[3]~reg0_q\ : std_logic;
SIGNAL \s4[0]~3_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \s4[0]~reg0_q\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \s3[1]~reg0_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \s3~0_combout\ : std_logic;
SIGNAL \s3[0]~reg0_q\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \s3[2]~reg0_q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \s4~1_combout\ : std_logic;
SIGNAL \s4[2]~reg0_q\ : std_logic;
SIGNAL \s4~2_combout\ : std_logic;
SIGNAL \s4[3]~reg0_q\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \s4~0_combout\ : std_logic;
SIGNAL \s4[1]~reg0_q\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \s3~1_combout\ : std_logic;
SIGNAL \s3[3]~reg0_q\ : std_logic;
SIGNAL \s2~2_combout\ : std_logic;
SIGNAL \s1[0]~3_combout\ : std_logic;
SIGNAL \s2[1]~reg0_q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \s2~4_combout\ : std_logic;
SIGNAL \s2[3]~reg0_q\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \s2~1_combout\ : std_logic;
SIGNAL \s2~3_combout\ : std_logic;
SIGNAL \s2[2]~reg0_q\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s2[0]~reg0_q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \s1[0]~reg0_q\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \s1~2_combout\ : std_logic;
SIGNAL \s1[1]~reg0_q\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \s1[2]~reg0_q\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \s1[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clr <= clr;
ww_clk <= clk;
s6 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s6));
s5 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s5));
s4 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s4));
s3 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s3));
s2 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s2));
s1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s1));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: LCCOMB_X27_Y8_N10
\Add2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = \s4[3]~reg0_q\ $ (((\s4[2]~reg0_q\ & (\s4[1]~reg0_q\ & \s4[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[2]~reg0_q\,
	datab => \s4[1]~reg0_q\,
	datac => \s4[3]~reg0_q\,
	datad => \s4[0]~reg0_q\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X25_Y9_N18
\Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\s1[2]~reg0_q\ & (\s1[1]~reg0_q\ & (!\s1[3]~reg0_q\ & !\s1[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1[2]~reg0_q\,
	datab => \s1[1]~reg0_q\,
	datac => \s1[3]~reg0_q\,
	datad => \s1[0]~reg0_q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X25_Y9_N12
\process_0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~8_combout\ & !\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~8_combout\,
	datad => \Equal7~0_combout\,
	combout => \process_0~9_combout\);

-- Location: IOOBUF_X20_Y0_N9
\s6[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s6[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s6(0));

-- Location: IOOBUF_X26_Y0_N2
\s6[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s6[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s6(1));

-- Location: IOOBUF_X22_Y0_N9
\s6[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s6[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s6(2));

-- Location: IOOBUF_X31_Y0_N2
\s6[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s6[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s6(3));

-- Location: IOOBUF_X22_Y0_N2
\s5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s5[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s5(0));

-- Location: IOOBUF_X29_Y0_N2
\s5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s5[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s5(1));

-- Location: IOOBUF_X24_Y0_N2
\s5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s5[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s5(2));

-- Location: IOOBUF_X33_Y14_N9
\s5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s5[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s5(3));

-- Location: IOOBUF_X29_Y0_N9
\s4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s4(0));

-- Location: IOOBUF_X31_Y0_N9
\s4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s4(1));

-- Location: IOOBUF_X22_Y31_N9
\s4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s4(2));

-- Location: IOOBUF_X26_Y0_N9
\s4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s4(3));

-- Location: IOOBUF_X33_Y15_N2
\s3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s3(0));

-- Location: IOOBUF_X33_Y11_N9
\s3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s3(1));

-- Location: IOOBUF_X24_Y0_N9
\s3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s3(2));

-- Location: IOOBUF_X33_Y10_N2
\s3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s3(3));

-- Location: IOOBUF_X33_Y14_N2
\s2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s2(0));

-- Location: IOOBUF_X33_Y10_N9
\s2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s2(1));

-- Location: IOOBUF_X33_Y11_N2
\s2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s2(2));

-- Location: IOOBUF_X33_Y12_N9
\s2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s2(3));

-- Location: IOOBUF_X33_Y12_N2
\s1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s1(0));

-- Location: IOOBUF_X26_Y31_N2
\s1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s1(1));

-- Location: IOOBUF_X26_Y31_N9
\s1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s1(2));

-- Location: IOOBUF_X24_Y31_N9
\s1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_s1(3));

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y9_N24
\s6[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6[0]~3_combout\ = !\s6[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s6[0]~reg0_q\,
	combout => \s6[0]~3_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G19
\clr~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X27_Y9_N25
\s6[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s6[0]~3_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s6[0]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N12
\s6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6~1_combout\ = \s6[2]~reg0_q\ $ (((\s6[0]~reg0_q\ & \s6[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s6[0]~reg0_q\,
	datab => \s6[1]~reg0_q\,
	datac => \s6[2]~reg0_q\,
	combout => \s6~1_combout\);

-- Location: FF_X27_Y9_N13
\s6[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s6~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s6[2]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N2
\s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6~0_combout\ = (\s6[1]~reg0_q\ & (((!\s6[0]~reg0_q\)))) # (!\s6[1]~reg0_q\ & (\s6[0]~reg0_q\ & ((\s6[2]~reg0_q\) # (!\s6[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s6[3]~reg0_q\,
	datab => \s6[2]~reg0_q\,
	datac => \s6[1]~reg0_q\,
	datad => \s6[0]~reg0_q\,
	combout => \s6~0_combout\);

-- Location: FF_X27_Y9_N3
\s6[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s6~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s6[1]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N14
\s6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6~2_combout\ = (\s6[2]~reg0_q\ & (\s6[3]~reg0_q\ $ (((\s6[1]~reg0_q\ & \s6[0]~reg0_q\))))) # (!\s6[2]~reg0_q\ & (\s6[3]~reg0_q\ & ((\s6[1]~reg0_q\) # (!\s6[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s6[2]~reg0_q\,
	datab => \s6[1]~reg0_q\,
	datac => \s6[3]~reg0_q\,
	datad => \s6[0]~reg0_q\,
	combout => \s6~2_combout\);

-- Location: FF_X27_Y9_N15
\s6[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s6~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s6[3]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N4
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\s6[2]~reg0_q\ & (!\s6[1]~reg0_q\ & (\s6[3]~reg0_q\ & \s6[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s6[2]~reg0_q\,
	datab => \s6[1]~reg0_q\,
	datac => \s6[3]~reg0_q\,
	datad => \s6[0]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y9_N0
\process_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Equal0~0_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X27_Y9_N16
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\s5[0]~reg0_q\ & (\process_0~1_combout\ $ (VCC))) # (!\s5[0]~reg0_q\ & (\process_0~1_combout\ & VCC))
-- \Add1~1\ = CARRY((\s5[0]~reg0_q\ & \process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s5[0]~reg0_q\,
	datab => \process_0~1_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X27_Y9_N18
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\s5[1]~reg0_q\ & (!\Add1~1\)) # (!\s5[1]~reg0_q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\s5[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s5[1]~reg0_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X27_Y9_N19
\s5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s5[1]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N20
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\s5[2]~reg0_q\ & (\Add1~3\ $ (GND))) # (!\s5[2]~reg0_q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\s5[2]~reg0_q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s5[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y9_N10
\s5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s5~5_combout\ = (\Add1~4_combout\ & ((!\process_0~0_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \process_0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \s5~5_combout\);

-- Location: FF_X27_Y9_N11
\s5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s5~5_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s5[2]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N6
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\s5[3]~reg0_q\ & (!\s5[1]~reg0_q\ & (\s5[0]~reg0_q\ & \s5[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s5[3]~reg0_q\,
	datab => \s5[1]~reg0_q\,
	datac => \s5[0]~reg0_q\,
	datad => \s5[2]~reg0_q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X27_Y9_N8
\s5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s5~4_combout\ = (\Add1~0_combout\ & ((!\process_0~0_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \process_0~0_combout\,
	datad => \Add1~0_combout\,
	combout => \s5~4_combout\);

-- Location: FF_X27_Y9_N9
\s5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s5~4_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s5[0]~reg0_q\);

-- Location: LCCOMB_X27_Y9_N22
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \Add1~5\ $ (\s5[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s5[3]~reg0_q\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: FF_X27_Y9_N23
\s5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s5[3]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N0
\s4[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4[0]~3_combout\ = !\s4[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s4[0]~reg0_q\,
	combout => \s4[0]~3_combout\);

-- Location: LCCOMB_X27_Y9_N26
\process_0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~0_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \process_0~2_combout\);

-- Location: FF_X26_Y9_N1
\s4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s4[0]~3_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s4[0]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N4
\process_0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\s4[1]~reg0_q\ & \s4[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s4[1]~reg0_q\,
	datad => \s4[0]~reg0_q\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X27_Y8_N0
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \s4[2]~reg0_q\ $ (((\s4[1]~reg0_q\ & \s4[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[1]~reg0_q\,
	datac => \s4[0]~reg0_q\,
	datad => \s4[2]~reg0_q\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\s3[0]~reg0_q\ & (\process_0~4_combout\ $ (VCC))) # (!\s3[0]~reg0_q\ & (\process_0~4_combout\ & VCC))
-- \Add3~1\ = CARRY((\s3[0]~reg0_q\ & \process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3[0]~reg0_q\,
	datab => \process_0~4_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X26_Y9_N18
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\s3[1]~reg0_q\ & (!\Add3~1\)) # (!\s3[1]~reg0_q\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\s3[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s3[1]~reg0_q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X26_Y9_N19
\s3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3[1]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N8
\s3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s3~0_combout\ = (!\process_0~6_combout\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~6_combout\,
	datad => \Add3~0_combout\,
	combout => \s3~0_combout\);

-- Location: FF_X26_Y9_N9
\s3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s3~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3[0]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N20
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\s3[2]~reg0_q\ & (\Add3~3\ $ (GND))) # (!\s3[2]~reg0_q\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\s3[2]~reg0_q\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s3[2]~reg0_q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X26_Y9_N21
\s3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3[2]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N6
\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\s3[3]~reg0_q\ & (!\s3[1]~reg0_q\ & (\s3[0]~reg0_q\ & \s3[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3[3]~reg0_q\,
	datab => \s3[1]~reg0_q\,
	datac => \s3[0]~reg0_q\,
	datad => \s3[2]~reg0_q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y9_N24
\process_0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\s4[3]~reg0_q\ & (!\s4[2]~reg0_q\ & (\process_0~3_combout\ & !\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[3]~reg0_q\,
	datab => \s4[2]~reg0_q\,
	datac => \process_0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X26_Y9_N28
\s4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4~1_combout\ = (!\process_0~6_combout\ & (\Add2~0_combout\ & !\process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~6_combout\,
	datac => \Add2~0_combout\,
	datad => \process_0~4_combout\,
	combout => \s4~1_combout\);

-- Location: FF_X26_Y9_N29
\s4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s4~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s4[2]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N30
\s4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4~2_combout\ = (\Add2~1_combout\ & (!\process_0~6_combout\ & !\process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \process_0~6_combout\,
	datad => \process_0~4_combout\,
	combout => \s4~2_combout\);

-- Location: FF_X26_Y9_N31
\s4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s4~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s4[3]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N2
\process_0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\s3[3]~reg0_q\ & (\s4[2]~reg0_q\ & (!\s4[3]~reg0_q\ & !\s3[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3[3]~reg0_q\,
	datab => \s4[2]~reg0_q\,
	datac => \s4[3]~reg0_q\,
	datad => \s3[2]~reg0_q\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X26_Y9_N12
\process_0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\s3[0]~reg0_q\ & (\process_0~3_combout\ & (\process_0~5_combout\ & !\s3[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3[0]~reg0_q\,
	datab => \process_0~3_combout\,
	datac => \process_0~5_combout\,
	datad => \s3[1]~reg0_q\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X26_Y9_N26
\s4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4~0_combout\ = (!\process_0~6_combout\ & (!\process_0~4_combout\ & (\s4[0]~reg0_q\ $ (\s4[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[0]~reg0_q\,
	datab => \process_0~6_combout\,
	datac => \s4[1]~reg0_q\,
	datad => \process_0~4_combout\,
	combout => \s4~0_combout\);

-- Location: FF_X26_Y9_N27
\s4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s4~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s4[1]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N22
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = \s3[3]~reg0_q\ $ (\Add3~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s3[3]~reg0_q\,
	cin => \Add3~5\,
	combout => \Add3~6_combout\);

-- Location: LCCOMB_X26_Y9_N10
\s3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s3~1_combout\ = (!\process_0~6_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~6_combout\,
	datac => \Add3~6_combout\,
	combout => \s3~1_combout\);

-- Location: FF_X26_Y9_N11
\s3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s3~1_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3[3]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N10
\s2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~2_combout\ = (\s2~1_combout\ & (\s2[0]~reg0_q\ $ (\s2[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[0]~reg0_q\,
	datac => \s2[1]~reg0_q\,
	datad => \s2~1_combout\,
	combout => \s2~2_combout\);

-- Location: LCCOMB_X26_Y9_N14
\s1[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s1[0]~3_combout\ = (\Equal0~0_combout\ & (\process_0~0_combout\ & \process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~6_combout\,
	combout => \s1[0]~3_combout\);

-- Location: FF_X25_Y9_N11
\s2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s2~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2[1]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N2
\Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \s2[3]~reg0_q\ $ (((\s2[0]~reg0_q\ & (\s2[2]~reg0_q\ & \s2[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[0]~reg0_q\,
	datab => \s2[2]~reg0_q\,
	datac => \s2[3]~reg0_q\,
	datad => \s2[1]~reg0_q\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
\s2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~4_combout\ = (\Add4~0_combout\ & ((\Equal7~0_combout\ & (!\process_0~7_combout\)) # (!\Equal7~0_combout\ & ((!\process_0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \process_0~7_combout\,
	datac => \process_0~8_combout\,
	datad => \Add4~0_combout\,
	combout => \s2~4_combout\);

-- Location: FF_X25_Y9_N31
\s2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s2~4_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2[3]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N14
\process_0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!\s2[1]~reg0_q\ & (!\s2[2]~reg0_q\ & (\s2[3]~reg0_q\ & \s2[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[1]~reg0_q\,
	datab => \s2[2]~reg0_q\,
	datac => \s2[3]~reg0_q\,
	datad => \s2[0]~reg0_q\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X25_Y9_N0
\s2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~1_combout\ = (\Equal7~0_combout\ & ((!\process_0~7_combout\))) # (!\Equal7~0_combout\ & (!\process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~7_combout\,
	combout => \s2~1_combout\);

-- Location: LCCOMB_X25_Y9_N4
\s2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~3_combout\ = (\s2~1_combout\ & (\s2[2]~reg0_q\ $ (((\s2[0]~reg0_q\ & \s2[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[0]~reg0_q\,
	datab => \s2~1_combout\,
	datac => \s2[2]~reg0_q\,
	datad => \s2[1]~reg0_q\,
	combout => \s2~3_combout\);

-- Location: FF_X25_Y9_N5
\s2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s2~3_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2[2]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N28
\process_0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!\s2[0]~reg0_q\ & (\s2[2]~reg0_q\ & (!\s2[3]~reg0_q\ & !\s2[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[0]~reg0_q\,
	datab => \s2[2]~reg0_q\,
	datac => \s2[3]~reg0_q\,
	datad => \s2[1]~reg0_q\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X25_Y9_N16
\s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (!\s2[0]~reg0_q\ & ((!\process_0~7_combout\) # (!\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datac => \s2[0]~reg0_q\,
	datad => \process_0~7_combout\,
	combout => \s2~0_combout\);

-- Location: FF_X25_Y9_N17
\s2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s2~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2[0]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N20
\Add5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\process_0~9_combout\ & (\s1[0]~reg0_q\ $ (VCC))) # (!\process_0~9_combout\ & (\s1[0]~reg0_q\ & VCC))
-- \Add5~1\ = CARRY((\process_0~9_combout\ & \s1[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \s1[0]~reg0_q\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: FF_X25_Y9_N21
\s1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add5~0_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1[0]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N22
\Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\s1[1]~reg0_q\ & (!\Add5~1\)) # (!\s1[1]~reg0_q\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\s1[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1[1]~reg0_q\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X25_Y9_N8
\s1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s1~2_combout\ = (\Add5~2_combout\ & ((!\process_0~7_combout\) # (!\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datac => \Add5~2_combout\,
	datad => \process_0~7_combout\,
	combout => \s1~2_combout\);

-- Location: FF_X25_Y9_N9
\s1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s1~2_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1[1]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N24
\Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\s1[2]~reg0_q\ & (\Add5~3\ $ (GND))) # (!\s1[2]~reg0_q\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\s1[2]~reg0_q\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1[2]~reg0_q\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X25_Y9_N25
\s1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1[2]~reg0_q\);

-- Location: LCCOMB_X25_Y9_N26
\Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = \s1[3]~reg0_q\ $ (\Add5~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s1[3]~reg0_q\,
	cin => \Add5~5\,
	combout => \Add5~6_combout\);

-- Location: FF_X25_Y9_N27
\s1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	clrn => \clr~inputclkctrl_outclk\,
	ena => \s1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1[3]~reg0_q\);
END structure;


