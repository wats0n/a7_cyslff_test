//*****************************************************************************
// (c) Copyright 2009 - 2010 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//*****************************************************************************
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 4.1
//  \   \         Application        : MIG
//  /   /         Filename           : sim_tb_top.v
// /___/   /\     Date Last Modified : $Date: 2011/06/07 13:45:16 $
// \   \  /  \    Date Created       : Tue Sept 21 2010
//  \___\/\___\
//
// Device           : 7 Series
// Design Name      : DDR3 SDRAM
// Purpose          :
//                   Top-level testbench for testing DDR3.
//                   Instantiates:
//                     1. IP_TOP (top-level representing FPGA, contains core,
//                        clocking, built-in testbench/memory checker and other
//                        support structures)
//                     2. DDR3 Memory
//                     3. Miscellaneous clock generation and reset logic
//                     4. For ECC ON case inserts error on LSB bit
//                        of data from DRAM to FPGA.
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/100fs

module sim_a7_ddr3;


   //***************************************************************************
   // Traffic Gen related parameters
   //***************************************************************************
   parameter SIMULATION            = "TRUE";
   parameter BEGIN_ADDRESS         = 32'h00000000;
   parameter END_ADDRESS           = 32'h00000fff;
   parameter PRBS_EADDR_MASK_POS   = 32'hff000000;

   //***************************************************************************
   // The following parameters refer to width of various ports
   //***************************************************************************
   parameter COL_WIDTH             = 10;
                                     // # of memory Column Address bits.
   parameter CS_WIDTH              = 1;
                                     // # of unique CS outputs to memory.
   parameter DM_WIDTH              = 2;
                                     // # of DM (data mask)
   parameter DQ_WIDTH              = 16;
                                     // # of DQ (data)
   parameter DQS_WIDTH             = 2;
   parameter DQS_CNT_WIDTH         = 1;
                                     // = ceil(log2(DQS_WIDTH))
   parameter DRAM_WIDTH            = 8;
                                     // # of DQ per DQS
   parameter ECC                   = "OFF";
   parameter RANKS                 = 1;
                                     // # of Ranks.
   parameter ODT_WIDTH             = 1;
                                     // # of ODT outputs to memory.
   parameter ROW_WIDTH             = 14;
                                     // # of memory Row Address bits.
   parameter ADDR_WIDTH            = 28;
                                     // # = RANK_WIDTH + BANK_WIDTH
                                     //     + ROW_WIDTH + COL_WIDTH;
                                     // Chip Select is always tied to low for
                                     // single rank devices
   //***************************************************************************
   // The following parameters are mode register settings
   //***************************************************************************
   parameter BURST_MODE            = "8";
                                     // DDR3 SDRAM:
                                     // Burst Length (Mode Register 0).
                                     // # = "8", "4", "OTF".
                                     // DDR2 SDRAM:
                                     // Burst Length (Mode Register).
                                     // # = "8", "4".
   parameter CA_MIRROR             = "OFF";
                                     // C/A mirror opt for DDR3 dual rank
   
   //***************************************************************************
   // The following parameters are multiplier and divisor factors for PLLE2.
   // Based on the selected design frequency these parameters vary.
   //***************************************************************************
   parameter CLKIN_PERIOD          = 5000;
                                     // Input Clock Period


   //***************************************************************************
   // Simulation parameters
   //***************************************************************************
   parameter SIM_BYPASS_INIT_CAL   = "FAST";
                                     // # = "SIM_INIT_CAL_FULL" -  Complete
                                     //              memory init &
                                     //              calibration sequence
                                     // # = "SKIP" - Not supported
                                     // # = "FAST" - Complete memory init & use
                                     //              abbreviated calib sequence

   //***************************************************************************
   // IODELAY and PHY related parameters
   //***************************************************************************
   parameter TCQ                   = 100;
   //***************************************************************************
   // IODELAY and PHY related parameters
   //***************************************************************************
   parameter RST_ACT_LOW           = 1;
                                     // =1 for active low reset,
                                     // =0 for active high.

   //***************************************************************************
   // Referece clock frequency parameters
   //***************************************************************************
   parameter REFCLK_FREQ           = 200.0;
                                     // IODELAYCTRL reference clock frequency
   //***************************************************************************
   // System clock frequency parameters
   //***************************************************************************
   parameter tCK                   = 2500;
                                     // memory tCK paramter.
                     // # = Clock Period in pS.
   parameter nCK_PER_CLK           = 4;
                                     // # of memory CKs per fabric CLK

   
   //***************************************************************************
   // AXI4 Shim parameters
   //***************************************************************************
   parameter C_S_AXI_ID_WIDTH              = 4;
                                             // Width of all master and slave ID signals.
                                             // # = >= 1.
   parameter C_S_AXI_ADDR_WIDTH            = 28;
                                             // Width of S_AXI_AWADDR, S_AXI_ARADDR, M_AXI_AWADDR and
                                             // M_AXI_ARADDR for all SI/MI slots.
                                             // # = 32.
   parameter C_S_AXI_DATA_WIDTH            = 128;
                                             // Width of WDATA and RDATA on SI slot.
                                             // Must be <= APP_DATA_WIDTH.
                                             // # = 32, 64, 128, 256.
   parameter C_S_AXI_SUPPORTS_NARROW_BURST = 0;
                                             // Indicates whether to instatiate upsizer
                                             // Range: 0, 1


   //***************************************************************************
   // Debug and Internal parameters
   //***************************************************************************
   parameter DEBUG_PORT            = "OFF";
                                     // # = "ON" Enable debug signals/controls.
                                     //   = "OFF" Disable debug signals/controls.
   //***************************************************************************
   // Debug and Internal parameters
   //***************************************************************************
   parameter DRAM_TYPE             = "DDR3";

    

  //**************************************************************************//
  // Local parameters Declarations
  //**************************************************************************//

  localparam real TPROP_DQS          = 0.00;
                                       // Delay for DQS signal during Write Operation
  localparam real TPROP_DQS_RD       = 0.00;
                       // Delay for DQS signal during Read Operation
  localparam real TPROP_PCB_CTRL     = 0.00;
                       // Delay for Address and Ctrl signals
  localparam real TPROP_PCB_DATA     = 0.00;
                       // Delay for data signal during Write operation
  localparam real TPROP_PCB_DATA_RD  = 0.00;
                       // Delay for data signal during Read operation

  localparam MEMORY_WIDTH            = 16;
  localparam NUM_COMP                = DQ_WIDTH/MEMORY_WIDTH;
//  localparam ECC_TEST 		   	= "OFF" ;
//  localparam ERR_INSERT = (ECC_TEST == "ON") ? "OFF" : ECC ;
  

//  localparam real REFCLK_PERIOD = (1000000.0/(2*REFCLK_FREQ));
//  localparam RESET_PERIOD = 200000; //in pSec  
//  localparam real SYSCLK_PERIOD = tCK;
    
    

  //**************************************************************************//
  // Wire Declarations
  //**************************************************************************//
  wire sys_rst_n; //Use dut reset
  assign sys_rst_n = dut.ddr3_slocked;
//  reg                                sys_rst_n;
//  wire                               sys_rst;
//
//
//  reg sys_clk_i;
//
//  reg clk_ref_i;

  
  wire                               ddr3_reset_n;
  wire [DQ_WIDTH-1:0]                ddr3_dq_fpga;
  wire [DQS_WIDTH-1:0]               ddr3_dqs_p_fpga;
  wire [DQS_WIDTH-1:0]               ddr3_dqs_n_fpga;
  wire [ROW_WIDTH-1:0]               ddr3_addr_fpga;
  wire [3-1:0]              ddr3_ba_fpga;
  wire                               ddr3_ras_n_fpga;
  wire                               ddr3_cas_n_fpga;
  wire                               ddr3_we_n_fpga;
  wire [1-1:0]               ddr3_cke_fpga;
  wire [1-1:0]                ddr3_ck_p_fpga;
  wire [1-1:0]                ddr3_ck_n_fpga;
    
  
  wire                               init_calib_complete;
//  wire                               tg_compare_error;
  
  wire [DM_WIDTH-1:0]                ddr3_dm_fpga;
    
  wire [ODT_WIDTH-1:0]               ddr3_odt_fpga;
    
  
  
  reg [DM_WIDTH-1:0]                 ddr3_dm_sdram_tmp;
    
  reg [ODT_WIDTH-1:0]                ddr3_odt_sdram_tmp;
    

  
  wire [DQ_WIDTH-1:0]                ddr3_dq_sdram;
  reg [ROW_WIDTH-1:0]                ddr3_addr_sdram [0:1];
  reg [3-1:0]               ddr3_ba_sdram [0:1];
  reg                                ddr3_ras_n_sdram;
  reg                                ddr3_cas_n_sdram;
  reg                                ddr3_we_n_sdram;
  wire [(CS_WIDTH*1)-1:0] ddr3_cs_n_sdram;
  wire [ODT_WIDTH-1:0]               ddr3_odt_sdram;
  reg [1-1:0]                ddr3_cke_sdram;
  wire [DM_WIDTH-1:0]                ddr3_dm_sdram;
  wire [DQS_WIDTH-1:0]               ddr3_dqs_p_sdram;
  wire [DQS_WIDTH-1:0]               ddr3_dqs_n_sdram;
  reg [1-1:0]                 ddr3_ck_p_sdram;
  reg [1-1:0]                 ddr3_ck_n_sdram;
  
    

//**************************************************************************//

