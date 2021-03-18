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

-- DATE "05/28/2013 12:05:27"

-- 
-- Device: Altera EPM7128SLC84-7 Package PLCC84
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	Relogio IS
    PORT (
	clk : IN std_logic;
	BCD_SEG_UNI : OUT std_logic_vector(6 DOWNTO 0);
	BCD_SEG_DEZ : OUT std_logic_vector(6 DOWNTO 0);
	BCD_MIN_UNI : OUT std_logic_vector(6 DOWNTO 0);
	BCD_MIN_DEZ : OUT std_logic_vector(6 DOWNTO 0);
	BCD_HR_UNI : OUT std_logic_vector(6 DOWNTO 0);
	BCD_HR_DEZ : OUT std_logic_vector(6 DOWNTO 0)
	);
END Relogio;

-- Design Ports Information
-- clk	=>  Location: PIN_83
-- BCD_HR_DEZ[5]	=>  Location: PIN_54
-- BCD_SEG_UNI[4]	=>  Location: PIN_21
-- BCD_SEG_DEZ[2]	=>  Location: PIN_41
-- BCD_HR_DEZ[0]	=>  Location: PIN_56
-- BCD_HR_DEZ[1]	=>  Location: PIN_6
-- BCD_HR_DEZ[4]	=>  Location: PIN_55
-- BCD_SEG_UNI[2]	=>  Location: PIN_20
-- BCD_SEG_DEZ[4]	=>  Location: PIN_40
-- BCD_MIN_UNI[4]	=>  Location: PIN_29
-- BCD_MIN_DEZ[2]	=>  Location: PIN_44
-- BCD_HR_DEZ[2]	=>  Location: PIN_57
-- BCD_SEG_DEZ[0]	=>  Location: PIN_39
-- BCD_SEG_DEZ[5]	=>  Location: PIN_37
-- BCD_MIN_UNI[2]	=>  Location: PIN_28
-- BCD_MIN_DEZ[4]	=>  Location: PIN_46
-- BCD_HR_DEZ[3]	=>  Location: PIN_58
-- BCD_HR_DEZ[6]	=>  Location: PIN_60
-- BCD_SEG_DEZ[1]	=>  Location: PIN_36
-- BCD_MIN_DEZ[0]	=>  Location: PIN_48
-- BCD_MIN_DEZ[5]	=>  Location: PIN_49
-- BCD_HR_UNI[2]	=>  Location: PIN_4
-- BCD_SEG_UNI[0]	=>  Location: PIN_17
-- BCD_SEG_UNI[3]	=>  Location: PIN_22
-- BCD_SEG_UNI[5]	=>  Location: PIN_18
-- BCD_SEG_DEZ[3]	=>  Location: PIN_35
-- BCD_MIN_DEZ[1]	=>  Location: PIN_50
-- BCD_SEG_UNI[1]	=>  Location: PIN_15
-- BCD_SEG_UNI[6]	=>  Location: PIN_16
-- BCD_SEG_DEZ[6]	=>  Location: PIN_34
-- BCD_MIN_UNI[0]	=>  Location: PIN_24
-- BCD_MIN_UNI[3]	=>  Location: PIN_27
-- BCD_MIN_UNI[5]	=>  Location: PIN_25
-- BCD_MIN_DEZ[3]	=>  Location: PIN_51
-- BCD_MIN_UNI[1]	=>  Location: PIN_30
-- BCD_MIN_UNI[6]	=>  Location: PIN_31
-- BCD_MIN_DEZ[6]	=>  Location: PIN_45
-- BCD_HR_UNI[0]	=>  Location: PIN_11
-- BCD_HR_UNI[1]	=>  Location: PIN_12
-- BCD_HR_UNI[5]	=>  Location: PIN_10
-- BCD_HR_UNI[4]	=>  Location: PIN_5
-- BCD_HR_UNI[3]	=>  Location: PIN_8
-- BCD_HR_UNI[6]	=>  Location: PIN_9

ARCHITECTURE structure OF Relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_clk : std_logic;
SIGNAL ww_BCD_SEG_UNI : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_SEG_DEZ : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_MIN_UNI : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_MIN_DEZ : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_HR_UNI : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD_HR_DEZ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT3|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT0|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT0|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT0|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT2|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT3|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT2|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT3|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT1|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT2|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos0|contadorFFT0|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT1|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT1|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT2|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos0|contadorFFT0|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|clr~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Segundos1|contadorFFT1|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT2|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Horas0|contadorFFT4|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[1]~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~17_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[0]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Minutos1|contadorFFT1|qv_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~28_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|dezena_seg_7[2]~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[2]~68_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~74_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[5]~80_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~87_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[4]~93_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~100_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~106_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[1]~107_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[0]~110_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[3]~112_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \BcdHoras|unidade_seg_7[6]~116_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT3|qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT2|qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT1|qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT0|qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT2|qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT1|qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT0|qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT3|qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT2|qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT1|qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT0|qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT2|qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT1|qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT0|qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT0|qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT4|qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT3|qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT2|qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT1|qv~dataout\ : std_logic;
SIGNAL \Horas0|clr~7_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[4]~24_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[2]~12_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[0]~20_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[1]~13_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[0]~17_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[2]~27_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[4]~14_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[4]~24_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[2]~12_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[2]~24_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[0]~18_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[5]~20_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[2]~27_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[4]~14_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[2]~28_dataout\ : std_logic;
SIGNAL \BcdHoras|dezena_seg_7[2]~32_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[1]~22_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[0]~18_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[5]~20_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[2]~68_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[0]~44_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[3]~28_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[5]~39_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[3]~26_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[1]~22_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[1]~51_dataout\ : std_logic;
SIGNAL \BcdSegundos|unidade_seg_7[6]~45_dataout\ : std_logic;
SIGNAL \BcdSegundos|dezena_seg_7[3]~31_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[0]~44_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[3]~28_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[5]~39_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[3]~26_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[1]~51_dataout\ : std_logic;
SIGNAL \BcdMinutos|unidade_seg_7[6]~45_dataout\ : std_logic;
SIGNAL \BcdMinutos|dezena_seg_7[3]~31_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[0]~110_pexpout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[0]~87_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[1]~107_pexpout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[1]~74_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[5]~80_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[4]~93_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[3]~112_pexpout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[3]~100_dataout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[6]~116_pexpout\ : std_logic;
SIGNAL \BcdHoras|unidade_seg_7[6]~106_dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT3|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT0|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT0|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT0|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT2|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT3|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT2|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT3|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT1|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT2|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos0|contadorFFT0|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT1|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT1|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT2|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos0|contadorFFT0|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Segundos1|contadorFFT1|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT2|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Horas0|contadorFFT4|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \Minutos1|contadorFFT1|ALT_INV_qv~dataout\ : std_logic;
SIGNAL \ALT_INV_clk~dataout\ : std_logic;

BEGIN

ww_clk <= clk;
BCD_SEG_UNI <= ww_BCD_SEG_UNI;
BCD_SEG_DEZ <= ww_BCD_SEG_DEZ;
BCD_MIN_UNI <= ww_BCD_MIN_UNI;
BCD_MIN_DEZ <= ww_BCD_MIN_DEZ;
BCD_HR_UNI <= ww_BCD_HR_UNI;
BCD_HR_DEZ <= ww_BCD_HR_DEZ;

\Segundos0|contadorFFT3|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT3|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos0|contadorFFT3|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\Segundos0|contadorFFT3|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT0|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT1|qv~dataout\);

\Segundos1|contadorFFT0|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos1|contadorFFT0|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\Segundos1|contadorFFT0|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT0|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT1|qv~dataout\);

\Minutos1|contadorFFT0|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos1|contadorFFT0|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\Minutos1|contadorFFT0|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT0|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT0|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|contadorFFT0|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT0|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT2|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT3|qv~dataout\);

\Segundos0|contadorFFT2|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos0|contadorFFT2|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\Segundos0|contadorFFT2|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT3|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\);

\Minutos0|contadorFFT3|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos0|contadorFFT3|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\Minutos0|contadorFFT3|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT2|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT3|qv~dataout\);

