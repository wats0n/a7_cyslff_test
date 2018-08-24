`timescale 1ns/1ps

module sim_axis_top (
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
    
    output [31:0] m_axis_tdata,
    output [3:0] m_axis_tkeep,
    output m_axis_tlast,
    input m_axis_tready,
    output m_axis_tvalid,

    input [31:0] s_axis_tdata,
    input [3:0] s_axis_tkeep,
    input s_axis_tlast,
    output s_axis_tready,
    input s_axis_tvalid
);

//simulate reset
reg dev_arst = 1;

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
wire  M_AXI_AWREADY = 1'b1;
wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA;
wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB;
wire  M_AXI_WLAST;
wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER;
wire  M_AXI_WVALID;
wire  M_AXI_WREADY = 1'b1;
wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID;
wire [1 : 0] M_AXI_BRESP = 2'b0;
wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER;
wire  M_AXI_BVALID = 1'b1;
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
wire  M_AXI_ARREADY = 1'b1;
wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID;
wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA;
wire [1 : 0] M_AXI_RRESP = 2'b0;
wire  M_AXI_RLAST;
wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER;
wire  M_AXI_RVALID = 1'b1;
wire  M_AXI_RREADY;

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

//simulate reset
reg [3:0] rst_cnt = 4'h0;
always@(posedge cyslff_clk) begin
    if(rst_cnt == 4'hF) begin
        dev_arst <= 1'b0;
    end
    else begin
        rst_cnt <= rst_cnt + 1;
    end
end

endmodule