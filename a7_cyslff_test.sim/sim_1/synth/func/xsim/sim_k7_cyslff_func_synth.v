// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Jun 16 21:10:29 2018
// Host        : DESKTOP-9B9PT1R running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Projects/FPGA/a7_cyslff_test/a7_cyslff_test.sim/sim_1/synth/func/xsim/sim_k7_cyslff_func_synth.v
// Design      : a7_cyslff_test_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module a7_cyslff_test_top
   (io_cyslff_fd,
    io_cyslff_oe,
    io_cyslff_rd,
    io_cyslff_wr,
    io_cyslff_pktend,
    io_cyslff_feb,
    io_cyslff_ffb,
    io_cyslff_addr,
    io_cyslff_clk,
    io_fpga_clk);
  inout [7:0]io_cyslff_fd;
  output io_cyslff_oe;
  output io_cyslff_rd;
  output io_cyslff_wr;
  output io_cyslff_pktend;
  input io_cyslff_feb;
  input io_cyslff_ffb;
  output [1:0]io_cyslff_addr;
  input io_cyslff_clk;
  input io_fpga_clk;

  wire [7:0]axic_fdi;
  wire axic_fdi_en;
  wire axic_fdi_ready;
  wire [7:0]axic_fdo;
  wire axic_fdo_en;
  wire axic_fdo_last;
  wire axic_fdo_ready;
  wire aximif_n_0;
  wire cyslff_clk;
  wire dev_arst;
  wire dlocked;
  wire fdi_pause;
  wire [1:0]io_cyslff_addr;
  wire [1:0]io_cyslff_addr_OBUF;
  (* IBUF_LOW_PWR *) wire io_cyslff_clk;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [7:0]io_cyslff_fd;
  wire io_cyslff_feb;
  wire io_cyslff_feb_IBUF;
  wire io_cyslff_ffb;
  wire io_cyslff_ffb_IBUF;
  wire io_cyslff_oe;
  wire io_cyslff_oe_OBUF;
  wire io_cyslff_pktend;
  wire io_cyslff_pktend_OBUF;
  wire io_cyslff_rd;
  wire io_cyslff_rd_OBUF;
  wire io_cyslff_wr;
  wire io_cyslff_wr_OBUF;
  (* IBUF_LOW_PWR *) wire io_fpga_clk;
  wire ioctr_rdrdy;
  wire [7:0]next_op;
  wire next_op_fetched;
  wire NLW_gen_dbg_clk_clk_out1_UNCONNECTED;

  aximif aximif
       (.D(axic_fdi),
        .Q(axic_fdo),
        .axic_fdi_en(axic_fdi_en),
        .axic_fdi_ready(axic_fdi_ready),
        .\axic_fdi_reg[7] (next_op),
        .axic_fdo_en(axic_fdo_en),
        .axic_fdo_last(axic_fdo_last),
        .axic_fdo_ready(axic_fdo_ready),
        .cyslff_clk(cyslff_clk),
        .dev_arst(dev_arst),
        .fdi_pause(fdi_pause),
        .io_cyslff_ffb_IBUF(io_cyslff_ffb_IBUF),
        .ioctr_rdrdy(ioctr_rdrdy),
        .locked(dlocked),
        .next_op_fetched(next_op_fetched),
        .out(aximif_n_0));
  cyslff cyslff
       (.Q(axic_fdo),
        .axic_fdi(axic_fdi),
        .axic_fdi_en(axic_fdi_en),
        .axic_fdi_ready(axic_fdi_ready),
        .axic_fdo_en(axic_fdo_en),
        .axic_fdo_last(axic_fdo_last),
        .axic_fdo_ready(axic_fdo_ready),
        .cyslff_clk(cyslff_clk),
        .dev_arst(dev_arst),
        .fdi_pause(fdi_pause),
        .\io_cyslff_addr[1] (io_cyslff_addr_OBUF),
        .io_cyslff_clk(io_cyslff_clk),
        .io_cyslff_fd(io_cyslff_fd),
        .io_cyslff_feb_IBUF(io_cyslff_feb_IBUF),
        .io_cyslff_ffb_IBUF(io_cyslff_ffb_IBUF),
        .io_cyslff_oe_OBUF(io_cyslff_oe_OBUF),
        .io_cyslff_pktend_OBUF(io_cyslff_pktend_OBUF),
        .io_cyslff_rd_OBUF(io_cyslff_rd_OBUF),
        .io_cyslff_wr_OBUF(io_cyslff_wr_OBUF),
        .ioctr_rdrdy(ioctr_rdrdy),
        .next_op_fetched(next_op_fetched),
        .\next_op_reg[7] (next_op),
        .out(aximif_n_0));
  clk_wiz_0 gen_dbg_clk
       (.clk_in1(io_fpga_clk),
        .clk_out1(NLW_gen_dbg_clk_clk_out1_UNCONNECTED),
        .locked(dlocked),
        .reset(1'b0));
  OBUF \io_cyslff_addr_OBUF[0]_inst 
       (.I(io_cyslff_addr_OBUF[0]),
        .O(io_cyslff_addr[0]));
  OBUF \io_cyslff_addr_OBUF[1]_inst 
       (.I(io_cyslff_addr_OBUF[1]),
        .O(io_cyslff_addr[1]));
  IBUF io_cyslff_feb_IBUF_inst
       (.I(io_cyslff_feb),
        .O(io_cyslff_feb_IBUF));
  IBUF io_cyslff_ffb_IBUF_inst
       (.I(io_cyslff_ffb),
        .O(io_cyslff_ffb_IBUF));
  OBUF io_cyslff_oe_OBUF_inst
       (.I(io_cyslff_oe_OBUF),
        .O(io_cyslff_oe));
  OBUF io_cyslff_pktend_OBUF_inst
       (.I(io_cyslff_pktend_OBUF),
        .O(io_cyslff_pktend));
  OBUF io_cyslff_rd_OBUF_inst
       (.I(io_cyslff_rd_OBUF),
        .O(io_cyslff_rd));
  OBUF io_cyslff_wr_OBUF_inst
       (.I(io_cyslff_wr_OBUF),
        .O(io_cyslff_wr));
endmodule

module aximif
   (out,
    dev_arst,
    fdi_pause,
    axic_fdi_ready,
    axic_fdo_en,
    axic_fdo_ready,
    axic_fdo_last,
    Q,
    next_op_fetched,
    cyslff_clk,
    locked,
    axic_fdi_en,
    io_cyslff_ffb_IBUF,
    ioctr_rdrdy,
    D,
    \axic_fdi_reg[7] );
  output [0:0]out;
  output dev_arst;
  output fdi_pause;
  output axic_fdi_ready;
  output axic_fdo_en;
  output axic_fdo_ready;
  output axic_fdo_last;
  output [7:0]Q;
  input next_op_fetched;
  input cyslff_clk;
  input locked;
  input axic_fdi_en;
  input io_cyslff_ffb_IBUF;
  input ioctr_rdrdy;
  input [7:0]D;
  input [7:0]\axic_fdi_reg[7] ;

  wire [7:0]D;
  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[0]_i_2_n_0 ;
  wire \FSM_sequential_st[1]_i_3_n_0 ;
  wire \FSM_sequential_st[1]_i_4_n_0 ;
  wire \FSM_sequential_st[1]_i_5_n_0 ;
  wire \FSM_sequential_st[1]_i_6_n_0 ;
  wire [7:0]Q;
  wire ard_wait_i_1_n_0;
  wire ard_wait_i_2_n_0;
  wire ard_wait_i_3_n_0;
  wire ard_wait_reg_n_0;
  wire [3:0]arg_cnt;
  wire \arg_cnt[2]_i_2_n_0 ;
  wire \arg_cnt[3]_i_1_n_0 ;
  wire \arg_cnt[3]_i_3_n_0 ;
  wire \arg_cnt[3]_i_4_n_0 ;
  wire \arg_cnt[3]_i_5_n_0 ;
  wire [31:0]axic_addr;
  wire axic_addr_2;
  wire axic_fdi_en;
  wire axic_fdi_ready;
  wire axic_fdi_ready_i_1_n_0;
  wire axic_fdi_ready_i_2_n_0;
  wire axic_fdi_ready_i_3_n_0;
  wire [7:0]\axic_fdi_reg[7] ;
  wire \axic_fdo[0]_i_1_n_0 ;
  wire \axic_fdo[0]_i_2_n_0 ;
  wire \axic_fdo[1]_i_1_n_0 ;
  wire \axic_fdo[1]_i_2_n_0 ;
  wire \axic_fdo[2]_i_1_n_0 ;
  wire \axic_fdo[2]_i_2_n_0 ;
  wire \axic_fdo[3]_i_1_n_0 ;
  wire \axic_fdo[3]_i_2_n_0 ;
  wire \axic_fdo[4]_i_1_n_0 ;
  wire \axic_fdo[4]_i_2_n_0 ;
  wire \axic_fdo[5]_i_1_n_0 ;
  wire \axic_fdo[5]_i_2_n_0 ;
  wire \axic_fdo[6]_i_1_n_0 ;
  wire \axic_fdo[6]_i_2_n_0 ;
  wire \axic_fdo[7]_i_1_n_0 ;
  wire \axic_fdo[7]_i_2_n_0 ;
  wire \axic_fdo[7]_i_3_n_0 ;
  wire axic_fdo_en;
  wire axic_fdo_en_i_1_n_0;
  wire axic_fdo_last;
  wire axic_fdo_last_i_1_n_0;
  wire axic_fdo_last_i_2_n_0;
  wire axic_fdo_last_i_3_n_0;
  wire axic_fdo_ready;
  wire axic_fdo_ready_i_1_n_0;
  wire [31:0]axic_rdata;
  wire \axic_rdata[0]_i_2_n_0 ;
  wire \axic_rdata[16]_i_2_n_0 ;
  wire \axic_rdata[17]_i_2_n_0 ;
  wire \axic_rdata[18]_i_2_n_0 ;
  wire \axic_rdata[19]_i_2_n_0 ;
  wire \axic_rdata[1]_i_2_n_0 ;
  wire \axic_rdata[2]_i_2_n_0 ;
  wire \axic_rdata[31]_i_1_n_0 ;
  wire \axic_rdata[3]_i_2_n_0 ;
  wire \axic_rdata[4]_i_2_n_0 ;
  wire \axic_rdata[5]_i_2_n_0 ;
  wire \axic_rdata[6]_i_2_n_0 ;
  wire \axic_rdata[7]_i_2_n_0 ;
  wire \axic_rdata[8]_i_2_n_0 ;
  wire [31:0]axic_rdata_4;
  wire [31:0]axic_wdata;
  wire axic_wdata_3;
  wire [19:16]axim_csr;
  wire [3:0]axim_done;
  wire axim_done_1;
  wire [3:0]axim_exec;
  wire axim_incomp;
  (* RTL_KEEP = "yes" *) wire axim_incomp_0;
  wire axim_incomp_i_1_n_0;
  wire [31:7]axim_tmp;
  wire \axim_tmp[23]_i_1_n_0 ;
  wire \axim_tmp[31]_i_2_n_0 ;
  wire \axim_tmp_reg_n_0_[23] ;
  wire \axim_tmp_reg_n_0_[24] ;
  wire \axim_tmp_reg_n_0_[25] ;
  wire \axim_tmp_reg_n_0_[26] ;
  wire \axim_tmp_reg_n_0_[27] ;
  wire \axim_tmp_reg_n_0_[28] ;
  wire \axim_tmp_reg_n_0_[29] ;
  wire \axim_tmp_reg_n_0_[30] ;
  wire \axim_tmp_reg_n_0_[31] ;
  wire [22:0]axis_amt;
  wire \axis_amt[22]_i_1_n_0 ;
  wire \axis_amt[22]_i_2_n_0 ;
  wire \axis_amt_reg_n_0_[0] ;
  wire \axis_amt_reg_n_0_[10] ;
  wire \axis_amt_reg_n_0_[11] ;
  wire \axis_amt_reg_n_0_[12] ;
  wire \axis_amt_reg_n_0_[13] ;
  wire \axis_amt_reg_n_0_[14] ;
  wire \axis_amt_reg_n_0_[15] ;
  wire \axis_amt_reg_n_0_[16] ;
  wire \axis_amt_reg_n_0_[17] ;
  wire \axis_amt_reg_n_0_[18] ;
  wire \axis_amt_reg_n_0_[19] ;
  wire \axis_amt_reg_n_0_[1] ;
  wire \axis_amt_reg_n_0_[20] ;
  wire \axis_amt_reg_n_0_[21] ;
  wire \axis_amt_reg_n_0_[22] ;
  wire \axis_amt_reg_n_0_[2] ;
  wire \axis_amt_reg_n_0_[3] ;
  wire \axis_amt_reg_n_0_[4] ;
  wire \axis_amt_reg_n_0_[5] ;
  wire \axis_amt_reg_n_0_[6] ;
  wire \axis_amt_reg_n_0_[7] ;
  wire \axis_amt_reg_n_0_[8] ;
  wire \axis_amt_reg_n_0_[9] ;
  wire cond_rnw;
  wire cyslff_clk;
  wire dev_arst;
  wire fdi_pause;
  wire fdi_pause_i_1_n_0;
  wire fdi_pause_i_2_n_0;
  wire fdi_pause_i_3_n_0;
  wire fdi_pause_i_4_n_0;
  wire fdi_resumed_i_1_n_0;
  wire fdi_resumed_reg_n_0;
  wire io_cyslff_ffb_IBUF;
  wire ioctr_rdrdy;
  wire locked;
  wire \next_op[7]_i_1_n_0 ;
  wire next_op_fetched;
  wire next_op_fetched_reg_n_0;
  wire \next_op_reg_n_0_[0] ;
  wire \next_op_reg_n_0_[1] ;
  wire \next_op_reg_n_0_[2] ;
  wire \next_op_reg_n_0_[3] ;
  wire \next_op_reg_n_0_[4] ;
  wire \next_op_reg_n_0_[5] ;
  wire \next_op_reg_n_0_[6] ;
  wire \next_op_reg_n_0_[7] ;
  wire [7:0]op;
  wire \op[7]_i_1_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[1] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire \op_reg_n_0_[4] ;
  wire \op_reg_n_0_[5] ;
  wire \op_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [3:0]p_0_in;
  wire [7:0]prev_op;
  wire st;
  wire \st[0]_i_1_n_0 ;
  wire \st[1]_i_1_n_0 ;
  wire \st[1]_i_2_n_0 ;
  wire \st[2]_i_1_n_0 ;
  wire \st_reg_n_0_[0] ;
  wire \st_reg_n_0_[1] ;
  wire \st_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h5555000055755575)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(axim_incomp_0),
        .I1(cond_rnw),
        .I2(fdi_resumed_reg_n_0),
        .I3(fdi_pause),
        .I4(\FSM_sequential_st[0]_i_2_n_0 ),
        .I5(out),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_sequential_st[0]_i_2 
       (.I0(io_cyslff_ffb_IBUF),
        .I1(ard_wait_reg_n_0),
        .I2(axic_fdo_last_i_3_n_0),
        .I3(next_op_fetched_reg_n_0),
        .I4(cond_rnw),
        .O(\FSM_sequential_st[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(locked),
        .O(dev_arst));
  LUT5 #(
    .INIT(32'hFFFFCFD0)) 
    \FSM_sequential_st[1]_i_2 
       (.I0(\FSM_sequential_st[1]_i_4_n_0 ),
        .I1(\FSM_sequential_st[1]_i_5_n_0 ),
        .I2(axim_incomp_0),
        .I3(axic_fdi_en),
        .I4(out),
        .O(st));
  LUT6 #(
    .INIT(64'h0000FFFC44440000)) 
    \FSM_sequential_st[1]_i_3 
       (.I0(\FSM_sequential_st[1]_i_6_n_0 ),
        .I1(cond_rnw),
        .I2(fdi_resumed_reg_n_0),
        .I3(fdi_pause),
        .I4(out),
        .I5(axim_incomp_0),
        .O(\FSM_sequential_st[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_st[1]_i_4 
       (.I0(fdi_pause),
        .I1(fdi_resumed_reg_n_0),
        .I2(cond_rnw),
        .O(\FSM_sequential_st[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5444100010001000)) 
    \FSM_sequential_st[1]_i_5 
       (.I0(axic_fdo_last_i_3_n_0),
        .I1(cond_rnw),
        .I2(fdi_pause),
        .I3(axic_fdi_en),
        .I4(ioctr_rdrdy),
        .I5(ard_wait_reg_n_0),
        .O(\FSM_sequential_st[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_sequential_st[1]_i_6 
       (.I0(axim_csr[19]),
        .I1(axim_csr[18]),
        .I2(axim_csr[17]),
        .I3(axim_csr[16]),
        .I4(ard_wait_reg_n_0),
        .I5(io_cyslff_ffb_IBUF),
        .O(\FSM_sequential_st[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "ST_AXIC:011,ST_AXIS:100,ST_CMD_IMCOMPLETE:11,ST_REG:10,ST_IDLE:00,ST_OP:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(cyslff_clk),
        .CE(st),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(axim_incomp_0),
        .R(dev_arst));
  (* FSM_ENCODED_STATES = "ST_AXIC:011,ST_AXIS:100,ST_CMD_IMCOMPLETE:11,ST_REG:10,ST_IDLE:00,ST_OP:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(cyslff_clk),
        .CE(st),
        .D(\FSM_sequential_st[1]_i_3_n_0 ),
        .Q(out),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'h0FBC0CCC0CBC0CCC)) 
    ard_wait_i_1
       (.I0(ard_wait_i_2_n_0),
        .I1(ard_wait_reg_n_0),
        .I2(axim_incomp_0),
        .I3(out),
        .I4(cond_rnw),
        .I5(ard_wait_i_3_n_0),
        .O(ard_wait_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    ard_wait_i_2
       (.I0(ioctr_rdrdy),
        .I1(axim_csr[16]),
        .I2(axim_csr[17]),
        .I3(axim_csr[18]),
        .I4(axim_csr[19]),
        .O(ard_wait_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    ard_wait_i_3
       (.I0(axim_csr[16]),
        .I1(axim_csr[17]),
        .I2(axim_csr[18]),
        .I3(axim_csr[19]),
        .I4(io_cyslff_ffb_IBUF),
        .I5(ard_wait_reg_n_0),
        .O(ard_wait_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ard_wait_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(ard_wait_i_1_n_0),
        .Q(ard_wait_reg_n_0),
        .R(dev_arst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \arg_cnt[0]_i_1 
       (.I0(axim_csr[16]),
        .I1(\arg_cnt[3]_i_5_n_0 ),
        .O(arg_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \arg_cnt[1]_i_1 
       (.I0(axim_csr[16]),
        .I1(axim_csr[17]),
        .I2(\arg_cnt[3]_i_5_n_0 ),
        .O(arg_cnt[1]));
  LUT6 #(
    .INIT(64'h000000000EF0F0F0)) 
    \arg_cnt[2]_i_1 
       (.I0(axim_csr[19]),
        .I1(\arg_cnt[2]_i_2_n_0 ),
        .I2(axim_csr[18]),
        .I3(axim_csr[16]),
        .I4(axim_csr[17]),
        .I5(\arg_cnt[3]_i_5_n_0 ),
        .O(arg_cnt[2]));
  LUT4 #(
    .INIT(16'h0004)) 
    \arg_cnt[2]_i_2 
       (.I0(fdi_pause),
        .I1(axim_incomp_0),
        .I2(out),
        .I3(cond_rnw),
        .O(\arg_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA80000)) 
    \arg_cnt[3]_i_1 
       (.I0(axic_fdi_en),
        .I1(fdi_pause),
        .I2(fdi_resumed_reg_n_0),
        .I3(\arg_cnt[3]_i_3_n_0 ),
        .I4(axim_incomp_0),
        .I5(\arg_cnt[3]_i_4_n_0 ),
        .O(\arg_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \arg_cnt[3]_i_2 
       (.I0(axim_csr[18]),
        .I1(axim_csr[16]),
        .I2(axim_csr[17]),
        .I3(axim_csr[19]),
        .I4(\arg_cnt[3]_i_5_n_0 ),
        .O(arg_cnt[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \arg_cnt[3]_i_3 
       (.I0(out),
        .I1(cond_rnw),
        .O(\arg_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF202F202F2020202)) 
    \arg_cnt[3]_i_4 
       (.I0(axic_fdi_en),
        .I1(axim_incomp_0),
        .I2(out),
        .I3(cond_rnw),
        .I4(io_cyslff_ffb_IBUF),
        .I5(ard_wait_reg_n_0),
        .O(\arg_cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC7C3CFC3F7F3CFC3)) 
    \arg_cnt[3]_i_5 
       (.I0(ioctr_rdrdy),
        .I1(axim_incomp_0),
        .I2(out),
        .I3(cond_rnw),
        .I4(ard_wait_reg_n_0),
        .I5(io_cyslff_ffb_IBUF),
        .O(\arg_cnt[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \arg_cnt_reg[0] 
       (.C(cyslff_clk),
        .CE(\arg_cnt[3]_i_1_n_0 ),
        .D(arg_cnt[0]),
        .Q(axim_csr[16]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \arg_cnt_reg[1] 
       (.C(cyslff_clk),
        .CE(\arg_cnt[3]_i_1_n_0 ),
        .D(arg_cnt[1]),
        .Q(axim_csr[17]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \arg_cnt_reg[2] 
       (.C(cyslff_clk),
        .CE(\arg_cnt[3]_i_1_n_0 ),
        .D(arg_cnt[2]),
        .Q(axim_csr[18]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \arg_cnt_reg[3] 
       (.C(cyslff_clk),
        .CE(\arg_cnt[3]_i_1_n_0 ),
        .D(arg_cnt[3]),
        .Q(axim_csr[19]),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \axic_addr[31]_i_1 
       (.I0(axim_incomp_0),
        .I1(out),
        .I2(cond_rnw),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\op_reg_n_0_[1] ),
        .O(axic_addr_2));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[0] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[0]),
        .Q(axic_addr[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[10] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[10]),
        .Q(axic_addr[10]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[11] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[11]),
        .Q(axic_addr[11]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[12] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[12]),
        .Q(axic_addr[12]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[13] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[13]),
        .Q(axic_addr[13]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[14] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[14]),
        .Q(axic_addr[14]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[15] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[15]),
        .Q(axic_addr[15]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[16] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[16]),
        .Q(axic_addr[16]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[17] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[17]),
        .Q(axic_addr[17]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[18] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[18]),
        .Q(axic_addr[18]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[19] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[19]),
        .Q(axic_addr[19]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[1] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[1]),
        .Q(axic_addr[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[20] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[20]),
        .Q(axic_addr[20]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[21] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[21]),
        .Q(axic_addr[21]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[22] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[22]),
        .Q(axic_addr[22]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[23] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[23] ),
        .Q(axic_addr[23]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[24] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[24] ),
        .Q(axic_addr[24]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[25] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[25] ),
        .Q(axic_addr[25]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[26] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[26] ),
        .Q(axic_addr[26]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[27] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[27] ),
        .Q(axic_addr[27]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[28] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[28] ),
        .Q(axic_addr[28]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[29] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[29] ),
        .Q(axic_addr[29]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[2] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[2]),
        .Q(axic_addr[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[30] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[30] ),
        .Q(axic_addr[30]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[31] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(\axim_tmp_reg_n_0_[31] ),
        .Q(axic_addr[31]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[3] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[3]),
        .Q(axic_addr[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[4] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(p_0_in[0]),
        .Q(axic_addr[4]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[5] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(p_0_in[1]),
        .Q(axic_addr[5]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[6] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(p_0_in[2]),
        .Q(axic_addr[6]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[7] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(p_0_in[3]),
        .Q(axic_addr[7]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[8] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[8]),
        .Q(axic_addr[8]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_addr_reg[9] 
       (.C(cyslff_clk),
        .CE(axic_addr_2),
        .D(axis_amt[9]),
        .Q(axic_addr[9]),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    axic_fdi_ready_i_1
       (.I0(axic_fdi_ready_i_2_n_0),
        .I1(axic_fdi_ready_i_3_n_0),
        .I2(out),
        .I3(cond_rnw),
        .I4(\FSM_sequential_st[1]_i_6_n_0 ),
        .I5(axic_fdi_ready),
        .O(axic_fdi_ready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF2FF02F)) 
    axic_fdi_ready_i_2
       (.I0(fdi_pause),
        .I1(cond_rnw),
        .I2(axim_incomp_0),
        .I3(out),
        .I4(ard_wait_reg_n_0),
        .O(axic_fdi_ready_i_2_n_0));
  LUT4 #(
    .INIT(16'hF3E3)) 
    axic_fdi_ready_i_3
       (.I0(cond_rnw),
        .I1(out),
        .I2(axim_incomp_0),
        .I3(fdi_pause),
        .O(axic_fdi_ready_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axic_fdi_ready_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axic_fdi_ready_i_1_n_0),
        .Q(axic_fdi_ready),
        .R(dev_arst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[0]_i_1 
       (.I0(\axic_fdo[0]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[0]_i_2 
       (.I0(axic_rdata[24]),
        .I1(axic_rdata[8]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[16]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[0]),
        .O(\axic_fdo[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[1]_i_1 
       (.I0(\axic_fdo[1]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[1]_i_2 
       (.I0(axic_rdata[25]),
        .I1(axic_rdata[9]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[17]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[1]),
        .O(\axic_fdo[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[2]_i_1 
       (.I0(\axic_fdo[2]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[2]_i_2 
       (.I0(axic_rdata[26]),
        .I1(axic_rdata[10]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[18]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[2]),
        .O(\axic_fdo[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[3]_i_1 
       (.I0(\axic_fdo[3]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[3]_i_2 
       (.I0(axic_rdata[27]),
        .I1(axic_rdata[11]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[19]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[3]),
        .O(\axic_fdo[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[4]_i_1 
       (.I0(\axic_fdo[4]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[4]_i_2 
       (.I0(axic_rdata[28]),
        .I1(axic_rdata[12]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[20]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[4]),
        .O(\axic_fdo[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[5]_i_1 
       (.I0(\axic_fdo[5]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[5]_i_2 
       (.I0(axic_rdata[29]),
        .I1(axic_rdata[13]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[21]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[5]),
        .O(\axic_fdo[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[6]_i_1 
       (.I0(\axic_fdo[6]_i_2_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[6]_i_2 
       (.I0(axic_rdata[30]),
        .I1(axic_rdata[14]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[22]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[6]),
        .O(\axic_fdo[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \axic_fdo[7]_i_1 
       (.I0(io_cyslff_ffb_IBUF),
        .I1(ard_wait_reg_n_0),
        .I2(cond_rnw),
        .I3(axim_incomp_0),
        .I4(out),
        .O(\axic_fdo[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axic_fdo[7]_i_2 
       (.I0(\axic_fdo[7]_i_3_n_0 ),
        .I1(axim_csr[18]),
        .O(\axic_fdo[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axic_fdo[7]_i_3 
       (.I0(axic_rdata[31]),
        .I1(axic_rdata[15]),
        .I2(axim_csr[16]),
        .I3(axic_rdata[23]),
        .I4(axim_csr[17]),
        .I5(axic_rdata[7]),
        .O(\axic_fdo[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AAAEAAA2AA)) 
    axic_fdo_en_i_1
       (.I0(axic_fdo_en),
        .I1(out),
        .I2(axim_incomp_0),
        .I3(cond_rnw),
        .I4(io_cyslff_ffb_IBUF),
        .I5(ard_wait_reg_n_0),
        .O(axic_fdo_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axic_fdo_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axic_fdo_en_i_1_n_0),
        .Q(axic_fdo_en),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'hF10FFFFF01000000)) 
    axic_fdo_last_i_1
       (.I0(axic_fdo_last_i_2_n_0),
        .I1(axic_fdo_last_i_3_n_0),
        .I2(axim_incomp_0),
        .I3(out),
        .I4(cond_rnw),
        .I5(axic_fdo_last),
        .O(axic_fdo_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    axic_fdo_last_i_2
       (.I0(ard_wait_reg_n_0),
        .I1(io_cyslff_ffb_IBUF),
        .O(axic_fdo_last_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    axic_fdo_last_i_3
       (.I0(axim_csr[16]),
        .I1(axim_csr[17]),
        .I2(axim_csr[18]),
        .I3(axim_csr[19]),
        .O(axic_fdo_last_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axic_fdo_last_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axic_fdo_last_i_1_n_0),
        .Q(axic_fdo_last),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'h00F35FFF00F00000)) 
    axic_fdo_ready_i_1
       (.I0(\FSM_sequential_st[1]_i_6_n_0 ),
        .I1(fdi_pause),
        .I2(cond_rnw),
        .I3(out),
        .I4(axim_incomp_0),
        .I5(axic_fdo_ready),
        .O(axic_fdo_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axic_fdo_ready_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axic_fdo_ready_i_1_n_0),
        .Q(axic_fdo_ready),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[0] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[1] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[2] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[3] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[4] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[5] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[6] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdo_reg[7] 
       (.C(cyslff_clk),
        .CE(\axic_fdo[7]_i_1_n_0 ),
        .D(\axic_fdo[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \axic_rdata[0]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[1] ),
        .I2(axic_addr[0]),
        .I3(\op_reg_n_0_[0] ),
        .I4(axim_exec[0]),
        .I5(\axic_rdata[0]_i_2_n_0 ),
        .O(axic_rdata_4[0]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \axic_rdata[0]_i_2 
       (.I0(\axis_amt_reg_n_0_[0] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[0]),
        .O(\axic_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0FC0000A00C0)) 
    \axic_rdata[10]_i_1 
       (.I0(\axis_amt_reg_n_0_[10] ),
        .I1(axic_wdata[10]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(axic_addr[10]),
        .O(axic_rdata_4[10]));
  LUT6 #(
    .INIT(64'h000F0AC000000AC0)) 
    \axic_rdata[11]_i_1 
       (.I0(axic_addr[11]),
        .I1(axic_wdata[11]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\axis_amt_reg_n_0_[11] ),
        .O(axic_rdata_4[11]));
  LUT6 #(
    .INIT(64'h000F0AC000000AC0)) 
    \axic_rdata[12]_i_1 
       (.I0(axic_addr[12]),
        .I1(axic_wdata[12]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\axis_amt_reg_n_0_[12] ),
        .O(axic_rdata_4[12]));
  LUT6 #(
    .INIT(64'h000A0FC0000A00C0)) 
    \axic_rdata[13]_i_1 
       (.I0(\axis_amt_reg_n_0_[13] ),
        .I1(axic_wdata[13]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(axic_addr[13]),
        .O(axic_rdata_4[13]));
  LUT6 #(
    .INIT(64'h000A0FC0000A00C0)) 
    \axic_rdata[14]_i_1 
       (.I0(\axis_amt_reg_n_0_[14] ),
        .I1(axic_wdata[14]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(axic_addr[14]),
        .O(axic_rdata_4[14]));
  LUT6 #(
    .INIT(64'h000F0AC000000AC0)) 
    \axic_rdata[15]_i_1 
       (.I0(axic_addr[15]),
        .I1(axic_wdata[15]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\axis_amt_reg_n_0_[15] ),
        .O(axic_rdata_4[15]));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \axic_rdata[16]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_wdata[16]),
        .I4(\axic_rdata[16]_i_2_n_0 ),
        .O(axic_rdata_4[16]));
  LUT6 #(
    .INIT(64'h000A0F0C000A000C)) 
    \axic_rdata[16]_i_2 
       (.I0(axic_addr[16]),
        .I1(axim_csr[16]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\axis_amt_reg_n_0_[16] ),
        .O(\axic_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \axic_rdata[17]_i_1 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\axis_amt_reg_n_0_[17] ),
        .I4(\axic_rdata[17]_i_2_n_0 ),
        .O(axic_rdata_4[17]));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \axic_rdata[17]_i_2 
       (.I0(axic_addr[17]),
        .I1(axim_csr[17]),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(axic_wdata[17]),
        .O(\axic_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \axic_rdata[18]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_wdata[18]),
        .I4(\axic_rdata[18]_i_2_n_0 ),
        .O(axic_rdata_4[18]));
  LUT6 #(
    .INIT(64'h000C0F0A000C000A)) 
    \axic_rdata[18]_i_2 
       (.I0(axim_csr[18]),
        .I1(axic_addr[18]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\axis_amt_reg_n_0_[18] ),
        .O(\axic_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \axic_rdata[19]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[1] ),
        .I2(axic_addr[19]),
        .I3(\op_reg_n_0_[0] ),
        .I4(axim_csr[19]),
        .I5(\axic_rdata[19]_i_2_n_0 ),
        .O(axic_rdata_4[19]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \axic_rdata[19]_i_2 
       (.I0(\axis_amt_reg_n_0_[19] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[19]),
        .O(\axic_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \axic_rdata[1]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_wdata[1]),
        .I4(\axic_rdata[1]_i_2_n_0 ),
        .O(axic_rdata_4[1]));
  LUT6 #(
    .INIT(64'h000A0F0C000A000C)) 
    \axic_rdata[1]_i_2 
       (.I0(axic_addr[1]),
        .I1(axim_exec[1]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\axis_amt_reg_n_0_[1] ),
        .O(\axic_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F0AC000000AC0)) 
    \axic_rdata[20]_i_1 
       (.I0(axic_addr[20]),
        .I1(axic_wdata[20]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\axis_amt_reg_n_0_[20] ),
        .O(axic_rdata_4[20]));
  LUT6 #(
    .INIT(64'h000A0CF0000A0C00)) 
    \axic_rdata[21]_i_1 
       (.I0(axic_wdata[21]),
        .I1(\axis_amt_reg_n_0_[21] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(axic_addr[21]),
        .O(axic_rdata_4[21]));
  LUT6 #(
    .INIT(64'h000A0FC0000A00C0)) 
    \axic_rdata[22]_i_1 
       (.I0(\axis_amt_reg_n_0_[22] ),
        .I1(axic_wdata[22]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(axic_addr[22]),
        .O(axic_rdata_4[22]));
  LUT5 #(
    .INIT(32'h03200020)) 
    \axic_rdata[23]_i_1 
       (.I0(axic_addr[23]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[23]),
        .O(axic_rdata_4[23]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[24]_i_1 
       (.I0(axic_wdata[24]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[24]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[0]),
        .O(axic_rdata_4[24]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[25]_i_1 
       (.I0(axic_wdata[25]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[25]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[1]),
        .O(axic_rdata_4[25]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[26]_i_1 
       (.I0(axic_wdata[26]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[26]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[2]),
        .O(axic_rdata_4[26]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[27]_i_1 
       (.I0(axic_wdata[27]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[27]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[3]),
        .O(axic_rdata_4[27]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[28]_i_1 
       (.I0(axic_wdata[28]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[28]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[4]),
        .O(axic_rdata_4[28]));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[29]_i_1 
       (.I0(axic_wdata[29]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[29]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[5]),
        .O(axic_rdata_4[29]));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \axic_rdata[2]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_wdata[2]),
        .I4(\axic_rdata[2]_i_2_n_0 ),
        .O(axic_rdata_4[2]));
  LUT6 #(
    .INIT(64'h000A0F0C000A000C)) 
    \axic_rdata[2]_i_2 
       (.I0(axic_addr[2]),
        .I1(axim_exec[2]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\axis_amt_reg_n_0_[2] ),
        .O(\axic_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[30]_i_1 
       (.I0(axic_wdata[30]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[30]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[6]),
        .O(axic_rdata_4[30]));
  LUT4 #(
    .INIT(16'h0400)) 
    \axic_rdata[31]_i_1 
       (.I0(ard_wait_reg_n_0),
        .I1(axim_incomp_0),
        .I2(out),
        .I3(cond_rnw),
        .O(\axic_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0300232303002020)) 
    \axic_rdata[31]_i_2 
       (.I0(axic_wdata[31]),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(axic_addr[31]),
        .I4(\op_reg_n_0_[0] ),
        .I5(prev_op[7]),
        .O(axic_rdata_4[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \axic_rdata[3]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[1] ),
        .I2(axic_addr[3]),
        .I3(\op_reg_n_0_[0] ),
        .I4(axim_exec[3]),
        .I5(\axic_rdata[3]_i_2_n_0 ),
        .O(axic_rdata_4[3]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \axic_rdata[3]_i_2 
       (.I0(\axis_amt_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[3]),
        .O(\axic_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \axic_rdata[4]_i_1 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\axis_amt_reg_n_0_[4] ),
        .I4(\axic_rdata[4]_i_2_n_0 ),
        .O(axic_rdata_4[4]));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \axic_rdata[4]_i_2 
       (.I0(axic_addr[4]),
        .I1(axim_done[0]),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(axic_wdata[4]),
        .O(\axic_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \axic_rdata[5]_i_1 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\axis_amt_reg_n_0_[5] ),
        .I4(\axic_rdata[5]_i_2_n_0 ),
        .O(axic_rdata_4[5]));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \axic_rdata[5]_i_2 
       (.I0(axic_addr[5]),
        .I1(axim_done[1]),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(axic_wdata[5]),
        .O(\axic_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \axic_rdata[6]_i_1 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\axis_amt_reg_n_0_[6] ),
        .I4(\axic_rdata[6]_i_2_n_0 ),
        .O(axic_rdata_4[6]));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \axic_rdata[6]_i_2 
       (.I0(axic_addr[6]),
        .I1(axim_done[2]),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(axic_wdata[6]),
        .O(\axic_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \axic_rdata[7]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[1] ),
        .I2(axic_addr[7]),
        .I3(\op_reg_n_0_[0] ),
        .I4(axim_done[3]),
        .I5(\axic_rdata[7]_i_2_n_0 ),
        .O(axic_rdata_4[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03080008)) 
    \axic_rdata[7]_i_2 
       (.I0(\axis_amt_reg_n_0_[7] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[7]),
        .O(\axic_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \axic_rdata[8]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[1] ),
        .I2(axic_addr[8]),
        .I3(\op_reg_n_0_[0] ),
        .I4(axim_incomp),
        .I5(\axic_rdata[8]_i_2_n_0 ),
        .O(axic_rdata_4[8]));
  LUT5 #(
    .INIT(32'h03080008)) 
    \axic_rdata[8]_i_2 
       (.I0(\axis_amt_reg_n_0_[8] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(axic_wdata[8]),
        .O(\axic_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0FC0000A00C0)) 
    \axic_rdata[9]_i_1 
       (.I0(\axis_amt_reg_n_0_[9] ),
        .I1(axic_wdata[9]),
        .I2(\op_reg_n_0_[1] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(axic_addr[9]),
        .O(axic_rdata_4[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[0] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[0]),
        .Q(axic_rdata[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[10] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[10]),
        .Q(axic_rdata[10]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[11] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[11]),
        .Q(axic_rdata[11]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[12] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[12]),
        .Q(axic_rdata[12]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[13] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[13]),
        .Q(axic_rdata[13]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[14] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[14]),
        .Q(axic_rdata[14]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[15] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[15]),
        .Q(axic_rdata[15]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[16] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[16]),
        .Q(axic_rdata[16]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[17] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[17]),
        .Q(axic_rdata[17]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[18] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[18]),
        .Q(axic_rdata[18]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[19] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[19]),
        .Q(axic_rdata[19]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[1] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[1]),
        .Q(axic_rdata[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[20] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[20]),
        .Q(axic_rdata[20]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[21] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[21]),
        .Q(axic_rdata[21]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[22] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[22]),
        .Q(axic_rdata[22]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[23] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[23]),
        .Q(axic_rdata[23]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[24] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[24]),
        .Q(axic_rdata[24]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[25] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[25]),
        .Q(axic_rdata[25]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[26] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[26]),
        .Q(axic_rdata[26]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[27] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[27]),
        .Q(axic_rdata[27]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[28] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[28]),
        .Q(axic_rdata[28]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[29] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[29]),
        .Q(axic_rdata[29]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[2] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[2]),
        .Q(axic_rdata[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[30] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[30]),
        .Q(axic_rdata[30]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[31] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[31]),
        .Q(axic_rdata[31]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[3] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[3]),
        .Q(axic_rdata[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[4] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[4]),
        .Q(axic_rdata[4]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[5] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[5]),
        .Q(axic_rdata[5]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[6] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[6]),
        .Q(axic_rdata[6]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[7] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[7]),
        .Q(axic_rdata[7]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[8] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[8]),
        .Q(axic_rdata[8]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_rdata_reg[9] 
       (.C(cyslff_clk),
        .CE(\axic_rdata[31]_i_1_n_0 ),
        .D(axic_rdata_4[9]),
        .Q(axic_rdata[9]),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \axic_wdata[31]_i_1 
       (.I0(axim_incomp_0),
        .I1(out),
        .I2(cond_rnw),
        .I3(\op_reg_n_0_[1] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[2] ),
        .O(axic_wdata_3));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[0] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[0]),
        .Q(axic_wdata[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[10] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[10]),
        .Q(axic_wdata[10]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[11] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[11]),
        .Q(axic_wdata[11]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[12] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[12]),
        .Q(axic_wdata[12]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[13] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[13]),
        .Q(axic_wdata[13]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[14] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[14]),
        .Q(axic_wdata[14]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[15] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[15]),
        .Q(axic_wdata[15]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[16] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[16]),
        .Q(axic_wdata[16]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[17] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[17]),
        .Q(axic_wdata[17]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[18] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[18]),
        .Q(axic_wdata[18]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[19] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[19]),
        .Q(axic_wdata[19]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[1] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[1]),
        .Q(axic_wdata[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[20] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[20]),
        .Q(axic_wdata[20]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[21] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[21]),
        .Q(axic_wdata[21]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[22] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[22]),
        .Q(axic_wdata[22]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[23] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[23] ),
        .Q(axic_wdata[23]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[24] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[24] ),
        .Q(axic_wdata[24]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[25] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[25] ),
        .Q(axic_wdata[25]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[26] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[26] ),
        .Q(axic_wdata[26]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[27] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[27] ),
        .Q(axic_wdata[27]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[28] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[28] ),
        .Q(axic_wdata[28]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[29] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[29] ),
        .Q(axic_wdata[29]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[2] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[2]),
        .Q(axic_wdata[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[30] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[30] ),
        .Q(axic_wdata[30]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[31] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(\axim_tmp_reg_n_0_[31] ),
        .Q(axic_wdata[31]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[3] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[3]),
        .Q(axic_wdata[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[4] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(p_0_in[0]),
        .Q(axic_wdata[4]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[5] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(p_0_in[1]),
        .Q(axic_wdata[5]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[6] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(p_0_in[2]),
        .Q(axic_wdata[6]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[7] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(p_0_in[3]),
        .Q(axic_wdata[7]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[8] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[8]),
        .Q(axic_wdata[8]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axic_wdata_reg[9] 
       (.C(cyslff_clk),
        .CE(axic_wdata_3),
        .D(axis_amt[9]),
        .Q(axic_wdata[9]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_done_reg[0] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(p_0_in[0]),
        .Q(axim_done[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_done_reg[1] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(p_0_in[1]),
        .Q(axim_done[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_done_reg[2] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(p_0_in[2]),
        .Q(axim_done[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_done_reg[3] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(p_0_in[3]),
        .Q(axim_done[3]),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \axim_exec[3]_i_1 
       (.I0(axim_incomp_0),
        .I1(out),
        .I2(cond_rnw),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[2] ),
        .I5(\op_reg_n_0_[1] ),
        .O(axim_done_1));
  FDRE #(
    .INIT(1'b0)) 
    \axim_exec_reg[0] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(axis_amt[0]),
        .Q(axim_exec[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_exec_reg[1] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(axis_amt[1]),
        .Q(axim_exec[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_exec_reg[2] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(axis_amt[2]),
        .Q(axim_exec[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_exec_reg[3] 
       (.C(cyslff_clk),
        .CE(axim_done_1),
        .D(axis_amt[3]),
        .Q(axim_exec[3]),
        .R(dev_arst));
  LUT5 #(
    .INIT(32'hFF75AA00)) 
    axim_incomp_i_1
       (.I0(out),
        .I1(\FSM_sequential_st[1]_i_6_n_0 ),
        .I2(cond_rnw),
        .I3(axim_incomp_0),
        .I4(axim_incomp),
        .O(axim_incomp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axim_incomp_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axim_incomp_i_1_n_0),
        .Q(axim_incomp),
        .R(dev_arst));
  LUT5 #(
    .INIT(32'h00020000)) 
    \axim_tmp[15]_i_1 
       (.I0(\axim_tmp[31]_i_2_n_0 ),
        .I1(axim_csr[19]),
        .I2(axim_csr[18]),
        .I3(axim_csr[17]),
        .I4(axim_csr[16]),
        .O(axim_tmp[15]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \axim_tmp[23]_i_1 
       (.I0(\axim_tmp[31]_i_2_n_0 ),
        .I1(axim_csr[16]),
        .I2(axim_csr[17]),
        .I3(axim_csr[19]),
        .I4(axim_csr[18]),
        .O(\axim_tmp[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \axim_tmp[31]_i_1 
       (.I0(\axim_tmp[31]_i_2_n_0 ),
        .I1(axim_csr[19]),
        .I2(axim_csr[18]),
        .I3(axim_csr[17]),
        .I4(axim_csr[16]),
        .O(axim_tmp[31]));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \axim_tmp[31]_i_2 
       (.I0(cond_rnw),
        .I1(out),
        .I2(axim_incomp_0),
        .I3(axic_fdi_en),
        .I4(fdi_pause),
        .I5(fdi_resumed_reg_n_0),
        .O(\axim_tmp[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \axim_tmp[7]_i_1 
       (.I0(\axim_tmp[31]_i_2_n_0 ),
        .I1(axim_csr[19]),
        .I2(axim_csr[18]),
        .I3(axim_csr[17]),
        .I4(axim_csr[16]),
        .O(axim_tmp[7]));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[0] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[0]),
        .Q(axis_amt[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[10] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[2]),
        .Q(axis_amt[10]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[11] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[3]),
        .Q(axis_amt[11]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[12] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[4]),
        .Q(axis_amt[12]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[13] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[5]),
        .Q(axis_amt[13]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[14] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[6]),
        .Q(axis_amt[14]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[15] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[7]),
        .Q(axis_amt[15]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[16] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(axis_amt[16]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[17] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(axis_amt[17]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[18] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(axis_amt[18]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[19] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(axis_amt[19]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[1] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[1]),
        .Q(axis_amt[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[20] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(axis_amt[20]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[21] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(axis_amt[21]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[22] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(axis_amt[22]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[23] 
       (.C(cyslff_clk),
        .CE(\axim_tmp[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(\axim_tmp_reg_n_0_[23] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[24] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[0]),
        .Q(\axim_tmp_reg_n_0_[24] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[25] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[1]),
        .Q(\axim_tmp_reg_n_0_[25] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[26] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[2]),
        .Q(\axim_tmp_reg_n_0_[26] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[27] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[3]),
        .Q(\axim_tmp_reg_n_0_[27] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[28] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[4]),
        .Q(\axim_tmp_reg_n_0_[28] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[29] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[5]),
        .Q(\axim_tmp_reg_n_0_[29] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[2] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[2]),
        .Q(axis_amt[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[30] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[6]),
        .Q(\axim_tmp_reg_n_0_[30] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[31] 
       (.C(cyslff_clk),
        .CE(axim_tmp[31]),
        .D(D[7]),
        .Q(\axim_tmp_reg_n_0_[31] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[3] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[3]),
        .Q(axis_amt[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[4] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[4]),
        .Q(p_0_in[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[5] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[5]),
        .Q(p_0_in[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[6] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[6]),
        .Q(p_0_in[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[7] 
       (.C(cyslff_clk),
        .CE(axim_tmp[7]),
        .D(D[7]),
        .Q(p_0_in[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[8] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[0]),
        .Q(axis_amt[8]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axim_tmp_reg[9] 
       (.C(cyslff_clk),
        .CE(axim_tmp[15]),
        .D(D[1]),
        .Q(axis_amt[9]),
        .R(dev_arst));
  LUT5 #(
    .INIT(32'h00010000)) 
    \axis_amt[22]_i_1 
       (.I0(\axis_amt[22]_i_2_n_0 ),
        .I1(cond_rnw),
        .I2(\st_reg_n_0_[0] ),
        .I3(\st_reg_n_0_[2] ),
        .I4(\st_reg_n_0_[1] ),
        .O(\axis_amt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \axis_amt[22]_i_2 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .O(\axis_amt[22]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[0] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[0]),
        .Q(\axis_amt_reg_n_0_[0] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[10] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[10]),
        .Q(\axis_amt_reg_n_0_[10] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[11] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[11]),
        .Q(\axis_amt_reg_n_0_[11] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[12] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[12]),
        .Q(\axis_amt_reg_n_0_[12] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[13] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[13]),
        .Q(\axis_amt_reg_n_0_[13] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[14] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[14]),
        .Q(\axis_amt_reg_n_0_[14] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[15] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[15]),
        .Q(\axis_amt_reg_n_0_[15] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[16] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[16]),
        .Q(\axis_amt_reg_n_0_[16] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[17] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[17]),
        .Q(\axis_amt_reg_n_0_[17] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[18] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[18]),
        .Q(\axis_amt_reg_n_0_[18] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[19] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[19]),
        .Q(\axis_amt_reg_n_0_[19] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[1] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[1]),
        .Q(\axis_amt_reg_n_0_[1] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[20] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[20]),
        .Q(\axis_amt_reg_n_0_[20] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[21] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[21]),
        .Q(\axis_amt_reg_n_0_[21] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[22] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[22]),
        .Q(\axis_amt_reg_n_0_[22] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[2] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[2]),
        .Q(\axis_amt_reg_n_0_[2] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[3] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[3]),
        .Q(\axis_amt_reg_n_0_[3] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[4] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\axis_amt_reg_n_0_[4] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[5] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\axis_amt_reg_n_0_[5] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[6] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\axis_amt_reg_n_0_[6] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[7] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\axis_amt_reg_n_0_[7] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[8] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[8]),
        .Q(\axis_amt_reg_n_0_[8] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \axis_amt_reg[9] 
       (.C(cyslff_clk),
        .CE(\axis_amt[22]_i_1_n_0 ),
        .D(axis_amt[9]),
        .Q(\axis_amt_reg_n_0_[9] ),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'hBBFBAAAA8808AAAA)) 
    fdi_pause_i_1
       (.I0(fdi_pause_i_2_n_0),
        .I1(out),
        .I2(cond_rnw),
        .I3(\FSM_sequential_st[1]_i_6_n_0 ),
        .I4(fdi_pause_i_3_n_0),
        .I5(fdi_pause),
        .O(fdi_pause_i_1_n_0));
  LUT6 #(
    .INIT(64'h3B383B3803003300)) 
    fdi_pause_i_2
       (.I0(next_op_fetched_reg_n_0),
        .I1(out),
        .I2(axim_incomp_0),
        .I3(axic_fdi_en),
        .I4(fdi_pause),
        .I5(cond_rnw),
        .O(fdi_pause_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    fdi_pause_i_3
       (.I0(axic_fdi_en),
        .I1(out),
        .I2(fdi_resumed_reg_n_0),
        .I3(fdi_pause_i_4_n_0),
        .I4(axic_fdi_ready_i_3_n_0),
        .O(fdi_pause_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    fdi_pause_i_4
       (.I0(axim_csr[18]),
        .I1(axim_csr[19]),
        .I2(axim_csr[17]),
        .I3(axim_csr[16]),
        .O(fdi_pause_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdi_pause_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_pause_i_1_n_0),
        .Q(fdi_pause),
        .R(dev_arst));
  LUT6 #(
    .INIT(64'hFFFFFF2F00000030)) 
    fdi_resumed_i_1
       (.I0(axic_fdi_en),
        .I1(fdi_pause),
        .I2(axim_incomp_0),
        .I3(out),
        .I4(cond_rnw),
        .I5(fdi_resumed_reg_n_0),
        .O(fdi_resumed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdi_resumed_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_resumed_i_1_n_0),
        .Q(fdi_resumed_reg_n_0),
        .R(dev_arst));
  LUT4 #(
    .INIT(16'hAA80)) 
    \next_op[7]_i_1 
       (.I0(axim_incomp_0),
        .I1(cond_rnw),
        .I2(axic_fdi_en),
        .I3(out),
        .O(\next_op[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    next_op_fetched_reg
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(next_op_fetched),
        .Q(next_op_fetched_reg_n_0),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[0] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [0]),
        .Q(\next_op_reg_n_0_[0] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[1] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [1]),
        .Q(\next_op_reg_n_0_[1] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[2] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [2]),
        .Q(\next_op_reg_n_0_[2] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[3] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [3]),
        .Q(\next_op_reg_n_0_[3] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[4] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [4]),
        .Q(\next_op_reg_n_0_[4] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[5] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [5]),
        .Q(\next_op_reg_n_0_[5] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[6] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [6]),
        .Q(\next_op_reg_n_0_[6] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \next_op_reg[7] 
       (.C(cyslff_clk),
        .CE(\next_op[7]_i_1_n_0 ),
        .D(\axic_fdi_reg[7] [7]),
        .Q(\next_op_reg_n_0_[7] ),
        .R(dev_arst));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[0]_i_1 
       (.I0(\next_op_reg_n_0_[0] ),
        .I1(out),
        .I2(D[0]),
        .O(op[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[1]_i_1 
       (.I0(\next_op_reg_n_0_[1] ),
        .I1(out),
        .I2(D[1]),
        .O(op[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[2]_i_1 
       (.I0(\next_op_reg_n_0_[2] ),
        .I1(out),
        .I2(D[2]),
        .O(op[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[3]_i_1 
       (.I0(\next_op_reg_n_0_[3] ),
        .I1(out),
        .I2(D[3]),
        .O(op[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[4]_i_1 
       (.I0(\next_op_reg_n_0_[4] ),
        .I1(out),
        .I2(D[4]),
        .O(op[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[5]_i_1 
       (.I0(\next_op_reg_n_0_[5] ),
        .I1(out),
        .I2(D[5]),
        .O(op[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[6]_i_1 
       (.I0(\next_op_reg_n_0_[6] ),
        .I1(out),
        .I2(D[6]),
        .O(op[6]));
  LUT6 #(
    .INIT(64'h3202020202020202)) 
    \op[7]_i_1 
       (.I0(axic_fdi_en),
        .I1(axim_incomp_0),
        .I2(out),
        .I3(\FSM_sequential_st[1]_i_6_n_0 ),
        .I4(next_op_fetched_reg_n_0),
        .I5(cond_rnw),
        .O(\op[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \op[7]_i_2 
       (.I0(\next_op_reg_n_0_[7] ),
        .I1(out),
        .I2(D[7]),
        .O(op[7]));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[0]),
        .Q(\op_reg_n_0_[0] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[1]),
        .Q(\op_reg_n_0_[1] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[2]),
        .Q(\op_reg_n_0_[2] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[3]),
        .Q(\op_reg_n_0_[3] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[4]),
        .Q(\op_reg_n_0_[4] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[5]),
        .Q(\op_reg_n_0_[5] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[6] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[6]),
        .Q(\op_reg_n_0_[6] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[7] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(op[7]),
        .Q(cond_rnw),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[0] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[0] ),
        .Q(prev_op[0]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[1] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[1] ),
        .Q(prev_op[1]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[2] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[2] ),
        .Q(prev_op[2]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[3] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[3] ),
        .Q(prev_op[3]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[4] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[4] ),
        .Q(prev_op[4]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[5] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[5] ),
        .Q(prev_op[5]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[6] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(\op_reg_n_0_[6] ),
        .Q(prev_op[6]),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \prev_op_reg[7] 
       (.C(cyslff_clk),
        .CE(\op[7]_i_1_n_0 ),
        .D(cond_rnw),
        .Q(prev_op[7]),
        .R(dev_arst));
  LUT5 #(
    .INIT(32'h00000DDD)) 
    \st[0]_i_1 
       (.I0(\st_reg_n_0_[1] ),
        .I1(\FSM_sequential_st[0]_i_2_n_0 ),
        .I2(\st_reg_n_0_[0] ),
        .I3(\FSM_sequential_st[1]_i_4_n_0 ),
        .I4(\st_reg_n_0_[2] ),
        .O(\st[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0200000F020F00)) 
    \st[1]_i_1 
       (.I0(\st_reg_n_0_[1] ),
        .I1(\FSM_sequential_st[1]_i_6_n_0 ),
        .I2(\st_reg_n_0_[2] ),
        .I3(\st_reg_n_0_[0] ),
        .I4(cond_rnw),
        .I5(\st[1]_i_2_n_0 ),
        .O(\st[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \st[1]_i_2 
       (.I0(fdi_pause),
        .I1(fdi_resumed_reg_n_0),
        .O(\st[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \st[2]_i_1 
       (.I0(cond_rnw),
        .I1(fdi_resumed_reg_n_0),
        .I2(fdi_pause),
        .I3(\st_reg_n_0_[0] ),
        .I4(\st_reg_n_0_[2] ),
        .O(\st[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \st_reg[0] 
       (.C(cyslff_clk),
        .CE(st),
        .D(\st[0]_i_1_n_0 ),
        .Q(\st_reg_n_0_[0] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \st_reg[1] 
       (.C(cyslff_clk),
        .CE(st),
        .D(\st[1]_i_1_n_0 ),
        .Q(\st_reg_n_0_[1] ),
        .R(dev_arst));
  FDRE #(
    .INIT(1'b0)) 
    \st_reg[2] 
       (.C(cyslff_clk),
        .CE(st),
        .D(\st[2]_i_1_n_0 ),
        .Q(\st_reg_n_0_[2] ),
        .R(dev_arst));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(20.750000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.833000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.375000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module cyslff
   (cyslff_clk,
    ioctr_rdrdy,
    axic_fdi_en,
    axic_fdi,
    io_cyslff_oe_OBUF,
    io_cyslff_rd_OBUF,
    io_cyslff_wr_OBUF,
    io_cyslff_pktend_OBUF,
    next_op_fetched,
    \next_op_reg[7] ,
    \io_cyslff_addr[1] ,
    io_cyslff_fd,
    io_cyslff_clk,
    fdi_pause,
    axic_fdi_ready,
    axic_fdo_en,
    Q,
    axic_fdo_ready,
    axic_fdo_last,
    dev_arst,
    io_cyslff_ffb_IBUF,
    io_cyslff_feb_IBUF,
    out);
  output cyslff_clk;
  output ioctr_rdrdy;
  output axic_fdi_en;
  output [7:0]axic_fdi;
  output io_cyslff_oe_OBUF;
  output io_cyslff_rd_OBUF;
  output io_cyslff_wr_OBUF;
  output io_cyslff_pktend_OBUF;
  output next_op_fetched;
  output [7:0]\next_op_reg[7] ;
  output [1:0]\io_cyslff_addr[1] ;
  inout [7:0]io_cyslff_fd;
  input io_cyslff_clk;
  input fdi_pause;
  input axic_fdi_ready;
  input axic_fdo_en;
  input [7:0]Q;
  input axic_fdo_ready;
  input axic_fdo_last;
  input dev_arst;
  input io_cyslff_ffb_IBUF;
  input io_cyslff_feb_IBUF;
  input [0:0]out;

  wire [7:0]Q;
  wire [7:0]axic_fdi;
  wire axic_fdi_en;
  wire axic_fdi_ready;
  wire axic_fdo_en;
  wire axic_fdo_last;
  wire axic_fdo_ready;
  wire [7:0]axis_fdi;
  wire axis_fdi_en;
  wire [1:0]cyslff_addr;
  wire cyslff_clk;
  wire cyslff_dir;
  wire [7:0]cyslff_fdi;
  wire cyslff_fdi_en;
  wire [7:0]cyslff_fdo;
  wire cyslff_fdo_en;
  wire cyslff_feb;
  wire cyslff_ffb;
  wire cyslff_io_n_10;
  wire cyslff_io_n_11;
  wire cyslff_io_n_12;
  wire cyslff_io_n_13;
  wire cyslff_io_n_14;
  wire cyslff_io_n_15;
  wire cyslff_io_n_3;
  wire cyslff_io_n_9;
  wire cyslff_oe;
  wire cyslff_pktend;
  wire cyslff_rd;
  wire cyslff_syncio_n_12;
  wire cyslff_syncio_n_4;
  wire cyslff_syncio_n_9;
  wire cyslff_wr;
  wire dev_arst;
  wire dev_srst;
  wire fdi_pause;
  wire fdo_pause;
  wire fdo_paused_pktend;
  wire fdo_paused_wr;
  wire [1:0]\io_cyslff_addr[1] ;
  wire io_cyslff_clk;
  wire [7:0]io_cyslff_fd;
  wire io_cyslff_fdo;
  wire io_cyslff_feb_IBUF;
  wire io_cyslff_ffb_IBUF;
  wire io_cyslff_oe_OBUF;
  wire io_cyslff_pktend_OBUF;
  wire io_cyslff_rd_OBUF;
  wire io_cyslff_wr_OBUF;
  wire ioctr_rdrdy;
  wire next_op_fetched;
  wire [7:0]\next_op_reg[7] ;
  wire [0:0]out;
  wire [1:0]sio_cyslff_addr;
  wire sio_cyslff_dir;
  wire [7:0]sio_cyslff_fdi;
  wire [7:0]sio_cyslff_fdo;
  wire sio_cyslff_feb;
  wire sio_cyslff_ffb;
  wire sio_cyslff_oe;
  wire sio_cyslff_pktend;
  wire sio_cyslff_wr;

  (* SLADDR_IDLE = "2'b11" *) 
  (* SLADDR_RD = "2'b00" *) 
  (* SLADDR_WR = "2'b10" *) 
  cyslff_ifctr cyslff_ifctr
       (.axic_fdi(axic_fdi),
        .axic_fdi_en(axic_fdi_en),
        .axic_fdi_ready(axic_fdi_ready),
        .axic_fdo(Q),
        .axic_fdo_en(axic_fdo_en),
        .axic_fdo_last(axic_fdo_last),
        .axic_fdo_ready(axic_fdo_ready),
        .axis_fdi(axis_fdi),
        .axis_fdi_en(axis_fdi_en),
        .axis_fdi_ready(1'b0),
        .axis_fdo({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_fdo_en(1'b0),
        .axis_fdo_last(1'b0),
        .axis_fdo_ready(1'b0),
        .cyslff_addr(cyslff_addr),
        .cyslff_clk(cyslff_clk),
        .cyslff_dir(cyslff_dir),
        .cyslff_fdi(cyslff_fdi),
        .cyslff_fdi_en(cyslff_fdi_en),
        .cyslff_fdo(cyslff_fdo),
        .cyslff_fdo_en(cyslff_fdo_en),
        .cyslff_feb(cyslff_feb),
        .cyslff_ffb(cyslff_ffb),
        .cyslff_oe(cyslff_oe),
        .cyslff_pktend(cyslff_pktend),
        .cyslff_rd(cyslff_rd),
        .cyslff_wr(cyslff_wr),
        .dev_srst(dev_srst),
        .fdi_pause(fdi_pause),
        .fdo_pause(fdo_pause),
        .ioctr_rdrdy(ioctr_rdrdy));
  cyslff_io cyslff_io
       (.E(cyslff_io_n_10),
        .Q(sio_cyslff_addr),
        .cyslff_clk(cyslff_clk),
        .cyslff_fdi_en(cyslff_fdi_en),
        .cyslff_fdi_en_reg(cyslff_io_n_9),
        .\cyslff_fdi_reg[7] (cyslff_io_n_11),
        .\cyslff_fdi_reg[7]_0 (sio_cyslff_fdi),
        .cyslff_fdo_en(cyslff_fdo_en),
        .cyslff_pktend(cyslff_pktend),
        .cyslff_wr(cyslff_wr),
        .dev_srst(dev_srst),
        .fdi_pause(fdi_pause),
        .fdi_paused_den_reg_0(cyslff_io_n_12),
        .fdi_paused_den_reg_1(cyslff_syncio_n_9),
        .fdo_pause(fdo_pause),
        .fdo_paused_den_reg(cyslff_io_n_13),
        .fdo_paused_den_reg_0(cyslff_syncio_n_4),
        .fdo_paused_pktend(fdo_paused_pktend),
        .fdo_paused_pktend_reg_0(cyslff_io_n_15),
        .fdo_paused_wr(fdo_paused_wr),
        .fdo_paused_wr_reg_0(cyslff_io_n_14),
        .\io_cyslff_addr[1] (\io_cyslff_addr[1] ),
        .io_cyslff_clk(io_cyslff_clk),
        .io_cyslff_fd(io_cyslff_fd),
        .io_cyslff_feb_IBUF(io_cyslff_feb_IBUF),
        .io_cyslff_ffb_IBUF(io_cyslff_ffb_IBUF),
        .io_cyslff_oe_OBUF(io_cyslff_oe_OBUF),
        .io_cyslff_pktend_OBUF(io_cyslff_pktend_OBUF),
        .io_cyslff_pktend_reg_0(cyslff_io_n_3),
        .io_cyslff_rd_OBUF(io_cyslff_rd_OBUF),
        .io_cyslff_wr_OBUF(io_cyslff_wr_OBUF),
        .sio_cyslff_dir(sio_cyslff_dir),
        .sio_cyslff_fdo_en_reg(io_cyslff_fdo),
        .\sio_cyslff_fdo_reg[7] (sio_cyslff_fdo),
        .sio_cyslff_feb(sio_cyslff_feb),
        .sio_cyslff_ffb(sio_cyslff_ffb),
        .sio_cyslff_oe(sio_cyslff_oe),
        .sio_cyslff_pktend(sio_cyslff_pktend),
        .sio_cyslff_rd_reg(cyslff_syncio_n_12),
        .sio_cyslff_wr(sio_cyslff_wr));
  cyslff_syncio cyslff_syncio
       (.D(cyslff_addr),
        .E(cyslff_io_n_10),
        .Q(sio_cyslff_addr),
        .\axic_fdi_reg[7] (cyslff_fdi),
        .cyslff_clk(cyslff_clk),
        .cyslff_dir(cyslff_dir),
        .cyslff_fdi_en(cyslff_fdi_en),
        .cyslff_fdo_en(cyslff_fdo_en),
        .cyslff_fdo_en_reg(cyslff_io_n_13),
        .\cyslff_fdo_reg[7] (cyslff_fdo),
        .cyslff_feb(cyslff_feb),
        .cyslff_ffb(cyslff_ffb),
        .cyslff_oe(cyslff_oe),
        .cyslff_pktend(cyslff_pktend),
        .cyslff_pktend_reg(cyslff_io_n_15),
        .cyslff_rd(cyslff_rd),
        .cyslff_wr(cyslff_wr),
        .cyslff_wr_reg(cyslff_io_n_14),
        .dev_srst(dev_srst),
        .fdi_pause(fdi_pause),
        .fdi_paused_den_reg_0(cyslff_syncio_n_9),
        .fdi_paused_reg(cyslff_io_n_11),
        .fdo_paused_pktend(fdo_paused_pktend),
        .fdo_paused_reg(cyslff_io_n_3),
        .fdo_paused_wr(fdo_paused_wr),
        .\io_cyslff_fdo_reg[7] (io_cyslff_fdo),
        .\io_cyslff_fdo_reg[7]_0 (sio_cyslff_fdo),
        .io_cyslff_feb_IBUF(io_cyslff_feb_IBUF),
        .io_cyslff_ffb_IBUF(io_cyslff_ffb_IBUF),
        .io_cyslff_rd_reg(cyslff_syncio_n_12),
        .sio_cyslff_dir(sio_cyslff_dir),
        .sio_cyslff_fdi_en_reg(cyslff_io_n_9),
        .\sio_cyslff_fdi_reg[7] (sio_cyslff_fdi),
        .sio_cyslff_fdo_en_reg_0(cyslff_syncio_n_4),
        .sio_cyslff_feb(sio_cyslff_feb),
        .sio_cyslff_feb_reg(cyslff_io_n_12),
        .sio_cyslff_ffb(sio_cyslff_ffb),
        .sio_cyslff_oe(sio_cyslff_oe),
        .sio_cyslff_pktend(sio_cyslff_pktend),
        .sio_cyslff_wr(sio_cyslff_wr));
  FDRE #(
    .INIT(1'b1)) 
    dev_srst_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(dev_arst),
        .Q(dev_srst),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[0]_i_1 
       (.I0(axic_fdi[0]),
        .I1(out),
        .O(\next_op_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[1]_i_1 
       (.I0(axic_fdi[1]),
        .I1(out),
        .O(\next_op_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[2]_i_1 
       (.I0(axic_fdi[2]),
        .I1(out),
        .O(\next_op_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[3]_i_1 
       (.I0(axic_fdi[3]),
        .I1(out),
        .O(\next_op_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[4]_i_1 
       (.I0(axic_fdi[4]),
        .I1(out),
        .O(\next_op_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[5]_i_1 
       (.I0(axic_fdi[5]),
        .I1(out),
        .O(\next_op_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[6]_i_1 
       (.I0(axic_fdi[6]),
        .I1(out),
        .O(\next_op_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_op[7]_i_2 
       (.I0(axic_fdi[7]),
        .I1(out),
        .O(\next_op_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    next_op_fetched_i_1
       (.I0(axic_fdi_en),
        .I1(out),
        .O(next_op_fetched));
endmodule

(* SLADDR_IDLE = "2'b11" *) (* SLADDR_RD = "2'b00" *) (* SLADDR_WR = "2'b10" *) 
module cyslff_ifctr
   (cyslff_fdo_en,
    cyslff_fdo,
    cyslff_fdi_en,
    cyslff_fdi,
    cyslff_oe,
    cyslff_rd,
    cyslff_wr,
    cyslff_pktend,
    cyslff_feb,
    cyslff_ffb,
    cyslff_addr,
    cyslff_dir,
    fdo_pause,
    fdi_pause,
    ioctr_rdrdy,
    axic_fdi_en,
    axic_fdi,
    axic_fdi_ready,
    axic_fdo_en,
    axic_fdo,
    axic_fdo_ready,
    axic_fdo_last,
    axis_fdi_en,
    axis_fdi,
    axis_fdi_ready,
    axis_fdo_en,
    axis_fdo,
    axis_fdo_ready,
    axis_fdo_last,
    cyslff_clk,
    dev_srst);
  (* keep = "true" *) (* mark_debug = "true" *) output cyslff_fdo_en;
  (* keep = "true" *) (* mark_debug = "true" *) output [7:0]cyslff_fdo;
  (* keep = "true" *) (* mark_debug = "true" *) input cyslff_fdi_en;
  (* keep = "true" *) (* mark_debug = "true" *) input [7:0]cyslff_fdi;
  (* keep = "true" *) (* mark_debug = "true" *) output cyslff_oe;
  (* keep = "true" *) (* mark_debug = "true" *) output cyslff_rd;
  (* keep = "true" *) (* mark_debug = "true" *) output cyslff_wr;
  (* keep = "true" *) (* mark_debug = "true" *) output cyslff_pktend;
  (* keep = "true" *) (* mark_debug = "true" *) input cyslff_feb;
  (* keep = "true" *) (* mark_debug = "true" *) input cyslff_ffb;
  (* keep = "true" *) (* mark_debug = "true" *) output [1:0]cyslff_addr;
  output cyslff_dir;
  input fdo_pause;
  input fdi_pause;
  output ioctr_rdrdy;
  output axic_fdi_en;
  output [7:0]axic_fdi;
  input axic_fdi_ready;
  input axic_fdo_en;
  input [7:0]axic_fdo;
  input axic_fdo_ready;
  input axic_fdo_last;
  output axis_fdi_en;
  output [7:0]axis_fdi;
  input axis_fdi_ready;
  input axis_fdo_en;
  input [7:0]axis_fdo;
  input axis_fdo_ready;
  input axis_fdo_last;
  input cyslff_clk;
  input dev_srst;

  wire [7:0]axic_fdi;
  wire \axic_fdi[7]_i_1_n_0 ;
  wire axic_fdi_en;
  wire axic_fdi_en_i_1_n_0;
  wire axic_fdi_en_i_2_n_0;
  wire axic_fdi_ready;
  wire [7:0]axic_fdo;
  wire axic_fdo_en;
  wire axic_fdo_last;
  wire axic_fdo_ready;
  wire [7:0]axis_fdi;
  wire \axis_fdi[7]_i_1_n_0 ;
  wire axis_fdi_en;
  wire axis_fdi_en_i_1_n_0;
  wire axis_fdi_en_i_2_n_0;
  wire axis_fdi_ready;
  wire [7:0]axis_fdo;
  wire axis_fdo_en;
  wire axis_fdo_last;
  wire axis_fdo_ready;
  wire cond_cyslff_wren;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire [1:0]cyslff_addr;
  wire cyslff_addr1;
  wire cyslff_clk;
  wire cyslff_dir;
  wire cyslff_dir_i_1_n_0;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire [7:0]cyslff_fdi;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_fdi_en;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire [7:0]cyslff_fdo;
  wire \cyslff_fdo[0]_i_1_n_0 ;
  wire \cyslff_fdo[1]_i_1_n_0 ;
  wire \cyslff_fdo[2]_i_1_n_0 ;
  wire \cyslff_fdo[3]_i_1_n_0 ;
  wire \cyslff_fdo[4]_i_1_n_0 ;
  wire \cyslff_fdo[5]_i_1_n_0 ;
  wire \cyslff_fdo[6]_i_1_n_0 ;
  wire \cyslff_fdo[7]_i_1_n_0 ;
  wire \cyslff_fdo[7]_i_2_n_0 ;
  wire \cyslff_fdo[7]_i_3_n_0 ;
  wire \cyslff_fdo[7]_i_4_n_0 ;
  wire \cyslff_fdo[7]_i_5_n_0 ;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_fdo_en;
  wire cyslff_fdo_en_i_1_n_0;
  wire cyslff_fdo_en_i_2_n_0;
  wire cyslff_fdo_en_i_3_n_0;
  wire cyslff_fdo_en_i_4_n_0;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_feb;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_ffb;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_oe;
  wire cyslff_oe_i_1_n_0;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_pktend;
  wire cyslff_pktend_i_1_n_0;
  wire cyslff_pktend_i_2_n_0;
  wire cyslff_pktend_i_3_n_0;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_rd;
  wire cyslff_rd_i_1_n_0;
  (* MARK_DEBUG *) (* RTL_KEEP = "true" *) wire cyslff_wr;
  wire cyslff_wr_i_1_n_0;
  wire cyslff_wr_i_2_n_0;
  wire cyslff_wr_i_3_n_0;
  wire cyslff_wr_i_4_n_0;
  wire dev_srst;
  wire fdi_pause;
  wire fdi_paused;
  wire fdi_paused_den_i_1_n_0;
  wire fdi_paused_den_reg_n_0;
  wire fdo_pause;
  wire fdo_paused;
  wire fdo_paused_den;
  wire fdo_paused_den_i_1_n_0;
  wire fdo_paused_den_i_2_n_0;
  wire fdo_paused_den_i_3_n_0;
  wire fdo_paused_last;
  wire fdo_paused_last_i_1_n_0;
  wire fdo_paused_last_i_2_n_0;
  wire ioctr_rdrdy;

  LUT3 #(
    .INIT(8'h02)) 
    \axic_fdi[7]_i_1 
       (.I0(axic_fdi_ready),
        .I1(dev_srst),
        .I2(fdi_paused),
        .O(\axic_fdi[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF0200CEFF0200)) 
    axic_fdi_en_i_1
       (.I0(axic_fdi_en_i_2_n_0),
        .I1(dev_srst),
        .I2(fdi_pause),
        .I3(axic_fdi_ready),
        .I4(axic_fdi_en),
        .I5(fdi_paused),
        .O(axic_fdi_en_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    axic_fdi_en_i_2
       (.I0(fdi_paused_den_reg_n_0),
        .I1(fdi_paused),
        .I2(cyslff_fdi_en),
        .O(axic_fdi_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axic_fdi_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axic_fdi_en_i_1_n_0),
        .Q(axic_fdi_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[0] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[0]),
        .Q(axic_fdi[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[1] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[1]),
        .Q(axic_fdi[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[2] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[2]),
        .Q(axic_fdi[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[3] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[3]),
        .Q(axic_fdi[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[4] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[4]),
        .Q(axic_fdi[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[5] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[5]),
        .Q(axic_fdi[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[6] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[6]),
        .Q(axic_fdi[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axic_fdi_reg[7] 
       (.C(cyslff_clk),
        .CE(\axic_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[7]),
        .Q(axic_fdi[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \axis_fdi[7]_i_1 
       (.I0(axis_fdi_ready),
        .I1(axic_fdi_ready),
        .I2(dev_srst),
        .I3(fdi_paused),
        .O(\axis_fdi[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0002FFCE0002)) 
    axis_fdi_en_i_1
       (.I0(axic_fdi_en_i_2_n_0),
        .I1(dev_srst),
        .I2(fdi_pause),
        .I3(axis_fdi_en_i_2_n_0),
        .I4(axis_fdi_en),
        .I5(fdi_paused),
        .O(axis_fdi_en_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    axis_fdi_en_i_2
       (.I0(axic_fdi_ready),
        .I1(axis_fdi_ready),
        .O(axis_fdi_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_fdi_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(axis_fdi_en_i_1_n_0),
        .Q(axis_fdi_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[0] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[0]),
        .Q(axis_fdi[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[1] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[1]),
        .Q(axis_fdi[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[2] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[2]),
        .Q(axis_fdi[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[3] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[3]),
        .Q(axis_fdi[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[4] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[4]),
        .Q(axis_fdi[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[5] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[5]),
        .Q(axis_fdi[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[6] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[6]),
        .Q(axis_fdi[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axis_fdi_reg[7] 
       (.C(cyslff_clk),
        .CE(\axis_fdi[7]_i_1_n_0 ),
        .D(cyslff_fdi[7]),
        .Q(axis_fdi[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \cyslff_addr_reg[0] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(cyslff_addr[0]),
        .S(dev_srst));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \cyslff_addr_reg[1] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_addr1),
        .Q(cyslff_addr[1]),
        .S(dev_srst));
  LUT3 #(
    .INIT(8'h1F)) 
    cyslff_dir_i_1
       (.I0(axis_fdo_ready),
        .I1(axic_fdo_ready),
        .I2(cyslff_oe),
        .O(cyslff_dir_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    cyslff_dir_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_dir_i_1_n_0),
        .Q(cyslff_dir),
        .S(dev_srst));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[0]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[0]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[0]),
        .I4(cyslff_fdo[0]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[1]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[1]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[1]),
        .I4(cyslff_fdo[1]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[2]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[2]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[2]),
        .I4(cyslff_fdo[2]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[3]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[3]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[3]),
        .I4(cyslff_fdo[3]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[4]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[4]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[4]),
        .I4(cyslff_fdo[4]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[5]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[5]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[5]),
        .I4(cyslff_fdo[5]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[6]_i_1 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[6]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[6]),
        .I4(cyslff_fdo[6]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \cyslff_fdo[7]_i_1 
       (.I0(cyslff_ffb),
        .I1(cyslff_addr[1]),
        .I2(cyslff_addr[0]),
        .I3(dev_srst),
        .O(\cyslff_fdo[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \cyslff_fdo[7]_i_2 
       (.I0(\cyslff_fdo[7]_i_3_n_0 ),
        .I1(axis_fdo[7]),
        .I2(\cyslff_fdo[7]_i_4_n_0 ),
        .I3(axic_fdo[7]),
        .I4(cyslff_fdo[7]),
        .I5(\cyslff_fdo[7]_i_5_n_0 ),
        .O(\cyslff_fdo[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \cyslff_fdo[7]_i_3 
       (.I0(dev_srst),
        .I1(axis_fdo_ready),
        .I2(axic_fdo_ready),
        .I3(fdo_paused),
        .I4(fdo_pause),
        .O(\cyslff_fdo[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cyslff_fdo[7]_i_4 
       (.I0(fdo_paused),
        .I1(axic_fdo_ready),
        .I2(dev_srst),
        .O(\cyslff_fdo[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFEFABBB)) 
    \cyslff_fdo[7]_i_5 
       (.I0(dev_srst),
        .I1(axic_fdo_ready),
        .I2(axis_fdo_ready),
        .I3(fdo_pause),
        .I4(fdo_paused),
        .O(\cyslff_fdo[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    cyslff_fdo_en_i_1
       (.I0(cyslff_fdo_en_i_2_n_0),
        .I1(cyslff_fdo_en_i_3_n_0),
        .I2(cyslff_fdo_en_i_4_n_0),
        .I3(cond_cyslff_wren),
        .I4(cyslff_fdo_en),
        .O(cyslff_fdo_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0101010)) 
    cyslff_fdo_en_i_2
       (.I0(axic_fdo_ready),
        .I1(axis_fdo_ready),
        .I2(cyslff_fdo_en),
        .I3(fdo_pause),
        .I4(fdo_paused),
        .O(cyslff_fdo_en_i_2_n_0));
  LUT5 #(
    .INIT(32'h44001000)) 
    cyslff_fdo_en_i_3
       (.I0(fdo_pause),
        .I1(axic_fdo_ready),
        .I2(axis_fdo_ready),
        .I3(fdo_paused_den),
        .I4(fdo_paused),
        .O(cyslff_fdo_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h002C002000200020)) 
    cyslff_fdo_en_i_4
       (.I0(axic_fdo_en),
        .I1(fdo_paused),
        .I2(axic_fdo_ready),
        .I3(fdo_pause),
        .I4(axis_fdo_ready),
        .I5(axis_fdo_en),
        .O(cyslff_fdo_en_i_4_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    cyslff_fdo_en_i_5
       (.I0(cyslff_addr[0]),
        .I1(cyslff_addr[1]),
        .I2(cyslff_ffb),
        .O(cond_cyslff_wren));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    cyslff_fdo_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_fdo_en_i_1_n_0),
        .Q(cyslff_fdo_en),
        .R(dev_srst));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[0] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[0]_i_1_n_0 ),
        .Q(cyslff_fdo[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[1] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[1]_i_1_n_0 ),
        .Q(cyslff_fdo[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[2] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[2]_i_1_n_0 ),
        .Q(cyslff_fdo[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[3] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[3]_i_1_n_0 ),
        .Q(cyslff_fdo[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[4] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[4]_i_1_n_0 ),
        .Q(cyslff_fdo[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[5] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[5]_i_1_n_0 ),
        .Q(cyslff_fdo[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[6] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[6]_i_1_n_0 ),
        .Q(cyslff_fdo[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdo_reg[7] 
       (.C(cyslff_clk),
        .CE(\cyslff_fdo[7]_i_1_n_0 ),
        .D(\cyslff_fdo[7]_i_2_n_0 ),
        .Q(cyslff_fdo[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    cyslff_oe_i_1
       (.I0(cyslff_feb),
        .I1(cyslff_addr[1]),
        .I2(cyslff_addr[0]),
        .O(cyslff_oe_i_1_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    cyslff_oe_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_oe_i_1_n_0),
        .Q(cyslff_oe),
        .S(dev_srst));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF80000)) 
    cyslff_pktend_i_1
       (.I0(cyslff_wr_i_2_n_0),
        .I1(cyslff_pktend),
        .I2(cyslff_pktend_i_2_n_0),
        .I3(cyslff_pktend_i_3_n_0),
        .I4(cond_cyslff_wren),
        .I5(cyslff_pktend),
        .O(cyslff_pktend_i_1_n_0));
  LUT6 #(
    .INIT(64'h0355035500330000)) 
    cyslff_pktend_i_2
       (.I0(axic_fdo_last),
        .I1(fdo_paused_last),
        .I2(fdo_pause),
        .I3(fdo_paused),
        .I4(axis_fdo_ready),
        .I5(axic_fdo_ready),
        .O(cyslff_pktend_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h50405240)) 
    cyslff_pktend_i_3
       (.I0(fdo_paused),
        .I1(axic_fdo_ready),
        .I2(fdo_pause),
        .I3(axis_fdo_ready),
        .I4(axis_fdo_last),
        .O(cyslff_pktend_i_3_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    cyslff_pktend_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_pktend_i_1_n_0),
        .Q(cyslff_pktend),
        .S(dev_srst));
  LUT4 #(
    .INIT(16'hFFEF)) 
    cyslff_rd_i_1
       (.I0(cyslff_addr[0]),
        .I1(cyslff_oe),
        .I2(cyslff_feb),
        .I3(cyslff_addr[1]),
        .O(cyslff_rd_i_1_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    cyslff_rd_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_rd_i_1_n_0),
        .Q(cyslff_rd),
        .S(dev_srst));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF80000)) 
    cyslff_wr_i_1
       (.I0(cyslff_wr_i_2_n_0),
        .I1(cyslff_wr),
        .I2(cyslff_wr_i_3_n_0),
        .I3(cyslff_wr_i_4_n_0),
        .I4(cond_cyslff_wren),
        .I5(cyslff_wr),
        .O(cyslff_wr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    cyslff_wr_i_2
       (.I0(fdo_pause),
        .I1(axis_fdo_ready),
        .I2(axic_fdo_ready),
        .O(cyslff_wr_i_2_n_0));
  LUT6 #(
    .INIT(64'h0355035500330000)) 
    cyslff_wr_i_3
       (.I0(axic_fdo_en),
        .I1(fdo_paused_den),
        .I2(fdo_pause),
        .I3(fdo_paused),
        .I4(axis_fdo_ready),
        .I5(axic_fdo_ready),
        .O(cyslff_wr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h50405240)) 
    cyslff_wr_i_4
       (.I0(fdo_paused),
        .I1(axic_fdo_ready),
        .I2(fdo_pause),
        .I3(axis_fdo_ready),
        .I4(axis_fdo_en),
        .O(cyslff_wr_i_4_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    cyslff_wr_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_wr_i_1_n_0),
        .Q(cyslff_wr),
        .S(dev_srst));
  LUT6 #(
    .INIT(64'hFFAB03FF00A80000)) 
    fdi_paused_den_i_1
       (.I0(cyslff_feb),
        .I1(axis_fdi_ready),
        .I2(axic_fdi_ready),
        .I3(fdi_paused),
        .I4(fdi_pause),
        .I5(fdi_paused_den_reg_n_0),
        .O(fdi_paused_den_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdi_paused_den_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_paused_den_i_1_n_0),
        .Q(fdi_paused_den_reg_n_0),
        .R(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    fdi_paused_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_pause),
        .Q(fdi_paused),
        .R(dev_srst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    fdo_paused_den_i_1
       (.I0(fdo_paused_den_i_2_n_0),
        .I1(cyslff_ffb),
        .I2(cyslff_addr[1]),
        .I3(cyslff_addr[0]),
        .I4(fdo_paused_den_i_3_n_0),
        .I5(fdo_paused_den),
        .O(fdo_paused_den_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0CA00CA)) 
    fdo_paused_den_i_2
       (.I0(fdo_paused),
        .I1(axis_fdo_en),
        .I2(fdo_pause),
        .I3(axic_fdo_ready),
        .I4(axic_fdo_en),
        .O(fdo_paused_den_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0CE2)) 
    fdo_paused_den_i_3
       (.I0(axis_fdo_ready),
        .I1(axic_fdo_ready),
        .I2(fdo_pause),
        .I3(fdo_paused),
        .O(fdo_paused_den_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdo_paused_den_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_paused_den_i_1_n_0),
        .Q(fdo_paused_den),
        .R(dev_srst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    fdo_paused_last_i_1
       (.I0(fdo_paused_last_i_2_n_0),
        .I1(cyslff_ffb),
        .I2(cyslff_addr[1]),
        .I3(cyslff_addr[0]),
        .I4(fdo_paused_den_i_3_n_0),
        .I5(fdo_paused_last),
        .O(fdo_paused_last_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0CA00CA)) 
    fdo_paused_last_i_2
       (.I0(fdo_paused),
        .I1(axis_fdo_last),
        .I2(fdo_pause),
        .I3(axic_fdo_ready),
        .I4(axic_fdo_last),
        .O(fdo_paused_last_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdo_paused_last_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_paused_last_i_1_n_0),
        .Q(fdo_paused_last),
        .R(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    fdo_paused_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_pause),
        .Q(fdo_paused),
        .R(dev_srst));
  LUT3 #(
    .INIT(8'hA8)) 
    ioctr_rdrdy_i_1
       (.I0(cyslff_oe),
        .I1(axic_fdo_ready),
        .I2(axis_fdo_ready),
        .O(cyslff_addr1));
  FDRE #(
    .INIT(1'b0)) 
    ioctr_rdrdy_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_addr1),
        .Q(ioctr_rdrdy),
        .R(dev_srst));
endmodule

module cyslff_io
   (cyslff_clk,
    io_cyslff_oe_OBUF,
    io_cyslff_rd_OBUF,
    io_cyslff_pktend_reg_0,
    fdo_pause,
    io_cyslff_wr_OBUF,
    io_cyslff_pktend_OBUF,
    sio_cyslff_feb,
    sio_cyslff_ffb,
    cyslff_fdi_en_reg,
    E,
    \cyslff_fdi_reg[7] ,
    fdi_paused_den_reg_0,
    fdo_paused_den_reg,
    fdo_paused_wr_reg_0,
    fdo_paused_pktend_reg_0,
    \io_cyslff_addr[1] ,
    \cyslff_fdi_reg[7]_0 ,
    io_cyslff_fd,
    io_cyslff_clk,
    sio_cyslff_oe,
    sio_cyslff_rd_reg,
    dev_srst,
    io_cyslff_ffb_IBUF,
    fdi_pause,
    io_cyslff_feb_IBUF,
    sio_cyslff_dir,
    fdi_paused_den_reg_1,
    cyslff_fdi_en,
    sio_cyslff_wr,
    sio_cyslff_pktend,
    cyslff_fdo_en,
    fdo_paused_den_reg_0,
    cyslff_wr,
    fdo_paused_wr,
    cyslff_pktend,
    fdo_paused_pktend,
    Q,
    sio_cyslff_fdo_en_reg,
    \sio_cyslff_fdo_reg[7] );
  output cyslff_clk;
  output io_cyslff_oe_OBUF;
  output io_cyslff_rd_OBUF;
  output io_cyslff_pktend_reg_0;
  output fdo_pause;
  output io_cyslff_wr_OBUF;
  output io_cyslff_pktend_OBUF;
  output sio_cyslff_feb;
  output sio_cyslff_ffb;
  output cyslff_fdi_en_reg;
  output [0:0]E;
  output [0:0]\cyslff_fdi_reg[7] ;
  output fdi_paused_den_reg_0;
  output fdo_paused_den_reg;
  output fdo_paused_wr_reg_0;
  output fdo_paused_pktend_reg_0;
  output [1:0]\io_cyslff_addr[1] ;
  output [7:0]\cyslff_fdi_reg[7]_0 ;
  inout [7:0]io_cyslff_fd;
  input io_cyslff_clk;
  input sio_cyslff_oe;
  input sio_cyslff_rd_reg;
  input dev_srst;
  input io_cyslff_ffb_IBUF;
  input fdi_pause;
  input io_cyslff_feb_IBUF;
  input sio_cyslff_dir;
  input fdi_paused_den_reg_1;
  input cyslff_fdi_en;
  input sio_cyslff_wr;
  input sio_cyslff_pktend;
  input cyslff_fdo_en;
  input fdo_paused_den_reg_0;
  input cyslff_wr;
  input fdo_paused_wr;
  input cyslff_pktend;
  input fdo_paused_pktend;
  input [1:0]Q;
  input [0:0]sio_cyslff_fdo_en_reg;
  input [7:0]\sio_cyslff_fdo_reg[7] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire cyslff_clk;
  wire cyslff_fdi_en;
  wire cyslff_fdi_en_reg;
  wire [0:0]\cyslff_fdi_reg[7] ;
  wire [7:0]\cyslff_fdi_reg[7]_0 ;
  wire cyslff_fdo_en;
  wire cyslff_pktend;
  wire \cyslff_syncio/fdi_paused ;
  wire cyslff_wr;
  wire dev_srst;
  wire fdi_pause;
  wire fdi_paused_den_i_1_n_0;
  wire fdi_paused_den_reg_0;
  wire fdi_paused_den_reg_1;
  wire fdi_paused_den_reg_n_0;
  wire fdo_pause;
  wire fdo_paused;
  wire fdo_paused_den_reg;
  wire fdo_paused_den_reg_0;
  wire fdo_paused_pktend;
  wire fdo_paused_pktend_i_1_n_0;
  wire fdo_paused_pktend_reg_0;
  wire fdo_paused_pktend_reg_n_0;
  wire fdo_paused_wr;
  wire fdo_paused_wr_0;
  wire fdo_paused_wr_i_1_n_0;
  wire fdo_paused_wr_reg_0;
  wire [1:0]\io_cyslff_addr[1] ;
  wire io_cyslff_clk;
  wire [7:0]io_cyslff_fd;
  wire [7:0]io_cyslff_fdi;
  wire \io_cyslff_fdo_reg_n_0_[0] ;
  wire \io_cyslff_fdo_reg_n_0_[1] ;
  wire \io_cyslff_fdo_reg_n_0_[2] ;
  wire \io_cyslff_fdo_reg_n_0_[3] ;
  wire \io_cyslff_fdo_reg_n_0_[4] ;
  wire \io_cyslff_fdo_reg_n_0_[5] ;
  wire \io_cyslff_fdo_reg_n_0_[6] ;
  wire \io_cyslff_fdo_reg_n_0_[7] ;
  wire io_cyslff_feb_IBUF;
  wire io_cyslff_ffb_IBUF;
  wire io_cyslff_hiz;
  wire io_cyslff_oe_OBUF;
  wire io_cyslff_pktend_OBUF;
  wire io_cyslff_pktend_i_1_n_0;
  wire io_cyslff_pktend_reg_0;
  wire io_cyslff_rd_OBUF;
  wire io_cyslff_wr_OBUF;
  wire io_cyslff_wr_i_2_n_0;
  wire sio_cyslff_dir;
  wire \sio_cyslff_fdi[7]_i_1_n_0 ;
  wire sio_cyslff_fdi_en;
  wire sio_cyslff_fdi_en_i_1_n_0;
  wire sio_cyslff_fdi_en_i_2_n_0;
  wire [0:0]sio_cyslff_fdo_en_reg;
  wire [7:0]\sio_cyslff_fdo_reg[7] ;
  wire sio_cyslff_feb;
  wire sio_cyslff_ffb;
  wire sio_cyslff_oe;
  wire sio_cyslff_pktend;
  wire sio_cyslff_rd_reg;
  wire sio_cyslff_wr;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cyslff_fdi[7]_i_1 
       (.I0(\cyslff_syncio/fdi_paused ),
        .O(\cyslff_fdi_reg[7] ));
  LUT6 #(
    .INIT(64'h00000000F0CC00AA)) 
    cyslff_fdi_en_i_1
       (.I0(sio_cyslff_fdi_en),
        .I1(fdi_paused_den_reg_1),
        .I2(cyslff_fdi_en),
        .I3(fdi_pause),
        .I4(\cyslff_syncio/fdi_paused ),
        .I5(dev_srst),
        .O(cyslff_fdi_en_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cyslff_ifctr_i_1
       (.I0(io_cyslff_ffb_IBUF),
        .O(fdo_pause));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hCB08)) 
    fdi_paused_den_i_1
       (.I0(io_cyslff_feb_IBUF),
        .I1(fdi_pause),
        .I2(\cyslff_syncio/fdi_paused ),
        .I3(fdi_paused_den_reg_n_0),
        .O(fdi_paused_den_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCB08)) 
    fdi_paused_den_i_1__0
       (.I0(sio_cyslff_feb),
        .I1(fdi_pause),
        .I2(\cyslff_syncio/fdi_paused ),
        .I3(fdi_paused_den_reg_1),
        .O(fdi_paused_den_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    fdi_paused_den_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_paused_den_i_1_n_0),
        .Q(fdi_paused_den_reg_n_0),
        .R(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    fdi_paused_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdi_pause),
        .Q(\cyslff_syncio/fdi_paused ),
        .R(dev_srst));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3E02)) 
    fdo_paused_den_i_1
       (.I0(cyslff_fdo_en),
        .I1(io_cyslff_pktend_reg_0),
        .I2(io_cyslff_ffb_IBUF),
        .I3(fdo_paused_den_reg_0),
        .O(fdo_paused_den_reg));
  LUT4 #(
    .INIT(16'hFEC2)) 
    fdo_paused_pktend_i_1
       (.I0(sio_cyslff_pktend),
        .I1(io_cyslff_pktend_reg_0),
        .I2(io_cyslff_ffb_IBUF),
        .I3(fdo_paused_pktend_reg_n_0),
        .O(fdo_paused_pktend_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFEC2)) 
    fdo_paused_pktend_i_1__0
       (.I0(cyslff_pktend),
        .I1(io_cyslff_pktend_reg_0),
        .I2(io_cyslff_ffb_IBUF),
        .I3(fdo_paused_pktend),
        .O(fdo_paused_pktend_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    fdo_paused_pktend_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_paused_pktend_i_1_n_0),
        .Q(fdo_paused_pktend_reg_n_0),
        .S(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    fdo_paused_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_pause),
        .Q(io_cyslff_pktend_reg_0),
        .R(dev_srst));
  LUT4 #(
    .INIT(16'hFEC2)) 
    fdo_paused_wr_i_1
       (.I0(sio_cyslff_wr),
        .I1(io_cyslff_pktend_reg_0),
        .I2(io_cyslff_ffb_IBUF),
        .I3(fdo_paused_wr_0),
        .O(fdo_paused_wr_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEC2)) 
    fdo_paused_wr_i_1__0
       (.I0(cyslff_wr),
        .I1(io_cyslff_pktend_reg_0),
        .I2(io_cyslff_ffb_IBUF),
        .I3(fdo_paused_wr),
        .O(fdo_paused_wr_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    fdo_paused_wr_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(fdo_paused_wr_i_1_n_0),
        .Q(fdo_paused_wr_0),
        .S(dev_srst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[0].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[0] ),
        .IO(io_cyslff_fd[0]),
        .O(io_cyslff_fdi[0]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[1].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[1] ),
        .IO(io_cyslff_fd[1]),
        .O(io_cyslff_fdi[1]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[2].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[2] ),
        .IO(io_cyslff_fd[2]),
        .O(io_cyslff_fdi[2]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[3].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[3] ),
        .IO(io_cyslff_fd[3]),
        .O(io_cyslff_fdi[3]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[4].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[4] ),
        .IO(io_cyslff_fd[4]),
        .O(io_cyslff_fdi[4]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[5].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[5] ),
        .IO(io_cyslff_fd[5]),
        .O(io_cyslff_fdi[5]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[6].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[6] ),
        .IO(io_cyslff_fd[6]),
        .O(io_cyslff_fdi[6]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_iobuf_fd[7].IOBUF_inst 
       (.I(\io_cyslff_fdo_reg_n_0_[7] ),
        .IO(io_cyslff_fd[7]),
        .O(io_cyslff_fdi[7]),
        .T(io_cyslff_hiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFG" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    ibufg_cyslff
       (.I(io_cyslff_clk),
        .O(cyslff_clk));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_addr_reg[0] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\io_cyslff_addr[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_addr_reg[1] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\io_cyslff_addr[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[0] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [0]),
        .Q(\io_cyslff_fdo_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[1] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [1]),
        .Q(\io_cyslff_fdo_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[2] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [2]),
        .Q(\io_cyslff_fdo_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[3] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [3]),
        .Q(\io_cyslff_fdo_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[4] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [4]),
        .Q(\io_cyslff_fdo_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[5] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [5]),
        .Q(\io_cyslff_fdo_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[6] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [6]),
        .Q(\io_cyslff_fdo_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_cyslff_fdo_reg[7] 
       (.C(cyslff_clk),
        .CE(sio_cyslff_fdo_en_reg),
        .D(\sio_cyslff_fdo_reg[7] [7]),
        .Q(\io_cyslff_fdo_reg_n_0_[7] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    io_cyslff_hiz_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_dir),
        .Q(io_cyslff_hiz),
        .S(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    io_cyslff_oe_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_oe),
        .Q(io_cyslff_oe_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io_cyslff_pktend_i_1
       (.I0(fdo_paused_pktend_reg_n_0),
        .I1(io_cyslff_pktend_reg_0),
        .I2(sio_cyslff_pktend),
        .O(io_cyslff_pktend_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    io_cyslff_pktend_reg
       (.C(cyslff_clk),
        .CE(io_cyslff_ffb_IBUF),
        .D(io_cyslff_pktend_i_1_n_0),
        .Q(io_cyslff_pktend_OBUF),
        .S(fdo_paused));
  FDRE #(
    .INIT(1'b0)) 
    io_cyslff_rd_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_rd_reg),
        .Q(io_cyslff_rd_OBUF),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    io_cyslff_wr_i_1
       (.I0(io_cyslff_pktend_reg_0),
        .I1(io_cyslff_ffb_IBUF),
        .O(fdo_paused));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    io_cyslff_wr_i_2
       (.I0(fdo_paused_wr_0),
        .I1(io_cyslff_pktend_reg_0),
        .I2(sio_cyslff_wr),
        .O(io_cyslff_wr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    io_cyslff_wr_reg
       (.C(cyslff_clk),
        .CE(io_cyslff_ffb_IBUF),
        .D(io_cyslff_wr_i_2_n_0),
        .Q(io_cyslff_wr_OBUF),
        .S(fdo_paused));
  LUT4 #(
    .INIT(16'h0F02)) 
    \sio_cyslff_fdi[7]_i_1 
       (.I0(io_cyslff_feb_IBUF),
        .I1(io_cyslff_rd_OBUF),
        .I2(\cyslff_syncio/fdi_paused ),
        .I3(fdi_pause),
        .O(\sio_cyslff_fdi[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0CC00AA)) 
    sio_cyslff_fdi_en_i_1
       (.I0(sio_cyslff_fdi_en_i_2_n_0),
        .I1(fdi_paused_den_reg_n_0),
        .I2(sio_cyslff_fdi_en),
        .I3(fdi_pause),
        .I4(\cyslff_syncio/fdi_paused ),
        .I5(dev_srst),
        .O(sio_cyslff_fdi_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sio_cyslff_fdi_en_i_2
       (.I0(io_cyslff_feb_IBUF),
        .I1(io_cyslff_rd_OBUF),
        .O(sio_cyslff_fdi_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_fdi_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_fdi_en_i_1_n_0),
        .Q(sio_cyslff_fdi_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[0] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[0]),
        .Q(\cyslff_fdi_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[1] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[1]),
        .Q(\cyslff_fdi_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[2] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[2]),
        .Q(\cyslff_fdi_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[3] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[3]),
        .Q(\cyslff_fdi_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[4] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[4]),
        .Q(\cyslff_fdi_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[5] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[5]),
        .Q(\cyslff_fdi_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[6] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[6]),
        .Q(\cyslff_fdi_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdi_reg[7] 
       (.C(cyslff_clk),
        .CE(\sio_cyslff_fdi[7]_i_1_n_0 ),
        .D(io_cyslff_fdi[7]),
        .Q(\cyslff_fdi_reg[7]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sio_cyslff_fdo[7]_i_1 
       (.I0(io_cyslff_pktend_reg_0),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_feb_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(io_cyslff_feb_IBUF),
        .Q(sio_cyslff_feb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_ffb_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(io_cyslff_ffb_IBUF),
        .Q(sio_cyslff_ffb),
        .R(1'b0));
endmodule

module cyslff_syncio
   (sio_cyslff_oe,
    sio_cyslff_dir,
    cyslff_feb,
    cyslff_ffb,
    sio_cyslff_fdo_en_reg_0,
    fdo_paused_wr,
    sio_cyslff_wr,
    fdo_paused_pktend,
    sio_cyslff_pktend,
    fdi_paused_den_reg_0,
    cyslff_fdi_en,
    \io_cyslff_fdo_reg[7] ,
    io_cyslff_rd_reg,
    Q,
    \io_cyslff_fdo_reg[7]_0 ,
    \axic_fdi_reg[7] ,
    cyslff_oe,
    cyslff_clk,
    cyslff_dir,
    cyslff_rd,
    sio_cyslff_feb,
    sio_cyslff_ffb,
    dev_srst,
    cyslff_fdo_en_reg,
    cyslff_wr_reg,
    cyslff_pktend_reg,
    sio_cyslff_feb_reg,
    sio_cyslff_fdi_en_reg,
    fdo_paused_reg,
    io_cyslff_feb_IBUF,
    fdi_pause,
    cyslff_wr,
    io_cyslff_ffb_IBUF,
    cyslff_pktend,
    cyslff_fdo_en,
    D,
    E,
    \cyslff_fdo_reg[7] ,
    fdi_paused_reg,
    \sio_cyslff_fdi_reg[7] );
  output sio_cyslff_oe;
  output sio_cyslff_dir;
  output cyslff_feb;
  output cyslff_ffb;
  output sio_cyslff_fdo_en_reg_0;
  output fdo_paused_wr;
  output sio_cyslff_wr;
  output fdo_paused_pktend;
  output sio_cyslff_pktend;
  output fdi_paused_den_reg_0;
  output cyslff_fdi_en;
  output [0:0]\io_cyslff_fdo_reg[7] ;
  output io_cyslff_rd_reg;
  output [1:0]Q;
  output [7:0]\io_cyslff_fdo_reg[7]_0 ;
  output [7:0]\axic_fdi_reg[7] ;
  input cyslff_oe;
  input cyslff_clk;
  input cyslff_dir;
  input cyslff_rd;
  input sio_cyslff_feb;
  input sio_cyslff_ffb;
  input dev_srst;
  input cyslff_fdo_en_reg;
  input cyslff_wr_reg;
  input cyslff_pktend_reg;
  input sio_cyslff_feb_reg;
  input sio_cyslff_fdi_en_reg;
  input fdo_paused_reg;
  input io_cyslff_feb_IBUF;
  input fdi_pause;
  input cyslff_wr;
  input io_cyslff_ffb_IBUF;
  input cyslff_pktend;
  input cyslff_fdo_en;
  input [1:0]D;
  input [0:0]E;
  input [7:0]\cyslff_fdo_reg[7] ;
  input [0:0]fdi_paused_reg;
  input [7:0]\sio_cyslff_fdi_reg[7] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [7:0]\axic_fdi_reg[7] ;
  wire cyslff_clk;
  wire cyslff_dir;
  wire cyslff_fdi_en;
  wire cyslff_fdo_en;
  wire cyslff_fdo_en_reg;
  wire [7:0]\cyslff_fdo_reg[7] ;
  wire cyslff_feb;
  wire cyslff_ffb;
  wire cyslff_oe;
  wire cyslff_pktend;
  wire cyslff_pktend_reg;
  wire cyslff_rd;
  wire cyslff_wr;
  wire cyslff_wr_reg;
  wire dev_srst;
  wire fdi_pause;
  wire fdi_paused_den_reg_0;
  wire [0:0]fdi_paused_reg;
  wire fdo_paused_pktend;
  wire fdo_paused_reg;
  wire fdo_paused_wr;
  wire [0:0]\io_cyslff_fdo_reg[7] ;
  wire [7:0]\io_cyslff_fdo_reg[7]_0 ;
  wire io_cyslff_feb_IBUF;
  wire io_cyslff_ffb_IBUF;
  wire io_cyslff_rd_reg;
  wire sio_cyslff_dir;
  wire sio_cyslff_fdi_en_reg;
  wire [7:0]\sio_cyslff_fdi_reg[7] ;
  wire sio_cyslff_fdo_en;
  wire sio_cyslff_fdo_en_i_1_n_0;
  wire sio_cyslff_fdo_en_reg_0;
  wire sio_cyslff_feb;
  wire sio_cyslff_feb_reg;
  wire sio_cyslff_ffb;
  wire sio_cyslff_oe;
  wire sio_cyslff_pktend;
  wire sio_cyslff_pktend_i_1_n_0;
  wire sio_cyslff_rd;
  wire sio_cyslff_wr;
  wire sio_cyslff_wr_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    cyslff_fdi_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_fdi_en_reg),
        .Q(cyslff_fdi_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[0] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [0]),
        .Q(\axic_fdi_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[1] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [1]),
        .Q(\axic_fdi_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[2] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [2]),
        .Q(\axic_fdi_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[3] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [3]),
        .Q(\axic_fdi_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[4] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [4]),
        .Q(\axic_fdi_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[5] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [5]),
        .Q(\axic_fdi_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[6] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [6]),
        .Q(\axic_fdi_reg[7] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cyslff_fdi_reg[7] 
       (.C(cyslff_clk),
        .CE(fdi_paused_reg),
        .D(\sio_cyslff_fdi_reg[7] [7]),
        .Q(\axic_fdi_reg[7] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cyslff_feb_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_feb),
        .Q(cyslff_feb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cyslff_ffb_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_ffb),
        .Q(cyslff_ffb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    fdi_paused_den_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_feb_reg),
        .Q(fdi_paused_den_reg_0),
        .R(dev_srst));
  FDRE #(
    .INIT(1'b0)) 
    fdo_paused_den_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_fdo_en_reg),
        .Q(sio_cyslff_fdo_en_reg_0),
        .R(dev_srst));
  FDSE #(
    .INIT(1'b1)) 
    fdo_paused_pktend_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_pktend_reg),
        .Q(fdo_paused_pktend),
        .S(dev_srst));
  FDSE #(
    .INIT(1'b1)) 
    fdo_paused_wr_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_wr_reg),
        .Q(fdo_paused_wr),
        .S(dev_srst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \io_cyslff_fdo[7]_i_1 
       (.I0(sio_cyslff_fdo_en),
        .I1(fdo_paused_reg),
        .O(\io_cyslff_fdo_reg[7] ));
  LUT3 #(
    .INIT(8'hFB)) 
    io_cyslff_rd_i_1
       (.I0(sio_cyslff_rd),
        .I1(io_cyslff_feb_IBUF),
        .I2(fdi_pause),
        .O(io_cyslff_rd_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_addr_reg[0] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_addr_reg[1] 
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_dir_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_dir),
        .Q(sio_cyslff_dir),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    sio_cyslff_fdo_en_i_1
       (.I0(sio_cyslff_fdo_en),
        .I1(cyslff_fdo_en),
        .I2(sio_cyslff_fdo_en_reg_0),
        .I3(io_cyslff_ffb_IBUF),
        .I4(fdo_paused_reg),
        .O(sio_cyslff_fdo_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_fdo_en_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_fdo_en_i_1_n_0),
        .Q(sio_cyslff_fdo_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[0] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [0]),
        .Q(\io_cyslff_fdo_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[1] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [1]),
        .Q(\io_cyslff_fdo_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[2] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [2]),
        .Q(\io_cyslff_fdo_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[3] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [3]),
        .Q(\io_cyslff_fdo_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[4] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [4]),
        .Q(\io_cyslff_fdo_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[5] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [5]),
        .Q(\io_cyslff_fdo_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[6] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [6]),
        .Q(\io_cyslff_fdo_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sio_cyslff_fdo_reg[7] 
       (.C(cyslff_clk),
        .CE(E),
        .D(\cyslff_fdo_reg[7] [7]),
        .Q(\io_cyslff_fdo_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_oe_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_oe),
        .Q(sio_cyslff_oe),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF0AACCFF)) 
    sio_cyslff_pktend_i_1
       (.I0(sio_cyslff_pktend),
        .I1(cyslff_pktend),
        .I2(fdo_paused_pktend),
        .I3(io_cyslff_ffb_IBUF),
        .I4(fdo_paused_reg),
        .O(sio_cyslff_pktend_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_pktend_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_pktend_i_1_n_0),
        .Q(sio_cyslff_pktend),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_rd_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(cyslff_rd),
        .Q(sio_cyslff_rd),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF0AACCFF)) 
    sio_cyslff_wr_i_1
       (.I0(sio_cyslff_wr),
        .I1(cyslff_wr),
        .I2(fdo_paused_wr),
        .I3(io_cyslff_ffb_IBUF),
        .I4(fdo_paused_reg),
        .O(sio_cyslff_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sio_cyslff_wr_reg
       (.C(cyslff_clk),
        .CE(1'b1),
        .D(sio_cyslff_wr_i_1_n_0),
        .Q(sio_cyslff_wr),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