\Minutos0|contadorFFT2|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos0|contadorFFT2|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\Minutos0|contadorFFT2|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT3|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT4|qv~dataout\);

\Horas0|contadorFFT3|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|contadorFFT3|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT3|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT1|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT2|qv~dataout\);

\Segundos0|contadorFFT1|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos0|contadorFFT1|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\Segundos0|contadorFFT1|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT2|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\);

\Horas0|contadorFFT2|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|contadorFFT2|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT2|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos0|contadorFFT0|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT1|qv~dataout\);

\Segundos0|contadorFFT0|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos0|contadorFFT0|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\Segundos0|contadorFFT0|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT1|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT2|qv~dataout\);

\Minutos0|contadorFFT1|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos0|contadorFFT1|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\Minutos0|contadorFFT1|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT1|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\);

\Horas0|contadorFFT1|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|contadorFFT1|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT1|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT2|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\);

\Segundos1|contadorFFT2|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos1|contadorFFT2|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\Segundos1|contadorFFT2|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos0|contadorFFT0|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT1|qv~dataout\);

\Minutos0|contadorFFT0|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos0|contadorFFT0|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\Minutos0|contadorFFT0|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|clr~7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|clr~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|clr~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Segundos1|contadorFFT1|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT2|qv~dataout\);

\Segundos1|contadorFFT1|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Segundos1|contadorFFT1|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\Segundos1|contadorFFT1|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT2|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\);

\Minutos1|contadorFFT2|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos1|contadorFFT2|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\Minutos1|contadorFFT2|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Horas0|contadorFFT4|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\);

\Horas0|contadorFFT4|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Horas0|contadorFFT4|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\Horas0|contadorFFT4|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[4]~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\);

\BcdSegundos|unidade_seg_7[4]~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[4]~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[4]~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[4]~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT2|qv~dataout\);

\BcdSegundos|dezena_seg_7[2]~12_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[2]~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[2]~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|dezena_seg_7[1]~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[1]~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|dezena_seg_7[1]~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[1]~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[1]~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\);

\BcdHoras|dezena_seg_7[0]~17_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|dezena_seg_7[0]~17_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[0]~17_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~17_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\);

\BcdHoras|dezena_seg_7[0]~20_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[0]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[0]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Minutos1|contadorFFT1|qv_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT2|qv~dataout\);

\Minutos1|contadorFFT1|qv_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Minutos1|contadorFFT1|qv_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\Minutos1|contadorFFT1|qv_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[2]~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[2]~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[2]~27_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[2]~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[2]~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[4]~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\);

\BcdMinutos|unidade_seg_7[4]~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[4]~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[4]~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[4]~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT2|qv~dataout\);

\BcdMinutos|dezena_seg_7[2]~12_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[2]~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[2]~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT2|qv~dataout\);

\BcdSegundos|dezena_seg_7[4]~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[4]~14_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[4]~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[4]~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[0]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[0]~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[0]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[0]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT1|qv~dataout\ & NOT \Segundos1|contadorFFT2|qv~dataout\);

\BcdSegundos|dezena_seg_7[5]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\);

\BcdSegundos|dezena_seg_7[5]~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[5]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[5]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[2]~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[2]~27_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[2]~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[2]~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT2|qv~dataout\);

\BcdMinutos|dezena_seg_7[4]~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[4]~14_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[4]~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[4]~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~28_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~28_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~28_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[2]~28_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~28_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|dezena_seg_7[2]~32_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|dezena_seg_7[2]~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|dezena_seg_7[2]~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT1|qv~dataout\ & \Segundos1|contadorFFT0|qv~dataout\);

\BcdSegundos|dezena_seg_7[1]~22_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT1|qv~dataout\ & NOT \Segundos1|contadorFFT2|qv~dataout\ & NOT \Segundos1|contadorFFT0|qv~dataout\);

\BcdSegundos|dezena_seg_7[1]~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[1]~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[1]~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[0]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[0]~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[0]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[0]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT1|qv~dataout\ & NOT \Minutos1|contadorFFT2|qv~dataout\);

\BcdMinutos|dezena_seg_7[5]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\);

\BcdMinutos|dezena_seg_7[5]~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[5]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[5]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\);

\BcdHoras|unidade_seg_7[2]~68_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[2]~68_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[2]~68_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[2]~68_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[2]~68_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[2]~68_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT1|qv~dataout\ & \Minutos1|contadorFFT0|qv~dataout\);

\BcdMinutos|dezena_seg_7[1]~22_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT1|qv~dataout\ & NOT \Minutos1|contadorFFT2|qv~dataout\ & NOT \Minutos1|contadorFFT0|qv~dataout\);

\BcdMinutos|dezena_seg_7[1]~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[1]~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[1]~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT2|qv~dataout\ & \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT2|qv~dataout\ & NOT \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[3]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[3]~28_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[3]~28_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[3]~28_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[3]~28_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[3]~28_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[3]~28_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[3]~28_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[3]~28_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[3]~28_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[3]~28_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[3]~28_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[5]~39_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[5]~39_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT3|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[5]~39_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT3|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[5]~39_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[5]~39_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[5]~39_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[0]~44_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[0]~44_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT3|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[0]~44_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\ & \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[0]~44_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[0]~44_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[0]~44_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT2|qv~dataout\ & \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT2|qv~dataout\ & NOT \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[3]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[3]~28_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[3]~28_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[3]~28_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[3]~28_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[3]~28_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[3]~28_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[3]~28_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[3]~28_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[3]~28_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[3]~28_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[3]~28_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[6]~45_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & \Segundos0|contadorFFT0|qv~dataout\);

\BcdSegundos|unidade_seg_7[6]~45_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\);

\BcdSegundos|unidade_seg_7[6]~45_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT2|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT3|qv~dataout\);

\BcdSegundos|unidade_seg_7[6]~45_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[6]~45_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[6]~45_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[1]~51_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT3|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT1|qv~dataout\);

\BcdSegundos|unidade_seg_7[1]~51_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT0|qv~dataout\ & \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[1]~51_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos0|contadorFFT3|qv~dataout\ & NOT \Segundos0|contadorFFT0|qv~dataout\ & NOT \Segundos0|contadorFFT1|qv~dataout\ & NOT \Segundos0|contadorFFT2|qv~dataout\);

\BcdSegundos|unidade_seg_7[1]~51_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|unidade_seg_7[1]~51_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|unidade_seg_7[1]~51_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[5]~39_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[5]~39_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT3|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[5]~39_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT3|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[5]~39_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[5]~39_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[5]~39_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[0]~44_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[0]~44_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT3|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[0]~44_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\ & \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[0]~44_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[0]~44_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[0]~44_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT0|qv~dataout\ & \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~31_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Segundos1|contadorFFT2|qv~dataout\ & \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~31_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Segundos1|contadorFFT2|qv~dataout\ & NOT \Segundos1|contadorFFT0|qv~dataout\ & NOT \Segundos1|contadorFFT1|qv~dataout\);

\BcdSegundos|dezena_seg_7[3]~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdSegundos|dezena_seg_7[3]~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdSegundos|dezena_seg_7[3]~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[6]~45_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & \Minutos0|contadorFFT0|qv~dataout\);

\BcdMinutos|unidade_seg_7[6]~45_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\);

\BcdMinutos|unidade_seg_7[6]~45_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT2|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT3|qv~dataout\);

\BcdMinutos|unidade_seg_7[6]~45_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[6]~45_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[6]~45_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[1]~51_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT3|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT1|qv~dataout\);

\BcdMinutos|unidade_seg_7[1]~51_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT0|qv~dataout\ & \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[1]~51_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos0|contadorFFT3|qv~dataout\ & NOT \Minutos0|contadorFFT0|qv~dataout\ & NOT \Minutos0|contadorFFT1|qv~dataout\ & NOT \Minutos0|contadorFFT2|qv~dataout\);

\BcdMinutos|unidade_seg_7[1]~51_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|unidade_seg_7[1]~51_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|unidade_seg_7[1]~51_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~74_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~74_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~74_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~74_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~74_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~74_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~74_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~74_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~74_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[1]~74_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~74_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[5]~80_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[5]~80_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & 
\Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|unidade_seg_7[5]~80_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|unidade_seg_7[5]~80_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & NOT 
\Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|unidade_seg_7[5]~80_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|unidade_seg_7[5]~80_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[5]~80_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[5]~80_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[5]~80_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[5]~80_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[5]~80_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~87_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\);

\BcdHoras|unidade_seg_7[0]~87_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[0]~87_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[0]~87_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[0]~87_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[0]~87_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~87_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~87_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~87_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[0]~87_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~87_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT0|qv~dataout\ & \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~31_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Minutos1|contadorFFT2|qv~dataout\ & \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~31_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Minutos1|contadorFFT2|qv~dataout\ & NOT \Minutos1|contadorFFT0|qv~dataout\ & NOT \Minutos1|contadorFFT1|qv~dataout\);

\BcdMinutos|dezena_seg_7[3]~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdMinutos|dezena_seg_7[3]~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdMinutos|dezena_seg_7[3]~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[4]~93_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[4]~93_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT 
\Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[4]~93_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[4]~93_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[4]~93_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[4]~93_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~100_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~100_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~100_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~100_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~100_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~100_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~100_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~100_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~100_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[3]~100_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~100_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~106_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~106_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~106_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~106_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~106_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT0|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~106_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~106_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~106_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~106_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[6]~106_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~106_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~107_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\);

\BcdHoras|unidade_seg_7[1]~107_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[1]~107_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[1]~107_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT4|qv~dataout\ & \Horas0|contadorFFT2|qv~dataout\ & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\
);

\BcdHoras|unidade_seg_7[0]~110_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[0]~110_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[0]~110_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~112_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT3|qv~dataout\ & \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~112_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[3]~112_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[3]~112_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[3]~112_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Horas0|contadorFFT2|qv~dataout\ & NOT \Horas0|contadorFFT0|qv~dataout\ & NOT \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~116_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Horas0|contadorFFT3|qv~dataout\ & NOT \Horas0|contadorFFT1|qv~dataout\ & \Horas0|contadorFFT4|qv~dataout\);

\BcdHoras|unidade_seg_7[6]~116_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\BcdHoras|unidade_seg_7[6]~116_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\BcdHoras|unidade_seg_7[6]~116_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\Segundos0|contadorFFT3|ALT_INV_qv~dataout\ <= NOT \Segundos0|contadorFFT3|qv~dataout\;
\Segundos1|contadorFFT0|ALT_INV_qv~dataout\ <= NOT \Segundos1|contadorFFT0|qv~dataout\;
\Minutos1|contadorFFT0|ALT_INV_qv~dataout\ <= NOT \Minutos1|contadorFFT0|qv~dataout\;
\Horas0|contadorFFT0|ALT_INV_qv~dataout\ <= NOT \Horas0|contadorFFT0|qv~dataout\;
\Segundos0|contadorFFT2|ALT_INV_qv~dataout\ <= NOT \Segundos0|contadorFFT2|qv~dataout\;
\Minutos0|contadorFFT3|ALT_INV_qv~dataout\ <= NOT \Minutos0|contadorFFT3|qv~dataout\;
\Minutos0|contadorFFT2|ALT_INV_qv~dataout\ <= NOT \Minutos0|contadorFFT2|qv~dataout\;
\Horas0|contadorFFT3|ALT_INV_qv~dataout\ <= NOT \Horas0|contadorFFT3|qv~dataout\;
\Segundos0|contadorFFT1|ALT_INV_qv~dataout\ <= NOT \Segundos0|contadorFFT1|qv~dataout\;
\Horas0|contadorFFT2|ALT_INV_qv~dataout\ <= NOT \Horas0|contadorFFT2|qv~dataout\;
\Segundos0|contadorFFT0|ALT_INV_qv~dataout\ <= NOT \Segundos0|contadorFFT0|qv~dataout\;
\Minutos0|contadorFFT1|ALT_INV_qv~dataout\ <= NOT \Minutos0|contadorFFT1|qv~dataout\;
\Horas0|contadorFFT1|ALT_INV_qv~dataout\ <= NOT \Horas0|contadorFFT1|qv~dataout\;
\Segundos1|contadorFFT2|ALT_INV_qv~dataout\ <= NOT \Segundos1|contadorFFT2|qv~dataout\;
\Minutos0|contadorFFT0|ALT_INV_qv~dataout\ <= NOT \Minutos0|contadorFFT0|qv~dataout\;
\Segundos1|contadorFFT1|ALT_INV_qv~dataout\ <= NOT \Segundos1|contadorFFT1|qv~dataout\;
\Minutos1|contadorFFT2|ALT_INV_qv~dataout\ <= NOT \Minutos1|contadorFFT2|qv~dataout\;
\Horas0|contadorFFT4|ALT_INV_qv~dataout\ <= NOT \Horas0|contadorFFT4|qv~dataout\;
\Minutos1|contadorFFT1|ALT_INV_qv~dataout\ <= NOT \Minutos1|contadorFFT1|qv~dataout\;
\ALT_INV_clk~dataout\ <= NOT \clk~dataout\;

-- Location: PIN_83
\clk~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	dataout => \clk~dataout\);

-- Location: LC30
\Segundos0|contadorFFT3|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~dataout\,
	pterm0 => \Segundos0|contadorFFT3|qv_pterm0_bus\,
	pterm1 => \Segundos0|contadorFFT3|qv_pterm1_bus\,
	pterm2 => \Segundos0|contadorFFT3|qv_pterm2_bus\,
	pterm3 => \Segundos0|contadorFFT3|qv_pterm3_bus\,
	pterm4 => \Segundos0|contadorFFT3|qv_pterm4_bus\,
	pterm5 => \Segundos0|contadorFFT3|qv_pterm5_bus\,
	pxor => \Segundos0|contadorFFT3|qv_pxor_bus\,
	pclk => \Segundos0|contadorFFT3|qv_pclk_bus\,
	papre => \Segundos0|contadorFFT3|qv_papre_bus\,
	paclr => \Segundos0|contadorFFT3|qv_paclr_bus\,
	pena => \Segundos0|contadorFFT3|qv_pena_bus\,
	dataout => \Segundos0|contadorFFT3|qv~dataout\);

-- Location: LC20
\Segundos0|contadorFFT2|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos0|contadorFFT2|qv_pterm0_bus\,
	pterm1 => \Segundos0|contadorFFT2|qv_pterm1_bus\,
	pterm2 => \Segundos0|contadorFFT2|qv_pterm2_bus\,
	pterm3 => \Segundos0|contadorFFT2|qv_pterm3_bus\,
	pterm4 => \Segundos0|contadorFFT2|qv_pterm4_bus\,
	pterm5 => \Segundos0|contadorFFT2|qv_pterm5_bus\,
	pxor => \Segundos0|contadorFFT2|qv_pxor_bus\,
	pclk => \Segundos0|contadorFFT2|qv_pclk_bus\,
	papre => \Segundos0|contadorFFT2|qv_papre_bus\,
	paclr => \Segundos0|contadorFFT2|qv_paclr_bus\,
	pena => \Segundos0|contadorFFT2|qv_pena_bus\,
	dataout => \Segundos0|contadorFFT2|qv~dataout\);

-- Location: LC31
\Segundos0|contadorFFT1|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos0|contadorFFT1|qv_pterm0_bus\,
	pterm1 => \Segundos0|contadorFFT1|qv_pterm1_bus\,
	pterm2 => \Segundos0|contadorFFT1|qv_pterm2_bus\,
	pterm3 => \Segundos0|contadorFFT1|qv_pterm3_bus\,
	pterm4 => \Segundos0|contadorFFT1|qv_pterm4_bus\,
	pterm5 => \Segundos0|contadorFFT1|qv_pterm5_bus\,
	pxor => \Segundos0|contadorFFT1|qv_pxor_bus\,
	pclk => \Segundos0|contadorFFT1|qv_pclk_bus\,
	papre => \Segundos0|contadorFFT1|qv_papre_bus\,
	paclr => \Segundos0|contadorFFT1|qv_paclr_bus\,
	pena => \Segundos0|contadorFFT1|qv_pena_bus\,
	dataout => \Segundos0|contadorFFT1|qv~dataout\);

