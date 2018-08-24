`timescale 1ns/1ps

module cyslff (
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

    output cyslff_clk,

    //For AXI Interface

    output fdo_pause, //Cause by CySLFF FIFO Full
    input fdi_pause, //Cause By Fabric FIFO Full
    
//    output ioctr_ready,
    output ioctr_wr_empty,
    output ioctr_rd_ready,
    
    output        axic_fdi_en,
    output  [7:0] axic_fdi,
    input axic_fdi_ready,

    input       axic_fdo_en,
    input [7:0] axic_fdo,
    input axic_fdo_ready,
    input axic_fdo_last,

    output        axis_fdi_en,
    output  [7:0] axis_fdi,
    input axis_fdi_ready,

    input       axis_fdo_en,
    input [7:0] axis_fdo,
    input axis_fdo_ready,
    input axis_fdo_last,

    input dev_arst
);

wire sio_cyslff_fdo_en;
wire [7:0] sio_cyslff_fdo;
wire sio_cyslff_fdi_en;
wire [7:0] sio_cyslff_fdi;
    
wire sio_cyslff_oe;
wire sio_cyslff_rd;
wire sio_cyslff_wr;
wire sio_cyslff_pktend;

wire sio_cyslff_feb;
wire sio_cyslff_ffb;

wire [1:0] sio_cyslff_addr;
wire sio_cyslff_dir;

wire cyslff_fdo_en;
wire [7:0] cyslff_fdo;
wire cyslff_fdi_en;
wire [7:0] cyslff_fdi;
    
wire cyslff_oe;
wire cyslff_rd;
wire cyslff_wr;
wire cyslff_pktend;

wire cyslff_feb;
wire cyslff_ffb;

wire [1:0] cyslff_addr;
wire cyslff_dir;

reg dev_srst = 1;

always@(posedge cyslff_clk) begin
    if(dev_arst) begin
        dev_srst = 1'b1;
    end
    else begin
        dev_srst = 1'b0;
    end
end

cyslff_io cyslff_io (
    .io_cyslff_fd(io_cyslff_fd),
    .io_cyslff_oe(io_cyslff_oe),
    .io_cyslff_rd(io_cyslff_rd),
    .io_cyslff_wr(io_cyslff_wr),
    .io_cyslff_pktend(io_cyslff_pktend),

    .io_cyslff_feb(io_cyslff_feb),
    .io_cyslff_ffb(io_cyslff_ffb),

    .io_cyslff_addr(io_cyslff_addr),

    .io_cyslff_clk(io_cyslff_clk),

    .sio_cyslff_fdo_en(sio_cyslff_fdo_en),
    .sio_cyslff_fdo(sio_cyslff_fdo),
    .sio_cyslff_fdi_en(sio_cyslff_fdi_en),
    .sio_cyslff_fdi(sio_cyslff_fdi),
        
    .sio_cyslff_oe(sio_cyslff_oe),
    .sio_cyslff_rd(sio_cyslff_rd),
    .sio_cyslff_wr(sio_cyslff_wr),
    .sio_cyslff_pktend(sio_cyslff_pktend),

    .sio_cyslff_feb(sio_cyslff_feb),
    .sio_cyslff_ffb(sio_cyslff_ffb),

    .sio_cyslff_addr(sio_cyslff_addr),
    .sio_cyslff_dir(sio_cyslff_dir),

    .fdo_pause(fdo_pause),
    .fdi_pause(fdi_pause),
    
    //.ioctr_rd_ready(ioctr_rd_ready),

    .cyslff_clk(cyslff_clk),
    .dev_srst(dev_srst)
);

cyslff_syncio cyslff_syncio (
    .sio_cyslff_fdo_en(sio_cyslff_fdo_en),
    .sio_cyslff_fdo(sio_cyslff_fdo),
    .sio_cyslff_fdi_en(sio_cyslff_fdi_en),
    .sio_cyslff_fdi(sio_cyslff_fdi),

    .sio_cyslff_oe(sio_cyslff_oe),
    .sio_cyslff_rd(sio_cyslff_rd),
    .sio_cyslff_wr(sio_cyslff_wr),
    .sio_cyslff_pktend(sio_cyslff_pktend),

    .sio_cyslff_feb(sio_cyslff_feb),
    .sio_cyslff_ffb(sio_cyslff_ffb),

    .sio_cyslff_addr(sio_cyslff_addr),
    .sio_cyslff_dir(sio_cyslff_dir),

    .cyslff_fdo_en(cyslff_fdo_en),
    .cyslff_fdo(cyslff_fdo),
    .cyslff_fdi_en(cyslff_fdi_en),
    .cyslff_fdi(cyslff_fdi),
        
    .cyslff_oe(cyslff_oe),
    .cyslff_rd(cyslff_rd),
    .cyslff_wr(cyslff_wr),
    .cyslff_pktend(cyslff_pktend),

    .cyslff_feb(cyslff_feb),
    .cyslff_ffb(cyslff_ffb),

    .cyslff_addr(cyslff_addr),
    .cyslff_dir(cyslff_dir),

    .fdo_pause(fdo_pause),
    .fdi_pause(fdi_pause),

    .cyslff_clk(cyslff_clk),
    .dev_srst(dev_srst)
);

cyslff_ifctr cyslff_ifctr(
    .cyslff_fdo_en(cyslff_fdo_en),
    .cyslff_fdo(cyslff_fdo),
    .cyslff_fdi_en(cyslff_fdi_en),
    .cyslff_fdi(cyslff_fdi),
        
    .cyslff_oe(cyslff_oe),
    .cyslff_rd(cyslff_rd),
    .cyslff_wr(cyslff_wr),
    .cyslff_pktend(cyslff_pktend),

    .cyslff_feb(cyslff_feb),
    .cyslff_ffb(cyslff_ffb),

    .cyslff_addr(cyslff_addr),
    .cyslff_dir(cyslff_dir),

    .fdo_pause(fdo_pause),
    .fdi_pause(fdi_pause),
    
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

    .cyslff_clk(cyslff_clk),
    .dev_srst(dev_srst)
);

endmodule