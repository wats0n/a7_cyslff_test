create_clock -period 20.833 -name io_fpga_clk -waveform {0.000 10.416} [get_ports io_fpga_clk]
create_clock -period 20.833 -name io_cyslff_clk -waveform {0.000 10.416} [get_ports io_cyslff_clk]

set_property -dict [ list PACKAGE_PIN {P15} IOSTANDARD {LVCMOS33} ] [get_ports io_fpga_clk]
set_property -dict [ list PACKAGE_PIN {P17} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_clk]

set_property -dict [ list PACKAGE_PIN {M16} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[0]]
set_property -dict [ list PACKAGE_PIN {L16} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[1]]
set_property -dict [ list PACKAGE_PIN {L14} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[2]]
set_property -dict [ list PACKAGE_PIN {M14} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[3]]
set_property -dict [ list PACKAGE_PIN {L18} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[4]]
set_property -dict [ list PACKAGE_PIN {M18} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[5]]
set_property -dict [ list PACKAGE_PIN {R12} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[6]]
set_property -dict [ list PACKAGE_PIN {R13} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_fd[7]]

set_property -dict [ list PACKAGE_PIN {R11} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_addr[0]]
set_property -dict [ list PACKAGE_PIN {T11} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_addr[1]]
set_property -dict [ list PACKAGE_PIN {T14} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_oe]
set_property -dict [ list PACKAGE_PIN {V16} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_rd]
set_property -dict [ list PACKAGE_PIN {U16} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_wr]
set_property -dict [ list PACKAGE_PIN {R10} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_pktend]

set_property -dict [ list PACKAGE_PIN {N14} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_feb] ;# F/LAGC
set_property -dict [ list PACKAGE_PIN {N15} IOSTANDARD {LVCMOS33} ] [get_ports io_cyslff_ffb] ;# FLAGB

set_property -dict [ list PACKAGE_PIN {B11} IOSTANDARD {LVCMOS33} ] [get_ports init_calib_complete] ;# A30 / B11~IO_L4P_T0_15

set_property -dict { PACKAGE_PIN K15   IOSTANDARD TMDS_33     } [get_ports { io_tmds_p[2] }]; # A4 / K15~IO_L24P_T3_RS1_15
set_property -dict { PACKAGE_PIN J15   IOSTANDARD TMDS_33     } [get_ports { io_tmds_n[2] }]; # A5 / J15~IO_L24N_T3_RS0_15
set_property -dict { PACKAGE_PIN J14   IOSTANDARD TMDS_33     } [get_ports { io_tmds_p[1] }]; # *A7 / J14~IO_L19P_T3_A22_15
set_property -dict { PACKAGE_PIN H15   IOSTANDARD TMDS_33     } [get_ports { io_tmds_n[1] }]; # *A6 / H15~IO_L19N_T3_A21_VREF_15
set_property -dict { PACKAGE_PIN H17   IOSTANDARD TMDS_33     } [get_ports { io_tmds_p[0] }]; # A8 / H17~IO_L18P_T2_A24_15
set_property -dict { PACKAGE_PIN G17   IOSTANDARD TMDS_33     } [get_ports { io_tmds_n[0] }]; # A9 / G17~IO_L18N_T2_A23_15
set_property -dict { PACKAGE_PIN G18   IOSTANDARD TMDS_33     } [get_ports { io_tmds_p[3] }]; # A10 / G18~IO_L22P_T3_A17_15
set_property -dict { PACKAGE_PIN F18   IOSTANDARD TMDS_33     } [get_ports { io_tmds_n[3] }]; # A11 / F18~IO_L22N_T3_A16_15

set_input_delay -clock io_cyslff_clk -min 1.00 [get_ports io_cyslff_fd[*]]
set_input_delay -clock io_cyslff_clk -max 12.00 [get_ports io_cyslff_fd[*]]

set_output_delay -clock io_cyslff_clk -min 9.0 [get_ports io_cyslff_fd[*]] -clock_fall -add_delay;
set_output_delay -clock io_cyslff_clk -max 19.6 [get_ports io_cyslff_fd[*]] -clock_fall -add_delay;

set_output_delay -clock io_cyslff_clk -min -0.5 [get_ports io_cyslff_addr[*]]
set_output_delay -clock io_cyslff_clk -max 11.5 [get_ports io_cyslff_addr[*]]
set_output_delay -clock io_cyslff_clk -min -0.5 [get_ports io_cyslff_oe]
set_output_delay -clock io_cyslff_clk -max 19.2 [get_ports io_cyslff_oe]
set_output_delay -clock io_cyslff_clk -min -0.5 [get_ports io_cyslff_rd]
set_output_delay -clock io_cyslff_clk -max 19.2 [get_ports io_cyslff_rd]
set_output_delay -clock io_cyslff_clk -min -0.5 [get_ports io_cyslff_wr]
set_output_delay -clock io_cyslff_clk -max 19.2 [get_ports io_cyslff_wr]
set_output_delay -clock io_cyslff_clk -min -0.5 [get_ports io_cyslff_pktend]
set_output_delay -clock io_cyslff_clk -max 19.2 [get_ports io_cyslff_pktend]

set_input_delay -clock io_cyslff_clk -min 1.00 [get_ports io_cyslff_feb]
set_input_delay -clock io_cyslff_clk -max 12.00 [get_ports io_cyslff_feb]
set_input_delay -clock io_cyslff_clk -min 1.00 [get_ports io_cyslff_ffb]
set_input_delay -clock io_cyslff_clk -max 12.00 [get_ports io_cyslff_ffb]

#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_hiz_reg/C] -to [get_ports {io_cyslff_fd[*]}]
#set_false_path -from [get_pins {cyslff/cyslff_io/io_cyslff_fdo_reg[*]/C}] -to [get_ports {io_cyslff_fd[*]}]

#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_oe*/C] -to [get_ports io_cyslff_oe]
#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_rd*/C] -to [get_ports io_cyslff_rd]
#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_wr*/C] -to [get_ports io_cyslff_wr]
#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_pktend*] -to [get_ports io_cyslff_pktend]
#set_false_path -from [get_pins cyslff/cyslff_io/io_cyslff_addr*/C] -to [get_ports io_cyslff_addr[*]]

set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_hiz_reg/C] -to [get_ports {io_cyslff_fd[*]}]
set_false_path -from [get_pins {cy2axi/cyslff_io_inst/io_cyslff_fdo_reg[*]/C}] -to [get_ports {io_cyslff_fd[*]}]

set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_oe*/C] -to [get_ports io_cyslff_oe]
set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_rd*/C] -to [get_ports io_cyslff_rd]
set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_wr*/C] -to [get_ports io_cyslff_wr]
set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_pktend*/C] -to [get_ports io_cyslff_pktend]
set_false_path -from [get_pins cy2axi/cyslff_io_inst/io_cyslff_addr*/C] -to [get_ports io_cyslff_addr[*]]