-- Location: LC28
\Segundos0|contadorFFT0|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos0|contadorFFT0|qv_pterm0_bus\,
	pterm1 => \Segundos0|contadorFFT0|qv_pterm1_bus\,
	pterm2 => \Segundos0|contadorFFT0|qv_pterm2_bus\,
	pterm3 => \Segundos0|contadorFFT0|qv_pterm3_bus\,
	pterm4 => \Segundos0|contadorFFT0|qv_pterm4_bus\,
	pterm5 => \Segundos0|contadorFFT0|qv_pterm5_bus\,
	pxor => \Segundos0|contadorFFT0|qv_pxor_bus\,
	pclk => \Segundos0|contadorFFT0|qv_pclk_bus\,
	papre => \Segundos0|contadorFFT0|qv_papre_bus\,
	paclr => \Segundos0|contadorFFT0|qv_paclr_bus\,
	pena => \Segundos0|contadorFFT0|qv_pena_bus\,
	dataout => \Segundos0|contadorFFT0|qv~dataout\);

-- Location: LC23
\Segundos1|contadorFFT2|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos1|contadorFFT2|qv_pterm0_bus\,
	pterm1 => \Segundos1|contadorFFT2|qv_pterm1_bus\,
	pterm2 => \Segundos1|contadorFFT2|qv_pterm2_bus\,
	pterm3 => \Segundos1|contadorFFT2|qv_pterm3_bus\,
	pterm4 => \Segundos1|contadorFFT2|qv_pterm4_bus\,
	pterm5 => \Segundos1|contadorFFT2|qv_pterm5_bus\,
	pxor => \Segundos1|contadorFFT2|qv_pxor_bus\,
	pclk => \Segundos1|contadorFFT2|qv_pclk_bus\,
	papre => \Segundos1|contadorFFT2|qv_papre_bus\,
	paclr => \Segundos1|contadorFFT2|qv_paclr_bus\,
	pena => \Segundos1|contadorFFT2|qv_pena_bus\,
	dataout => \Segundos1|contadorFFT2|qv~dataout\);

-- Location: LC50
\Segundos1|contadorFFT1|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos1|contadorFFT1|qv_pterm0_bus\,
	pterm1 => \Segundos1|contadorFFT1|qv_pterm1_bus\,
	pterm2 => \Segundos1|contadorFFT1|qv_pterm2_bus\,
	pterm3 => \Segundos1|contadorFFT1|qv_pterm3_bus\,
	pterm4 => \Segundos1|contadorFFT1|qv_pterm4_bus\,
	pterm5 => \Segundos1|contadorFFT1|qv_pterm5_bus\,
	pxor => \Segundos1|contadorFFT1|qv_pxor_bus\,
	pclk => \Segundos1|contadorFFT1|qv_pclk_bus\,
	papre => \Segundos1|contadorFFT1|qv_papre_bus\,
	paclr => \Segundos1|contadorFFT1|qv_paclr_bus\,
	pena => \Segundos1|contadorFFT1|qv_pena_bus\,
	dataout => \Segundos1|contadorFFT1|qv~dataout\);

-- Location: LC18
\Segundos1|contadorFFT0|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Segundos1|contadorFFT0|qv_pterm0_bus\,
	pterm1 => \Segundos1|contadorFFT0|qv_pterm1_bus\,
	pterm2 => \Segundos1|contadorFFT0|qv_pterm2_bus\,
	pterm3 => \Segundos1|contadorFFT0|qv_pterm3_bus\,
	pterm4 => \Segundos1|contadorFFT0|qv_pterm4_bus\,
	pterm5 => \Segundos1|contadorFFT0|qv_pterm5_bus\,
	pxor => \Segundos1|contadorFFT0|qv_pxor_bus\,
	pclk => \Segundos1|contadorFFT0|qv_pclk_bus\,
	papre => \Segundos1|contadorFFT0|qv_papre_bus\,
	paclr => \Segundos1|contadorFFT0|qv_paclr_bus\,
	pena => \Segundos1|contadorFFT0|qv_pena_bus\,
	dataout => \Segundos1|contadorFFT0|qv~dataout\);

-- Location: LC22
\Minutos0|contadorFFT3|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos0|contadorFFT3|qv_pterm0_bus\,
	pterm1 => \Minutos0|contadorFFT3|qv_pterm1_bus\,
	pterm2 => \Minutos0|contadorFFT3|qv_pterm2_bus\,
	pterm3 => \Minutos0|contadorFFT3|qv_pterm3_bus\,
	pterm4 => \Minutos0|contadorFFT3|qv_pterm4_bus\,
	pterm5 => \Minutos0|contadorFFT3|qv_pterm5_bus\,
	pxor => \Minutos0|contadorFFT3|qv_pxor_bus\,
	pclk => \Minutos0|contadorFFT3|qv_pclk_bus\,
	papre => \Minutos0|contadorFFT3|qv_papre_bus\,
	paclr => \Minutos0|contadorFFT3|qv_paclr_bus\,
	pena => \Minutos0|contadorFFT3|qv_pena_bus\,
	dataout => \Minutos0|contadorFFT3|qv~dataout\);

-- Location: LC34
\Minutos0|contadorFFT2|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos0|contadorFFT2|qv_pterm0_bus\,
	pterm1 => \Minutos0|contadorFFT2|qv_pterm1_bus\,
	pterm2 => \Minutos0|contadorFFT2|qv_pterm2_bus\,
	pterm3 => \Minutos0|contadorFFT2|qv_pterm3_bus\,
	pterm4 => \Minutos0|contadorFFT2|qv_pterm4_bus\,
	pterm5 => \Minutos0|contadorFFT2|qv_pterm5_bus\,
	pxor => \Minutos0|contadorFFT2|qv_pxor_bus\,
	pclk => \Minutos0|contadorFFT2|qv_pclk_bus\,
	papre => \Minutos0|contadorFFT2|qv_papre_bus\,
	paclr => \Minutos0|contadorFFT2|qv_paclr_bus\,
	pena => \Minutos0|contadorFFT2|qv_pena_bus\,
	dataout => \Minutos0|contadorFFT2|qv~dataout\);

-- Location: LC26
\Minutos0|contadorFFT1|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos0|contadorFFT1|qv_pterm0_bus\,
	pterm1 => \Minutos0|contadorFFT1|qv_pterm1_bus\,
	pterm2 => \Minutos0|contadorFFT1|qv_pterm2_bus\,
	pterm3 => \Minutos0|contadorFFT1|qv_pterm3_bus\,
	pterm4 => \Minutos0|contadorFFT1|qv_pterm4_bus\,
	pterm5 => \Minutos0|contadorFFT1|qv_pterm5_bus\,
	pxor => \Minutos0|contadorFFT1|qv_pxor_bus\,
	pclk => \Minutos0|contadorFFT1|qv_pclk_bus\,
	papre => \Minutos0|contadorFFT1|qv_papre_bus\,
	paclr => \Minutos0|contadorFFT1|qv_paclr_bus\,
	pena => \Minutos0|contadorFFT1|qv_pena_bus\,
	dataout => \Minutos0|contadorFFT1|qv~dataout\);

-- Location: LC36
\Minutos0|contadorFFT0|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos0|contadorFFT0|qv_pterm0_bus\,
	pterm1 => \Minutos0|contadorFFT0|qv_pterm1_bus\,
	pterm2 => \Minutos0|contadorFFT0|qv_pterm2_bus\,
	pterm3 => \Minutos0|contadorFFT0|qv_pterm3_bus\,
	pterm4 => \Minutos0|contadorFFT0|qv_pterm4_bus\,
	pterm5 => \Minutos0|contadorFFT0|qv_pterm5_bus\,
	pxor => \Minutos0|contadorFFT0|qv_pxor_bus\,
	pclk => \Minutos0|contadorFFT0|qv_pclk_bus\,
	papre => \Minutos0|contadorFFT0|qv_papre_bus\,
	paclr => \Minutos0|contadorFFT0|qv_paclr_bus\,
	pena => \Minutos0|contadorFFT0|qv_pena_bus\,
	dataout => \Minutos0|contadorFFT0|qv~dataout\);

