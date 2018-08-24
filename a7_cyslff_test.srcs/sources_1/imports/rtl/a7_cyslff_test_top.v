`timescale 1ns/1ps

module a7_cyslff_test_top (
  //TMDS IO
    output [3:0] io_tmds_p,
    output [3:0] io_tmds_n,
    
  output [13:0]ddr3_addr,
  output [2:0]ddr3_ba,
  output ddr3_cas_n,
  output [0:0]ddr3_ck_n,
  output [0:0]ddr3_ck_p,
  output [0:0]ddr3_cke,
  output [1:0]ddr3_dm,
  inout [15:0]ddr3_dq,
  inout [1:0]ddr3_dqs_n,
  inout [1:0]ddr3_dqs_p,
  output [0:0]ddr3_odt,
  output ddr3_ras_n,
  output ddr3_reset_n,
  output ddr3_we_n,
  
(* keep = "true" *)(* mark_debug = "true" *)  output init_calib_complete,

    //FPGA external IO
    inout [7:0] io_cyslff_fd,
    output io_cyslff_oe,
    output io_cyslff_rd,
    output io_cyslff_wr,
    output io_cyslff_pktend,

    input io_cyslff_feb,
    input io_cyslff_ffb,

    output [1:0] io_cyslff_addr,

    input io_cyslff_clk,
    
    input io_fpga_clk
);

//wire dbg_clk;
//wire dlocked;
wire ddr3_sclk;
wire ddr3_rclk;
wire ddr3_slocked;

wire pdma_dclk;
wire pdma_dlocked;

wire udma_wclk;
wire udma_wlocked;

wire dev_arst;

/*
wire cyslff_clk;

wire ioctr_wr_empty;
wire ioctr_rd_ready;

wire fdo_pause;
wire fdi_pause;

wire        axic_fdi_en;
wire  [7:0] axic_fdi;
wire axic_fdi_ready;

wire       axic_fdo_en;
wire [7:0] axic_fdo;
wire axic_fdo_ready;
wire axic_fdo_last;

wire        axis_fdi_en;
wire  [7:0] axis_fdi;
wire axis_fdi_ready;

wire       axis_fdo_en;
wire [7:0] axis_fdo;
wire axis_fdo_ready;
wire axis_fdo_last;
*/
parameter integer C_M_AXI_BURST_LEN	= 16;
parameter integer C_M_AXI_ID_WIDTH	= 1;
parameter integer C_M_AXI_ADDR_WIDTH	= 32;
parameter integer C_M_AXI_DATA_WIDTH	= 32;
parameter integer C_M_AXI_AWUSER_WIDTH	= 0;
parameter integer C_M_AXI_ARUSER_WIDTH	= 0;
parameter integer C_M_AXI_WUSER_WIDTH	= 0;
parameter integer C_M_AXI_RUSER_WIDTH	= 0;
parameter integer C_M_AXI_BUSER_WIDTH	= 0;

wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID;
wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR;
wire [7 : 0] M_AXI_AWLEN;
wire [2 : 0] M_AXI_AWSIZE;
wire [1 : 0] M_AXI_AWBURST;
wire  M_AXI_AWLOCK;
wire [3 : 0] M_AXI_AWCACHE;
wire [2 : 0] M_AXI_AWPROT;
wire [3 : 0] M_AXI_AWQOS;
wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER;
wire  M_AXI_AWVALID;
wire  M_AXI_AWREADY;
wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA;
wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB;
wire  M_AXI_WLAST;
wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER;
wire  M_AXI_WVALID;
wire  M_AXI_WREADY;
wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID;
wire [1 : 0] M_AXI_BRESP;
wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER;
wire  M_AXI_BVALID;
wire  M_AXI_BREADY;
wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID;
wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR;
wire [7 : 0] M_AXI_ARLEN;
wire [2 : 0] M_AXI_ARSIZE;
wire [1 : 0] M_AXI_ARBURST;
wire  M_AXI_ARLOCK;
wire [3 : 0] M_AXI_ARCACHE;
wire [2 : 0] M_AXI_ARPROT;
wire [3 : 0] M_AXI_ARQOS;
wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER;
wire  M_AXI_ARVALID;
wire  M_AXI_ARREADY;
wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID;
wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA;
wire [1 : 0] M_AXI_RRESP;
wire  M_AXI_RLAST;
wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER;
wire  M_AXI_RVALID;
wire  M_AXI_RREADY;

/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [31:0] m_axis_tdata;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [3:0] m_axis_tkeep;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire m_axis_tlast;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire m_axis_tready;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire m_axis_tvalid;

/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [31:0] s_axis_tdata;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [3:0] s_axis_tkeep;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire s_axis_tlast;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire s_axis_tready;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire s_axis_tvalid;

/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [31:0]axis_pg_tdata;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire [3:0]axis_pg_tkeep;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire axis_pg_tlast;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire axis_pg_tready;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ wire axis_pg_tvalid;

wire pgc_dclk;
wire pgc_iclk;
wire pgc_locked;
wire pgc_oen;

(* keep = "true" *)(* mark_debug = "true" *) wire [31:0] udma_s2mm_crc32;
(* keep = "true" *)(* mark_debug = "true" *) wire [31:0] udma_mm2s_crc32;
wire udma_mm2s_rstn;
wire udma_s2mm_rstn;

`ifdef EALIER_CYFX2

