################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name ACLK -period 20.833 [get_ports ACLK]
create_clock -name pdma_dclk -period 8 [get_ports pdma_dclk]
create_clock -name ddr3_sclk -period 2.500 [get_ports ddr3_sclk]
create_clock -name ddr3_rclk -period 5 [get_ports ddr3_rclk]
create_clock -name udma_wclk -period 80 [get_ports udma_wclk]

################################################################################