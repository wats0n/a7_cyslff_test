`timescale 1ns/1ps

module axis2dvi(

    output [3:0] io_tmds_p,
    output [3:0] io_tmds_n,
    
    input [31:0] axis_pg_tdata,
    input [3:0] axis_pg_tkeep,
    input axis_pg_tlast,
    input axis_pg_tvalid,
    output reg axis_pg_tready,
    
    input pgc_dclk,
    input pgc_iclk,
    input pgc_oen,
    input pgc_locked,
    input dev_arst
);

wire [29:0] tmds_dout;

/*(* keep = "true" *)(* mark_debug = "true" *)*/ reg [23:0] rgb_din;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ reg rgb_den;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ reg rgb_hsync;
/*(* keep = "true" *)(* mark_debug = "true" *)*/ reg rgb_vsync;

reg pgc_run = 1'b0;
reg dev_srst = 1'b1;

always@(posedge pgc_dclk or posedge dev_arst) begin
    if(dev_arst|(~pgc_locked)) begin
        dev_srst <= 1'b1;
    end
    else begin
        dev_srst <= 1'b0;
    end
end

always@(posedge pgc_dclk) begin
    if(dev_srst) begin
        rgb_din <= 24'h0;
        rgb_den <= 1'b0;
        rgb_hsync <= 1'b0;
        rgb_vsync <= 1'b0;
        axis_pg_tready <= 1'b0;

        pgc_run <= 1'b0;
    end
    else begin
        
        pgc_run <= pgc_oen;
        axis_pg_tready <= 1'b1;
        
        if(pgc_run) begin
            if(axis_pg_tready&axis_pg_tvalid) begin
                rgb_din <= axis_pg_tdata[23:0];
                rgb_den <= axis_pg_tdata[24];
                rgb_hsync <= axis_pg_tdata[25];
                rgb_vsync <= axis_pg_tdata[26];
            end
        end
        else begin
            rgb_din <= 24'h0;
            rgb_den <= 1'b0;
            rgb_hsync <= 1'b0;
            rgb_vsync <= 1'b0;
        end

    end
end

wire [7:0] rdin, gdin, bdin;
wire [9:0] rdout, gdout, bdout;

assign bdin = rgb_din[7:0];
assign gdin = rgb_din[15:8];
assign rdin = rgb_din[23:16];

assign tmds_dout = {rdout, gdout, bdout};

TMDS_Encoder tmds_bout (
      .PixelClk(pgc_dclk),
      .SerialClk(1'b0),
      .aRst(dev_srst),
      .pDataOutRaw(bdout),
      .pDataOut(bdin),
      .pC0(rgb_hsync),
      .pC1(rgb_vsync),
      .pVde(rgb_den)
);

TMDS_Encoder tmds_gout (
      .PixelClk(pgc_dclk),
      .SerialClk(1'b0),
      .aRst(dev_srst),
      .pDataOutRaw(gdout),
      .pDataOut(gdin),
      .pC0(1'b0),
      .pC1(1'b0),
      .pVde(rgb_den)
);

TMDS_Encoder tmds_rout (
      .PixelClk(pgc_dclk),
      .SerialClk(1'b0),
      .aRst(dev_srst),
      .pDataOutRaw(rdout),
      .pDataOut(rdin),
      .pC0(1'b0),
      .pC1(1'b0),
      .pVde(rgb_den)
);

reg [39:0] tmds_buf = 40'h0;
always@(posedge pgc_dclk) begin
	if(dev_srst) begin
		tmds_buf <= 40'h0;
	end
	else begin
		tmds_buf[39:0] <= {10'b1111100000, tmds_dout[29:0]};
	end
end

OutputSERDES#(.kParallelWidth(10)) tmds_b (
    .PixelClk(pgc_dclk),
    .SerialClk(pgc_iclk),
    .sDataOut_p(io_tmds_p[0]),
    .sDataOut_n(io_tmds_n[0]),
    .pDataOut(tmds_buf[9:0]),
    .aRst(dev_srst)
);

OutputSERDES#(.kParallelWidth(10)) tmds_g (
    .PixelClk(pgc_dclk),
    .SerialClk(pgc_iclk),
    .sDataOut_p(io_tmds_p[1]),
    .sDataOut_n(io_tmds_n[1]),
    .pDataOut(tmds_buf[19:10]),
    .aRst(dev_srst)
);

OutputSERDES#(.kParallelWidth(10)) tmds_r (
    .PixelClk(pgc_dclk),
    .SerialClk(pgc_iclk),
    .sDataOut_p(io_tmds_p[2]),
    .sDataOut_n(io_tmds_n[2]),
    .pDataOut(tmds_buf[29:20]),
    .aRst(dev_srst)
);

OutputSERDES#(.kParallelWidth(10)) tmds_c (
    .PixelClk(pgc_dclk),
    .SerialClk(pgc_iclk),
    .sDataOut_p(io_tmds_p[3]),
    .sDataOut_n(io_tmds_n[3]),
    .pDataOut(tmds_buf[39:30]),
    .aRst(dev_srst)
);

endmodule