wire cyslff_clk;

wire ioctr_wr_empty;
wire ioctr_rd_ready;

wire fdo_pause;
wire fdi_pause;

wire        axic_fdi_en;
wire  [7:0] axic_fdi;
wire axic_fdi_ready;

wire       axic_fdo_en;
wire [7:0] axic_fdo;
wire axic_fdo_ready;
wire axic_fdo_last;

wire        axis_fdi_en;
wire  [7:0] axis_fdi;
wire axis_fdi_ready;

wire       axis_fdo_en;
wire [7:0] axis_fdo;
wire axis_fdo_ready;
wire axis_fdo_last;

cyslff cyslff(
    .io_cyslff_fd(io_cyslff_fd),
    .io_cyslff_oe(io_cyslff_oe),
    .io_cyslff_rd(io_cyslff_rd),
    .io_cyslff_wr(io_cyslff_wr),
    .io_cyslff_pktend(io_cyslff_pktend),

    .io_cyslff_feb(io_cyslff_feb),
    .io_cyslff_ffb(io_cyslff_ffb),

    .io_cyslff_addr(io_cyslff_addr),

    .io_cyslff_clk(io_cyslff_clk),

    .cyslff_clk(cyslff_clk),
    
    .fdo_pause(fdo_pause),
    .fdi_pause(fdi_pause),

//    .ioctr_ready(ioctr_ready),
    .ioctr_wr_empty(ioctr_wr_empty),
    .ioctr_rd_ready(ioctr_rd_ready),

    .axic_fdi_en(axic_fdi_en),
    .axic_fdi(axic_fdi),
    .axic_fdi_ready(axic_fdi_ready),

    .axic_fdo_en(axic_fdo_en),
    .axic_fdo(axic_fdo),
    .axic_fdo_ready(axic_fdo_ready),
    .axic_fdo_last(axic_fdo_last),
    
    .axis_fdi_en(axis_fdi_en),
    .axis_fdi(axis_fdi),
    .axis_fdi_ready(axis_fdi_ready),

    .axis_fdo_en(axis_fdo_en),
    .axis_fdo(axis_fdo),
    .axis_fdo_ready(axis_fdo_ready),
    .axis_fdo_last(axis_fdo_last),

    .dev_arst(dev_arst)
);

