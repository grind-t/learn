## Generated SDC file "D:/Soft/altera/sources/Series_K1533 new/KP1533.out.sdc"

## Copyright (C) 1991-2009 Altera Corporation
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


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 9.1 Build 222 10/21/2009 SJ Web Edition"

## DATE    "Sat Jun 02 13:50:21 2012"

##
## DEVICE  "EP2C70F896C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clock} -period 10.000 -waveform { 0.000 5.000 } [get_ports {01 02 03 04 05 06 08 09 10 11 12 13 ~LVDS195p/nCEO~}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {01}]
set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {03}]
set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {05}]
set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {09}]
set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {11}]
set_input_delay -add_delay  -clock [get_clocks {clock}]  14.000 [get_ports {13}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {02}]
set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {04}]
set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {06}]
set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {08}]
set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {10}]
set_output_delay -add_delay  -clock [get_clocks {clock}]  54.000 [get_ports {12}]


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