-- Location: LC41
\Minutos1|contadorFFT2|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos1|contadorFFT2|qv_pterm0_bus\,
	pterm1 => \Minutos1|contadorFFT2|qv_pterm1_bus\,
	pterm2 => \Minutos1|contadorFFT2|qv_pterm2_bus\,
	pterm3 => \Minutos1|contadorFFT2|qv_pterm3_bus\,
	pterm4 => \Minutos1|contadorFFT2|qv_pterm4_bus\,
	pterm5 => \Minutos1|contadorFFT2|qv_pterm5_bus\,
	pxor => \Minutos1|contadorFFT2|qv_pxor_bus\,
	pclk => \Minutos1|contadorFFT2|qv_pclk_bus\,
	papre => \Minutos1|contadorFFT2|qv_papre_bus\,
	paclr => \Minutos1|contadorFFT2|qv_paclr_bus\,
	pena => \Minutos1|contadorFFT2|qv_pena_bus\,
	dataout => \Minutos1|contadorFFT2|qv~dataout\);

-- Location: LC66
\Minutos1|contadorFFT1|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos1|contadorFFT1|qv_pterm0_bus\,
	pterm1 => \Minutos1|contadorFFT1|qv_pterm1_bus\,
	pterm2 => \Minutos1|contadorFFT1|qv_pterm2_bus\,
	pterm3 => \Minutos1|contadorFFT1|qv_pterm3_bus\,
	pterm4 => \Minutos1|contadorFFT1|qv_pterm4_bus\,
	pterm5 => \Minutos1|contadorFFT1|qv_pterm5_bus\,
	pxor => \Minutos1|contadorFFT1|qv_pxor_bus\,
	pclk => \Minutos1|contadorFFT1|qv_pclk_bus\,
	papre => \Minutos1|contadorFFT1|qv_papre_bus\,
	paclr => \Minutos1|contadorFFT1|qv_paclr_bus\,
	pena => \Minutos1|contadorFFT1|qv_pena_bus\,
	dataout => \Minutos1|contadorFFT1|qv~dataout\);

-- Location: LC33
\Minutos1|contadorFFT0|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Minutos1|contadorFFT0|qv_pterm0_bus\,
	pterm1 => \Minutos1|contadorFFT0|qv_pterm1_bus\,
	pterm2 => \Minutos1|contadorFFT0|qv_pterm2_bus\,
	pterm3 => \Minutos1|contadorFFT0|qv_pterm3_bus\,
	pterm4 => \Minutos1|contadorFFT0|qv_pterm4_bus\,
	pterm5 => \Minutos1|contadorFFT0|qv_pterm5_bus\,
	pxor => \Minutos1|contadorFFT0|qv_pxor_bus\,
	pclk => \Minutos1|contadorFFT0|qv_pclk_bus\,
	papre => \Minutos1|contadorFFT0|qv_papre_bus\,
	paclr => \Minutos1|contadorFFT0|qv_paclr_bus\,
	pena => \Minutos1|contadorFFT0|qv_pena_bus\,
	dataout => \Minutos1|contadorFFT0|qv~dataout\);

-- Location: LC1
\Horas0|contadorFFT0|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|contadorFFT0|qv_pterm0_bus\,
	pterm1 => \Horas0|contadorFFT0|qv_pterm1_bus\,
	pterm2 => \Horas0|contadorFFT0|qv_pterm2_bus\,
	pterm3 => \Horas0|contadorFFT0|qv_pterm3_bus\,
	pterm4 => \Horas0|contadorFFT0|qv_pterm4_bus\,
	pterm5 => \Horas0|contadorFFT0|qv_pterm5_bus\,
	pxor => \Horas0|contadorFFT0|qv_pxor_bus\,
	pclk => \Horas0|contadorFFT0|qv_pclk_bus\,
	papre => \Horas0|contadorFFT0|qv_papre_bus\,
	paclr => \Horas0|contadorFFT0|qv_paclr_bus\,
	pena => \Horas0|contadorFFT0|qv_pena_bus\,
	dataout => \Horas0|contadorFFT0|qv~dataout\);

-- Location: LC81
\Horas0|contadorFFT4|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|contadorFFT4|qv_pterm0_bus\,
	pterm1 => \Horas0|contadorFFT4|qv_pterm1_bus\,
	pterm2 => \Horas0|contadorFFT4|qv_pterm2_bus\,
	pterm3 => \Horas0|contadorFFT4|qv_pterm3_bus\,
	pterm4 => \Horas0|contadorFFT4|qv_pterm4_bus\,
	pterm5 => \Horas0|contadorFFT4|qv_pterm5_bus\,
	pxor => \Horas0|contadorFFT4|qv_pxor_bus\,
	pclk => \Horas0|contadorFFT4|qv_pclk_bus\,
	papre => \Horas0|contadorFFT4|qv_papre_bus\,
	paclr => \Horas0|contadorFFT4|qv_paclr_bus\,
	pena => \Horas0|contadorFFT4|qv_pena_bus\,
	dataout => \Horas0|contadorFFT4|qv~dataout\);

-- Location: LC15
\Horas0|contadorFFT3|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|contadorFFT3|qv_pterm0_bus\,
	pterm1 => \Horas0|contadorFFT3|qv_pterm1_bus\,
	pterm2 => \Horas0|contadorFFT3|qv_pterm2_bus\,
	pterm3 => \Horas0|contadorFFT3|qv_pterm3_bus\,
	pterm4 => \Horas0|contadorFFT3|qv_pterm4_bus\,
	pterm5 => \Horas0|contadorFFT3|qv_pterm5_bus\,
	pxor => \Horas0|contadorFFT3|qv_pxor_bus\,
	pclk => \Horas0|contadorFFT3|qv_pclk_bus\,
	papre => \Horas0|contadorFFT3|qv_papre_bus\,
	paclr => \Horas0|contadorFFT3|qv_paclr_bus\,
	pena => \Horas0|contadorFFT3|qv_pena_bus\,
	dataout => \Horas0|contadorFFT3|qv~dataout\);

-- Location: LC12
\Horas0|contadorFFT2|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|contadorFFT2|qv_pterm0_bus\,
	pterm1 => \Horas0|contadorFFT2|qv_pterm1_bus\,
	pterm2 => \Horas0|contadorFFT2|qv_pterm2_bus\,
	pterm3 => \Horas0|contadorFFT2|qv_pterm3_bus\,
	pterm4 => \Horas0|contadorFFT2|qv_pterm4_bus\,
	pterm5 => \Horas0|contadorFFT2|qv_pterm5_bus\,
	pxor => \Horas0|contadorFFT2|qv_pxor_bus\,
	pclk => \Horas0|contadorFFT2|qv_pclk_bus\,
	papre => \Horas0|contadorFFT2|qv_papre_bus\,
	paclr => \Horas0|contadorFFT2|qv_paclr_bus\,
	pena => \Horas0|contadorFFT2|qv_pena_bus\,
	dataout => \Horas0|contadorFFT2|qv~dataout\);

-- Location: LC9
\Horas0|contadorFFT1|qv\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|contadorFFT1|qv_pterm0_bus\,
	pterm1 => \Horas0|contadorFFT1|qv_pterm1_bus\,
	pterm2 => \Horas0|contadorFFT1|qv_pterm2_bus\,
	pterm3 => \Horas0|contadorFFT1|qv_pterm3_bus\,
	pterm4 => \Horas0|contadorFFT1|qv_pterm4_bus\,
	pterm5 => \Horas0|contadorFFT1|qv_pterm5_bus\,
	pxor => \Horas0|contadorFFT1|qv_pxor_bus\,
	pclk => \Horas0|contadorFFT1|qv_pclk_bus\,
	papre => \Horas0|contadorFFT1|qv_papre_bus\,
	paclr => \Horas0|contadorFFT1|qv_paclr_bus\,
	pena => \Horas0|contadorFFT1|qv_pena_bus\,
	dataout => \Horas0|contadorFFT1|qv~dataout\);

