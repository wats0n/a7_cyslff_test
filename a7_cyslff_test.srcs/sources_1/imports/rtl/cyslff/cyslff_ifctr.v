`timescale 1ns/1ps

module cyslff_ifctr (
    //FPGA fabric
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg cyslff_fdo_en,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg [7:0] cyslff_fdo,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    input cyslff_fdi_en,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    input [7:0] cyslff_fdi,
    
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg cyslff_oe,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg cyslff_rd,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg cyslff_wr,
/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg cyslff_pktend,

/*(* keep = "true" *)(* mark_debug = "true" *)*/     input cyslff_feb,
/*(* keep = "true" *)(* mark_debug = "true" *)*/     input cyslff_ffb,

/*(* keep = "true" *)(* mark_debug = "true" *)*/    output reg [1:0] cyslff_addr,
    
    output reg cyslff_dir,
    
/*(* keep = "true" *)(* mark_debug = "true" *)*/     input fdo_pause, //Cause by CySLFF FIFO Full
    //output fdi_pause, //Cause By Fabric FIFO Full // Early Stage Only
/*(* keep = "true" *)(* mark_debug = "true" *)*/     input fdi_pause,

    //For AXI Interface
    output ioctr_wr_empty,
    output reg ioctr_rd_ready,

    output reg       axic_fdi_en,
    output reg [7:0] axic_fdi,
    input axic_fdi_ready,

    input       axic_fdo_en,
    input [7:0] axic_fdo,
    input axic_fdo_ready,
    input axic_fdo_last,

    output reg       axis_fdi_en,
    output reg [7:0] axis_fdi,
    input axis_fdi_ready,

    input       axis_fdo_en,
    input [7:0] axis_fdo,
    input axis_fdo_ready,
    input axis_fdo_last,

    input cyslff_clk,
    input dev_srst
);

parameter SLADDR_IDLE = 2'h3;
parameter SLADDR_RD = 2'h0;
parameter SLADDR_WR = 2'h2;

initial begin
    cyslff_dir = 1'b1; // 1 input, 0 output as Tri-State function
end

wire cond_cyslff_rden = (cyslff_addr == SLADDR_RD)&cyslff_feb;
wire cond_cyslff_wren = (cyslff_addr == SLADDR_WR);

reg fdi_paused;
reg fdi_paused_den;

assign ioctr_wr_empty = (~cyslff_feb);

always@(posedge cyslff_clk) begin
    if(dev_srst) begin
        cyslff_oe <= 1'b1;
        cyslff_rd <= 1'b1;
        
        fdi_paused <= 1'b0;
        fdi_paused_den <= 1'b0;
    end
    else begin
        cyslff_oe <= 1'b1;
        cyslff_rd <= 1'b1;
        if(cond_cyslff_rden) begin
            cyslff_oe <= 1'b0;
            if(~cyslff_oe) begin
                cyslff_rd <= 1'b0;
            end
        end
        
        fdi_paused <= fdi_pause;
        
        if(axic_fdi_ready) begin

            if(fdi_pause) begin
                if(!fdi_paused) begin
                    axic_fdi_en <= 1'b0;
                    axic_fdi <= cyslff_fdi;
                    fdi_paused_den <= cyslff_feb;
                end
            end
            else begin
                if(fdi_paused) begin
                    axic_fdi_en <= fdi_paused_den;
                    fdi_paused_den <= 1'b0;
                end
                else begin
                    axic_fdi_en <= cyslff_fdi_en;
                    axic_fdi <= cyslff_fdi;
                end
            end

        end
        else if(axis_fdi_ready) begin

            if(fdi_pause) begin
                if(!fdi_paused) begin
                    axis_fdi_en <= 1'b0;
                    axis_fdi <= cyslff_fdi;
                    fdi_paused_den <= cyslff_feb;
                end
            end
            else begin
                if(fdi_paused) begin
                    axis_fdi_en <= fdi_paused_den;
                    fdi_paused_den <= 1'b0;
                end
                else begin
                    axis_fdi_en <= cyslff_fdi_en;
                    axis_fdi <= cyslff_fdi;
                end
            end

        end
        
    end
end

reg fdo_paused = 1'b0;
reg fdo_paused_den = 1'b0;
reg fdo_paused_last = 1'b0;

always@(posedge cyslff_clk) begin
    if(dev_srst) begin
        cyslff_wr <= 1'b1;
        cyslff_pktend <= 1'b1;
        cyslff_fdo_en <= 1'b0;
        
        fdo_paused <= 1'b0;
        fdo_paused_den <= 1'b0;
        fdo_paused_last <= 1'b0;
    end
    else begin
        //cyslff_wr <= 1'b1;
        //cyslff_pktend <= 1'b1;
        //cyslff_fdo_en <= 1'b0;
        
        fdo_paused <= fdo_pause;

        if(cond_cyslff_wren) begin
            if(axic_fdo_ready) begin     
                if(fdo_pause) begin
                    if(!fdo_paused) begin
                        fdo_paused_den <= axic_fdo_en;
                        fdo_paused_last <= axic_fdo_last;
                        cyslff_wr <= 1'b1;
                        cyslff_pktend <= 1'b1;
                        cyslff_fdo_en <= 1'b0;
                        cyslff_fdo <= axic_fdo;                   
                    end
                end
                else begin
                    if(fdo_paused) begin
                        cyslff_fdo_en <= fdo_paused_den;
                        cyslff_wr <= ~fdo_paused_den;
                        cyslff_pktend <= ~fdo_paused_last;
                        fdo_paused_den <= 1'b0;
                        fdo_paused_last <= 1'b0;       
                    end
                    else begin
                        cyslff_wr <= ~axic_fdo_en;
                        cyslff_fdo_en <= axic_fdo_en;
                        cyslff_fdo <= axic_fdo;
                        cyslff_pktend <= (~axic_fdo_last);
                    end
                end
            end
            else if(axis_fdo_ready) begin
                if(fdo_pause) begin
                    if(!fdo_paused) begin
                        fdo_paused_den <= axis_fdo_en;
                        fdo_paused_last <= axis_fdo_last;
                        cyslff_wr <= 1'b1;
                        cyslff_pktend <= 1'b1;
                        cyslff_fdo_en <= 1'b0;
                        cyslff_fdo <= axis_fdo;                   
                    end
                end
                else begin
                    if(fdo_paused) begin
                        cyslff_fdo_en <= fdo_paused_den;
                        cyslff_wr <= ~fdo_paused_den;
                        cyslff_pktend <= ~fdo_paused_last;
                        fdo_paused_den <= 1'b0;
                        fdo_paused_last <= 1'b0;       
                    end
                    else begin
                        cyslff_wr <= ~axis_fdo_en;
                        cyslff_fdo_en <= axis_fdo_en;
                        cyslff_fdo <= axis_fdo;
                        cyslff_pktend <= (~axis_fdo_last);
                    end
                end
            end
        end
    end
end

always@(posedge cyslff_clk) begin
    if(dev_srst) begin
        cyslff_addr <= SLADDR_IDLE;
        cyslff_dir <= 1'b1;
        ioctr_rd_ready <= 1'b0;
    end
    else begin
        if((axic_fdo_ready | axis_fdo_ready)&(cyslff_oe)) begin
            cyslff_addr <= SLADDR_WR;
            cyslff_dir <= 1'b0;
            ioctr_rd_ready <= 1'b1;
        end
        else begin
            cyslff_addr <= SLADDR_RD;
            cyslff_dir <= 1'b1;
            ioctr_rd_ready <= 1'b0;
        end
    end
end

endmodule