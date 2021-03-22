## Copyright (C) 1991-2010 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

## DATE "05/28/2013 12:05:27"

## 
## Device: Altera EPM7128SLC84-7 Package PLCC84
## 

## 
## This Tcl script should be used for PrimeTime (Verilog) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "d:/programas/altera/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  max_asynch_io_lib.db max_mcell_register_lib.db  max_asynch_mcell_lib.db max_asynch_sexp_lib.db  alt_vtl.db]

read_verilog  max_all_pt.v 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_verilog  Relogio.vo
current_design Relogio
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf Relogio_v.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING:  The required clock period is not set. The default value (100 ns) is used. 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { clk } ] -name clk  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[0] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[1] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[2] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[3] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[4] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[5] } ]
set_load -pin_load 10 [get_ports { BCD_HR_DEZ[6] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[0] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[1] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[2] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[3] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[4] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[5] } ]
set_load -pin_load 10 [get_ports { BCD_HR_UNI[6] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[0] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[1] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[2] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[3] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[4] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[5] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_DEZ[6] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[0] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[1] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[2] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[3] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[4] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[5] } ]
set_load -pin_load 10 [get_ports { BCD_MIN_UNI[6] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[0] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[1] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[2] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[3] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[4] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[5] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_DEZ[6] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[0] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[1] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[2] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[3] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[4] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[5] } ]
set_load -pin_load 10 [get_ports { BCD_SEG_UNI[6] } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing