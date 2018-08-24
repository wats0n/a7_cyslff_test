//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Aug 12 23:10:57 2018
//Host        : wats0n-miair running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=34,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ACLK,
    ARESETN,
    M_AXIS_MM2S_0_tdata,
    M_AXIS_MM2S_0_tkeep,
    M_AXIS_MM2S_0_tlast,
    M_AXIS_MM2S_0_tready,
    M_AXIS_MM2S_0_tvalid,
    S_AXIS_S2MM_0_tdata,
    S_AXIS_S2MM_0_tkeep,
    S_AXIS_S2MM_0_tlast,
    S_AXIS_S2MM_0_tready,
    S_AXIS_S2MM_0_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axis_pg_tdata,
    axis_pg_tkeep,
    axis_pg_tlast,
    axis_pg_tready,
    axis_pg_tvalid,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_rclk,
    ddr3_reset_n,
    ddr3_sclk,
    ddr3_slocked,
    ddr3_we_n,
    init_calib_complete,
    pdma_dclk,
    pdma_dlocked,
    pgc_dclk,
    pgc_iclk,
    pgc_locked,
    pgc_oen,
    udma_mm2s_rstn,
    udma_s2mm_rstn,
    udma_wclk,
    udma_wlocked);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXIS_S2MM_0:S_AXI:M_AXIS_MM2S_0, CLK_DOMAIN design_1_ACLK, FREQ_HZ 48000000, PHASE 0.000" *) input ACLK;
  input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_MM2S_0, CLK_DOMAIN design_1_ACLK, FREQ_HZ 48000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]M_AXIS_MM2S_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_0 TKEEP" *) output [3:0]M_AXIS_MM2S_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_0 TLAST" *) output M_AXIS_MM2S_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_0 TREADY" *) input M_AXIS_MM2S_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_0 TVALID" *) output M_AXIS_MM2S_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_S2MM_0, CLK_DOMAIN design_1_ACLK, FREQ_HZ 48000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_S2MM_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TKEEP" *) input [3:0]S_AXIS_S2MM_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TLAST" *) input S_AXIS_S2MM_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TREADY" *) output S_AXIS_S2MM_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TVALID" *) input S_AXIS_S2MM_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_ACLK, DATA_WIDTH 32, FREQ_HZ 48000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 0, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 0, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]S_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]S_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [0:0]S_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]S_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]S_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]S_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]S_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]S_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]S_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]S_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [0:0]S_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]S_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]S_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]S_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]S_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]S_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [0:0]S_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [0:0]S_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output S_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input S_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_pg TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_pg, FREQ_HZ 74250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]axis_pg_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_pg TKEEP" *) output [3:0]axis_pg_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_pg TLAST" *) output axis_pg_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_pg TREADY" *) input axis_pg_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_pg TVALID" *) output axis_pg_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]ddr3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 BA" *) output [2:0]ddr3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CAS_N" *) output ddr3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_N" *) output [0:0]ddr3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_P" *) output [0:0]ddr3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CKE" *) output [0:0]ddr3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DM" *) output [1:0]ddr3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQ" *) inout [15:0]ddr3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_N" *) inout [1:0]ddr3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_P" *) inout [1:0]ddr3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ODT" *) output [0:0]ddr3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RAS_N" *) output ddr3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR3_RCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR3_RCLK, CLK_DOMAIN design_1_ddr3_rclk, FREQ_HZ 200000000, PHASE 0.000" *) input ddr3_rclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RESET_N" *) output ddr3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR3_SCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR3_SCLK, CLK_DOMAIN design_1_ddr3_sclk, FREQ_HZ 400000000, PHASE 0.000" *) input ddr3_sclk;
  input ddr3_slocked;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 WE_N" *) output ddr3_we_n;
  output init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PDMA_DCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PDMA_DCLK, CLK_DOMAIN design_1_pdma_dclk, FREQ_HZ 125000000, PHASE 0.000" *) input pdma_dclk;
  input pdma_dlocked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PGC_DCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PGC_DCLK, CLK_DOMAIN /clk_wiz_pg_clk_out1, FREQ_HZ 74250000, PHASE 0.0" *) output pgc_dclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PGC_ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PGC_ICLK, CLK_DOMAIN /clk_wiz_pg_clk_out1, FREQ_HZ 371250000, PHASE 0.0" *) output pgc_iclk;
  output pgc_locked;
  output [0:0]pgc_oen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.UDMA_MM2S_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.UDMA_MM2S_RSTN, POLARITY ACTIVE_LOW" *) output udma_mm2s_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.UDMA_S2MM_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.UDMA_S2MM_RSTN, POLARITY ACTIVE_LOW" *) output udma_s2mm_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UDMA_WCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UDMA_WCLK, CLK_DOMAIN design_1_udma_wclk, FREQ_HZ 12500000, PHASE 0.000" *) input udma_wclk;
  input udma_wlocked;

  wire ACLK_1;
  wire ARESETN_1;
  wire [0:0]M01_ARESETN_1;
  wire [31:0]S_AXIS_S2MM_0_1_TDATA;
  wire [3:0]S_AXIS_S2MM_0_1_TKEEP;
  wire S_AXIS_S2MM_0_1_TLAST;
  wire S_AXIS_S2MM_0_1_TREADY;
  wire S_AXIS_S2MM_0_1_TVALID;
  wire [31:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [0:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [3:0]S_AXI_1_ARREGION;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [0:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [3:0]S_AXI_1_AWREGION;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_clock_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_AWQOS;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire [3:0]axi_clock_converter_0_M_AXI_AWREGION;
  wire [2:0]axi_clock_converter_0_M_AXI_AWSIZE;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WLAST;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire [3:0]axi_clock_converter_0_M_AXI_WSTRB;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_pg_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_pg_M_AXIS_MM2S_TKEEP;
  wire axi_dma_pg_M_AXIS_MM2S_TLAST;
  wire axi_dma_pg_M_AXIS_MM2S_TREADY;
  wire axi_dma_pg_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_pg_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_pg_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_pg_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_pg_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_pg_M_AXI_MM2S_ARPROT;
  wire axi_dma_pg_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_pg_M_AXI_MM2S_ARSIZE;
  wire axi_dma_pg_M_AXI_MM2S_ARVALID;
  wire [127:0]axi_dma_pg_M_AXI_MM2S_RDATA;
  wire axi_dma_pg_M_AXI_MM2S_RLAST;
  wire axi_dma_pg_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_pg_M_AXI_MM2S_RRESP;
  wire axi_dma_pg_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_pg_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_pg_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_pg_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_pg_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_pg_M_AXI_SG_ARPROT;
  wire axi_dma_pg_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_pg_M_AXI_SG_ARSIZE;
  wire axi_dma_pg_M_AXI_SG_ARVALID;
  wire [31:0]axi_dma_pg_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_pg_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_pg_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_pg_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_pg_M_AXI_SG_AWPROT;
  wire axi_dma_pg_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_pg_M_AXI_SG_AWSIZE;
  wire axi_dma_pg_M_AXI_SG_AWVALID;
  wire axi_dma_pg_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_pg_M_AXI_SG_BRESP;
  wire axi_dma_pg_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_pg_M_AXI_SG_RDATA;
  wire axi_dma_pg_M_AXI_SG_RLAST;
  wire axi_dma_pg_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_pg_M_AXI_SG_RRESP;
  wire axi_dma_pg_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_pg_M_AXI_SG_WDATA;
  wire axi_dma_pg_M_AXI_SG_WLAST;
  wire axi_dma_pg_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_pg_M_AXI_SG_WSTRB;
  wire axi_dma_pg_M_AXI_SG_WVALID;
  wire [31:0]axi_dma_usb_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_usb_M_AXIS_MM2S_TKEEP;
  wire axi_dma_usb_M_AXIS_MM2S_TLAST;
  wire axi_dma_usb_M_AXIS_MM2S_TREADY;
  wire axi_dma_usb_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_usb_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_usb_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_usb_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_usb_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_usb_M_AXI_S2MM_AWPROT;
  wire axi_dma_usb_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_usb_M_AXI_S2MM_AWSIZE;
  wire axi_dma_usb_M_AXI_S2MM_AWVALID;
  wire axi_dma_usb_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_usb_M_AXI_S2MM_BRESP;
  wire axi_dma_usb_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_usb_M_AXI_S2MM_WDATA;
  wire axi_dma_usb_M_AXI_S2MM_WLAST;
  wire axi_dma_usb_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_usb_M_AXI_S2MM_WSTRB;
  wire axi_dma_usb_M_AXI_S2MM_WVALID;
  wire axi_dma_usb_mm2s_prmry_reset_out_n;
  wire axi_dma_usb_s2mm_prmry_reset_out_n;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [10:0]axi_intcon_ctrl_M02_AXI_ARADDR;
  wire axi_intcon_ctrl_M02_AXI_ARREADY;
  wire axi_intcon_ctrl_M02_AXI_ARVALID;
  wire [10:0]axi_intcon_ctrl_M02_AXI_AWADDR;
  wire axi_intcon_ctrl_M02_AXI_AWREADY;
  wire axi_intcon_ctrl_M02_AXI_AWVALID;
  wire axi_intcon_ctrl_M02_AXI_BREADY;
  wire [1:0]axi_intcon_ctrl_M02_AXI_BRESP;
  wire axi_intcon_ctrl_M02_AXI_BVALID;
  wire [31:0]axi_intcon_ctrl_M02_AXI_RDATA;
  wire axi_intcon_ctrl_M02_AXI_RREADY;
  wire [1:0]axi_intcon_ctrl_M02_AXI_RRESP;
  wire axi_intcon_ctrl_M02_AXI_RVALID;
  wire [31:0]axi_intcon_ctrl_M02_AXI_WDATA;
  wire axi_intcon_ctrl_M02_AXI_WREADY;
  wire [3:0]axi_intcon_ctrl_M02_AXI_WSTRB;
  wire axi_intcon_ctrl_M02_AXI_WVALID;
  wire [8:0]axi_intcon_ctrl_M03_AXI_ARADDR;
  wire axi_intcon_ctrl_M03_AXI_ARREADY;
  wire axi_intcon_ctrl_M03_AXI_ARVALID;
  wire [8:0]axi_intcon_ctrl_M03_AXI_AWADDR;
  wire axi_intcon_ctrl_M03_AXI_AWREADY;
  wire axi_intcon_ctrl_M03_AXI_AWVALID;
  wire axi_intcon_ctrl_M03_AXI_BREADY;
  wire [1:0]axi_intcon_ctrl_M03_AXI_BRESP;
  wire axi_intcon_ctrl_M03_AXI_BVALID;
  wire [31:0]axi_intcon_ctrl_M03_AXI_RDATA;
  wire axi_intcon_ctrl_M03_AXI_RREADY;
  wire [1:0]axi_intcon_ctrl_M03_AXI_RRESP;
  wire axi_intcon_ctrl_M03_AXI_RVALID;
  wire [31:0]axi_intcon_ctrl_M03_AXI_WDATA;
  wire axi_intcon_ctrl_M03_AXI_WREADY;
  wire [3:0]axi_intcon_ctrl_M03_AXI_WSTRB;
  wire axi_intcon_ctrl_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [9:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [9:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_mpmc_M00_AXI_ARADDR;
  wire [1:0]axi_mpmc_M00_AXI_ARBURST;
  wire [3:0]axi_mpmc_M00_AXI_ARCACHE;
  wire [1:0]axi_mpmc_M00_AXI_ARID;
  wire [7:0]axi_mpmc_M00_AXI_ARLEN;
  wire [0:0]axi_mpmc_M00_AXI_ARLOCK;
  wire [2:0]axi_mpmc_M00_AXI_ARPROT;
  wire [3:0]axi_mpmc_M00_AXI_ARQOS;
  wire axi_mpmc_M00_AXI_ARREADY;
  wire [2:0]axi_mpmc_M00_AXI_ARSIZE;
  wire [0:0]axi_mpmc_M00_AXI_ARVALID;
  wire [31:0]axi_mpmc_M00_AXI_AWADDR;
  wire [1:0]axi_mpmc_M00_AXI_AWBURST;
  wire [3:0]axi_mpmc_M00_AXI_AWCACHE;
  wire [1:0]axi_mpmc_M00_AXI_AWID;
  wire [7:0]axi_mpmc_M00_AXI_AWLEN;
  wire [0:0]axi_mpmc_M00_AXI_AWLOCK;
  wire [2:0]axi_mpmc_M00_AXI_AWPROT;
  wire [3:0]axi_mpmc_M00_AXI_AWQOS;
  wire axi_mpmc_M00_AXI_AWREADY;
  wire [2:0]axi_mpmc_M00_AXI_AWSIZE;
  wire [0:0]axi_mpmc_M00_AXI_AWVALID;
  wire [1:0]axi_mpmc_M00_AXI_BID;
  wire [0:0]axi_mpmc_M00_AXI_BREADY;
  wire [1:0]axi_mpmc_M00_AXI_BRESP;
  wire axi_mpmc_M00_AXI_BVALID;
  wire [127:0]axi_mpmc_M00_AXI_RDATA;
  wire [1:0]axi_mpmc_M00_AXI_RID;
  wire axi_mpmc_M00_AXI_RLAST;
  wire [0:0]axi_mpmc_M00_AXI_RREADY;
  wire [1:0]axi_mpmc_M00_AXI_RRESP;
  wire axi_mpmc_M00_AXI_RVALID;
  wire [127:0]axi_mpmc_M00_AXI_WDATA;
  wire [0:0]axi_mpmc_M00_AXI_WLAST;
  wire axi_mpmc_M00_AXI_WREADY;
  wire [15:0]axi_mpmc_M00_AXI_WSTRB;
  wire [0:0]axi_mpmc_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axis_data_fifo_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axis_data_fifo_0_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TVALID;
  wire clk_wiz_pg_clk_out1;
  wire clk_wiz_pg_clk_out2;
  wire clk_wiz_pg_locked;
  wire ddr3_rclk_1;
  wire ddr3_sclk_1;
  wire ddr3_slocked_1;
  wire [13:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire pdma_dclk_1;
  wire pdma_dlocked_1;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn1;
  wire [0:0]proc_sys_reset_pg_peripheral_aresetn;
  wire [0:0]proc_sys_reset_pgcdc_interconnect_aresetn;
  wire [0:0]proc_sys_reset_pgcdc_peripheral_aresetn;
  wire [0:0]rst_ACLK_48M_interconnect_aresetn;
  wire [0:0]rst_ACLK_48M_peripheral_aresetn;
  wire udma_wclk_1;
  wire udma_wlocked_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [11:0]xlconstant_0_dout;

  assign ACLK_1 = ACLK;
  assign ARESETN_1 = ARESETN;
  assign M_AXIS_MM2S_0_tdata[31:0] = axi_dma_usb_M_AXIS_MM2S_TDATA;
  assign M_AXIS_MM2S_0_tkeep[3:0] = axi_dma_usb_M_AXIS_MM2S_TKEEP;
  assign M_AXIS_MM2S_0_tlast = axi_dma_usb_M_AXIS_MM2S_TLAST;
  assign M_AXIS_MM2S_0_tvalid = axi_dma_usb_M_AXIS_MM2S_TVALID;
  assign S_AXIS_S2MM_0_1_TDATA = S_AXIS_S2MM_0_tdata[31:0];
  assign S_AXIS_S2MM_0_1_TKEEP = S_AXIS_S2MM_0_tkeep[3:0];
  assign S_AXIS_S2MM_0_1_TLAST = S_AXIS_S2MM_0_tlast;
  assign S_AXIS_S2MM_0_1_TVALID = S_AXIS_S2MM_0_tvalid;
  assign S_AXIS_S2MM_0_tready = S_AXIS_S2MM_0_1_TREADY;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARREGION = S_AXI_arregion[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWREGION = S_AXI_awregion[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign axi_dma_usb_M_AXIS_MM2S_TREADY = M_AXIS_MM2S_0_tready;
  assign axis_data_fifo_0_M_AXIS_TREADY = axis_pg_tready;
  assign axis_pg_tdata[31:0] = axis_data_fifo_0_M_AXIS_TDATA;
  assign axis_pg_tkeep[3:0] = axis_data_fifo_0_M_AXIS_TKEEP;
  assign axis_pg_tlast = axis_data_fifo_0_M_AXIS_TLAST;
  assign axis_pg_tvalid = axis_data_fifo_0_M_AXIS_TVALID;
  assign ddr3_addr[13:0] = mig_7series_0_DDR3_ADDR;
  assign ddr3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign ddr3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign ddr3_cke[0] = mig_7series_0_DDR3_CKE;
  assign ddr3_dm[1:0] = mig_7series_0_DDR3_DM;
  assign ddr3_odt[0] = mig_7series_0_DDR3_ODT;
  assign ddr3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr3_rclk_1 = ddr3_rclk;
  assign ddr3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr3_sclk_1 = ddr3_sclk;
  assign ddr3_slocked_1 = ddr3_slocked;
  assign ddr3_we_n = mig_7series_0_DDR3_WE_N;
  assign init_calib_complete = mig_7series_0_init_calib_complete;
  assign pdma_dclk_1 = pdma_dclk;
  assign pdma_dlocked_1 = pdma_dlocked;
  assign pgc_dclk = clk_wiz_pg_clk_out2;
  assign pgc_iclk = clk_wiz_pg_clk_out1;
  assign pgc_locked = clk_wiz_pg_locked;
  assign pgc_oen[0] = axi_gpio_0_gpio_io_o;
  assign udma_mm2s_rstn = axi_dma_usb_mm2s_prmry_reset_out_n;
  assign udma_s2mm_rstn = axi_dma_usb_s2mm_prmry_reset_out_n;
  assign udma_wclk_1 = udma_wclk;
  assign udma_wlocked_1 = udma_wlocked;
  design_1_axi_clock_converter_0_0 axi_clock_converter_0
       (.m_axi_aclk(udma_wclk_1),
        .m_axi_aresetn(proc_sys_reset_0_peripheral_aresetn1),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_clock_converter_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .s_axi_aclk(ACLK_1),
        .s_axi_aresetn(rst_ACLK_48M_peripheral_aresetn),
        .s_axi_awaddr(axi_dma_usb_M_AXI_S2MM_AWADDR),
        .s_axi_awburst(axi_dma_usb_M_AXI_S2MM_AWBURST),
        .s_axi_awcache(axi_dma_usb_M_AXI_S2MM_AWCACHE),
        .s_axi_awlen(axi_dma_usb_M_AXI_S2MM_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(axi_dma_usb_M_AXI_S2MM_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_dma_usb_M_AXI_S2MM_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(axi_dma_usb_M_AXI_S2MM_AWSIZE),
        .s_axi_awvalid(axi_dma_usb_M_AXI_S2MM_AWVALID),
        .s_axi_bready(axi_dma_usb_M_AXI_S2MM_BREADY),
        .s_axi_bresp(axi_dma_usb_M_AXI_S2MM_BRESP),
        .s_axi_bvalid(axi_dma_usb_M_AXI_S2MM_BVALID),
        .s_axi_wdata(axi_dma_usb_M_AXI_S2MM_WDATA),
        .s_axi_wlast(axi_dma_usb_M_AXI_S2MM_WLAST),
        .s_axi_wready(axi_dma_usb_M_AXI_S2MM_WREADY),
        .s_axi_wstrb(axi_dma_usb_M_AXI_S2MM_WSTRB),
        .s_axi_wvalid(axi_dma_usb_M_AXI_S2MM_WVALID));
  design_1_axi_dma_1_0 axi_dma_pg
       (.axi_resetn(proc_sys_reset_pg_peripheral_aresetn),
        .m_axi_mm2s_aclk(pdma_dclk_1),
        .m_axi_mm2s_araddr(axi_dma_pg_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_pg_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_pg_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_pg_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_pg_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_pg_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_pg_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_pg_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_pg_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_pg_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_pg_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_pg_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_pg_M_AXI_MM2S_RVALID),
        .m_axi_sg_aclk(pdma_dclk_1),
        .m_axi_sg_araddr(axi_dma_pg_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_pg_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_pg_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_pg_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_pg_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_pg_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_pg_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_pg_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_pg_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_pg_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_pg_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_pg_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_pg_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_pg_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_pg_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_pg_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_pg_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_pg_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_pg_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_pg_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_pg_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_pg_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_pg_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_pg_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_pg_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_pg_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_pg_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_pg_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_pg_M_AXI_SG_WVALID),
        .m_axis_mm2s_tdata(axi_dma_pg_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_pg_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_pg_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_pg_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_pg_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(pdma_dclk_1),
        .s_axi_lite_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_lite_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_lite_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  design_1_axi_dma_0_0 axi_dma_usb
       (.axi_resetn(rst_ACLK_48M_peripheral_aresetn),
        .m_axi_mm2s_aclk(ACLK_1),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(ACLK_1),
        .m_axi_s2mm_awaddr(axi_dma_usb_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_usb_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_usb_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_usb_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_usb_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_usb_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_usb_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_usb_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_usb_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_usb_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_usb_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_usb_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_usb_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_usb_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_usb_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_usb_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_usb_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_usb_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_usb_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_usb_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_usb_M_AXIS_MM2S_TVALID),
        .mm2s_prmry_reset_out_n(axi_dma_usb_mm2s_prmry_reset_out_n),
        .s2mm_prmry_reset_out_n(axi_dma_usb_s2mm_prmry_reset_out_n),
        .s_axi_lite_aclk(ACLK_1),
        .s_axi_lite_araddr(axi_interconnect_0_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(S_AXIS_S2MM_0_1_TDATA),
        .s_axis_s2mm_tkeep(S_AXIS_S2MM_0_1_TKEEP),
        .s_axis_s2mm_tlast(S_AXIS_S2MM_0_1_TLAST),
        .s_axis_s2mm_tready(S_AXIS_S2MM_0_1_TREADY),
        .s_axis_s2mm_tvalid(S_AXIS_S2MM_0_1_TVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_wiz_pg_clk_out2),
        .s_axi_araddr(axi_intcon_ctrl_M03_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_pgcdc_peripheral_aresetn),
        .s_axi_arready(axi_intcon_ctrl_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_intcon_ctrl_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_intcon_ctrl_M03_AXI_AWADDR),
        .s_axi_awready(axi_intcon_ctrl_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_intcon_ctrl_M03_AXI_AWVALID),
        .s_axi_bready(axi_intcon_ctrl_M03_AXI_BREADY),
        .s_axi_bresp(axi_intcon_ctrl_M03_AXI_BRESP),
        .s_axi_bvalid(axi_intcon_ctrl_M03_AXI_BVALID),
        .s_axi_rdata(axi_intcon_ctrl_M03_AXI_RDATA),
        .s_axi_rready(axi_intcon_ctrl_M03_AXI_RREADY),
        .s_axi_rresp(axi_intcon_ctrl_M03_AXI_RRESP),
        .s_axi_rvalid(axi_intcon_ctrl_M03_AXI_RVALID),
        .s_axi_wdata(axi_intcon_ctrl_M03_AXI_WDATA),
        .s_axi_wready(axi_intcon_ctrl_M03_AXI_WREADY),
        .s_axi_wstrb(axi_intcon_ctrl_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_intcon_ctrl_M03_AXI_WVALID));
  design_1_axi_interconnect_0_0 axi_intcon_ctrl
       (.ACLK(ACLK_1),
        .ARESETN(rst_ACLK_48M_interconnect_aresetn),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(rst_ACLK_48M_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(pdma_dclk_1),
        .M01_ARESETN(M01_ARESETN_1),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(pdma_dclk_1),
        .M02_ARESETN(M01_ARESETN_1),
        .M02_AXI_araddr(axi_intcon_ctrl_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_intcon_ctrl_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_intcon_ctrl_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_intcon_ctrl_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_intcon_ctrl_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_intcon_ctrl_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_intcon_ctrl_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_intcon_ctrl_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_intcon_ctrl_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_intcon_ctrl_M02_AXI_RDATA),
        .M02_AXI_rready(axi_intcon_ctrl_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_intcon_ctrl_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_intcon_ctrl_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_intcon_ctrl_M02_AXI_WDATA),
        .M02_AXI_wready(axi_intcon_ctrl_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_intcon_ctrl_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_intcon_ctrl_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_pg_clk_out2),
        .M03_ARESETN(proc_sys_reset_pgcdc_interconnect_aresetn),
        .M03_AXI_araddr(axi_intcon_ctrl_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_intcon_ctrl_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_intcon_ctrl_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_intcon_ctrl_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_intcon_ctrl_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_intcon_ctrl_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_intcon_ctrl_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_intcon_ctrl_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_intcon_ctrl_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_intcon_ctrl_M03_AXI_RDATA),
        .M03_AXI_rready(axi_intcon_ctrl_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_intcon_ctrl_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_intcon_ctrl_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_intcon_ctrl_M03_AXI_WDATA),
        .M03_AXI_wready(axi_intcon_ctrl_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_intcon_ctrl_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_intcon_ctrl_M03_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(rst_ACLK_48M_peripheral_aresetn),
        .S00_AXI_araddr(S_AXI_1_ARADDR),
        .S00_AXI_arburst(S_AXI_1_ARBURST),
        .S00_AXI_arcache(S_AXI_1_ARCACHE),
        .S00_AXI_arid(S_AXI_1_ARID),
        .S00_AXI_arlen(S_AXI_1_ARLEN),
        .S00_AXI_arlock(S_AXI_1_ARLOCK),
        .S00_AXI_arprot(S_AXI_1_ARPROT),
        .S00_AXI_arqos(S_AXI_1_ARQOS),
        .S00_AXI_arready(S_AXI_1_ARREADY),
        .S00_AXI_arregion(S_AXI_1_ARREGION),
        .S00_AXI_arsize(S_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S_AXI_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_1_AWADDR),
        .S00_AXI_awburst(S_AXI_1_AWBURST),
        .S00_AXI_awcache(S_AXI_1_AWCACHE),
        .S00_AXI_awid(S_AXI_1_AWID),
        .S00_AXI_awlen(S_AXI_1_AWLEN),
        .S00_AXI_awlock(S_AXI_1_AWLOCK),
        .S00_AXI_awprot(S_AXI_1_AWPROT),
        .S00_AXI_awqos(S_AXI_1_AWQOS),
        .S00_AXI_awready(S_AXI_1_AWREADY),
        .S00_AXI_awregion(S_AXI_1_AWREGION),
        .S00_AXI_awsize(S_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S_AXI_1_AWVALID),
        .S00_AXI_bid(S_AXI_1_BID),
        .S00_AXI_bready(S_AXI_1_BREADY),
        .S00_AXI_bresp(S_AXI_1_BRESP),
        .S00_AXI_bvalid(S_AXI_1_BVALID),
        .S00_AXI_rdata(S_AXI_1_RDATA),
        .S00_AXI_rid(S_AXI_1_RID),
        .S00_AXI_rlast(S_AXI_1_RLAST),
        .S00_AXI_rready(S_AXI_1_RREADY),
        .S00_AXI_rresp(S_AXI_1_RRESP),
        .S00_AXI_rvalid(S_AXI_1_RVALID),
        .S00_AXI_wdata(S_AXI_1_WDATA),
        .S00_AXI_wlast(S_AXI_1_WLAST),
        .S00_AXI_wready(S_AXI_1_WREADY),
        .S00_AXI_wstrb(S_AXI_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_1_WVALID));
  design_1_axi_interconnect_1_0 axi_mpmc
       (.ACLK(mig_7series_0_ui_clk),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(mig_7series_0_ui_clk),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_mpmc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mpmc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mpmc_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mpmc_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mpmc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mpmc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mpmc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mpmc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mpmc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mpmc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mpmc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mpmc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mpmc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mpmc_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mpmc_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mpmc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mpmc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mpmc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mpmc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mpmc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mpmc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mpmc_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mpmc_M00_AXI_BID),
        .M00_AXI_bready(axi_mpmc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mpmc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mpmc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mpmc_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mpmc_M00_AXI_RID),
        .M00_AXI_rlast(axi_mpmc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mpmc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mpmc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mpmc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mpmc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mpmc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mpmc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mpmc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mpmc_M00_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(rst_ACLK_48M_peripheral_aresetn),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_ACLK(udma_wclk_1),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn1),
        .S01_AXI_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .S01_AXI_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .S01_AXI_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .S01_AXI_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .S01_AXI_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .S01_AXI_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .S01_AXI_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .S01_AXI_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .S01_AXI_awregion(axi_clock_converter_0_M_AXI_AWREGION),
        .S01_AXI_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .S01_AXI_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .S01_AXI_bready(axi_clock_converter_0_M_AXI_BREADY),
        .S01_AXI_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .S01_AXI_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .S01_AXI_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .S01_AXI_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .S01_AXI_wready(axi_clock_converter_0_M_AXI_WREADY),
        .S01_AXI_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .S02_ACLK(pdma_dclk_1),
        .S02_ARESETN(M01_ARESETN_1),
        .S02_AXI_araddr(axi_dma_pg_M_AXI_MM2S_ARADDR),
        .S02_AXI_arburst(axi_dma_pg_M_AXI_MM2S_ARBURST),
        .S02_AXI_arcache(axi_dma_pg_M_AXI_MM2S_ARCACHE),
        .S02_AXI_arlen(axi_dma_pg_M_AXI_MM2S_ARLEN),
        .S02_AXI_arprot(axi_dma_pg_M_AXI_MM2S_ARPROT),
        .S02_AXI_arready(axi_dma_pg_M_AXI_MM2S_ARREADY),
        .S02_AXI_arsize(axi_dma_pg_M_AXI_MM2S_ARSIZE),
        .S02_AXI_arvalid(axi_dma_pg_M_AXI_MM2S_ARVALID),
        .S02_AXI_rdata(axi_dma_pg_M_AXI_MM2S_RDATA),
        .S02_AXI_rlast(axi_dma_pg_M_AXI_MM2S_RLAST),
        .S02_AXI_rready(axi_dma_pg_M_AXI_MM2S_RREADY),
        .S02_AXI_rresp(axi_dma_pg_M_AXI_MM2S_RRESP),
        .S02_AXI_rvalid(axi_dma_pg_M_AXI_MM2S_RVALID),
        .S03_ACLK(pdma_dclk_1),
        .S03_ARESETN(M01_ARESETN_1),
        .S03_AXI_araddr(axi_dma_pg_M_AXI_SG_ARADDR),
        .S03_AXI_arburst(axi_dma_pg_M_AXI_SG_ARBURST),
        .S03_AXI_arcache(axi_dma_pg_M_AXI_SG_ARCACHE),
        .S03_AXI_arlen(axi_dma_pg_M_AXI_SG_ARLEN),
        .S03_AXI_arprot(axi_dma_pg_M_AXI_SG_ARPROT),
        .S03_AXI_arready(axi_dma_pg_M_AXI_SG_ARREADY),
        .S03_AXI_arsize(axi_dma_pg_M_AXI_SG_ARSIZE),
        .S03_AXI_arvalid(axi_dma_pg_M_AXI_SG_ARVALID),
        .S03_AXI_awaddr(axi_dma_pg_M_AXI_SG_AWADDR),
        .S03_AXI_awburst(axi_dma_pg_M_AXI_SG_AWBURST),
        .S03_AXI_awcache(axi_dma_pg_M_AXI_SG_AWCACHE),
        .S03_AXI_awlen(axi_dma_pg_M_AXI_SG_AWLEN),
        .S03_AXI_awprot(axi_dma_pg_M_AXI_SG_AWPROT),
        .S03_AXI_awready(axi_dma_pg_M_AXI_SG_AWREADY),
        .S03_AXI_awsize(axi_dma_pg_M_AXI_SG_AWSIZE),
        .S03_AXI_awvalid(axi_dma_pg_M_AXI_SG_AWVALID),
        .S03_AXI_bready(axi_dma_pg_M_AXI_SG_BREADY),
        .S03_AXI_bresp(axi_dma_pg_M_AXI_SG_BRESP),
        .S03_AXI_bvalid(axi_dma_pg_M_AXI_SG_BVALID),
        .S03_AXI_rdata(axi_dma_pg_M_AXI_SG_RDATA),
        .S03_AXI_rlast(axi_dma_pg_M_AXI_SG_RLAST),
        .S03_AXI_rready(axi_dma_pg_M_AXI_SG_RREADY),
        .S03_AXI_rresp(axi_dma_pg_M_AXI_SG_RRESP),
        .S03_AXI_rvalid(axi_dma_pg_M_AXI_SG_RVALID),
        .S03_AXI_wdata(axi_dma_pg_M_AXI_SG_WDATA),
        .S03_AXI_wlast(axi_dma_pg_M_AXI_SG_WLAST),
        .S03_AXI_wready(axi_dma_pg_M_AXI_SG_WREADY),
        .S03_AXI_wstrb(axi_dma_pg_M_AXI_SG_WSTRB),
        .S03_AXI_wvalid(axi_dma_pg_M_AXI_SG_WVALID));
  design_1_axis_data_fifo_0_2 axis_data_fifo_0
       (.m_axis_aclk(clk_wiz_pg_clk_out2),
        .m_axis_aresetn(proc_sys_reset_pgcdc_peripheral_aresetn),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(pdma_dclk_1),
        .s_axis_aresetn(proc_sys_reset_pg_peripheral_aresetn),
        .s_axis_tdata(axi_dma_pg_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_pg_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_pg_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_pg_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_pg_M_AXIS_MM2S_TVALID));
  design_1_clk_wiz_0_0 clk_wiz_pg
       (.clk_in1(ddr3_rclk_1),
        .clk_out1(clk_wiz_pg_clk_out1),
        .clk_out2(clk_wiz_pg_clk_out2),
        .locked(clk_wiz_pg_locked),
        .s_axi_aclk(pdma_dclk_1),
        .s_axi_araddr(axi_intcon_ctrl_M02_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_pg_peripheral_aresetn),
        .s_axi_arready(axi_intcon_ctrl_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_intcon_ctrl_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_intcon_ctrl_M02_AXI_AWADDR),
        .s_axi_awready(axi_intcon_ctrl_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_intcon_ctrl_M02_AXI_AWVALID),
        .s_axi_bready(axi_intcon_ctrl_M02_AXI_BREADY),
        .s_axi_bresp(axi_intcon_ctrl_M02_AXI_BRESP),
        .s_axi_bvalid(axi_intcon_ctrl_M02_AXI_BVALID),
        .s_axi_rdata(axi_intcon_ctrl_M02_AXI_RDATA),
        .s_axi_rready(axi_intcon_ctrl_M02_AXI_RREADY),
        .s_axi_rresp(axi_intcon_ctrl_M02_AXI_RRESP),
        .s_axi_rvalid(axi_intcon_ctrl_M02_AXI_RVALID),
        .s_axi_wdata(axi_intcon_ctrl_M02_AXI_WDATA),
        .s_axi_wready(axi_intcon_ctrl_M02_AXI_WREADY),
        .s_axi_wstrb(axi_intcon_ctrl_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_intcon_ctrl_M02_AXI_WVALID));
  design_1_mig_7series_0_0 mig_7series_0
       (.aresetn(proc_sys_reset_0_peripheral_aresetn),
        .clk_ref_i(ddr3_rclk_1),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr3_dq[15:0]),
        .ddr3_dqs_n(ddr3_dqs_n[1:0]),
        .ddr3_dqs_p(ddr3_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .device_temp_i(xlconstant_0_dout),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_mpmc_M00_AXI_ARADDR[27:0]),
        .s_axi_arburst(axi_mpmc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mpmc_M00_AXI_ARCACHE),
        .s_axi_arid(axi_mpmc_M00_AXI_ARID),
        .s_axi_arlen(axi_mpmc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mpmc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mpmc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_mpmc_M00_AXI_ARQOS),
        .s_axi_arready(axi_mpmc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_mpmc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mpmc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mpmc_M00_AXI_AWADDR[27:0]),
        .s_axi_awburst(axi_mpmc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mpmc_M00_AXI_AWCACHE),
        .s_axi_awid(axi_mpmc_M00_AXI_AWID),
        .s_axi_awlen(axi_mpmc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mpmc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mpmc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_mpmc_M00_AXI_AWQOS),
        .s_axi_awready(axi_mpmc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_mpmc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mpmc_M00_AXI_AWVALID),
        .s_axi_bid(axi_mpmc_M00_AXI_BID),
        .s_axi_bready(axi_mpmc_M00_AXI_BREADY),
        .s_axi_bresp(axi_mpmc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mpmc_M00_AXI_BVALID),
        .s_axi_rdata(axi_mpmc_M00_AXI_RDATA),
        .s_axi_rid(axi_mpmc_M00_AXI_RID),
        .s_axi_rlast(axi_mpmc_M00_AXI_RLAST),
        .s_axi_rready(axi_mpmc_M00_AXI_RREADY),
        .s_axi_rresp(axi_mpmc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mpmc_M00_AXI_RVALID),
        .s_axi_wdata(axi_mpmc_M00_AXI_WDATA),
        .s_axi_wlast(axi_mpmc_M00_AXI_WLAST),
        .s_axi_wready(axi_mpmc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mpmc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mpmc_M00_AXI_WVALID),
        .sys_clk_i(ddr3_sclk_1),
        .sys_rst(ddr3_slocked_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  design_1_proc_sys_reset_0_2 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(udma_wlocked_1),
        .ext_reset_in(udma_wlocked_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn1),
        .slowest_sync_clk(udma_wclk_1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_ddr3
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(util_vector_logic_0_Res),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  design_1_proc_sys_reset_0_1 proc_sys_reset_pgcdc
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_pg_locked),
        .ext_reset_in(clk_wiz_pg_locked),
        .interconnect_aresetn(proc_sys_reset_pgcdc_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_pgcdc_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_pg_clk_out2));
  design_1_proc_sys_reset_1_0 proc_sys_reset_pgrd
       (.aux_reset_in(1'b1),
        .dcm_locked(pdma_dlocked_1),
        .ext_reset_in(pdma_dlocked_1),
        .interconnect_aresetn(M01_ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_pg_peripheral_aresetn),
        .slowest_sync_clk(pdma_dclk_1));
  design_1_rst_ACLK_48M_0 rst_ACLK_48M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ARESETN_1),
        .interconnect_aresetn(rst_ACLK_48M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ACLK_48M_peripheral_aresetn),
        .slowest_sync_clk(ACLK_1));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .SLOT_0_AXIS_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .SLOT_0_AXIS_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .SLOT_0_AXIS_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .SLOT_0_AXIS_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .clk(clk_wiz_pg_clk_out2),
        .resetn(proc_sys_reset_pgcdc_peripheral_aresetn));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Res(util_vector_logic_0_Res));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module design_1_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [9:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [9:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [10:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [10:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_intcon_ctrl_ACLK_net;
  wire axi_intcon_ctrl_ARESETN_net;
  wire [31:0]axi_intcon_ctrl_to_s00_couplers_ARADDR;
  wire [1:0]axi_intcon_ctrl_to_s00_couplers_ARBURST;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_ARCACHE;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_ARID;
  wire [7:0]axi_intcon_ctrl_to_s00_couplers_ARLEN;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_ARLOCK;
  wire [2:0]axi_intcon_ctrl_to_s00_couplers_ARPROT;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_ARQOS;
  wire axi_intcon_ctrl_to_s00_couplers_ARREADY;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_ARREGION;
  wire [2:0]axi_intcon_ctrl_to_s00_couplers_ARSIZE;
  wire axi_intcon_ctrl_to_s00_couplers_ARVALID;
  wire [31:0]axi_intcon_ctrl_to_s00_couplers_AWADDR;
  wire [1:0]axi_intcon_ctrl_to_s00_couplers_AWBURST;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_AWCACHE;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_AWID;
  wire [7:0]axi_intcon_ctrl_to_s00_couplers_AWLEN;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_AWLOCK;
  wire [2:0]axi_intcon_ctrl_to_s00_couplers_AWPROT;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_AWQOS;
  wire axi_intcon_ctrl_to_s00_couplers_AWREADY;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_AWREGION;
  wire [2:0]axi_intcon_ctrl_to_s00_couplers_AWSIZE;
  wire axi_intcon_ctrl_to_s00_couplers_AWVALID;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_BID;
  wire axi_intcon_ctrl_to_s00_couplers_BREADY;
  wire [1:0]axi_intcon_ctrl_to_s00_couplers_BRESP;
  wire axi_intcon_ctrl_to_s00_couplers_BVALID;
  wire [31:0]axi_intcon_ctrl_to_s00_couplers_RDATA;
  wire [0:0]axi_intcon_ctrl_to_s00_couplers_RID;
  wire axi_intcon_ctrl_to_s00_couplers_RLAST;
  wire axi_intcon_ctrl_to_s00_couplers_RREADY;
  wire [1:0]axi_intcon_ctrl_to_s00_couplers_RRESP;
  wire axi_intcon_ctrl_to_s00_couplers_RVALID;
  wire [31:0]axi_intcon_ctrl_to_s00_couplers_WDATA;
  wire axi_intcon_ctrl_to_s00_couplers_WLAST;
  wire axi_intcon_ctrl_to_s00_couplers_WREADY;
  wire [3:0]axi_intcon_ctrl_to_s00_couplers_WSTRB;
  wire axi_intcon_ctrl_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_intcon_ctrl_ARADDR;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_ARREADY;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_ARVALID;
  wire [31:0]m00_couplers_to_axi_intcon_ctrl_AWADDR;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_AWREADY;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_AWVALID;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_BREADY;
  wire [1:0]m00_couplers_to_axi_intcon_ctrl_BRESP;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_BVALID;
  wire [31:0]m00_couplers_to_axi_intcon_ctrl_RDATA;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_RREADY;
  wire [1:0]m00_couplers_to_axi_intcon_ctrl_RRESP;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_RVALID;
  wire [31:0]m00_couplers_to_axi_intcon_ctrl_WDATA;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_WREADY;
  wire [0:0]m00_couplers_to_axi_intcon_ctrl_WVALID;
  wire [9:0]m01_couplers_to_axi_intcon_ctrl_ARADDR;
  wire m01_couplers_to_axi_intcon_ctrl_ARREADY;
  wire m01_couplers_to_axi_intcon_ctrl_ARVALID;
  wire [9:0]m01_couplers_to_axi_intcon_ctrl_AWADDR;
  wire m01_couplers_to_axi_intcon_ctrl_AWREADY;
  wire m01_couplers_to_axi_intcon_ctrl_AWVALID;
  wire m01_couplers_to_axi_intcon_ctrl_BREADY;
  wire [1:0]m01_couplers_to_axi_intcon_ctrl_BRESP;
  wire m01_couplers_to_axi_intcon_ctrl_BVALID;
  wire [31:0]m01_couplers_to_axi_intcon_ctrl_RDATA;
  wire m01_couplers_to_axi_intcon_ctrl_RREADY;
  wire [1:0]m01_couplers_to_axi_intcon_ctrl_RRESP;
  wire m01_couplers_to_axi_intcon_ctrl_RVALID;
  wire [31:0]m01_couplers_to_axi_intcon_ctrl_WDATA;
  wire m01_couplers_to_axi_intcon_ctrl_WREADY;
  wire m01_couplers_to_axi_intcon_ctrl_WVALID;
  wire [10:0]m02_couplers_to_axi_intcon_ctrl_ARADDR;
  wire m02_couplers_to_axi_intcon_ctrl_ARREADY;
  wire m02_couplers_to_axi_intcon_ctrl_ARVALID;
  wire [10:0]m02_couplers_to_axi_intcon_ctrl_AWADDR;
  wire m02_couplers_to_axi_intcon_ctrl_AWREADY;
  wire m02_couplers_to_axi_intcon_ctrl_AWVALID;
  wire m02_couplers_to_axi_intcon_ctrl_BREADY;
  wire [1:0]m02_couplers_to_axi_intcon_ctrl_BRESP;
  wire m02_couplers_to_axi_intcon_ctrl_BVALID;
  wire [31:0]m02_couplers_to_axi_intcon_ctrl_RDATA;
  wire m02_couplers_to_axi_intcon_ctrl_RREADY;
  wire [1:0]m02_couplers_to_axi_intcon_ctrl_RRESP;
  wire m02_couplers_to_axi_intcon_ctrl_RVALID;
  wire [31:0]m02_couplers_to_axi_intcon_ctrl_WDATA;
  wire m02_couplers_to_axi_intcon_ctrl_WREADY;
  wire [3:0]m02_couplers_to_axi_intcon_ctrl_WSTRB;
  wire m02_couplers_to_axi_intcon_ctrl_WVALID;
  wire [8:0]m03_couplers_to_axi_intcon_ctrl_ARADDR;
  wire m03_couplers_to_axi_intcon_ctrl_ARREADY;
  wire m03_couplers_to_axi_intcon_ctrl_ARVALID;
  wire [8:0]m03_couplers_to_axi_intcon_ctrl_AWADDR;
  wire m03_couplers_to_axi_intcon_ctrl_AWREADY;
  wire m03_couplers_to_axi_intcon_ctrl_AWVALID;
  wire m03_couplers_to_axi_intcon_ctrl_BREADY;
  wire [1:0]m03_couplers_to_axi_intcon_ctrl_BRESP;
  wire m03_couplers_to_axi_intcon_ctrl_BVALID;
  wire [31:0]m03_couplers_to_axi_intcon_ctrl_RDATA;
  wire m03_couplers_to_axi_intcon_ctrl_RREADY;
  wire [1:0]m03_couplers_to_axi_intcon_ctrl_RRESP;
  wire m03_couplers_to_axi_intcon_ctrl_RVALID;
  wire [31:0]m03_couplers_to_axi_intcon_ctrl_WDATA;
  wire m03_couplers_to_axi_intcon_ctrl_WREADY;
  wire [3:0]m03_couplers_to_axi_intcon_ctrl_WSTRB;
  wire m03_couplers_to_axi_intcon_ctrl_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [11:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [15:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_intcon_ctrl_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_intcon_ctrl_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_intcon_ctrl_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_intcon_ctrl_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_intcon_ctrl_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_intcon_ctrl_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_intcon_ctrl_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_intcon_ctrl_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[9:0] = m01_couplers_to_axi_intcon_ctrl_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_intcon_ctrl_ARVALID;
  assign M01_AXI_awaddr[9:0] = m01_couplers_to_axi_intcon_ctrl_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_intcon_ctrl_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_intcon_ctrl_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_intcon_ctrl_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_intcon_ctrl_WDATA;
  assign M01_AXI_wvalid = m01_couplers_to_axi_intcon_ctrl_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[10:0] = m02_couplers_to_axi_intcon_ctrl_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_intcon_ctrl_ARVALID;
  assign M02_AXI_awaddr[10:0] = m02_couplers_to_axi_intcon_ctrl_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_intcon_ctrl_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_intcon_ctrl_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_intcon_ctrl_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_intcon_ctrl_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_intcon_ctrl_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_intcon_ctrl_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[8:0] = m03_couplers_to_axi_intcon_ctrl_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_intcon_ctrl_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_axi_intcon_ctrl_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_intcon_ctrl_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_intcon_ctrl_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_intcon_ctrl_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_intcon_ctrl_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_intcon_ctrl_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_intcon_ctrl_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_intcon_ctrl_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_intcon_ctrl_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_intcon_ctrl_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_intcon_ctrl_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_intcon_ctrl_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_intcon_ctrl_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_intcon_ctrl_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_intcon_ctrl_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_intcon_ctrl_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_intcon_ctrl_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_intcon_ctrl_to_s00_couplers_WREADY;
  assign axi_intcon_ctrl_ACLK_net = ACLK;
  assign axi_intcon_ctrl_ARESETN_net = ARESETN;
  assign axi_intcon_ctrl_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_intcon_ctrl_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_intcon_ctrl_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_intcon_ctrl_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_intcon_ctrl_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_intcon_ctrl_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_intcon_ctrl_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_intcon_ctrl_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_intcon_ctrl_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_intcon_ctrl_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_intcon_ctrl_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_intcon_ctrl_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_intcon_ctrl_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_intcon_ctrl_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_intcon_ctrl_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_intcon_ctrl_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_intcon_ctrl_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_intcon_ctrl_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_intcon_ctrl_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_intcon_ctrl_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_intcon_ctrl_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_intcon_ctrl_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_intcon_ctrl_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_intcon_ctrl_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_intcon_ctrl_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_intcon_ctrl_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_intcon_ctrl_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_intcon_ctrl_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_intcon_ctrl_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_intcon_ctrl_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_intcon_ctrl_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_intcon_ctrl_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_intcon_ctrl_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_intcon_ctrl_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_intcon_ctrl_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_intcon_ctrl_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_intcon_ctrl_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_intcon_ctrl_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_intcon_ctrl_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_intcon_ctrl_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_intcon_ctrl_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_intcon_ctrl_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_intcon_ctrl_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_intcon_ctrl_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_intcon_ctrl_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_intcon_ctrl_WREADY = M03_AXI_wready;
  m00_couplers_imp_1L8DRQL m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_intcon_ctrl_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_intcon_ctrl_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_intcon_ctrl_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_intcon_ctrl_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_intcon_ctrl_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_intcon_ctrl_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_intcon_ctrl_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_intcon_ctrl_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_intcon_ctrl_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_intcon_ctrl_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_intcon_ctrl_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_intcon_ctrl_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_intcon_ctrl_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_intcon_ctrl_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_intcon_ctrl_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_intcon_ctrl_WVALID),
        .S_ACLK(axi_intcon_ctrl_ACLK_net),
        .S_ARESETN(axi_intcon_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_96K7YK m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_intcon_ctrl_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_intcon_ctrl_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_intcon_ctrl_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_intcon_ctrl_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_intcon_ctrl_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_intcon_ctrl_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_intcon_ctrl_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_intcon_ctrl_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_intcon_ctrl_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_intcon_ctrl_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_intcon_ctrl_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_intcon_ctrl_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_intcon_ctrl_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_intcon_ctrl_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_intcon_ctrl_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_intcon_ctrl_WVALID),
        .S_ACLK(axi_intcon_ctrl_ACLK_net),
        .S_ARESETN(axi_intcon_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1KHDIY6 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_intcon_ctrl_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_intcon_ctrl_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_intcon_ctrl_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_intcon_ctrl_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_intcon_ctrl_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_intcon_ctrl_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_intcon_ctrl_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_intcon_ctrl_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_intcon_ctrl_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_intcon_ctrl_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_intcon_ctrl_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_intcon_ctrl_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_intcon_ctrl_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_intcon_ctrl_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_intcon_ctrl_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_intcon_ctrl_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_intcon_ctrl_WVALID),
        .S_ACLK(axi_intcon_ctrl_ACLK_net),
        .S_ARESETN(axi_intcon_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_A780R3 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_intcon_ctrl_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_intcon_ctrl_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_intcon_ctrl_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_intcon_ctrl_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_intcon_ctrl_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_intcon_ctrl_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_intcon_ctrl_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_intcon_ctrl_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_intcon_ctrl_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_intcon_ctrl_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_intcon_ctrl_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_intcon_ctrl_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_intcon_ctrl_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_intcon_ctrl_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_intcon_ctrl_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_intcon_ctrl_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_intcon_ctrl_WVALID),
        .S_ACLK(axi_intcon_ctrl_ACLK_net),
        .S_ARESETN(axi_intcon_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_FE7GMN s00_couplers
       (.M_ACLK(axi_intcon_ctrl_ACLK_net),
        .M_ARESETN(axi_intcon_ctrl_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_intcon_ctrl_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_intcon_ctrl_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_intcon_ctrl_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_intcon_ctrl_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_intcon_ctrl_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_intcon_ctrl_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_intcon_ctrl_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_intcon_ctrl_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_intcon_ctrl_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_intcon_ctrl_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_intcon_ctrl_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_intcon_ctrl_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_intcon_ctrl_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_intcon_ctrl_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_intcon_ctrl_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_intcon_ctrl_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_intcon_ctrl_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_intcon_ctrl_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_intcon_ctrl_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_intcon_ctrl_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_intcon_ctrl_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_intcon_ctrl_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_intcon_ctrl_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_intcon_ctrl_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_intcon_ctrl_to_s00_couplers_BID),
        .S_AXI_bready(axi_intcon_ctrl_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_intcon_ctrl_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_intcon_ctrl_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_intcon_ctrl_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_intcon_ctrl_to_s00_couplers_RID),
        .S_AXI_rlast(axi_intcon_ctrl_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_intcon_ctrl_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_intcon_ctrl_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_intcon_ctrl_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_intcon_ctrl_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_intcon_ctrl_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_intcon_ctrl_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_intcon_ctrl_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_intcon_ctrl_to_s00_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(axi_intcon_ctrl_ACLK_net),
        .aresetn(axi_intcon_ctrl_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arprot,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arlen,
    S03_AXI_arprot,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arprot;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  output [127:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [31:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [7:0]S03_AXI_arlen;
  input [2:0]S03_AXI_arprot;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  input [31:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [31:0]S03_AXI_rdata;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [31:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire axi_mpmc_ACLK_net;
  wire axi_mpmc_ARESETN_net;
  wire [31:0]axi_mpmc_to_s00_couplers_ARADDR;
  wire [1:0]axi_mpmc_to_s00_couplers_ARBURST;
  wire [3:0]axi_mpmc_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mpmc_to_s00_couplers_ARLEN;
  wire [2:0]axi_mpmc_to_s00_couplers_ARPROT;
  wire axi_mpmc_to_s00_couplers_ARREADY;
  wire [2:0]axi_mpmc_to_s00_couplers_ARSIZE;
  wire axi_mpmc_to_s00_couplers_ARVALID;
  wire [31:0]axi_mpmc_to_s00_couplers_RDATA;
  wire axi_mpmc_to_s00_couplers_RLAST;
  wire axi_mpmc_to_s00_couplers_RREADY;
  wire [1:0]axi_mpmc_to_s00_couplers_RRESP;
  wire axi_mpmc_to_s00_couplers_RVALID;
  wire [31:0]axi_mpmc_to_s01_couplers_AWADDR;
  wire [1:0]axi_mpmc_to_s01_couplers_AWBURST;
  wire [3:0]axi_mpmc_to_s01_couplers_AWCACHE;
  wire [7:0]axi_mpmc_to_s01_couplers_AWLEN;
  wire [0:0]axi_mpmc_to_s01_couplers_AWLOCK;
  wire [2:0]axi_mpmc_to_s01_couplers_AWPROT;
  wire [3:0]axi_mpmc_to_s01_couplers_AWQOS;
  wire axi_mpmc_to_s01_couplers_AWREADY;
  wire [3:0]axi_mpmc_to_s01_couplers_AWREGION;
  wire [2:0]axi_mpmc_to_s01_couplers_AWSIZE;
  wire axi_mpmc_to_s01_couplers_AWVALID;
  wire axi_mpmc_to_s01_couplers_BREADY;
  wire [1:0]axi_mpmc_to_s01_couplers_BRESP;
  wire axi_mpmc_to_s01_couplers_BVALID;
  wire [31:0]axi_mpmc_to_s01_couplers_WDATA;
  wire axi_mpmc_to_s01_couplers_WLAST;
  wire axi_mpmc_to_s01_couplers_WREADY;
  wire [3:0]axi_mpmc_to_s01_couplers_WSTRB;
  wire axi_mpmc_to_s01_couplers_WVALID;
  wire [31:0]axi_mpmc_to_s02_couplers_ARADDR;
  wire [1:0]axi_mpmc_to_s02_couplers_ARBURST;
  wire [3:0]axi_mpmc_to_s02_couplers_ARCACHE;
  wire [7:0]axi_mpmc_to_s02_couplers_ARLEN;
  wire [2:0]axi_mpmc_to_s02_couplers_ARPROT;
  wire axi_mpmc_to_s02_couplers_ARREADY;
  wire [2:0]axi_mpmc_to_s02_couplers_ARSIZE;
  wire axi_mpmc_to_s02_couplers_ARVALID;
  wire [127:0]axi_mpmc_to_s02_couplers_RDATA;
  wire axi_mpmc_to_s02_couplers_RLAST;
  wire axi_mpmc_to_s02_couplers_RREADY;
  wire [1:0]axi_mpmc_to_s02_couplers_RRESP;
  wire axi_mpmc_to_s02_couplers_RVALID;
  wire [31:0]axi_mpmc_to_s03_couplers_ARADDR;
  wire [1:0]axi_mpmc_to_s03_couplers_ARBURST;
  wire [3:0]axi_mpmc_to_s03_couplers_ARCACHE;
  wire [7:0]axi_mpmc_to_s03_couplers_ARLEN;
  wire [2:0]axi_mpmc_to_s03_couplers_ARPROT;
  wire axi_mpmc_to_s03_couplers_ARREADY;
  wire [2:0]axi_mpmc_to_s03_couplers_ARSIZE;
  wire axi_mpmc_to_s03_couplers_ARVALID;
  wire [31:0]axi_mpmc_to_s03_couplers_AWADDR;
  wire [1:0]axi_mpmc_to_s03_couplers_AWBURST;
  wire [3:0]axi_mpmc_to_s03_couplers_AWCACHE;
  wire [7:0]axi_mpmc_to_s03_couplers_AWLEN;
  wire [2:0]axi_mpmc_to_s03_couplers_AWPROT;
  wire axi_mpmc_to_s03_couplers_AWREADY;
  wire [2:0]axi_mpmc_to_s03_couplers_AWSIZE;
  wire axi_mpmc_to_s03_couplers_AWVALID;
  wire axi_mpmc_to_s03_couplers_BREADY;
  wire [1:0]axi_mpmc_to_s03_couplers_BRESP;
  wire axi_mpmc_to_s03_couplers_BVALID;
  wire [31:0]axi_mpmc_to_s03_couplers_RDATA;
  wire axi_mpmc_to_s03_couplers_RLAST;
  wire axi_mpmc_to_s03_couplers_RREADY;
  wire [1:0]axi_mpmc_to_s03_couplers_RRESP;
  wire axi_mpmc_to_s03_couplers_RVALID;
  wire [31:0]axi_mpmc_to_s03_couplers_WDATA;
  wire axi_mpmc_to_s03_couplers_WLAST;
  wire axi_mpmc_to_s03_couplers_WREADY;
  wire [3:0]axi_mpmc_to_s03_couplers_WSTRB;
  wire axi_mpmc_to_s03_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mpmc_ARADDR;
  wire [1:0]m00_couplers_to_axi_mpmc_ARBURST;
  wire [3:0]m00_couplers_to_axi_mpmc_ARCACHE;
  wire [1:0]m00_couplers_to_axi_mpmc_ARID;
  wire [7:0]m00_couplers_to_axi_mpmc_ARLEN;
  wire [0:0]m00_couplers_to_axi_mpmc_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mpmc_ARPROT;
  wire [3:0]m00_couplers_to_axi_mpmc_ARQOS;
  wire [0:0]m00_couplers_to_axi_mpmc_ARREADY;
  wire [2:0]m00_couplers_to_axi_mpmc_ARSIZE;
  wire [0:0]m00_couplers_to_axi_mpmc_ARVALID;
  wire [31:0]m00_couplers_to_axi_mpmc_AWADDR;
  wire [1:0]m00_couplers_to_axi_mpmc_AWBURST;
  wire [3:0]m00_couplers_to_axi_mpmc_AWCACHE;
  wire [1:0]m00_couplers_to_axi_mpmc_AWID;
  wire [7:0]m00_couplers_to_axi_mpmc_AWLEN;
  wire [0:0]m00_couplers_to_axi_mpmc_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mpmc_AWPROT;
  wire [3:0]m00_couplers_to_axi_mpmc_AWQOS;
  wire [0:0]m00_couplers_to_axi_mpmc_AWREADY;
  wire [2:0]m00_couplers_to_axi_mpmc_AWSIZE;
  wire [0:0]m00_couplers_to_axi_mpmc_AWVALID;
  wire [1:0]m00_couplers_to_axi_mpmc_BID;
  wire [0:0]m00_couplers_to_axi_mpmc_BREADY;
  wire [1:0]m00_couplers_to_axi_mpmc_BRESP;
  wire [0:0]m00_couplers_to_axi_mpmc_BVALID;
  wire [127:0]m00_couplers_to_axi_mpmc_RDATA;
  wire [1:0]m00_couplers_to_axi_mpmc_RID;
  wire [0:0]m00_couplers_to_axi_mpmc_RLAST;
  wire [0:0]m00_couplers_to_axi_mpmc_RREADY;
  wire [1:0]m00_couplers_to_axi_mpmc_RRESP;
  wire [0:0]m00_couplers_to_axi_mpmc_RVALID;
  wire [127:0]m00_couplers_to_axi_mpmc_WDATA;
  wire [0:0]m00_couplers_to_axi_mpmc_WLAST;
  wire [0:0]m00_couplers_to_axi_mpmc_WREADY;
  wire [15:0]m00_couplers_to_axi_mpmc_WSTRB;
  wire [0:0]m00_couplers_to_axi_mpmc_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [15:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [383:256]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [511:384]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [127:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [15:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [511:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mpmc_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mpmc_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mpmc_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_mpmc_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_mpmc_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_mpmc_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mpmc_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mpmc_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mpmc_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_mpmc_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mpmc_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mpmc_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mpmc_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_mpmc_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_mpmc_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_mpmc_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mpmc_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mpmc_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mpmc_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_mpmc_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_mpmc_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_mpmc_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_mpmc_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_mpmc_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_mpmc_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_mpmc_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mpmc_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = axi_mpmc_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mpmc_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mpmc_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mpmc_to_s00_couplers_RVALID;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_awready = axi_mpmc_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_mpmc_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_mpmc_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_mpmc_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = axi_mpmc_to_s02_couplers_ARREADY;
  assign S02_AXI_rdata[127:0] = axi_mpmc_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_mpmc_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_mpmc_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_mpmc_to_s02_couplers_RVALID;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready = axi_mpmc_to_s03_couplers_ARREADY;
  assign S03_AXI_awready = axi_mpmc_to_s03_couplers_AWREADY;
  assign S03_AXI_bresp[1:0] = axi_mpmc_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_mpmc_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[31:0] = axi_mpmc_to_s03_couplers_RDATA;
  assign S03_AXI_rlast = axi_mpmc_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = axi_mpmc_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid = axi_mpmc_to_s03_couplers_RVALID;
  assign S03_AXI_wready = axi_mpmc_to_s03_couplers_WREADY;
  assign axi_mpmc_ACLK_net = ACLK;
  assign axi_mpmc_ARESETN_net = ARESETN;
  assign axi_mpmc_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mpmc_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mpmc_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mpmc_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mpmc_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mpmc_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mpmc_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mpmc_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mpmc_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_mpmc_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_mpmc_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_mpmc_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_mpmc_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi_mpmc_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_mpmc_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_mpmc_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_mpmc_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_mpmc_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_mpmc_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_mpmc_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_mpmc_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_mpmc_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_mpmc_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_mpmc_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_mpmc_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_mpmc_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_mpmc_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_mpmc_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_mpmc_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_mpmc_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_mpmc_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_mpmc_to_s03_couplers_ARADDR = S03_AXI_araddr[31:0];
  assign axi_mpmc_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign axi_mpmc_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign axi_mpmc_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign axi_mpmc_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign axi_mpmc_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign axi_mpmc_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign axi_mpmc_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
  assign axi_mpmc_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign axi_mpmc_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign axi_mpmc_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_mpmc_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign axi_mpmc_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign axi_mpmc_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_mpmc_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_mpmc_to_s03_couplers_RREADY = S03_AXI_rready;
  assign axi_mpmc_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign axi_mpmc_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_mpmc_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign axi_mpmc_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign m00_couplers_to_axi_mpmc_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_mpmc_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_mpmc_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi_mpmc_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mpmc_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_mpmc_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_mpmc_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi_mpmc_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_mpmc_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mpmc_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_mpmc_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_1XNJ015 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mpmc_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mpmc_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mpmc_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mpmc_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mpmc_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mpmc_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mpmc_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mpmc_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mpmc_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mpmc_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mpmc_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mpmc_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mpmc_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mpmc_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mpmc_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mpmc_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mpmc_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mpmc_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mpmc_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mpmc_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mpmc_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mpmc_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mpmc_BID),
        .M_AXI_bready(m00_couplers_to_axi_mpmc_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mpmc_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mpmc_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mpmc_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mpmc_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mpmc_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mpmc_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mpmc_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mpmc_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mpmc_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_mpmc_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mpmc_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mpmc_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mpmc_WVALID),
        .S_ACLK(axi_mpmc_ACLK_net),
        .S_ARESETN(axi_mpmc_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_M5LEZ s00_couplers
       (.M_ACLK(axi_mpmc_ACLK_net),
        .M_ARESETN(axi_mpmc_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mpmc_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mpmc_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mpmc_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mpmc_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mpmc_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mpmc_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mpmc_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mpmc_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_mpmc_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mpmc_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mpmc_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mpmc_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mpmc_to_s00_couplers_RVALID));
  s01_couplers_imp_1TVA7GQ s01_couplers
       (.M_ACLK(axi_mpmc_ACLK_net),
        .M_ARESETN(axi_mpmc_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(axi_mpmc_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_mpmc_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_mpmc_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_mpmc_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_mpmc_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_mpmc_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_mpmc_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_mpmc_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_mpmc_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_mpmc_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mpmc_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_mpmc_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_mpmc_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_mpmc_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_mpmc_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_mpmc_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_mpmc_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_mpmc_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_mpmc_to_s01_couplers_WVALID));
  s02_couplers_imp_26T1D4 s02_couplers
       (.M_ACLK(axi_mpmc_ACLK_net),
        .M_ARESETN(axi_mpmc_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_mpmc_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_mpmc_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_mpmc_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_mpmc_to_s02_couplers_ARLEN),
        .S_AXI_arprot(axi_mpmc_to_s02_couplers_ARPROT),
        .S_AXI_arready(axi_mpmc_to_s02_couplers_ARREADY),
        .S_AXI_arsize(axi_mpmc_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mpmc_to_s02_couplers_ARVALID),
        .S_AXI_rdata(axi_mpmc_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_mpmc_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_mpmc_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_mpmc_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_mpmc_to_s02_couplers_RVALID));
  s03_couplers_imp_1SKAHU1 s03_couplers
       (.M_ACLK(axi_mpmc_ACLK_net),
        .M_ARESETN(axi_mpmc_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(axi_mpmc_to_s03_couplers_ARADDR),
        .S_AXI_arburst(axi_mpmc_to_s03_couplers_ARBURST),
        .S_AXI_arcache(axi_mpmc_to_s03_couplers_ARCACHE),
        .S_AXI_arlen(axi_mpmc_to_s03_couplers_ARLEN),
        .S_AXI_arprot(axi_mpmc_to_s03_couplers_ARPROT),
        .S_AXI_arready(axi_mpmc_to_s03_couplers_ARREADY),
        .S_AXI_arsize(axi_mpmc_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mpmc_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(axi_mpmc_to_s03_couplers_AWADDR),
        .S_AXI_awburst(axi_mpmc_to_s03_couplers_AWBURST),
        .S_AXI_awcache(axi_mpmc_to_s03_couplers_AWCACHE),
        .S_AXI_awlen(axi_mpmc_to_s03_couplers_AWLEN),
        .S_AXI_awprot(axi_mpmc_to_s03_couplers_AWPROT),
        .S_AXI_awready(axi_mpmc_to_s03_couplers_AWREADY),
        .S_AXI_awsize(axi_mpmc_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mpmc_to_s03_couplers_AWVALID),
        .S_AXI_bready(axi_mpmc_to_s03_couplers_BREADY),
        .S_AXI_bresp(axi_mpmc_to_s03_couplers_BRESP),
        .S_AXI_bvalid(axi_mpmc_to_s03_couplers_BVALID),
        .S_AXI_rdata(axi_mpmc_to_s03_couplers_RDATA),
        .S_AXI_rlast(axi_mpmc_to_s03_couplers_RLAST),
        .S_AXI_rready(axi_mpmc_to_s03_couplers_RREADY),
        .S_AXI_rresp(axi_mpmc_to_s03_couplers_RRESP),
        .S_AXI_rvalid(axi_mpmc_to_s03_couplers_RVALID),
        .S_AXI_wdata(axi_mpmc_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_mpmc_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_mpmc_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_mpmc_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_mpmc_to_s03_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_mpmc_ACLK_net),
        .aresetn(axi_mpmc_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[1],s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,1'b1,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,1'b0,1'b0,s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,1'b0,s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[2],s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,s01_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b0}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,1'b0,s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,1'b0,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[5:4],s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[2],s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[255:128],s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[1],s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[3:2],s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[1],s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,1'b0,s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[2],s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,1'b0,s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module m00_couplers_imp_1L8DRQL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_1XNJ015
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [127:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [127:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [15:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_96K7YK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [9:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [9:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [9:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [9:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[9:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[9:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[9:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[9:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_1KHDIY6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [10:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [10:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[10:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[10:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_A780R3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m03_couplers_ARADDR;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [8:0]auto_cc_to_m03_couplers_AWADDR;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_FE7GMN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [0:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_M5LEZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARQOS;
  wire auto_us_cc_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARSIZE;
  wire auto_us_cc_df_to_s00_couplers_ARVALID;
  wire [127:0]auto_us_cc_df_to_s00_couplers_RDATA;
  wire auto_us_cc_df_to_s00_couplers_RLAST;
  wire auto_us_cc_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s00_couplers_RRESP;
  wire auto_us_cc_df_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_cc_df_ARLEN;
  wire [2:0]s00_couplers_to_auto_us_cc_df_ARPROT;
  wire s00_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_cc_df_ARSIZE;
  wire s00_couplers_to_auto_us_cc_df_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_cc_df_RDATA;
  wire s00_couplers_to_auto_us_cc_df_RLAST;
  wire s00_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s00_couplers_to_auto_us_cc_df_RRESP;
  wire s00_couplers_to_auto_us_cc_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_us_cc_df_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_cc_df_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_cc_df_RVALID;
  assign auto_us_cc_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_cc_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  design_1_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_us_cc_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s00_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_cc_df_RVALID));
endmodule

module s01_couplers_imp_1TVA7GQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWQOS;
  wire auto_us_cc_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWSIZE;
  wire auto_us_cc_df_to_s01_couplers_AWVALID;
  wire auto_us_cc_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_BRESP;
  wire auto_us_cc_df_to_s01_couplers_BVALID;
  wire [127:0]auto_us_cc_df_to_s01_couplers_WDATA;
  wire auto_us_cc_df_to_s01_couplers_WLAST;
  wire auto_us_cc_df_to_s01_couplers_WREADY;
  wire [15:0]auto_us_cc_df_to_s01_couplers_WSTRB;
  wire auto_us_cc_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s01_couplers_to_auto_us_cc_df_AWLEN;
  wire [0:0]s01_couplers_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_couplers_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWQOS;
  wire s01_couplers_to_auto_us_cc_df_AWREADY;
  wire [3:0]s01_couplers_to_auto_us_cc_df_AWREGION;
  wire [2:0]s01_couplers_to_auto_us_cc_df_AWSIZE;
  wire s01_couplers_to_auto_us_cc_df_AWVALID;
  wire s01_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_couplers_to_auto_us_cc_df_BRESP;
  wire s01_couplers_to_auto_us_cc_df_BVALID;
  wire [31:0]s01_couplers_to_auto_us_cc_df_WDATA;
  wire s01_couplers_to_auto_us_cc_df_WLAST;
  wire s01_couplers_to_auto_us_cc_df_WREADY;
  wire [3:0]s01_couplers_to_auto_us_cc_df_WSTRB;
  wire s01_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s01_couplers_BREADY;
  assign M_AXI_wdata[127:0] = auto_us_cc_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_cc_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_cc_df_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_cc_df_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  design_1_auto_us_cc_df_1 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_us_cc_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s01_couplers_BVALID),
        .m_axi_wdata(auto_us_cc_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s01_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s01_couplers_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s01_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_cc_df_WVALID));
endmodule

module s02_couplers_imp_26T1D4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s02_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s02_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s02_data_fifo_ARCACHE;
  wire [7:0]auto_cc_to_s02_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s02_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s02_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s02_data_fifo_ARQOS;
  wire auto_cc_to_s02_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s02_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s02_data_fifo_ARSIZE;
  wire auto_cc_to_s02_data_fifo_ARVALID;
  wire [127:0]auto_cc_to_s02_data_fifo_RDATA;
  wire auto_cc_to_s02_data_fifo_RLAST;
  wire auto_cc_to_s02_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s02_data_fifo_RRESP;
  wire auto_cc_to_s02_data_fifo_RVALID;
  wire [31:0]s02_couplers_to_auto_cc_ARADDR;
  wire [1:0]s02_couplers_to_auto_cc_ARBURST;
  wire [3:0]s02_couplers_to_auto_cc_ARCACHE;
  wire [7:0]s02_couplers_to_auto_cc_ARLEN;
  wire [2:0]s02_couplers_to_auto_cc_ARPROT;
  wire s02_couplers_to_auto_cc_ARREADY;
  wire [2:0]s02_couplers_to_auto_cc_ARSIZE;
  wire s02_couplers_to_auto_cc_ARVALID;
  wire [127:0]s02_couplers_to_auto_cc_RDATA;
  wire s02_couplers_to_auto_cc_RLAST;
  wire s02_couplers_to_auto_cc_RREADY;
  wire [1:0]s02_couplers_to_auto_cc_RRESP;
  wire s02_couplers_to_auto_cc_RVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_ARADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_ARBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_ARLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_ARLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARQOS;
  wire s02_data_fifo_to_s02_couplers_ARREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARSIZE;
  wire s02_data_fifo_to_s02_couplers_ARVALID;
  wire [127:0]s02_data_fifo_to_s02_couplers_RDATA;
  wire s02_data_fifo_to_s02_couplers_RLAST;
  wire s02_data_fifo_to_s02_couplers_RREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_RRESP;
  wire s02_data_fifo_to_s02_couplers_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s02_data_fifo_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_data_fifo_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_data_fifo_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_data_fifo_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_data_fifo_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_data_fifo_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_data_fifo_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_data_fifo_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_data_fifo_to_s02_couplers_ARVALID;
  assign M_AXI_rready = s02_data_fifo_to_s02_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_rdata[127:0] = s02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rlast = s02_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_cc_RVALID;
  assign s02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s02_data_fifo_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_data_fifo_to_s02_couplers_RDATA = M_AXI_rdata[127:0];
  assign s02_data_fifo_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_data_fifo_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_data_fifo_to_s02_couplers_RVALID = M_AXI_rvalid;
  design_1_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s02_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s02_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s02_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s02_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s02_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s02_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s02_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s02_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s02_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s02_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s02_data_fifo_ARVALID),
        .m_axi_rdata(auto_cc_to_s02_data_fifo_RDATA),
        .m_axi_rlast(auto_cc_to_s02_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s02_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s02_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s02_data_fifo_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s02_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s02_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_cc_ARVALID),
        .s_axi_rdata(s02_couplers_to_auto_cc_RDATA),
        .s_axi_rlast(s02_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_cc_RVALID));
  design_1_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s02_data_fifo_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_data_fifo_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_data_fifo_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_data_fifo_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_data_fifo_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_data_fifo_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_data_fifo_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_data_fifo_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_data_fifo_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_data_fifo_to_s02_couplers_ARVALID),
        .m_axi_rdata(s02_data_fifo_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_data_fifo_to_s02_couplers_RLAST),
        .m_axi_rready(s02_data_fifo_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_data_fifo_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_data_fifo_to_s02_couplers_RVALID),
        .s_axi_araddr(auto_cc_to_s02_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s02_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s02_data_fifo_ARCACHE),
        .s_axi_arlen(auto_cc_to_s02_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s02_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s02_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s02_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s02_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s02_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s02_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_cc_to_s02_data_fifo_ARVALID),
        .s_axi_rdata(auto_cc_to_s02_data_fifo_RDATA),
        .s_axi_rlast(auto_cc_to_s02_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s02_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s02_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s02_data_fifo_RVALID));
endmodule

module s03_couplers_imp_1SKAHU1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s03_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARQOS;
  wire auto_us_cc_df_to_s03_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARSIZE;
  wire auto_us_cc_df_to_s03_couplers_ARVALID;
  wire [31:0]auto_us_cc_df_to_s03_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWQOS;
  wire auto_us_cc_df_to_s03_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWSIZE;
  wire auto_us_cc_df_to_s03_couplers_AWVALID;
  wire auto_us_cc_df_to_s03_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_BRESP;
  wire auto_us_cc_df_to_s03_couplers_BVALID;
  wire [127:0]auto_us_cc_df_to_s03_couplers_RDATA;
  wire auto_us_cc_df_to_s03_couplers_RLAST;
  wire auto_us_cc_df_to_s03_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_RRESP;
  wire auto_us_cc_df_to_s03_couplers_RVALID;
  wire [127:0]auto_us_cc_df_to_s03_couplers_WDATA;
  wire auto_us_cc_df_to_s03_couplers_WLAST;
  wire auto_us_cc_df_to_s03_couplers_WREADY;
  wire [15:0]auto_us_cc_df_to_s03_couplers_WSTRB;
  wire auto_us_cc_df_to_s03_couplers_WVALID;
  wire [31:0]s03_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s03_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s03_couplers_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s03_couplers_to_auto_us_cc_df_ARLEN;
  wire [2:0]s03_couplers_to_auto_us_cc_df_ARPROT;
  wire s03_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s03_couplers_to_auto_us_cc_df_ARSIZE;
  wire s03_couplers_to_auto_us_cc_df_ARVALID;
  wire [31:0]s03_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s03_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s03_couplers_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s03_couplers_to_auto_us_cc_df_AWLEN;
  wire [2:0]s03_couplers_to_auto_us_cc_df_AWPROT;
  wire s03_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s03_couplers_to_auto_us_cc_df_AWSIZE;
  wire s03_couplers_to_auto_us_cc_df_AWVALID;
  wire s03_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s03_couplers_to_auto_us_cc_df_BRESP;
  wire s03_couplers_to_auto_us_cc_df_BVALID;
  wire [31:0]s03_couplers_to_auto_us_cc_df_RDATA;
  wire s03_couplers_to_auto_us_cc_df_RLAST;
  wire s03_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s03_couplers_to_auto_us_cc_df_RRESP;
  wire s03_couplers_to_auto_us_cc_df_RVALID;
  wire [31:0]s03_couplers_to_auto_us_cc_df_WDATA;
  wire s03_couplers_to_auto_us_cc_df_WLAST;
  wire s03_couplers_to_auto_us_cc_df_WREADY;
  wire [3:0]s03_couplers_to_auto_us_cc_df_WSTRB;
  wire s03_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s03_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s03_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s03_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_us_cc_df_to_s03_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_cc_df_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_awready = s03_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bresp[1:0] = s03_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_rdata[31:0] = s03_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rlast = s03_couplers_to_auto_us_cc_df_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_auto_us_cc_df_RVALID;
  assign S_AXI_wready = s03_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s03_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s03_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_cc_df_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[31:0];
  assign s03_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[31:0];
  assign s03_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s03_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  assign s03_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s03_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  design_1_auto_us_cc_df_2 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s03_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s03_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s03_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s03_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s03_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s03_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s03_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s03_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s03_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s03_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s03_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s03_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s03_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s03_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s03_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s03_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s03_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s03_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s03_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s03_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s03_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s03_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s03_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s03_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s03_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s03_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s03_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s03_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s03_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s03_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s03_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s03_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s03_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s03_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s03_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s03_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s03_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s03_couplers_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s03_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s03_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s03_couplers_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s03_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s03_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s03_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s03_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s03_couplers_to_auto_us_cc_df_WVALID));
endmodule
