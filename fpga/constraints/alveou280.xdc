############################################################################
### AU280 HBM - Master XDC
############################################################################
# Buttons
set_property PACKAGE_PIN L30              [get_ports "cpu_reset"]                     ;# Bank  75 VCCO - VCC1V8   - IO_L2N_T0L_N3_75 CPU_RESETn_FPGA
set_property IOSTANDARD  LVCMOS18         [get_ports "cpu_reset"]                     ;# Bank  75 VCCO - VCC1V8   - IO_L2N_T0L_N3_75 Active Low


set_property -dict {PACKAGE_PIN BH26  IOSTANDARD LVCMOS12} [get_ports "cpu_reset"] ;# CPU_RESET_FPGA



# JTAG
#set_property -dict {PACKAGE_PIN N28 IOSTANDARD  LVCMOS12}  [get_ports tck] ;   # PMOD1_0
#set_property -dict {PACKAGE_PIN M30 IOSTANDARD  LVCMOS12}  [get_ports tdi] ;   # PMOD1_1
#set_property -dict {PACKAGE_PIN N30 IOSTANDARD  LVCMOS12}  [get_ports tdo] ;   # PMOD1_2
#set_property -dict {PACKAGE_PIN P30 IOSTANDARD  LVCMOS12}  [get_ports tms] ;   # PMOD1_3
#set_property -dict {PACKAGE_PIN P29 IOSTANDARD  LVCMOS12}  [get_ports trst_n] ;# PMOD1_4
## accept sub-optimal placement
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tck_IBUF_inst/O]
#
#set_property -dict {PACKAGE_PIN AW25 IOSTANDARD  LVCMOS18} [get_ports tx] ;# Bank  64 VCCO - VCC1V8_FPGA - IO_L9P_T1L_N4_AD12P_64
#set_property -dict {PACKAGE_PIN BB21 IOSTANDARD  LVCMOS18} [get_ports rx] ;# Bank  64 VCCO - VCC1V8_FPGA - IO_L8N_T1L_N3_AD5N_64