-- Location: LC83
\Horas0|clr~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Horas0|clr~7_pterm0_bus\,
	pterm1 => \Horas0|clr~7_pterm1_bus\,
	pterm2 => \Horas0|clr~7_pterm2_bus\,
	pterm3 => \Horas0|clr~7_pterm3_bus\,
	pterm4 => \Horas0|clr~7_pterm4_bus\,
	pterm5 => \Horas0|clr~7_pterm5_bus\,
	pxor => \Horas0|clr~7_pxor_bus\,
	pclk => \Horas0|clr~7_pclk_bus\,
	papre => \Horas0|clr~7_papre_bus\,
	paclr => \Horas0|clr~7_paclr_bus\,
	pena => \Horas0|clr~7_pena_bus\,
	dataout => \Horas0|clr~7_dataout\);

-- Location: LC19
\BcdSegundos|unidade_seg_7[4]~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[4]~24_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[4]~24_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[4]~24_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[4]~24_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[4]~24_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[4]~24_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[4]~24_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[4]~24_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[4]~24_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[4]~24_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[4]~24_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[4]~24_dataout\);

-- Location: LC49
\BcdSegundos|dezena_seg_7[2]~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[2]~12_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[2]~12_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[2]~12_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[2]~12_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[2]~12_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[2]~12_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[2]~12_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[2]~12_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[2]~12_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[2]~12_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[2]~12_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[2]~12_dataout\);

-- Location: LC86
\BcdHoras|dezena_seg_7[0]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[0]~20_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[0]~20_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[0]~20_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[0]~20_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[0]~20_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[0]~20_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[0]~20_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[0]~20_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[0]~20_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[0]~20_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[0]~20_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[0]~20_dataout\);

-- Location: LC13
\BcdHoras|dezena_seg_7[1]~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[1]~13_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[1]~13_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[1]~13_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[1]~13_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[1]~13_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[1]~13_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[1]~13_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[1]~13_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[1]~13_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[1]~13_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[1]~13_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[1]~13_dataout\);

-- Location: LC85
\BcdHoras|dezena_seg_7[0]~17\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[0]~17_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[0]~17_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[0]~17_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[0]~17_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[0]~17_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[0]~17_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[0]~17_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[0]~17_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[0]~17_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[0]~17_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[0]~17_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[0]~17_dataout\);

-- Location: LC21
\BcdSegundos|unidade_seg_7[2]~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[2]~27_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[2]~27_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[2]~27_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[2]~27_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[2]~27_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[2]~27_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[2]~27_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[2]~27_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[2]~27_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[2]~27_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[2]~27_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[2]~27_dataout\);

-- Location: LC51
\BcdSegundos|dezena_seg_7[4]~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[4]~14_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[4]~14_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[4]~14_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[4]~14_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[4]~14_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[4]~14_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[4]~14_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[4]~14_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[4]~14_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[4]~14_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[4]~14_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[4]~14_dataout\);

-- Location: LC38
\BcdMinutos|unidade_seg_7[4]~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[4]~24_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[4]~24_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[4]~24_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[4]~24_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[4]~24_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[4]~24_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[4]~24_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[4]~24_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[4]~24_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[4]~24_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[4]~24_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[4]~24_dataout\);

-- Location: LC65
\BcdMinutos|dezena_seg_7[2]~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[2]~12_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[2]~12_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[2]~12_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[2]~12_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[2]~12_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[2]~12_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[2]~12_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[2]~12_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[2]~12_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[2]~12_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[2]~12_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[2]~12_dataout\);

-- Location: LC88
\BcdHoras|dezena_seg_7[2]~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[2]~24_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[2]~24_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[2]~24_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[2]~24_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[2]~24_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[2]~24_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[2]~24_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[2]~24_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[2]~24_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[2]~24_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[2]~24_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[2]~24_dataout\);

-- Location: LC53
\BcdSegundos|dezena_seg_7[0]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[0]~18_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[0]~18_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[0]~18_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[0]~18_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[0]~18_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[0]~18_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[0]~18_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[0]~18_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[0]~18_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[0]~18_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[0]~18_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[0]~18_dataout\);

-- Location: LC56
\BcdSegundos|dezena_seg_7[5]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[5]~20_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[5]~20_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[5]~20_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[5]~20_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[5]~20_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[5]~20_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[5]~20_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[5]~20_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[5]~20_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[5]~20_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[5]~20_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[5]~20_dataout\);

-- Location: LC40
\BcdMinutos|unidade_seg_7[2]~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[2]~27_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[2]~27_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[2]~27_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[2]~27_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[2]~27_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[2]~27_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[2]~27_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[2]~27_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[2]~27_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[2]~27_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[2]~27_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[2]~27_dataout\);

-- Location: LC69
\BcdMinutos|dezena_seg_7[4]~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[4]~14_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[4]~14_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[4]~14_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[4]~14_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[4]~14_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[4]~14_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[4]~14_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[4]~14_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[4]~14_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[4]~14_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[4]~14_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[4]~14_dataout\);

-- Location: LC91
\BcdHoras|dezena_seg_7[2]~28\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[2]~28_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[2]~28_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[2]~28_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[2]~28_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[2]~28_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[2]~28_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[2]~28_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[2]~28_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[2]~28_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[2]~28_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[2]~28_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[2]~28_dataout\);

-- Location: LC93
\BcdHoras|dezena_seg_7[2]~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|dezena_seg_7[2]~32_pterm0_bus\,
	pterm1 => \BcdHoras|dezena_seg_7[2]~32_pterm1_bus\,
	pterm2 => \BcdHoras|dezena_seg_7[2]~32_pterm2_bus\,
	pterm3 => \BcdHoras|dezena_seg_7[2]~32_pterm3_bus\,
	pterm4 => \BcdHoras|dezena_seg_7[2]~32_pterm4_bus\,
	pterm5 => \BcdHoras|dezena_seg_7[2]~32_pterm5_bus\,
	pxor => \BcdHoras|dezena_seg_7[2]~32_pxor_bus\,
	pclk => \BcdHoras|dezena_seg_7[2]~32_pclk_bus\,
	papre => \BcdHoras|dezena_seg_7[2]~32_papre_bus\,
	paclr => \BcdHoras|dezena_seg_7[2]~32_paclr_bus\,
	pena => \BcdHoras|dezena_seg_7[2]~32_pena_bus\,
	dataout => \BcdHoras|dezena_seg_7[2]~32_dataout\);

-- Location: LC57
\BcdSegundos|dezena_seg_7[1]~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[1]~22_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[1]~22_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[1]~22_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[1]~22_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[1]~22_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[1]~22_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[1]~22_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[1]~22_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[1]~22_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[1]~22_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[1]~22_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[1]~22_dataout\);

-- Location: LC72
\BcdMinutos|dezena_seg_7[0]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[0]~18_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[0]~18_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[0]~18_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[0]~18_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[0]~18_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[0]~18_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[0]~18_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[0]~18_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[0]~18_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[0]~18_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[0]~18_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[0]~18_dataout\);

-- Location: LC73
\BcdMinutos|dezena_seg_7[5]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[5]~20_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[5]~20_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[5]~20_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[5]~20_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[5]~20_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[5]~20_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[5]~20_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[5]~20_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[5]~20_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[5]~20_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[5]~20_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[5]~20_dataout\);

-- Location: LC16
\BcdHoras|unidade_seg_7[2]~68\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[2]~68_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[2]~68_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[2]~68_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[2]~68_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[2]~68_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[2]~68_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[2]~68_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[2]~68_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[2]~68_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[2]~68_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[2]~68_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[2]~68_dataout\);

-- Location: LC25
\BcdSegundos|unidade_seg_7[0]~44\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[0]~44_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[0]~44_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[0]~44_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[0]~44_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[0]~44_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[0]~44_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[0]~44_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[0]~44_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[0]~44_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[0]~44_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[0]~44_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[0]~44_dataout\);

-- Location: LC17
\BcdSegundos|unidade_seg_7[3]~28\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[3]~28_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[3]~28_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[3]~28_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[3]~28_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[3]~28_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[3]~28_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[3]~28_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[3]~28_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[3]~28_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[3]~28_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[3]~28_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[3]~28_dataout\);

