`timescale 1ns/1ps

module cyslff_syncio (
    //FPGA internal sync IO
    
    output reg sio_cyslff_fdo_en,
    output reg [7:0] sio_cyslff_fdo,
    input sio_cyslff_fdi_en,
    input [7:0] sio_cyslff_fdi,

    output reg sio_cyslff_oe,
    output reg sio_cyslff_rd,
    output reg sio_cyslff_wr,
    output reg sio_cyslff_pktend,

    input sio_cyslff_feb,
    input sio_cyslff_ffb,

    output reg [1:0] sio_cyslff_addr,
    output reg sio_cyslff_dir,

    //FPGA internal fabric

    input cyslff_fdo_en,
    input [7:0] cyslff_fdo,
    output reg cyslff_fdi_en,
    output reg [7:0] cyslff_fdi,
    
    input cyslff_oe,
    input cyslff_rd,
    input cyslff_wr,
    input cyslff_pktend,

    output reg cyslff_feb,
    output reg cyslff_ffb,

    input [1:0] cyslff_addr,
    input cyslff_dir,

    input fdo_pause, //Cause by CySLFF FIFO Full
    input fdi_pause, //Cause By Fabric FIFO Full

    input cyslff_clk,
    input dev_srst
);

reg fdi_paused;
reg fdi_paused_den;


always@(posedge cyslff_clk) begin

    cyslff_feb <= sio_cyslff_feb;

    sio_cyslff_oe <= cyslff_oe;
    sio_cyslff_rd <= cyslff_rd;

    cyslff_fdi_en <= cyslff_fdi_en;
    cyslff_fdi <= cyslff_fdi;
    fdi_paused <= fdi_pause;
    
    if(fdi_pause) begin
        if(!fdi_paused) begin
            cyslff_fdi_en <= 1'b0;
            cyslff_fdi <= sio_cyslff_fdi;
            fdi_paused_den <= sio_cyslff_feb;
        end
    end
    else begin
        if(fdi_paused) begin
            //cyslff_fdi_en <= 1'b1;
            //cyslff_fdi_en <= sio_cyslff_feb;
            cyslff_fdi_en <= fdi_paused_den;
            fdi_paused_den <= 1'b0;
        end
        else begin
            cyslff_fdi_en <= sio_cyslff_fdi_en;
            cyslff_fdi <= sio_cyslff_fdi;
        end
    end
    
    if(dev_srst) begin
        cyslff_fdi_en <= 1'b0;
        fdi_paused <= 1'b0;
        fdi_paused_den <= 1'b0;
    end
end

reg fdo_paused = 1'b0;
reg fdo_paused_den = 1'b0;
reg fdo_paused_wr = 1'b1;
reg fdo_paused_pktend = 1'b1;

always@(posedge cyslff_clk) begin

    cyslff_ffb <= sio_cyslff_ffb;
    
    fdo_paused <= fdo_pause;
    
    if(fdo_pause) begin
        if(!fdo_paused) begin
            fdo_paused_wr <= cyslff_wr;
            fdo_paused_pktend <= cyslff_pktend;
            fdo_paused_den <= cyslff_fdo_en;
            sio_cyslff_wr <= 1'b1;
            sio_cyslff_pktend <= 1'b1;
            sio_cyslff_fdo_en <= 1'b0;
            sio_cyslff_fdo <= cyslff_fdo;
        end
    end
    else begin
        if(fdo_paused) begin
            fdo_paused_wr <= 1'b1;
            fdo_paused_pktend <= 1'b1;
            fdo_paused_den <= 1'b0;
            sio_cyslff_wr <= fdo_paused_wr;
            sio_cyslff_pktend <= fdo_paused_pktend;
            sio_cyslff_fdo_en <= fdo_paused_den;
        end
        else begin
            sio_cyslff_wr <= cyslff_wr;
            sio_cyslff_pktend <= cyslff_pktend;
            sio_cyslff_fdo_en <= cyslff_fdo_en;
            sio_cyslff_fdo <= cyslff_fdo;
        end
    end
    
    if(dev_srst) begin
        fdo_paused <= 1'b0;
        fdo_paused_den <= 1'b0;
        fdo_paused_wr <= 1'b1;
        fdo_paused_pktend <= 1'b1;
    end
    
end

always@(posedge cyslff_clk) begin
    sio_cyslff_addr <= cyslff_addr;
    sio_cyslff_dir <= cyslff_dir;
end

endmodule