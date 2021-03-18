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

-- DATE "06/01/2013 20:43:50"

-- 
-- Device: Altera EPM7064STC100-7 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	decodificador_bcd IS
    PORT (
	dado : IN STD.STANDARD.integer range 0 TO 9;
	display : OUT STD.STANDARD.bit_vector(6 DOWNTO 0)
	);
END decodificador_bcd;

-- Design Ports Information
-- dado[0]	=>  Location: PIN_93
-- dado[1]	=>  Location: PIN_85
-- dado[2]	=>  Location: PIN_46
-- dado[3]	=>  Location: PIN_92
-- display[1]	=>  Location: PIN_10
-- display[3]	=>  Location: PIN_12
-- display[4]	=>  Location: PIN_8
-- display[5]	=>  Location: PIN_6
-- display[6]	=>  Location: PIN_100
-- display[0]	=>  Location: PIN_98
-- display[2]	=>  Location: PIN_9

ARCHITECTURE structure OF decodificador_bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_dado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \display[6]~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[1]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[3]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[4]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[5]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[6]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[0]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \display[2]$latch~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~83_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~24sexpand0bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~17sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~17sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~21sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~22sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~22sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~22sexpand2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~22sexpand3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~26sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~26sexpand2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~26sexpand3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal8~3sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~15sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal7~2sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal6~3sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \comb~17sexpand0_dataout\ : std_logic;
SIGNAL \comb~17sexpand1_dataout\ : std_logic;
SIGNAL \display[1]$latch~9_dataout\ : std_logic;
SIGNAL \Equal7~2sexp_dataout\ : std_logic;
SIGNAL \comb~21sexpand0_dataout\ : std_logic;
SIGNAL \display[3]$latch~9_dataout\ : std_logic;
SIGNAL \comb~22sexpand0_dataout\ : std_logic;
SIGNAL \comb~22sexpand1_dataout\ : std_logic;
SIGNAL \comb~22sexpand2_dataout\ : std_logic;
SIGNAL \comb~22sexpand3_dataout\ : std_logic;
SIGNAL \display[4]$latch~9_dataout\ : std_logic;
SIGNAL \comb~24sexpand0bal_dataout\ : std_logic;
SIGNAL \display[5]$latch~9_dataout\ : std_logic;
SIGNAL \comb~26sexpand0_dataout\ : std_logic;
SIGNAL \comb~26sexpand2_dataout\ : std_logic;
SIGNAL \comb~26sexpand3_dataout\ : std_logic;
SIGNAL \display[6]$latch~9_dataout\ : std_logic;
SIGNAL \Equal8~3sexpand0_dataout\ : std_logic;
SIGNAL \Equal6~3sexp_dataout\ : std_logic;
SIGNAL \comb~15sexpand0_dataout\ : std_logic;
SIGNAL \display[6]~13_dataout\ : std_logic;
SIGNAL \display[0]$latch~9_dataout\ : std_logic;
SIGNAL \display[2]~15_dataout\ : std_logic;
SIGNAL \comb~19_dataout\ : std_logic;
SIGNAL \comb~83_pexpout\ : std_logic;
SIGNAL \comb~20_dataout\ : std_logic;
SIGNAL \display[2]$latch~9_dataout\ : std_logic;
SIGNAL \dado~dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_display[6]~13_dataout\ : std_logic;
SIGNAL \ALT_INV_display[2]~15_dataout\ : std_logic;
SIGNAL \ALT_INV_dado~dataout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_dado <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(dado, 4);
display <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_display);

\display[6]~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(2) & NOT \dado~dataout\(1));

\display[6]~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3));

\display[6]~13_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[6]~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(1) & NOT \dado~dataout\(0) & NOT \dado~dataout\(3) & \dado~dataout\(2));

\display[2]~15_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & \dado~dataout\(2));

\display[2]~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[2]~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \display[2]~15_dataout\ & \dado~dataout\(2));

\comb~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \display[6]~13_dataout\);

\comb~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \dado~dataout\(1) & \display[2]~15_dataout\);