aximif aximif (
    
    .ioctr_wr_empty(ioctr_wr_empty),
    .ioctr_rd_ready(ioctr_rd_ready),
    
    .fdo_pause(fdo_pause),
    .fdi_pause(fdi_pause),

    .axic_fdi_en(axic_fdi_en),
    .axic_fdi(axic_fdi),
    .axic_fdi_ready(axic_fdi_ready),

    .axic_fdo_en(axic_fdo_en),
    .axic_fdo(axic_fdo),
    .axic_fdo_ready(axic_fdo_ready),
    .axic_fdo_last(axic_fdo_last),
    
    .axis_fdi_en(axis_fdi_en),
    .axis_fdi(axis_fdi),
    .axis_fdi_ready(axis_fdi_ready),

    .axis_fdo_en(axis_fdo_en),
    .axis_fdo(axis_fdo),
    .axis_fdo_ready(axis_fdo_ready),
    .axis_fdo_last(axis_fdo_last),
    

    //M_AXI Port

    .M_AXI_AWID(M_AXI_AWID),
    .M_AXI_AWADDR(M_AXI_AWADDR),
    .M_AXI_AWLEN(M_AXI_AWLEN),
    .M_AXI_AWSIZE(M_AXI_AWSIZE),
    .M_AXI_AWBURST(M_AXI_AWBURST),
    .M_AXI_AWLOCK(M_AXI_AWLOCK),
    .M_AXI_AWCACHE(M_AXI_AWCACHE),
    .M_AXI_AWPROT(M_AXI_AWPROT),
    .M_AXI_AWQOS(M_AXI_AWQOS),
    .M_AXI_AWUSER(M_AXI_AWUSER),
    .M_AXI_AWVALID(M_AXI_AWVALID),
    .M_AXI_AWREADY(M_AXI_AWREADY),
    .M_AXI_WDATA(M_AXI_WDATA),
    .M_AXI_WSTRB(M_AXI_WSTRB),
    .M_AXI_WLAST(M_AXI_WLAST),
    .M_AXI_WUSER(M_AXI_WUSER),
    .M_AXI_WVALID(M_AXI_WVALID),
    .M_AXI_WREADY(M_AXI_WREADY),
    .M_AXI_BID(M_AXI_BID),
    .M_AXI_BRESP(M_AXI_BRESP),
    .M_AXI_BUSER(M_AXI_BUSER),
    .M_AXI_BVALID(M_AXI_BVALID),
    .M_AXI_BREADY(M_AXI_BREADY),
    .M_AXI_ARID(M_AXI_ARID),
    .M_AXI_ARADDR(M_AXI_ARADDR),
    .M_AXI_ARLEN(M_AXI_ARLEN),
    .M_AXI_ARSIZE(M_AXI_ARSIZE),
    .M_AXI_ARBURST(M_AXI_ARBURST),
    .M_AXI_ARLOCK(M_AXI_ARLOCK),
    .M_AXI_ARCACHE(M_AXI_ARCACHE),
    .M_AXI_ARPROT(M_AXI_ARPROT),
    .M_AXI_ARQOS(M_AXI_ARQOS),
    .M_AXI_ARUSER(M_AXI_ARUSER),
    .M_AXI_ARVALID(M_AXI_ARVALID),
    .M_AXI_ARREADY(M_AXI_ARREADY),
    .M_AXI_RID(M_AXI_RID),
    .M_AXI_RDATA(M_AXI_RDATA),
    .M_AXI_RRESP(M_AXI_RRESP),
    .M_AXI_RLAST(M_AXI_RLAST),
    .M_AXI_RUSER(M_AXI_RUSER),
    .M_AXI_RVALID(M_AXI_RVALID),
    .M_AXI_RREADY(M_AXI_RREADY),
    
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tready(s_axis_tready),
    .s_axis_tvalid(s_axis_tvalid),

    .axim_clk(cyslff_clk),
    .dev_srst(dev_arst)
);

`else

wire axim_clk;

cy2axi cy2axi (
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
    
    //M_AXI Port
    
    .M_AXI_AWID(M_AXI_AWID),
    .M_AXI_AWADDR(M_AXI_AWADDR),
    .M_AXI_AWLEN(M_AXI_AWLEN),
    .M_AXI_AWSIZE(M_AXI_AWSIZE),
    .M_AXI_AWBURST(M_AXI_AWBURST),
    .M_AXI_AWLOCK(M_AXI_AWLOCK),
    .M_AXI_AWCACHE(M_AXI_AWCACHE),
    .M_AXI_AWPROT(M_AXI_AWPROT),
    .M_AXI_AWQOS(M_AXI_AWQOS),
    //.M_AXI_AWUSER(M_AXI_AWUSER),
    .M_AXI_AWVALID(M_AXI_AWVALID),
    .M_AXI_AWREADY(M_AXI_AWREADY),
    .M_AXI_WDATA(M_AXI_WDATA),
    .M_AXI_WSTRB(M_AXI_WSTRB),
    .M_AXI_WLAST(M_AXI_WLAST),
    //.M_AXI_WUSER(M_AXI_WUSER),
    .M_AXI_WVALID(M_AXI_WVALID),
    .M_AXI_WREADY(M_AXI_WREADY),
    .M_AXI_BID(M_AXI_BID),
    .M_AXI_BRESP(M_AXI_BRESP),
    //.M_AXI_BUSER(M_AXI_BUSER),
    .M_AXI_BVALID(M_AXI_BVALID),
    .M_AXI_BREADY(M_AXI_BREADY),
    .M_AXI_ARID(M_AXI_ARID),
    .M_AXI_ARADDR(M_AXI_ARADDR),
    .M_AXI_ARLEN(M_AXI_ARLEN),
    .M_AXI_ARSIZE(M_AXI_ARSIZE),
    .M_AXI_ARBURST(M_AXI_ARBURST),
    .M_AXI_ARLOCK(M_AXI_ARLOCK),
    .M_AXI_ARCACHE(M_AXI_ARCACHE),
    .M_AXI_ARPROT(M_AXI_ARPROT),
    .M_AXI_ARQOS(M_AXI_ARQOS),
    //.M_AXI_ARUSER(M_AXI_ARUSER),
    .M_AXI_ARVALID(M_AXI_ARVALID),
    .M_AXI_ARREADY(M_AXI_ARREADY),
    .M_AXI_RID(M_AXI_RID),
    .M_AXI_RDATA(M_AXI_RDATA),
    .M_AXI_RRESP(M_AXI_RRESP),
    .M_AXI_RLAST(M_AXI_RLAST),
    //.M_AXI_RUSER(M_AXI_RUSER),
    .M_AXI_RVALID(M_AXI_RVALID),
    .M_AXI_RREADY(M_AXI_RREADY),
    
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tready(s_axis_tready),
    .s_axis_tvalid(s_axis_tvalid),

    .axim_clk(axim_clk),
    .dev_arst(dev_arst)
);

`endif

