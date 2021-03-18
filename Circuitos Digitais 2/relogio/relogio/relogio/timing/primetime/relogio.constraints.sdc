########################################################################
#
#    FILE: Constraints file
#  VENDOR: Altera
# PROGRAM: Quartus II
# VERSION: Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition
#    DATE: Sun Jun 02 12:18:04 2013
#
########################################################################


#**************************************************************
# Create Clock
#**************************************************************

create_clock -name clk -period 1.000 -waveform { 0.000 0.500 } $_col0
create_clock -name clr -period 1.000 -waveform { 0.000 0.500 } $_col1
create_clock -name segundos:P1|change -period 1.000 -waveform { 0.000 0.500 } $_col12
create_clock -name minutos:P2|change2 -period 1.000 -waveform { 0.000 0.500 } $_col13


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Propagated Clock
#**************************************************************

set_propagated_clock [all_clocks]


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {segundos:P1|change}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {segundos:P1|change}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {minutos:P2|change2}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {minutos:P2|change2}] -rise_to [get_clocks {clr}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {minutos:P2|change2}] -fall_to [get_clocks {clr}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -rise_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -fall_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -rise_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -fall_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -rise_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -fall_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -rise_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -fall_to [get_clocks {minutos:P2|change2}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -rise_to [get_clocks {clr}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -fall_to [get_clocks {clr}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -rise_to [get_clocks {clr}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -fall_to [get_clocks {clr}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -rise_to [get_clocks {clr}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -fall_to [get_clocks {clr}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -rise_to [get_clocks {clr}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -fall_to [get_clocks {clr}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -rise_to [get_clocks {clk}] 0.040
set_clock_uncertainty -setup -rise_from [get_clocks {clr}] -fall_to [get_clocks {clk}] 0.040
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -rise_to [get_clocks {clk}] 0.040
set_clock_uncertainty -setup -fall_from [get_clocks {clr}] -fall_to [get_clocks {clk}] 0.040
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -rise_to [get_clocks {clk}] 0.040
set_clock_uncertainty -hold -rise_from [get_clocks {clr}] -fall_to [get_clocks {clk}] 0.040
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -rise_to [get_clocks {clk}] 0.040
set_clock_uncertainty -hold -fall_from [get_clocks {clr}] -fall_to [get_clocks {clk}] 0.040
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {segundos:P1|change}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