\comb~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & NOT \dado~dataout\(0) & \display[2]~15_dataout\);

\comb~19_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \dado~dataout\(3) & \display[2]~15_dataout\);

\comb~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\comb~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \display[2]~15_dataout\ & \display[6]~13_dataout\ & \dado~dataout\(1));

\comb~20_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \display[2]~15_dataout\ & \display[6]~13_dataout\ & \dado~dataout\(2));

\comb~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \display[2]~15_dataout\ & \display[6]~13_dataout\ & \dado~dataout\(3));

\comb~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \display[2]~15_dataout\ & \display[6]~13_dataout\ & NOT \dado~dataout\(0));

\comb~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\comb~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~17sexpand1_dataout\ & \comb~17sexpand0_dataout\ & \display[1]$latch~9_dataout\);

\display[1]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(0) & NOT \dado~dataout\(3) & \comb~17sexpand1_dataout\ & \comb~17sexpand0_dataout\);

\display[1]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(1) & \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~17sexpand1_dataout\ & \comb~17sexpand0_dataout\);

\display[1]$latch~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(1) & NOT \dado~dataout\(2) & \dado~dataout\(0) & \comb~17sexpand1_dataout\ & \comb~17sexpand0_dataout\);

\display[1]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[1]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[1]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~21sexpand0_dataout\ & \display[3]$latch~9_dataout\);

\display[3]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & NOT \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2) & \comb~21sexpand0_dataout\);

\display[3]$latch~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[3]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[3]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~22sexpand3_dataout\ & \comb~22sexpand2_dataout\ & \comb~22sexpand1_dataout\ & \comb~22sexpand0_dataout\ & \display[4]$latch~9_dataout\);

\display[4]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(0) & \dado~dataout\(1) & \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~22sexpand3_dataout\ & \comb~22sexpand2_dataout\ & \comb~22sexpand1_dataout\ & \comb~22sexpand0_dataout\);

\display[4]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(1) & NOT \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~22sexpand3_dataout\ & \comb~22sexpand2_dataout\ & \comb~22sexpand1_dataout\ & \comb~22sexpand0_dataout\);

\display[4]$latch~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[4]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[4]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~24sexpand0bal_dataout\ & \display[5]$latch~9_dataout\);

\display[5]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(0) & \dado~dataout\(1) & \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~24sexpand0bal_dataout\);

\display[5]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(0) & NOT \dado~dataout\(1) & \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~24sexpand0bal_dataout\);

\display[5]$latch~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[5]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[5]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~26sexpand3_dataout\ & \comb~26sexpand2_dataout\ & \comb~22sexpand3_dataout\ & \comb~26sexpand0_dataout\ & \display[6]$latch~9_dataout\);

\display[6]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(0) & NOT \dado~dataout\(1) & \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~26sexpand3_dataout\ & \comb~26sexpand2_dataout\ & \comb~22sexpand3_dataout\ & \comb~26sexpand0_dataout\);

\display[6]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(0) & NOT \dado~dataout\(1) & NOT \dado~dataout\(2) & NOT \dado~dataout\(3) & \comb~26sexpand3_dataout\ & \comb~26sexpand2_dataout\ & \comb~22sexpand3_dataout\ & \comb~26sexpand0_dataout\);

\display[6]$latch~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[6]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[6]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~15sexpand0_dataout\ & \display[0]$latch~9_dataout\);

\display[0]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & NOT \dado~dataout\(2) & NOT \dado~dataout\(3) & \display[6]~13_dataout\ & \comb~15sexpand0_dataout\);

\display[0]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(0) & NOT \dado~dataout\(2) & NOT \dado~dataout\(3) & \display[6]~13_dataout\ & \comb~15sexpand0_dataout\);

\display[0]$latch~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[0]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[0]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \display[2]$latch~9_dataout\ & \comb~19_dataout\);

\display[2]$latch~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \comb~20_dataout\ & \comb~19_dataout\);

\display[2]$latch~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \display[2]~15_dataout\ & NOT \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2) & \display[2]$latch~9_dataout\);