//  //**************************************************************************//
//  // Reset Generation
//  //**************************************************************************//
//  initial begin
//    sys_rst_n = 1'b0;
//    #RESET_PERIOD
//      sys_rst_n = 1'b1;
//   end
//
//   assign sys_rst = RST_ACT_LOW ? sys_rst_n : ~sys_rst_n;
//
//  //**************************************************************************//
//  // Clock Generation
//  //**************************************************************************//
//
//  initial
//    sys_clk_i = 1'b0;
//  always
//    sys_clk_i = #(CLKIN_PERIOD/2.0) ~sys_clk_i;
//
//
//  initial
//    clk_ref_i = 1'b0;
//  always
//    clk_ref_i = #REFCLK_PERIOD ~clk_ref_i;




  always @( * ) begin
    ddr3_ck_p_sdram      <=  #(TPROP_PCB_CTRL) ddr3_ck_p_fpga;
    ddr3_ck_n_sdram      <=  #(TPROP_PCB_CTRL) ddr3_ck_n_fpga;
    ddr3_addr_sdram[0]   <=  #(TPROP_PCB_CTRL) ddr3_addr_fpga;
    ddr3_addr_sdram[1]   <=  #(TPROP_PCB_CTRL) (CA_MIRROR == "ON") ?
                                                 {ddr3_addr_fpga[ROW_WIDTH-1:9],
                                                  ddr3_addr_fpga[7], ddr3_addr_fpga[8],
                                                  ddr3_addr_fpga[5], ddr3_addr_fpga[6],
                                                  ddr3_addr_fpga[3], ddr3_addr_fpga[4],
                                                  ddr3_addr_fpga[2:0]} :
                                                 ddr3_addr_fpga;
    ddr3_ba_sdram[0]     <=  #(TPROP_PCB_CTRL) ddr3_ba_fpga;
    ddr3_ba_sdram[1]     <=  #(TPROP_PCB_CTRL) (CA_MIRROR == "ON") ?
                                                 {ddr3_ba_fpga[3-1:2],
                                                  ddr3_ba_fpga[0],
                                                  ddr3_ba_fpga[1]} :
                                                 ddr3_ba_fpga;
    ddr3_ras_n_sdram     <=  #(TPROP_PCB_CTRL) ddr3_ras_n_fpga;
    ddr3_cas_n_sdram     <=  #(TPROP_PCB_CTRL) ddr3_cas_n_fpga;
    ddr3_we_n_sdram      <=  #(TPROP_PCB_CTRL) ddr3_we_n_fpga;
    ddr3_cke_sdram       <=  #(TPROP_PCB_CTRL) ddr3_cke_fpga;
  end
    

  assign ddr3_cs_n_sdram =  {(CS_WIDTH*1){1'b0}};
    

  always @( * )
    ddr3_dm_sdram_tmp <=  #(TPROP_PCB_DATA) ddr3_dm_fpga;//DM signal generation
  assign ddr3_dm_sdram = ddr3_dm_sdram_tmp;
    

  always @( * )
    ddr3_odt_sdram_tmp  <=  #(TPROP_PCB_CTRL) ddr3_odt_fpga;
  assign ddr3_odt_sdram =  ddr3_odt_sdram_tmp;
    

// Controlling the bi-directional BUS

  genvar dqwd;
  generate
    for (dqwd = 1;dqwd < DQ_WIDTH;dqwd = dqwd+1) begin : dq_delay
      WireDelay #
       (
        .Delay_g    (TPROP_PCB_DATA),
        .Delay_rd   (TPROP_PCB_DATA_RD),
        .ERR_INSERT ("OFF")
       )
      u_delay_dq
       (
        .A             (ddr3_dq_fpga[dqwd]),
        .B             (ddr3_dq_sdram[dqwd]),
        .reset         (sys_rst_n),
        .phy_init_done (init_calib_complete)
       );
    end
          WireDelay #
       (
        .Delay_g    (TPROP_PCB_DATA),
        .Delay_rd   (TPROP_PCB_DATA_RD),
        .ERR_INSERT ("OFF")
       )
      u_delay_dq_0
       (
        .A             (ddr3_dq_fpga[0]),
        .B             (ddr3_dq_sdram[0]),
        .reset         (sys_rst_n),
        .phy_init_done (init_calib_complete)
       );
  endgenerate

  genvar dqswd;
  generate
    for (dqswd = 0;dqswd < DQS_WIDTH;dqswd = dqswd+1) begin : dqs_delay
      WireDelay #
       (
        .Delay_g    (TPROP_DQS),
        .Delay_rd   (TPROP_DQS_RD),
        .ERR_INSERT ("OFF")
       )
      u_delay_dqs_p
       (
        .A             (ddr3_dqs_p_fpga[dqswd]),
        .B             (ddr3_dqs_p_sdram[dqswd]),
        .reset         (sys_rst_n),
        .phy_init_done (init_calib_complete)
       );

      WireDelay #
       (
        .Delay_g    (TPROP_DQS),
        .Delay_rd   (TPROP_DQS_RD),
        .ERR_INSERT ("OFF")
       )
      u_delay_dqs_n
       (
        .A             (ddr3_dqs_n_fpga[dqswd]),
        .B             (ddr3_dqs_n_sdram[dqswd]),
        .reset         (sys_rst_n),
        .phy_init_done (init_calib_complete)
       );
    end
  endgenerate
    

wire [7:0] io_cyslff_fd;
wire io_cyslff_oe;
wire io_cyslff_rd;
wire io_cyslff_wr;
wire io_cyslff_pktend;

reg io_cyslff_feb;
reg io_cyslff_ffb;

wire [1:0] io_cyslff_addr;

reg io_cyslff_clk = 1'b1; always io_cyslff_clk = #((1000*1000/48)/2) ~io_cyslff_clk; //IFCLK
reg io_fpga_clk = 1'b1; always io_fpga_clk = #((1000*1000/48)/2) ~io_fpga_clk; //FXCLK

reg [7:0] io_cyslff_fdi = 8'hFF;
wire [7:0] io_cyslff_fdo = 8'hZZ;

assign io_cyslff_fd = (io_cyslff_addr == 2'h02)? io_cyslff_fdo : io_cyslff_fdi; //output at negative level

initial begin: initValue
    io_cyslff_feb = 1'b0;
    io_cyslff_ffb = 1'b1;
end

a7_cyslff_test_top dut(

    .ddr3_dq              (ddr3_dq_fpga),
    .ddr3_dqs_n           (ddr3_dqs_n_fpga),
    .ddr3_dqs_p           (ddr3_dqs_p_fpga),
    .ddr3_addr            (ddr3_addr_fpga),
    .ddr3_ba              (ddr3_ba_fpga),
    .ddr3_ras_n           (ddr3_ras_n_fpga),
    .ddr3_cas_n           (ddr3_cas_n_fpga),
    .ddr3_we_n            (ddr3_we_n_fpga),
    .ddr3_reset_n         (ddr3_reset_n),
    .ddr3_ck_p            (ddr3_ck_p_fpga),
    .ddr3_ck_n            (ddr3_ck_n_fpga),
    .ddr3_cke             (ddr3_cke_fpga),
    .ddr3_dm              (ddr3_dm_fpga),
    .ddr3_odt             (ddr3_odt_fpga),

    .init_calib_complete (init_calib_complete),

    //FPGA external IO
    .io_cyslff_fd(io_cyslff_fd),
    .io_cyslff_oe(io_cyslff_oe),
    .io_cyslff_rd(io_cyslff_rd),
    .io_cyslff_wr(io_cyslff_wr),
    .io_cyslff_pktend(io_cyslff_pktend),

    .io_cyslff_feb(io_cyslff_feb),
    .io_cyslff_ffb(io_cyslff_ffb),

    .io_cyslff_addr(io_cyslff_addr),

    .io_cyslff_clk(io_cyslff_clk),
    .io_fpga_clk(io_fpga_clk)
);
    

  //===========================================================================
  //                         FPGA Memory Controller
  //===========================================================================

//  example_top #
//    (
//
//     .SIMULATION                (SIMULATION),
//     .BEGIN_ADDRESS             (BEGIN_ADDRESS),
//     .END_ADDRESS               (END_ADDRESS),
//     .PRBS_EADDR_MASK_POS       (PRBS_EADDR_MASK_POS),
//
//     .COL_WIDTH                 (COL_WIDTH),
//     .CS_WIDTH                  (CS_WIDTH),
//     .DM_WIDTH                  (DM_WIDTH),
//    
//     .DQ_WIDTH                  (DQ_WIDTH),
//     .DQS_CNT_WIDTH             (DQS_CNT_WIDTH),
//     .DRAM_WIDTH                (DRAM_WIDTH),
//     .ECC_TEST                  (ECC_TEST),
//     .RANKS                     (RANKS),
//     .ROW_WIDTH                 (ROW_WIDTH),
//     .ADDR_WIDTH                (ADDR_WIDTH),
//     .BURST_MODE                (BURST_MODE),
//     .TCQ                       (TCQ),
//
//     
//    .DRAM_TYPE                 (DRAM_TYPE),
//    
//     
//    .nCK_PER_CLK               (nCK_PER_CLK),
//    
//     
//     .C_S_AXI_ID_WIDTH          (C_S_AXI_ID_WIDTH),
//     .C_S_AXI_ADDR_WIDTH        (C_S_AXI_ADDR_WIDTH),
//     .C_S_AXI_DATA_WIDTH        (C_S_AXI_DATA_WIDTH),
//     .C_S_AXI_SUPPORTS_NARROW_BURST (C_S_AXI_SUPPORTS_NARROW_BURST),
//    
//     .DEBUG_PORT                (DEBUG_PORT),
//    
//     .RST_ACT_LOW               (RST_ACT_LOW)
//    )
//   u_ip_top
//     (
//
//     .ddr3_dq              (ddr3_dq_fpga),
//     .ddr3_dqs_n           (ddr3_dqs_n_fpga),
//     .ddr3_dqs_p           (ddr3_dqs_p_fpga),
//
//     .ddr3_addr            (ddr3_addr_fpga),
//     .ddr3_ba              (ddr3_ba_fpga),
//     .ddr3_ras_n           (ddr3_ras_n_fpga),
//     .ddr3_cas_n           (ddr3_cas_n_fpga),
//     .ddr3_we_n            (ddr3_we_n_fpga),
//     .ddr3_reset_n         (ddr3_reset_n),
//     .ddr3_ck_p            (ddr3_ck_p_fpga),
//     .ddr3_ck_n            (ddr3_ck_n_fpga),
//     .ddr3_cke             (ddr3_cke_fpga),
//     .ddr3_dm              (ddr3_dm_fpga),
//    
//     .ddr3_odt             (ddr3_odt_fpga),
//    
//     
//     .sys_clk_i            (sys_clk_i),
//    
//     .clk_ref_i            (clk_ref_i),
//    
//     .device_temp_i        (12'b0),
//    
//      .init_calib_complete (init_calib_complete),
//      .tg_compare_error    (tg_compare_error),
//      .sys_rst             (sys_rst)
//     );

  //**************************************************************************//
  // Memory Models instantiations
  //**************************************************************************//

  genvar r,i;
  generate
    for (r = 0; r < CS_WIDTH; r = r + 1) begin: mem_rnk
      if(DQ_WIDTH/16) begin: mem
        for (i = 0; i < NUM_COMP; i = i + 1) begin: gen_mem
          ddr3_model u_comp_ddr3
            (
             .rst_n   (ddr3_reset_n),
             .ck      (ddr3_ck_p_sdram),
             .ck_n    (ddr3_ck_n_sdram),
             .cke     (ddr3_cke_sdram[r]),
             .cs_n    (ddr3_cs_n_sdram[r]),
             .ras_n   (ddr3_ras_n_sdram),
             .cas_n   (ddr3_cas_n_sdram),
             .we_n    (ddr3_we_n_sdram),
             .dm_tdqs (ddr3_dm_sdram[(2*(i+1)-1):(2*i)]),
             .ba      (ddr3_ba_sdram[r]),
             .addr    (ddr3_addr_sdram[r]),
             .dq      (ddr3_dq_sdram[16*(i+1)-1:16*(i)]),
             .dqs     (ddr3_dqs_p_sdram[(2*(i+1)-1):(2*i)]),
             .dqs_n   (ddr3_dqs_n_sdram[(2*(i+1)-1):(2*i)]),
             .tdqs_n  (),
             .odt     (ddr3_odt_sdram[r])
             );
        end
      end
      if (DQ_WIDTH%16) begin: gen_mem_extrabits
        ddr3_model u_comp_ddr3
          (
           .rst_n   (ddr3_reset_n),
           .ck      (ddr3_ck_p_sdram),
           .ck_n    (ddr3_ck_n_sdram),
           .cke     (ddr3_cke_sdram[r]),
           .cs_n    (ddr3_cs_n_sdram[r]),
           .ras_n   (ddr3_ras_n_sdram),
           .cas_n   (ddr3_cas_n_sdram),
           .we_n    (ddr3_we_n_sdram),
           .dm_tdqs ({ddr3_dm_sdram[DM_WIDTH-1],ddr3_dm_sdram[DM_WIDTH-1]}),
           .ba      (ddr3_ba_sdram[r]),
           .addr    (ddr3_addr_sdram[r]),
           .dq      ({ddr3_dq_sdram[DQ_WIDTH-1:(DQ_WIDTH-8)],
                      ddr3_dq_sdram[DQ_WIDTH-1:(DQ_WIDTH-8)]}),
           .dqs     ({ddr3_dqs_p_sdram[DQS_WIDTH-1],
                      ddr3_dqs_p_sdram[DQS_WIDTH-1]}),
           .dqs_n   ({ddr3_dqs_n_sdram[DQS_WIDTH-1],
                      ddr3_dqs_n_sdram[DQS_WIDTH-1]}),
           .tdqs_n  (),
           .odt     (ddr3_odt_sdram[r])
           );
      end
    end
  endgenerate
    
    
integer retry_cnt=0;
reg [7:0] dbuf [63:0];

integer idx=0;
integer amt=0;

reg [31:0] axim_wdata = 32'h0;
reg [31:0] axim_rdata = 32'h0;

integer tst_len = 1;
//integer tfd=0;
//integer tlen=0;
  initial
  begin : simMain
    
//    tfd = $fopen("../data/512_Count.bin", "rb");
//    $fseek(tfd, 0, 2); //SEEK_END
//    tlen = $ftell(tfd);
//    $fclose(tfd);
   
    wait (dut.ddr3_slocked);
    wait (dut.init_calib_complete); // about 169286665 ps @ 300MHz
    
    @(posedge io_cyslff_clk);
        
//    axim_wr(32'h42000030, 32'h00000001);
//    axim_wr(32'h42000048, 32'h00000000);
//    axim_rd(32'h42000034);
    
//    tst_len = 256;
//    axim_wr(32'h42000058, tst_len);
//    axis_send_mono(tst_len, 1);

    //ddr3_send_file(32'h1000, "../data/512_Count.bin", 'h10, 'd64);
    //ddr3_send_file(32'd2782000, "../data/aria_procession_1280x720_60fps.bs", 'd2782000, 'd60000);
    //ddr3_send_file(32'h0, "../data/512_Count.bin", 'h10, 'd256);
    ddr3_send_file(32'h0, "../data/512_Count.bin", 'h0, 'd512);
    //ddr3_send_file(32'd0, "../data/aria_procession_1280x720_60fps.bs", 'd0, 1024*1024);
    repeat(5) @(posedge io_cyslff_clk);
    
    retry_cnt = 10;
    axim_rd(32'h42000034);
    //$stop;
    while(axim_rdata[1] == 1'b0 & (retry_cnt!=0)) begin
        //axim_rd(32'h00000000);
        axim_rd(32'h42000030);
        axim_rd(32'h42000034);
        retry_cnt = retry_cnt-1;
    end
    
    if(!retry_cnt) begin
        $display("DMAI FAIL");
    end
    
    axim_wr(32'h42000030, 32'h00000000);
    //axim_rd(32'h00000000);
    repeat(5) @(posedge io_cyslff_clk);
    //Write to Memory Done
`define SIM_RD
`ifdef SIM_RD
    //Read from Memory
    axim_wr(32'h42000000, 32'h00000001);
    axim_wr(32'h42000018, 32'h00000000);
    axim_rd(32'h42000004);  
    tst_len = 512;
    axim_wr(32'h42000028, tst_len);
    axis_recv(tst_len);
    repeat(5) @(posedge io_cyslff_clk);
    axim_wr(32'h42000000, 32'h00000000);
    //Read from Memory Done
`endif

`define SIM_PG
`ifdef SIM_PG  
    axim_wr(32'h80000000, 32'h00000001); //pgc_oen = 1
    
    bram_wr(32'h00001000, 32'h00001000); //Next Desc, BD Cylic
    bram_wr(32'h00001008, 32'h00000000); //Buffer Addr

    bram_wr(32'h00001018, 32'h0C000080); //SG Control, TXSOF/TXEOF, 16byts
    
    //Use PG DMA
    axim_wr(32'h44000008, 32'h00001000);
    axim_wr(32'h44000000, 32'h00000011); //Run+BD Cyclic
    axim_wr(32'h44000010, 32'h00001100); //For Cyclic, pointer to un-relevant address
     
    repeat(100) @(posedge io_cyslff_clk);
`endif

    $finish;
  end

task bram_wr;
    input reg [31:0] addr;
    input reg [31:0] wdata;
begin

    @(posedge io_cyslff_clk);
    
    axim_wr(32'h42000030, 32'h00000001);
    axim_wr(32'h42000048, addr);
    axim_rd(32'h42000034);
    
    axim_wr(32'h42000058, 4);
    axis_send_dword(wdata);
    
    repeat(5) @(posedge io_cyslff_clk);
    
    retry_cnt = 10;
    axim_rd(32'h42000034);
    while(axim_rdata[1] == 1'b0 & (retry_cnt!=0)) begin
        axim_rd(32'h42000034);
        retry_cnt = retry_cnt-1;
    end
    
    if(!retry_cnt) begin
        $display("DMAI FAIL");
    end
    
    axim_wr(32'h42000030, 32'h00000000);
    repeat(5) @(posedge io_cyslff_clk);

end
endtask

task bram_rd;
    input reg [31:0] addr;
begin

    @(posedge io_cyslff_clk);
    
    axim_wr(32'h42000000, 32'h00000001);
    axim_wr(32'h42000018, addr);
    axim_rd(32'h42000004);
    
    axim_wr(32'h42000028, 4);
    axis_recv(4);
    repeat(5) @(posedge io_cyslff_clk);
    axim_wr(32'h42000000, 32'h00000000);
        
    repeat(5) @(posedge io_cyslff_clk);

end
endtask

task sim_recv_feb_delay;
    input integer keep_len;
    integer i;
    integer loop_exit;
    reg next_feb;
begin
    loop_exit = 0;
    next_feb = 1'b1;
    while(!loop_exit) begin
        wait(io_cyslff_wr == 1'b0);
        @(posedge io_cyslff_clk);
        i = 0;
        next_feb = 1'b1;
        #1 io_cyslff_feb = next_feb;
        
        while((i < keep_len)&(!loop_exit)) begin
            @(negedge io_cyslff_clk);
            
            if(~(io_cyslff_wr|io_cyslff_pktend)) begin
                loop_exit = 1'b1;
            end
            
            if(i==(keep_len-1)) begin
                next_feb = 1'b0;
            end
            
            i = i + 1;
            @(posedge io_cyslff_clk);
            #1 io_cyslff_feb = next_feb;
        end
        //@(posedge io_cyslff_clk);
    end
    repeat(10) @(posedge io_cyslff_clk);
    #1 io_cyslff_feb = 1'b0;
end
endtask

task cysl_sim_full;
    input integer full_size;
    integer i;
    integer full_delay;
    reg next_ffb;
    begin
        full_delay = 4;
        i = 0;
        next_ffb = 1'b1;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_ffb = 1'b1;
        wait(io_cyslff_wr == 1'b0);
        
        while(io_cyslff_pktend != 1'b0) begin
            @(negedge io_cyslff_clk);
            if(io_cyslff_ffb) begin
                if(io_cyslff_wr == 1'b0 && (io_cyslff_pktend == 1'b1)) begin             
                    if(i == (full_size-1)) begin
                        next_ffb = 1'b0;
                        i = 0;
                    end else begin
                        i = i+1;
                    end
                end
            end
            else begin
                if(i == (full_delay-1)) begin
                    next_ffb = 1'b1;
                    i = 0;
                end
                else begin
                    i = i+1;
                end
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_ffb = next_ffb;
        end
        @(posedge io_cyslff_clk);
        next_ffb = 1'b1;
        #1 io_cyslff_ffb = next_ffb;
        @(posedge io_cyslff_clk);
    end
endtask

task axim_wr;
    input reg [31:0] axi_addr;
    input reg [31:0] axi_wdata;
begin
    
    @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = axi_addr[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h01; idx=idx+1;
    dbuf[idx] = axi_wdata[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h01; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    
    amt = idx;
    cysl_send_dbuf(amt);
`ifdef EALIER_CYFX2
    wait(dut.aximif.st == 3'h0); //IDLE
    @(posedge io_cyslff_clk);
    axi_wdata = dut.aximif.aximrt.axic_wdata;
`else
    wait((dut.M_AXI_WVALID&dut.M_AXI_WREADY) == 1'b1);
    @(negedge io_cyslff_clk);   
    axi_wdata = dut.M_AXI_WDATA;
    wait((dut.M_AXI_BVALID&dut.M_AXI_BREADY) == 1'b1);
    repeat(10) @(posedge io_cyslff_clk); //Wait 10 cycles
`endif
    
    axim_wdata = axi_wdata;
    
    $display("AXIM_WR[%08h]:%08h", axi_addr, axi_wdata);
    
end
endtask

task axim_rd;
    input reg [31:0] axi_addr;
    reg [31:0]  axi_rdata;
begin
    @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = axi_addr[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    
    amt = idx;
    cysl_send_dbuf(amt);

`ifdef EALIER_CYFX2    
    wait(dut.aximif.st == 3'h0); //IDLE
    @(posedge io_cyslff_clk);
    axi_rdata = dut.aximif.aximrt.axic_rdata;
`else
    wait((dut.M_AXI_RVALID&dut.M_AXI_RREADY) == 1'b1);
    @(negedge io_cyslff_clk);   
    axi_rdata = dut.M_AXI_RDATA;
    repeat(10) @(posedge io_cyslff_clk); //Wait 10 cycles
`endif
    
    axim_rdata = axi_rdata;
    
    $display("AXIM_RD[%08h]:%08h", axi_addr, axi_rdata);
end
endtask

task axis_send_dword;
    input reg [31:0] wdata;
begin
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = 8'h04; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h04; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    `ifdef EALIER_CYFX2    
        wait(dut.aximif.axis_fdi_ready == 1'b1);
        repeat(1) @(posedge io_cyslff_clk);
    `else
        repeat(10) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
    `endif
      
    idx = 0;
    dbuf[idx] = (wdata>>(8*0)&8'hff); idx=idx+1;
    dbuf[idx] = (wdata>>(8*1)&8'hff); idx=idx+1;
    dbuf[idx] = (wdata>>(8*2)&8'hff); idx=idx+1;
    dbuf[idx] = (wdata>>(8*3)&8'hff); idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    `ifdef EALIER_CYFX2
        wait(dut.aximif.st == 3'h0); //IDLE
        repeat(1) @(posedge io_cyslff_clk);
    `else
        //wait((dut.m_axis_tlast&(dut.m_axis_tvalid&dut.m_axis_tready)) == 1'b1);
        repeat(20) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
    `endif
end
endtask

task axis_send_mono;
    input integer size;
    input reg [7:0] init;
begin
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = (size>>(8*0)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*1)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*2)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*3)&8'hff); idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h04; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    `ifdef EALIER_CYFX2    
        wait(dut.aximif.axis_fdi_ready == 1'b1);
        repeat(1) @(posedge io_cyslff_clk);
    `else
        repeat(10) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
    `endif
    
    cysl_send_mono(size, init);
    
    `ifdef EALIER_CYFX2
        wait(dut.aximif.st == 3'h0); //IDLE
        repeat(1) @(posedge io_cyslff_clk);
    `else
        //wait((dut.m_axis_tlast&(dut.m_axis_tvalid&dut.m_axis_tready)) == 1'b1);
        repeat(20) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
    `endif
end
endtask

task axis_recv;
    input integer size;
begin
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = (size>>(8*0)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*1)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*2)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*3)&8'hff); idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h0C; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);

`ifdef EALIER_CYFX2    
    wait(dut.aximif.axis_fdo_ready == 1'b1);
    repeat(1) @(posedge io_cyslff_clk);
    
    wait(dut.aximif.st == 3'h0); //IDLE
    repeat(1) @(posedge io_cyslff_clk);
`else
    wait(dut.io_cyslff_addr == 2'h2);
    wait(dut.io_cyslff_addr == 2'h0);
    repeat(1) @(posedge io_cyslff_clk);
`endif
end
endtask

task cysl_send_dbuf;
    input integer size;
    reg [7:0] d;
    integer i;
    begin
        i = 0;
        d = dbuf[0];
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b1;
        wait(io_cyslff_oe == 1'b0);
        #1 io_cyslff_fdi = d;
        wait(io_cyslff_rd == 1'b0);
        #1 io_cyslff_fdi = d;
        
        while(i<size) begin
            @(negedge io_cyslff_clk);
            if(io_cyslff_rd == 1'b0) begin
                i = i+1;
                d = dbuf[i];
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_fdi = d;
        end
        #1 io_cyslff_feb = 1'b0;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b0;
        #1 io_cyslff_fdi = 8'hFF;
        
        wait(io_cyslff_oe == 1'b1);
        
        repeat(4) @(posedge io_cyslff_clk);
        
    end
endtask

task cysl_send_mono;
    input integer size;
    input reg [7:0] init;
    reg [7:0] d;
    integer i;
    reg nsrd;
    begin
        d = init;
        i = 0;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b1;
        wait(io_cyslff_oe == 1'b0);
        #1 io_cyslff_fdi = d;
        wait(io_cyslff_rd == 1'b0);
        #1 io_cyslff_fdi = d;
        i = 1;
        nsrd = 1'b0;
        while(i<size) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
            if(io_cyslff_rd == 1'b0) begin
                d = d+1;
                i = i+1;
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_fdi = d;
        end
        @(negedge io_cyslff_clk);
        nsrd = io_cyslff_rd;
        while(nsrd == 1'b1) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
        end
        
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b0;
        #1 io_cyslff_fdi = 8'hFF;
        
        wait(io_cyslff_oe == 1'b1);
        
        repeat(4) @(posedge io_cyslff_clk);
        
    end
endtask

task cysl_send_file;
    input [1024*8-1:0] file_name;
    input integer file_start;
    input integer file_len;
    reg [7:0] d;
    integer fd;
    integer size;
    integer i;
    reg nsrd;
    begin
        i = 0;
        
        fd = $fopen(file_name, "rb");
        //$fseek(fd, 0, 2); //SEEK_END
        //size = $ftell(fd); //while file
        //$fseek(fd, 0, 0); //SEEK_SET, whole file
        size = file_len;
        $fseek(fd, file_start, 0);
        $fread(d, fd);
        
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b1;
        wait(io_cyslff_oe == 1'b0);
        #1 io_cyslff_fdi = d;
        wait(io_cyslff_rd == 1'b0);
        #1 io_cyslff_fdi = d;
        i = 1;
        nsrd = 1'b0;
        while(i<size) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
            if(io_cyslff_rd == 1'b0) begin
                //d = d+1;
                $fread(d, fd);
                i = i+1;
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_fdi = d;
        end
        @(negedge io_cyslff_clk);
        nsrd = io_cyslff_rd;
        while(nsrd == 1'b1) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
        end
        
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b0;
        #1 io_cyslff_fdi = 8'hFF;
        
        $fclose(fd);
        
        wait(io_cyslff_oe == 1'b1);
        
        repeat(4) @(posedge io_cyslff_clk);
        
    end
endtask

task axis_send_file;
    input [1024*8-1:0] file_name;
    input integer file_start;
    input integer file_len;
    //integer fd;
    integer size;
begin
    //fd = $fopen(file_name, "rb");
    //$fseek(fd, 0, 2); //SEEK_END
    //size = $ftell(fd); //Whole file
    //$fclose(fd);
    size = file_len;
    
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = (size>>(8*0)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*1)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*2)&8'hff); idx=idx+1;
    dbuf[idx] = (size>>(8*3)&8'hff); idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h04; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
`ifdef EALIER_CYFX2    
    wait(dut.aximif.axis_fdi_ready == 1'b1);
    repeat(1) @(posedge io_cyslff_clk);
`else
    repeat(10) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
`endif
    cysl_send_file(file_name, file_start, file_len);

`ifdef EALIER_CYFX2
    wait(dut.aximif.st == 3'h0); //IDLE
    repeat(1) @(posedge io_cyslff_clk);
`else
    //wait((dut.m_axis_tlast&(dut.m_axis_tvalid&dut.m_axis_tready)) == 1'b1);
    repeat(20) @(posedge io_cyslff_clk); //delay enough time, may vary by future design
`endif
end
endtask

task ddr3_send_file;
    input [31:0] ddr3_start;
    input [1024*8-1:0] file_name;
    input integer file_start;
    input integer file_len;
    integer fd;
    integer size;
begin
   axim_wr(32'h42000030, 32'h00000001);
   axim_wr(32'h42000048, ddr3_start);
   //axim_rd(32'h42000034); //Read status
   
   //fd = $fopen(file_name, "rb");
   //$fseek(fd, 0, 2); //SEEK_END
   //size = $ftell(fd); //whole file
   //$fclose(fd);
   
   size = file_len;
   axim_wr(32'h42000058, size);

   axis_send_file(file_name, file_start, file_len);
   
   repeat(5) @(posedge io_cyslff_clk);
end
endtask

endmodule
