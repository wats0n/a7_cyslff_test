vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_2
vlib modelsim_lib/msim/lib_fifo_v1_0_11
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_19
vlib modelsim_lib/msim/axi_sg_v4_1_10
vlib modelsim_lib/msim/axi_dma_v7_1_18
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_data_fifo_v1_1_18
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_19
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_clock_converter_v2_1_16
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_17
vlib modelsim_lib/msim/axi_data_fifo_v2_1_16
vlib modelsim_lib/msim/axi_crossbar_v2_1_18
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_17
vlib modelsim_lib/msim/blk_mem_gen_v8_4_1
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_17

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 modelsim_lib/msim/lib_fifo_v1_0_11
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_19 modelsim_lib/msim/axi_datamover_v5_1_19
vmap axi_sg_v4_1_10 modelsim_lib/msim/axi_sg_v4_1_10
vmap axi_dma_v7_1_18 modelsim_lib/msim/axi_dma_v7_1_18
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_18 modelsim_lib/msim/axis_data_fifo_v1_1_18
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 modelsim_lib/msim/axi_gpio_v2_0_19
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_clock_converter_v2_1_16 modelsim_lib/msim/axi_clock_converter_v2_1_16
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 modelsim_lib/msim/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 modelsim_lib/msim/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 modelsim_lib/msim/axi_crossbar_v2_1_18
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap axi_protocol_converter_v2_1_17 modelsim_lib/msim/axi_protocol_converter_v2_1_17
vmap blk_mem_gen_v8_4_1 modelsim_lib/msim/blk_mem_gen_v8_4_1
vmap axi_dwidth_converter_v2_1_17 modelsim_lib/msim/axi_dwidth_converter_v2_1_17

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_10 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_18 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ACLK_48M_0/sim/design_1_rst_ACLK_48M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_skip_calib_tap.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_dma_1_0/sim/design_1_axi_dma_1_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_1_0/sim/design_1_proc_sys_reset_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_family_support.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_family.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_soft_reset.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_pselect_f.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_address_decoder.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_slave_attachment.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz_drp.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_18 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_2/sim/design_1_axis_data_fifo_0_2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -64 -93 \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_2/sim/design_1_proc_sys_reset_0_2.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_16 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_axi_clock_converter_0_0/sim/design_1_axi_clock_converter_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_17 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_1 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_17 -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+../../../../a7_cyslff_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_auto_us_cc_df_2/sim/design_1_auto_us_cc_df_2.v" \
"../../../bd/design_1/ip/design_1_s02_data_fifo_0/sim/design_1_s02_data_fifo_0.v" \
"../../../bd/design_1/ip/design_1_auto_cc_3/sim/design_1_auto_cc_3.v" \
"../../../bd/design_1/ip/design_1_auto_us_cc_df_1/sim/design_1_auto_us_cc_df_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_cc_df_0/sim/design_1_auto_us_cc_df_0.v" \
"../../../bd/design_1/ip/design_1_auto_cc_2/sim/design_1_auto_cc_2.v" \
"../../../bd/design_1/ip/design_1_auto_cc_1/sim/design_1_auto_cc_1.v" \
"../../../bd/design_1/ip/design_1_auto_cc_0/sim/design_1_auto_cc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