\display[2]$latch~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \display[2]~15_dataout\ & NOT \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2) & \comb~20_dataout\);

\display[2]$latch~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\display[2]$latch~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\display[2]$latch~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \display[6]~13_dataout\ & NOT \display[2]~15_dataout\ & NOT \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2));

\comb~83_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\comb~83_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~83_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & \dado~dataout\(1) & \dado~dataout\(0));

\comb~24sexpand0bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & NOT \dado~dataout\(1) & NOT \dado~dataout\(0));

\comb~24sexpand0bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(2) & NOT \dado~dataout\(3));

\comb~24sexpand0bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(2) & NOT \dado~dataout\(1));

\comb~24sexpand0bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\comb~24sexpand0bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~24sexpand0bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\comb~17sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & NOT \dado~dataout\(0) & \dado~dataout\(1));

\comb~17sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(2) & NOT \dado~dataout\(0) & NOT \dado~dataout\(1));

\comb~21sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal7~2sexp_dataout\ & \display[6]~13_dataout\);

\comb~22sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & NOT \dado~dataout\(2) & \dado~dataout\(1));

\comb~22sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(0) & NOT \dado~dataout\(3) & \dado~dataout\(2));

\comb~22sexpand2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & \dado~dataout\(2) & NOT \dado~dataout\(1));

\comb~22sexpand3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(3) & NOT \dado~dataout\(2) & NOT \dado~dataout\(1));

\comb~26sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & NOT \dado~dataout\(0) & NOT \dado~dataout\(2));

\comb~26sexpand2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(3) & \dado~dataout\(0) & \dado~dataout\(2));

\comb~26sexpand3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & NOT \dado~dataout\(3));

\Equal8~3sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2));

\comb~15sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Equal6~3sexp_dataout\ & \Equal7~2sexp_dataout\ & \Equal8~3sexpand0_dataout\ & \display[6]~13_dataout\);

\Equal7~2sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & NOT \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2));

\Equal6~3sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dado~dataout\(1) & \dado~dataout\(0) & NOT \dado~dataout\(3) & NOT \dado~dataout\(2));
\ALT_INV_display[6]~13_dataout\ <= NOT \display[6]~13_dataout\;
\ALT_INV_display[2]~15_dataout\ <= NOT \display[2]~15_dataout\;
\ALT_INV_dado~dataout\(1) <= NOT \dado~dataout\(1);
\ALT_INV_dado~dataout\(0) <= NOT \dado~dataout\(0);
\ALT_INV_dado~dataout\(2) <= NOT \dado~dataout\(2);
\ALT_INV_dado~dataout\(3) <= NOT \dado~dataout\(3);

-- Location: PIN_93
\dado[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado(0),
	dataout => \dado~dataout\(0));

-- Location: PIN_92
\dado[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado(3),
	dataout => \dado~dataout\(3));

-- Location: SEXP1
\comb~17sexpand0\ : max_sexp
PORT MAP (
	datain => \comb~17sexpand0_datain_bus\,
	dataout => \comb~17sexpand0_dataout\);

-- Location: PIN_46
\dado[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado(2),
	dataout => \dado~dataout\(2));

-- Location: SEXP3
\comb~17sexpand1\ : max_sexp
PORT MAP (
	datain => \comb~17sexpand1_datain_bus\,
	dataout => \comb~17sexpand1_dataout\);

-- Location: PIN_85
\dado[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dado(1),
	dataout => \dado~dataout\(1));

-- Location: LC4
\display[1]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[1]$latch~9_pterm0_bus\,
	pterm1 => \display[1]$latch~9_pterm1_bus\,
	pterm2 => \display[1]$latch~9_pterm2_bus\,
	pterm3 => \display[1]$latch~9_pterm3_bus\,
	pterm4 => \display[1]$latch~9_pterm4_bus\,
	pterm5 => \display[1]$latch~9_pterm5_bus\,
	pxor => \display[1]$latch~9_pxor_bus\,
	pclk => \display[1]$latch~9_pclk_bus\,
	papre => \display[1]$latch~9_papre_bus\,
	paclr => \display[1]$latch~9_paclr_bus\,
	pena => \display[1]$latch~9_pena_bus\,
	dataout => \display[1]$latch~9_dataout\);

-- Location: SEXP9
\Equal7~2sexp\ : max_sexp
PORT MAP (
	datain => \Equal7~2sexp_datain_bus\,
	dataout => \Equal7~2sexp_dataout\);

-- Location: SEXP4
\comb~21sexpand0\ : max_sexp
PORT MAP (
	datain => \comb~21sexpand0_datain_bus\,
	dataout => \comb~21sexpand0_dataout\);

-- Location: LC3
\display[3]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[3]$latch~9_pterm0_bus\,
	pterm1 => \display[3]$latch~9_pterm1_bus\,
	pterm2 => \display[3]$latch~9_pterm2_bus\,
	pterm3 => \display[3]$latch~9_pterm3_bus\,
	pterm4 => \display[3]$latch~9_pterm4_bus\,
	pterm5 => \display[3]$latch~9_pterm5_bus\,
	pxor => \display[3]$latch~9_pxor_bus\,
	pclk => \display[3]$latch~9_pclk_bus\,
	papre => \display[3]$latch~9_papre_bus\,
	paclr => \display[3]$latch~9_paclr_bus\,
	pena => \display[3]$latch~9_pena_bus\,
	dataout => \display[3]$latch~9_dataout\);

-- Location: SEXP5
\comb~22sexpand0\ : max_sexp
PORT MAP (
	datain => \comb~22sexpand0_datain_bus\,
	dataout => \comb~22sexpand0_dataout\);

-- Location: SEXP11
\comb~22sexpand1\ : max_sexp
PORT MAP (
	datain => \comb~22sexpand1_datain_bus\,
	dataout => \comb~22sexpand1_dataout\);

-- Location: SEXP16
\comb~22sexpand2\ : max_sexp
PORT MAP (
	datain => \comb~22sexpand2_datain_bus\,
	dataout => \comb~22sexpand2_dataout\);

-- Location: SEXP15
\comb~22sexpand3\ : max_sexp
PORT MAP (
	datain => \comb~22sexpand3_datain_bus\,
	dataout => \comb~22sexpand3_dataout\);

-- Location: LC6
\display[4]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[4]$latch~9_pterm0_bus\,
	pterm1 => \display[4]$latch~9_pterm1_bus\,
	pterm2 => \display[4]$latch~9_pterm2_bus\,
	pterm3 => \display[4]$latch~9_pterm3_bus\,
	pterm4 => \display[4]$latch~9_pterm4_bus\,
	pterm5 => \display[4]$latch~9_pterm5_bus\,
	pxor => \display[4]$latch~9_pxor_bus\,
	pclk => \display[4]$latch~9_pclk_bus\,
	papre => \display[4]$latch~9_papre_bus\,
	paclr => \display[4]$latch~9_paclr_bus\,
	pena => \display[4]$latch~9_pena_bus\,
	dataout => \display[4]$latch~9_dataout\);

-- Location: LC13
\comb~24sexpand0bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \comb~24sexpand0bal_pterm0_bus\,
	pterm1 => \comb~24sexpand0bal_pterm1_bus\,
	pterm2 => \comb~24sexpand0bal_pterm2_bus\,
	pterm3 => \comb~24sexpand0bal_pterm3_bus\,
	pterm4 => \comb~24sexpand0bal_pterm4_bus\,
	pterm5 => \comb~24sexpand0bal_pterm5_bus\,
	pxor => \comb~24sexpand0bal_pxor_bus\,
	pclk => \comb~24sexpand0bal_pclk_bus\,
	papre => \comb~24sexpand0bal_papre_bus\,
	paclr => \comb~24sexpand0bal_paclr_bus\,
	pena => \comb~24sexpand0bal_pena_bus\,
	dataout => \comb~24sexpand0bal_dataout\);

