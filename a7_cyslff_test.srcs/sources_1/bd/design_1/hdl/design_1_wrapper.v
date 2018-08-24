//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Aug 12 23:10:58 2018
//Host        : wats0n-miair running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input ACLK;
  input ARESETN;
  output [31:0]M_AXIS_MM2S_0_tdata;
  output [3:0]M_AXIS_MM2S_0_tkeep;
  output M_AXIS_MM2S_0_tlast;
  input M_AXIS_MM2S_0_tready;
  output M_AXIS_MM2S_0_tvalid;
  input [31:0]S_AXIS_S2MM_0_tdata;
  input [3:0]S_AXIS_S2MM_0_tkeep;
  input S_AXIS_S2MM_0_tlast;
  output S_AXIS_S2MM_0_tready;
  input S_AXIS_S2MM_0_tvalid;
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
  output [31:0]axis_pg_tdata;
  output [3:0]axis_pg_tkeep;
  output axis_pg_tlast;
  input axis_pg_tready;
  output axis_pg_tvalid;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  input ddr3_rclk;
  output ddr3_reset_n;
  input ddr3_sclk;
  input ddr3_slocked;
  output ddr3_we_n;
  output init_calib_complete;
  input pdma_dclk;
  input pdma_dlocked;
  output pgc_dclk;
  output pgc_iclk;
  output pgc_locked;
  output [0:0]pgc_oen;
  output udma_mm2s_rstn;
  output udma_s2mm_rstn;
  input udma_wclk;
  input udma_wlocked;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_MM2S_0_tdata;
  wire [3:0]M_AXIS_MM2S_0_tkeep;
  wire M_AXIS_MM2S_0_tlast;
  wire M_AXIS_MM2S_0_tready;
  wire M_AXIS_MM2S_0_tvalid;
  wire [31:0]S_AXIS_S2MM_0_tdata;
  wire [3:0]S_AXIS_S2MM_0_tkeep;
  wire S_AXIS_S2MM_0_tlast;
  wire S_AXIS_S2MM_0_tready;
  wire S_AXIS_S2MM_0_tvalid;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [0:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [3:0]S_AXI_arregion;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [0:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [3:0]S_AXI_awregion;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [0:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [0:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [31:0]axis_pg_tdata;
  wire [3:0]axis_pg_tkeep;
  wire axis_pg_tlast;
  wire axis_pg_tready;
  wire axis_pg_tvalid;
  wire [13:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [1:0]ddr3_dm;
  wire [15:0]ddr3_dq;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_rclk;
  wire ddr3_reset_n;
  wire ddr3_sclk;
  wire ddr3_slocked;
  wire ddr3_we_n;
  wire init_calib_complete;
  wire pdma_dclk;
  wire pdma_dlocked;
  wire pgc_dclk;
  wire pgc_iclk;
  wire pgc_locked;
  wire [0:0]pgc_oen;
  wire udma_mm2s_rstn;
  wire udma_s2mm_rstn;
  wire udma_wclk;
  wire udma_wlocked;

  design_1 design_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_MM2S_0_tdata(M_AXIS_MM2S_0_tdata),
        .M_AXIS_MM2S_0_tkeep(M_AXIS_MM2S_0_tkeep),
        .M_AXIS_MM2S_0_tlast(M_AXIS_MM2S_0_tlast),
        .M_AXIS_MM2S_0_tready(M_AXIS_MM2S_0_tready),
        .M_AXIS_MM2S_0_tvalid(M_AXIS_MM2S_0_tvalid),
        .S_AXIS_S2MM_0_tdata(S_AXIS_S2MM_0_tdata),
        .S_AXIS_S2MM_0_tkeep(S_AXIS_S2MM_0_tkeep),
        .S_AXIS_S2MM_0_tlast(S_AXIS_S2MM_0_tlast),
        .S_AXIS_S2MM_0_tready(S_AXIS_S2MM_0_tready),
        .S_AXIS_S2MM_0_tvalid(S_AXIS_S2MM_0_tvalid),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arburst(S_AXI_arburst),
        .S_AXI_arcache(S_AXI_arcache),
        .S_AXI_arid(S_AXI_arid),
        .S_AXI_arlen(S_AXI_arlen),
        .S_AXI_arlock(S_AXI_arlock),
        .S_AXI_arprot(S_AXI_arprot),
        .S_AXI_arqos(S_AXI_arqos),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arregion(S_AXI_arregion),
        .S_AXI_arsize(S_AXI_arsize),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awburst(S_AXI_awburst),
        .S_AXI_awcache(S_AXI_awcache),
        .S_AXI_awid(S_AXI_awid),
        .S_AXI_awlen(S_AXI_awlen),
        .S_AXI_awlock(S_AXI_awlock),
        .S_AXI_awprot(S_AXI_awprot),
        .S_AXI_awqos(S_AXI_awqos),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awregion(S_AXI_awregion),
        .S_AXI_awsize(S_AXI_awsize),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bid(S_AXI_bid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rid(S_AXI_rid),
        .S_AXI_rlast(S_AXI_rlast),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wlast(S_AXI_wlast),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid),
        .axis_pg_tdata(axis_pg_tdata),
        .axis_pg_tkeep(axis_pg_tkeep),
        .axis_pg_tlast(axis_pg_tlast),
        .axis_pg_tready(axis_pg_tready),
        .axis_pg_tvalid(axis_pg_tvalid),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_rclk(ddr3_rclk),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_sclk(ddr3_sclk),
        .ddr3_slocked(ddr3_slocked),
        .ddr3_we_n(ddr3_we_n),
        .init_calib_complete(init_calib_complete),
        .pdma_dclk(pdma_dclk),
        .pdma_dlocked(pdma_dlocked),
        .pgc_dclk(pgc_dclk),
        .pgc_iclk(pgc_iclk),
        .pgc_locked(pgc_locked),
        .pgc_oen(pgc_oen),
        .udma_mm2s_rstn(udma_mm2s_rstn),
        .udma_s2mm_rstn(udma_s2mm_rstn),
        .udma_wclk(udma_wclk),
        .udma_wlocked(udma_wlocked));
endmodule
