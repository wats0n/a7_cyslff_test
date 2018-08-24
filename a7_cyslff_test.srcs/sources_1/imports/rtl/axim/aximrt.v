`timescale 1ns/1ps
module aximrt#(
    parameter AXIS_DMA_BUF_LEN = 24
) (
    //AXIM Register Tables

    input [2:0] axim_raddr,
    input axim_rwd_en,
    input [31:0] axim_rwd,
    input axim_rrd_en,
    output reg [31:0] axim_rrd,

    input [23:0] axim_stat,

    output reg [31:0] axic_addr,   //ADDR: 0x0
    output reg [31:0] axic_wdata,  //ADDR: 0x1
    output reg [31:0] axic_rdata,  //ADDR: 0x2
    output reg [31:0] axis_amt,    //ADDR: 0x3, only 23bit available
    
    output reg [8:0] axim_ctrl,

    input axim_clk,
    input dev_srst
);

always@(posedge axim_clk) begin
    if(dev_srst) begin
        axim_rrd <= 32'h0;
        axic_addr <= 32'h0;
        axic_wdata <= 32'h0;
        axic_rdata <= 32'h0;
        axis_amt <= 32'h0;
        
        axim_ctrl <= 8'h0;
    end
    begin
        if(axim_rwd_en) begin
            if(axim_raddr[2]) begin
                if(axim_raddr[1:0] == 2'h3) begin
                    axim_ctrl <= axim_rwd[7:0]; //Write AXIM Control Register
                end
            end
            else begin
                case(axim_raddr[1:0])
                    2'h0 : axic_addr <= axim_rwd;
                    2'h1 : axic_wdata <= axim_rwd;
                    2'h2 : axic_rdata <= axim_rwd;
                    2'h3 : axis_amt <= {9'h0, axim_rwd[AXIS_DMA_BUF_LEN-1:0]};
                endcase
            end
        end

        if(axim_rrd_en) begin
            if(axim_raddr[2]) begin
                if(axim_raddr[1:0] == 2'h3) begin
                    axim_rrd <= {axim_stat, axim_ctrl}; //Read AXIM Control and Status Register
                end
            end
            else begin
                case(axim_raddr[1:0])
                    2'h0 : axim_rrd <= axic_addr;
                    2'h1 : axim_rrd <= axic_wdata;
                    2'h2 : axim_rrd <= axic_rdata;
                    2'h3 : axim_rrd <= axis_amt;
                endcase
            end
        end
    end
end

endmodule