-- Location: LC24
\BcdSegundos|unidade_seg_7[5]~39\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[5]~39_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[5]~39_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[5]~39_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[5]~39_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[5]~39_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[5]~39_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[5]~39_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[5]~39_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[5]~39_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[5]~39_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[5]~39_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[5]~39_dataout\);

-- Location: LC59
\BcdSegundos|dezena_seg_7[3]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[3]~26_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[3]~26_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[3]~26_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[3]~26_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[3]~26_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[3]~26_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[3]~26_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[3]~26_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[3]~26_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[3]~26_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[3]~26_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[3]~26_dataout\);

-- Location: LC75
\BcdMinutos|dezena_seg_7[1]~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[1]~22_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[1]~22_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[1]~22_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[1]~22_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[1]~22_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[1]~22_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[1]~22_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[1]~22_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[1]~22_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[1]~22_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[1]~22_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[1]~22_dataout\);

-- Location: LC29
\BcdSegundos|unidade_seg_7[1]~51\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[1]~51_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[1]~51_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[1]~51_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[1]~51_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[1]~51_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[1]~51_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[1]~51_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[1]~51_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[1]~51_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[1]~51_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[1]~51_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[1]~51_dataout\);

-- Location: LC27
\BcdSegundos|unidade_seg_7[6]~45\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|unidade_seg_7[6]~45_pterm0_bus\,
	pterm1 => \BcdSegundos|unidade_seg_7[6]~45_pterm1_bus\,
	pterm2 => \BcdSegundos|unidade_seg_7[6]~45_pterm2_bus\,
	pterm3 => \BcdSegundos|unidade_seg_7[6]~45_pterm3_bus\,
	pterm4 => \BcdSegundos|unidade_seg_7[6]~45_pterm4_bus\,
	pterm5 => \BcdSegundos|unidade_seg_7[6]~45_pterm5_bus\,
	pxor => \BcdSegundos|unidade_seg_7[6]~45_pxor_bus\,
	pclk => \BcdSegundos|unidade_seg_7[6]~45_pclk_bus\,
	papre => \BcdSegundos|unidade_seg_7[6]~45_papre_bus\,
	paclr => \BcdSegundos|unidade_seg_7[6]~45_paclr_bus\,
	pena => \BcdSegundos|unidade_seg_7[6]~45_pena_bus\,
	dataout => \BcdSegundos|unidade_seg_7[6]~45_dataout\);

-- Location: LC61
\BcdSegundos|dezena_seg_7[3]~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdSegundos|dezena_seg_7[3]~31_pterm0_bus\,
	pterm1 => \BcdSegundos|dezena_seg_7[3]~31_pterm1_bus\,
	pterm2 => \BcdSegundos|dezena_seg_7[3]~31_pterm2_bus\,
	pterm3 => \BcdSegundos|dezena_seg_7[3]~31_pterm3_bus\,
	pterm4 => \BcdSegundos|dezena_seg_7[3]~31_pterm4_bus\,
	pterm5 => \BcdSegundos|dezena_seg_7[3]~31_pterm5_bus\,
	pxor => \BcdSegundos|dezena_seg_7[3]~31_pxor_bus\,
	pclk => \BcdSegundos|dezena_seg_7[3]~31_pclk_bus\,
	papre => \BcdSegundos|dezena_seg_7[3]~31_papre_bus\,
	paclr => \BcdSegundos|dezena_seg_7[3]~31_paclr_bus\,
	pena => \BcdSegundos|dezena_seg_7[3]~31_pena_bus\,
	dataout => \BcdSegundos|dezena_seg_7[3]~31_dataout\);

-- Location: LC46
\BcdMinutos|unidade_seg_7[0]~44\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[0]~44_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[0]~44_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[0]~44_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[0]~44_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[0]~44_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[0]~44_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[0]~44_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[0]~44_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[0]~44_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[0]~44_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[0]~44_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[0]~44_dataout\);

-- Location: LC43
\BcdMinutos|unidade_seg_7[3]~28\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[3]~28_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[3]~28_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[3]~28_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[3]~28_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[3]~28_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[3]~28_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[3]~28_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[3]~28_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[3]~28_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[3]~28_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[3]~28_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[3]~28_dataout\);

-- Location: LC45
\BcdMinutos|unidade_seg_7[5]~39\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[5]~39_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[5]~39_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[5]~39_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[5]~39_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[5]~39_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[5]~39_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[5]~39_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[5]~39_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[5]~39_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[5]~39_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[5]~39_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[5]~39_dataout\);

-- Location: LC77
\BcdMinutos|dezena_seg_7[3]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[3]~26_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[3]~26_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[3]~26_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[3]~26_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[3]~26_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[3]~26_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[3]~26_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[3]~26_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[3]~26_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[3]~26_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[3]~26_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[3]~26_dataout\);

-- Location: LC37
\BcdMinutos|unidade_seg_7[1]~51\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[1]~51_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[1]~51_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[1]~51_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[1]~51_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[1]~51_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[1]~51_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[1]~51_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[1]~51_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[1]~51_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[1]~51_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[1]~51_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[1]~51_dataout\);

-- Location: LC35
\BcdMinutos|unidade_seg_7[6]~45\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|unidade_seg_7[6]~45_pterm0_bus\,
	pterm1 => \BcdMinutos|unidade_seg_7[6]~45_pterm1_bus\,
	pterm2 => \BcdMinutos|unidade_seg_7[6]~45_pterm2_bus\,
	pterm3 => \BcdMinutos|unidade_seg_7[6]~45_pterm3_bus\,
	pterm4 => \BcdMinutos|unidade_seg_7[6]~45_pterm4_bus\,
	pterm5 => \BcdMinutos|unidade_seg_7[6]~45_pterm5_bus\,
	pxor => \BcdMinutos|unidade_seg_7[6]~45_pxor_bus\,
	pclk => \BcdMinutos|unidade_seg_7[6]~45_pclk_bus\,
	papre => \BcdMinutos|unidade_seg_7[6]~45_papre_bus\,
	paclr => \BcdMinutos|unidade_seg_7[6]~45_paclr_bus\,
	pena => \BcdMinutos|unidade_seg_7[6]~45_pena_bus\,
	dataout => \BcdMinutos|unidade_seg_7[6]~45_dataout\);

-- Location: LC67
\BcdMinutos|dezena_seg_7[3]~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdMinutos|dezena_seg_7[3]~31_pterm0_bus\,
	pterm1 => \BcdMinutos|dezena_seg_7[3]~31_pterm1_bus\,
	pterm2 => \BcdMinutos|dezena_seg_7[3]~31_pterm2_bus\,
	pterm3 => \BcdMinutos|dezena_seg_7[3]~31_pterm3_bus\,
	pterm4 => \BcdMinutos|dezena_seg_7[3]~31_pterm4_bus\,
	pterm5 => \BcdMinutos|dezena_seg_7[3]~31_pterm5_bus\,
	pxor => \BcdMinutos|dezena_seg_7[3]~31_pxor_bus\,
	pclk => \BcdMinutos|dezena_seg_7[3]~31_pclk_bus\,
	papre => \BcdMinutos|dezena_seg_7[3]~31_papre_bus\,
	paclr => \BcdMinutos|dezena_seg_7[3]~31_paclr_bus\,
	pena => \BcdMinutos|dezena_seg_7[3]~31_pena_bus\,
	dataout => \BcdMinutos|dezena_seg_7[3]~31_dataout\);

-- Location: LC4
\BcdHoras|unidade_seg_7[0]~110\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[0]~110_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[0]~110_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[0]~110_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[0]~110_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[0]~110_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[0]~110_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[0]~110_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[0]~110_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[0]~110_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[0]~110_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[0]~110_pena_bus\,
	pexpout => \BcdHoras|unidade_seg_7[0]~110_pexpout\);

-- Location: LC5
\BcdHoras|unidade_seg_7[0]~87\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \BcdHoras|unidade_seg_7[0]~110_pexpout\,
	pterm0 => \BcdHoras|unidade_seg_7[0]~87_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[0]~87_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[0]~87_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[0]~87_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[0]~87_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[0]~87_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[0]~87_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[0]~87_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[0]~87_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[0]~87_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[0]~87_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[0]~87_dataout\);