-- Location: LC7
\display[5]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[5]$latch~9_pterm0_bus\,
	pterm1 => \display[5]$latch~9_pterm1_bus\,
	pterm2 => \display[5]$latch~9_pterm2_bus\,
	pterm3 => \display[5]$latch~9_pterm3_bus\,
	pterm4 => \display[5]$latch~9_pterm4_bus\,
	pterm5 => \display[5]$latch~9_pterm5_bus\,
	pxor => \display[5]$latch~9_pxor_bus\,
	pclk => \display[5]$latch~9_pclk_bus\,
	papre => \display[5]$latch~9_papre_bus\,
	paclr => \display[5]$latch~9_paclr_bus\,
	pena => \display[5]$latch~9_pena_bus\,
	dataout => \display[5]$latch~9_dataout\);

-- Location: SEXP14
\comb~26sexpand0\ : max_sexp
PORT MAP (
	datain => \comb~26sexpand0_datain_bus\,
	dataout => \comb~26sexpand0_dataout\);

-- Location: SEXP6
\comb~26sexpand2\ : max_sexp
PORT MAP (
	datain => \comb~26sexpand2_datain_bus\,
	dataout => \comb~26sexpand2_dataout\);

-- Location: SEXP13
\comb~26sexpand3\ : max_sexp
PORT MAP (
	datain => \comb~26sexpand3_datain_bus\,
	dataout => \comb~26sexpand3_dataout\);

-- Location: LC9
\display[6]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[6]$latch~9_pterm0_bus\,
	pterm1 => \display[6]$latch~9_pterm1_bus\,
	pterm2 => \display[6]$latch~9_pterm2_bus\,
	pterm3 => \display[6]$latch~9_pterm3_bus\,
	pterm4 => \display[6]$latch~9_pterm4_bus\,
	pterm5 => \display[6]$latch~9_pterm5_bus\,
	pxor => \display[6]$latch~9_pxor_bus\,
	pclk => \display[6]$latch~9_pclk_bus\,
	papre => \display[6]$latch~9_papre_bus\,
	paclr => \display[6]$latch~9_paclr_bus\,
	pena => \display[6]$latch~9_pena_bus\,
	dataout => \display[6]$latch~9_dataout\);

-- Location: SEXP7
\Equal8~3sexpand0\ : max_sexp
PORT MAP (
	datain => \Equal8~3sexpand0_datain_bus\,
	dataout => \Equal8~3sexpand0_dataout\);

-- Location: SEXP10
\Equal6~3sexp\ : max_sexp
PORT MAP (
	datain => \Equal6~3sexp_datain_bus\,
	dataout => \Equal6~3sexp_dataout\);

-- Location: SEXP8
\comb~15sexpand0\ : max_sexp
PORT MAP (
	datain => \comb~15sexpand0_datain_bus\,
	dataout => \comb~15sexpand0_dataout\);

-- Location: LC10
\display[6]~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[6]~13_pterm0_bus\,
	pterm1 => \display[6]~13_pterm1_bus\,
	pterm2 => \display[6]~13_pterm2_bus\,
	pterm3 => \display[6]~13_pterm3_bus\,
	pterm4 => \display[6]~13_pterm4_bus\,
	pterm5 => \display[6]~13_pterm5_bus\,
	pxor => \display[6]~13_pxor_bus\,
	pclk => \display[6]~13_pclk_bus\,
	papre => \display[6]~13_papre_bus\,
	paclr => \display[6]~13_paclr_bus\,
	pena => \display[6]~13_pena_bus\,
	dataout => \display[6]~13_dataout\);

-- Location: LC11
\display[0]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[0]$latch~9_pterm0_bus\,
	pterm1 => \display[0]$latch~9_pterm1_bus\,
	pterm2 => \display[0]$latch~9_pterm2_bus\,
	pterm3 => \display[0]$latch~9_pterm3_bus\,
	pterm4 => \display[0]$latch~9_pterm4_bus\,
	pterm5 => \display[0]$latch~9_pterm5_bus\,
	pxor => \display[0]$latch~9_pxor_bus\,
	pclk => \display[0]$latch~9_pclk_bus\,
	papre => \display[0]$latch~9_papre_bus\,
	paclr => \display[0]$latch~9_paclr_bus\,
	pena => \display[0]$latch~9_pena_bus\,
	dataout => \display[0]$latch~9_dataout\);