design_1_wrapper design_1_wrapper(
    .S_AXI_araddr(M_AXI_ARADDR),
    .S_AXI_arburst(M_AXI_ARBURST),
    .S_AXI_arcache(M_AXI_ARCACHE),
    .S_AXI_arid(M_AXI_ARID),
    .S_AXI_arlen(M_AXI_ARLEN),
    .S_AXI_arlock(M_AXI_ARLOCK),
    .S_AXI_arprot(M_AXI_ARPROT),
    .S_AXI_arqos(M_AXI_ARQOS),
    .S_AXI_arready(M_AXI_ARREADY),
    .S_AXI_arsize(M_AXI_ARSIZE),
    .S_AXI_arvalid(M_AXI_ARVALID),
    .S_AXI_awaddr(M_AXI_AWADDR),
    .S_AXI_awburst(M_AXI_AWBURST),
    .S_AXI_awcache(M_AXI_AWCACHE),
    .S_AXI_awid(M_AXI_AWID),
    .S_AXI_awlen(M_AXI_AWLEN),
    .S_AXI_awlock(M_AXI_AWLOCK),
    .S_AXI_awprot(M_AXI_AWPROT),
    .S_AXI_awqos(M_AXI_AWQOS),
    .S_AXI_awready(M_AXI_AWREADY),
    .S_AXI_awsize(M_AXI_AWSIZE),
    .S_AXI_awvalid(M_AXI_AWVALID),
    .S_AXI_bid(M_AXI_BID),
    .S_AXI_bready(M_AXI_BREADY),
    .S_AXI_bresp(M_AXI_BRESP),
    .S_AXI_bvalid(M_AXI_BVALID),
    .S_AXI_rdata(M_AXI_RDATA),
    .S_AXI_rid(M_AXI_RID),
    .S_AXI_rlast(M_AXI_RLAST),
    .S_AXI_rready(M_AXI_RREADY),
    .S_AXI_rresp(M_AXI_RRESP),
    .S_AXI_rvalid(M_AXI_RVALID),
    .S_AXI_wdata(M_AXI_WDATA),
    .S_AXI_wlast(M_AXI_WLAST),
    .S_AXI_wready(M_AXI_WREADY),
    .S_AXI_wstrb(M_AXI_WSTRB),
    .S_AXI_wvalid(M_AXI_WVALID),
    .S_AXIS_S2MM_0_tdata(m_axis_tdata),
    .S_AXIS_S2MM_0_tkeep(m_axis_tkeep),
    .S_AXIS_S2MM_0_tlast(m_axis_tlast),
    .S_AXIS_S2MM_0_tready(m_axis_tready),
    .S_AXIS_S2MM_0_tvalid(m_axis_tvalid),
    .M_AXIS_MM2S_0_tdata(s_axis_tdata),
    .M_AXIS_MM2S_0_tkeep(s_axis_tkeep),
    .M_AXIS_MM2S_0_tlast(s_axis_tlast),
    .M_AXIS_MM2S_0_tready(s_axis_tready),
    .M_AXIS_MM2S_0_tvalid(s_axis_tvalid),
`ifdef EALIER_CYFX2
    .ACLK(cyslff_clk),
`else
    .ACLK(axim_clk),
`endif
    .ARESETN(ddr3_slocked),
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
    .udma_wlocked(udma_wlocked)
);

crc_8bx4 udma_s2mm_crc(
  .data_in(m_axis_tdata),
  .crc_en(m_axis_tready&m_axis_tvalid),
  .crc_out(udma_s2mm_crc32),
  .rst(~udma_s2mm_rstn),
  .clk(cyslff_clk));
  
crc_8bx4 udma_mm2s_crc(
    .data_in(s_axis_tdata),
    .crc_en(s_axis_tready&s_axis_tvalid),
    .crc_out(udma_mm2s_crc32),
    .rst(~udma_mm2s_rstn),
    .clk(cyslff_clk));

axis2dvi axis2dvi(

    .io_tmds_p(io_tmds_p),
    .io_tmds_n(io_tmds_n),
        
    .axis_pg_tdata(axis_pg_tdata),
    .axis_pg_tkeep(axis_pg_tkeep),
    .axis_pg_tlast(axis_pg_tlast),
    .axis_pg_tvalid(axis_pg_tvalid),
    .axis_pg_tready(axis_pg_tready),
    
    .pgc_dclk(pgc_dclk),
    .pgc_iclk(pgc_iclk),
    .pgc_oen(pgc_oen),
    .pgc_locked(pgc_locked),
    .dev_arst(dev_arst)
);

assign dev_arst = (~ddr3_slocked);
assign pdma_dlocked = ddr3_slocked;
assign udma_wlocked = ddr3_slocked;

wire fpga_clk_ub;
wire fpga_clk;

IBUF ibuf_fpga_clk(
    .I(io_fpga_clk),
    .O(fpga_clk_ub)
);

BUFG bufg_fpga_clk(
    .I(fpga_clk_ub),
    .O(fpga_clk)
);

clk_wiz_0 gen_sys_clk
(
// Clock out ports
.clk_out1(ddr3_sclk),     // output clk_out1
.clk_out2(ddr3_rclk),
.clk_out3(pdma_dclk),
.clk_out4(udma_wclk),
// Status and control signals
.reset(1'b0), // input reset
.locked(ddr3_slocked),       // output locked
// Clock in ports
.clk_in1(fpga_clk));      // input clk_in1

endmodule