-- Location: LC2
\BcdHoras|unidade_seg_7[1]~107\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[1]~107_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[1]~107_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[1]~107_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[1]~107_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[1]~107_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[1]~107_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[1]~107_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[1]~107_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[1]~107_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[1]~107_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[1]~107_pena_bus\,
	pexpout => \BcdHoras|unidade_seg_7[1]~107_pexpout\);

-- Location: LC3
\BcdHoras|unidade_seg_7[1]~74\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \BcdHoras|unidade_seg_7[1]~107_pexpout\,
	pterm0 => \BcdHoras|unidade_seg_7[1]~74_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[1]~74_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[1]~74_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[1]~74_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[1]~74_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[1]~74_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[1]~74_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[1]~74_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[1]~74_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[1]~74_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[1]~74_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[1]~74_dataout\);

-- Location: LC6
\BcdHoras|unidade_seg_7[5]~80\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[5]~80_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[5]~80_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[5]~80_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[5]~80_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[5]~80_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[5]~80_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[5]~80_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[5]~80_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[5]~80_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[5]~80_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[5]~80_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[5]~80_dataout\);

-- Location: LC14
\BcdHoras|unidade_seg_7[4]~93\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[4]~93_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[4]~93_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[4]~93_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[4]~93_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[4]~93_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[4]~93_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[4]~93_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[4]~93_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[4]~93_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[4]~93_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[4]~93_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[4]~93_dataout\);

-- Location: LC10
\BcdHoras|unidade_seg_7[3]~112\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[3]~112_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[3]~112_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[3]~112_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[3]~112_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[3]~112_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[3]~112_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[3]~112_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[3]~112_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[3]~112_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[3]~112_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[3]~112_pena_bus\,
	pexpout => \BcdHoras|unidade_seg_7[3]~112_pexpout\);

-- Location: LC11
\BcdHoras|unidade_seg_7[3]~100\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \BcdHoras|unidade_seg_7[3]~112_pexpout\,
	pterm0 => \BcdHoras|unidade_seg_7[3]~100_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[3]~100_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[3]~100_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[3]~100_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[3]~100_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[3]~100_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[3]~100_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[3]~100_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[3]~100_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[3]~100_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[3]~100_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[3]~100_dataout\);

-- Location: LC7
\BcdHoras|unidade_seg_7[6]~116\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \BcdHoras|unidade_seg_7[6]~116_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[6]~116_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[6]~116_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[6]~116_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[6]~116_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[6]~116_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[6]~116_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[6]~116_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[6]~116_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[6]~116_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[6]~116_pena_bus\,
	pexpout => \BcdHoras|unidade_seg_7[6]~116_pexpout\);

-- Location: LC8
\BcdHoras|unidade_seg_7[6]~106\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \BcdHoras|unidade_seg_7[6]~116_pexpout\,
	pterm0 => \BcdHoras|unidade_seg_7[6]~106_pterm0_bus\,
	pterm1 => \BcdHoras|unidade_seg_7[6]~106_pterm1_bus\,
	pterm2 => \BcdHoras|unidade_seg_7[6]~106_pterm2_bus\,
	pterm3 => \BcdHoras|unidade_seg_7[6]~106_pterm3_bus\,
	pterm4 => \BcdHoras|unidade_seg_7[6]~106_pterm4_bus\,
	pterm5 => \BcdHoras|unidade_seg_7[6]~106_pterm5_bus\,
	pxor => \BcdHoras|unidade_seg_7[6]~106_pxor_bus\,
	pclk => \BcdHoras|unidade_seg_7[6]~106_pclk_bus\,
	papre => \BcdHoras|unidade_seg_7[6]~106_papre_bus\,
	paclr => \BcdHoras|unidade_seg_7[6]~106_paclr_bus\,
	pena => \BcdHoras|unidade_seg_7[6]~106_pena_bus\,
	dataout => \BcdHoras|unidade_seg_7[6]~106_dataout\);

-- Location: PIN_54
\BCD_HR_DEZ[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Horas0|clr~7_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(5));

-- Location: PIN_21
\BCD_SEG_UNI[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[4]~24_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(4));

-- Location: PIN_41
\BCD_SEG_DEZ[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[2]~12_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(2));

-- Location: PIN_56
\BCD_HR_DEZ[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[0]~20_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(0));

-- Location: PIN_6
\BCD_HR_DEZ[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[1]~13_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(1));

-- Location: PIN_55
\BCD_HR_DEZ[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[0]~17_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(4));

-- Location: PIN_20
\BCD_SEG_UNI[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[2]~27_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(2));

-- Location: PIN_40
\BCD_SEG_DEZ[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[4]~14_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(4));

-- Location: PIN_29
\BCD_MIN_UNI[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[4]~24_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(4));

-- Location: PIN_44
\BCD_MIN_DEZ[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[2]~12_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(2));

-- Location: PIN_57
\BCD_HR_DEZ[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[2]~24_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(2));

-- Location: PIN_39
\BCD_SEG_DEZ[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[0]~18_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(0));

-- Location: PIN_37
\BCD_SEG_DEZ[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[5]~20_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(5));

-- Location: PIN_28
\BCD_MIN_UNI[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[2]~27_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(2));

-- Location: PIN_46
\BCD_MIN_DEZ[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[4]~14_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(4));

-- Location: PIN_58
\BCD_HR_DEZ[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[2]~28_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(3));

-- Location: PIN_60
\BCD_HR_DEZ[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|dezena_seg_7[2]~32_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_DEZ(6));

-- Location: PIN_36
\BCD_SEG_DEZ[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[1]~22_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(1));

-- Location: PIN_48
\BCD_MIN_DEZ[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[0]~18_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(0));

-- Location: PIN_49
\BCD_MIN_DEZ[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[5]~20_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(5));

-- Location: PIN_4
\BCD_HR_UNI[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[2]~68_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(2));

-- Location: PIN_17
\BCD_SEG_UNI[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[0]~44_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(0));

-- Location: PIN_22
\BCD_SEG_UNI[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[3]~28_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(3));

-- Location: PIN_18
\BCD_SEG_UNI[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[5]~39_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(5));

-- Location: PIN_35
\BCD_SEG_DEZ[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[3]~26_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(3));

-- Location: PIN_50
\BCD_MIN_DEZ[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[1]~22_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(1));

-- Location: PIN_15
\BCD_SEG_UNI[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[1]~51_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(1));

-- Location: PIN_16
\BCD_SEG_UNI[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|unidade_seg_7[6]~45_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_UNI(6));

-- Location: PIN_34
\BCD_SEG_DEZ[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdSegundos|dezena_seg_7[3]~31_dataout\,
	oe => VCC,
	padio => ww_BCD_SEG_DEZ(6));

-- Location: PIN_24
\BCD_MIN_UNI[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[0]~44_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(0));

-- Location: PIN_27
\BCD_MIN_UNI[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[3]~28_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(3));

-- Location: PIN_25
\BCD_MIN_UNI[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[5]~39_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(5));

-- Location: PIN_51
\BCD_MIN_DEZ[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[3]~26_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(3));

-- Location: PIN_30
\BCD_MIN_UNI[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[1]~51_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(1));

-- Location: PIN_31
\BCD_MIN_UNI[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|unidade_seg_7[6]~45_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_UNI(6));

-- Location: PIN_45
\BCD_MIN_DEZ[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdMinutos|dezena_seg_7[3]~31_dataout\,
	oe => VCC,
	padio => ww_BCD_MIN_DEZ(6));

-- Location: PIN_11
\BCD_HR_UNI[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[0]~87_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(0));

-- Location: PIN_12
\BCD_HR_UNI[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[1]~74_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(1));

-- Location: PIN_10
\BCD_HR_UNI[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[5]~80_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(5));

-- Location: PIN_5
\BCD_HR_UNI[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[4]~93_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(4));

-- Location: PIN_8
\BCD_HR_UNI[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[3]~100_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(3));

-- Location: PIN_9
\BCD_HR_UNI[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \BcdHoras|unidade_seg_7[6]~106_dataout\,
	oe => VCC,
	padio => ww_BCD_HR_UNI(6));
END structure;