-- Location: LC8
\display[2]~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[2]~15_pterm0_bus\,
	pterm1 => \display[2]~15_pterm1_bus\,
	pterm2 => \display[2]~15_pterm2_bus\,
	pterm3 => \display[2]~15_pterm3_bus\,
	pterm4 => \display[2]~15_pterm4_bus\,
	pterm5 => \display[2]~15_pterm5_bus\,
	pxor => \display[2]~15_pxor_bus\,
	pclk => \display[2]~15_pclk_bus\,
	papre => \display[2]~15_papre_bus\,
	paclr => \display[2]~15_paclr_bus\,
	pena => \display[2]~15_pena_bus\,
	dataout => \display[2]~15_dataout\);

-- Location: LC12
\comb~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \comb~19_pterm0_bus\,
	pterm1 => \comb~19_pterm1_bus\,
	pterm2 => \comb~19_pterm2_bus\,
	pterm3 => \comb~19_pterm3_bus\,
	pterm4 => \comb~19_pterm4_bus\,
	pterm5 => \comb~19_pterm5_bus\,
	pxor => \comb~19_pxor_bus\,
	pclk => \comb~19_pclk_bus\,
	papre => \comb~19_papre_bus\,
	paclr => \comb~19_paclr_bus\,
	pena => \comb~19_pena_bus\,
	dataout => \comb~19_dataout\);

-- Location: LC1
\comb~83\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \comb~83_pterm0_bus\,
	pterm1 => \comb~83_pterm1_bus\,
	pterm2 => \comb~83_pterm2_bus\,
	pterm3 => \comb~83_pterm3_bus\,
	pterm4 => \comb~83_pterm4_bus\,
	pterm5 => \comb~83_pterm5_bus\,
	pxor => \comb~83_pxor_bus\,
	pclk => \comb~83_pclk_bus\,
	papre => \comb~83_papre_bus\,
	paclr => \comb~83_paclr_bus\,
	pena => \comb~83_pena_bus\,
	pexpout => \comb~83_pexpout\);

-- Location: LC2
\comb~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \comb~83_pexpout\,
	pterm0 => \comb~20_pterm0_bus\,
	pterm1 => \comb~20_pterm1_bus\,
	pterm2 => \comb~20_pterm2_bus\,
	pterm3 => \comb~20_pterm3_bus\,
	pterm4 => \comb~20_pterm4_bus\,
	pterm5 => \comb~20_pterm5_bus\,
	pxor => \comb~20_pxor_bus\,
	pclk => \comb~20_pclk_bus\,
	papre => \comb~20_papre_bus\,
	paclr => \comb~20_paclr_bus\,
	pena => \comb~20_pena_bus\,
	dataout => \comb~20_dataout\);

-- Location: LC5
\display[2]$latch~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \display[2]$latch~9_pterm0_bus\,
	pterm1 => \display[2]$latch~9_pterm1_bus\,
	pterm2 => \display[2]$latch~9_pterm2_bus\,
	pterm3 => \display[2]$latch~9_pterm3_bus\,
	pterm4 => \display[2]$latch~9_pterm4_bus\,
	pterm5 => \display[2]$latch~9_pterm5_bus\,
	pxor => \display[2]$latch~9_pxor_bus\,
	pclk => \display[2]$latch~9_pclk_bus\,
	papre => \display[2]$latch~9_papre_bus\,
	paclr => \display[2]$latch~9_paclr_bus\,
	pena => \display[2]$latch~9_pena_bus\,
	dataout => \display[2]$latch~9_dataout\);

-- Location: PIN_10
\display[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[1]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(1));

-- Location: PIN_12
\display[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[3]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_8
\display[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[4]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_6
\display[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[5]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_100
\display[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[6]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(6));

-- Location: PIN_98
\display[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[0]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(0));

-- Location: PIN_9
\display[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \display[2]$latch~9_dataout\,
	oe => VCC,
	padio => ww_display(2));
END structure;


