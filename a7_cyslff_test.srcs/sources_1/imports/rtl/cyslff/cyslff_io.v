`timescale 1ns/1ps

module cyslff_io (
    //FPGA external IO
    inout [7:0] io_cyslff_fd,
    output reg io_cyslff_oe,
    output reg io_cyslff_rd,
    output reg io_cyslff_wr,
    output reg io_cyslff_pktend,

    input io_cyslff_feb,
    input io_cyslff_ffb,

    output reg [1:0] io_cyslff_addr,

    input io_cyslff_clk,

    //FPGA internal sync IO

    input sio_cyslff_fdo_en,
    input [7:0] sio_cyslff_fdo,
    output reg sio_cyslff_fdi_en,
    output reg [7:0] sio_cyslff_fdi,
    
    input sio_cyslff_oe,
    input sio_cyslff_rd,
    input sio_cyslff_wr,
    input sio_cyslff_pktend,

    output reg sio_cyslff_feb,
    output reg sio_cyslff_ffb,

    input [1:0] sio_cyslff_addr,
    input sio_cyslff_dir,

    output fdo_pause, //Cause by CySLFF FIFO Full
    input fdi_pause, //Cause By Fabric FIFO Full
    
    //input ioctr_rd_ready,
    
    //Output to fabric BUFG clock
    output cyslff_clk,
    input dev_srst
);

wire cyslff_clk_ub; //un-buffered clock

/*(* keep = "true" *)(* mark_debug = "true" *)*/  reg [7:0] io_cyslff_fdo = 8'h00;
wire [7:0] io_cyslff_fdi;

reg io_cyslff_hiz = 1'b1;

reg fdi_paused = 1'b0;
reg fdi_paused_den = 1'b0;

always@(posedge cyslff_clk) begin

    sio_cyslff_feb <= io_cyslff_feb;
    
    //io_cyslff_oe <= sio_cyslff_oe|(~io_cyslff_feb);
    //io_cyslff_rd <= (sio_cyslff_rd|fdi_pause)|(~io_cyslff_feb);
    
    io_cyslff_oe <= sio_cyslff_oe|(~sio_cyslff_feb);
    io_cyslff_rd <= (sio_cyslff_rd|fdi_pause)|(~sio_cyslff_feb);
    
    fdi_paused <= fdi_pause;
    if(fdi_pause) begin
        if(!fdi_paused) begin
            sio_cyslff_fdi_en <= 1'b0;
            sio_cyslff_fdi <= io_cyslff_fdi;
            fdi_paused_den <= io_cyslff_feb;
        end
    end
    else begin
        if(fdi_paused) begin
            sio_cyslff_fdi_en <= fdi_paused_den;
            fdi_paused_den <= 1'b0;
        end
        else begin
            sio_cyslff_fdi_en <= 1'b0;
            if((~io_cyslff_rd)&(io_cyslff_feb)) begin
                sio_cyslff_fdi_en <= 1'b1;
                sio_cyslff_fdi <= io_cyslff_fdi;
            end
        end
    end
    
    if(dev_srst) begin
        sio_cyslff_fdi_en <= 1'b0;
        fdi_paused <= 1'b0;
        fdi_paused_den <= 1'b0;
    end
end

//Stop at full, may lost byte
//assign fdo_pause = (~io_cyslff_ffb); //Cypress Halt when Full, use another way

////Count 512byte, wait ffb = 1'b1, may lost byte
//reg fdo_cnt_pause = 1'b0;

//reg [8:0] fdo_dcnt = 9'h0;
//reg [1:0] fdo_pcnt = 2'h0; 
//reg [2:0] fdo_wcnt = 3'h0;

//assign fdo_pause = fdo_cnt_pause;
//always@(posedge cyslff_clk) begin
//    if(dev_srst) begin
//        fdo_cnt_pause <= 1'b0; 
//        fdo_dcnt <= 9'h0;
//        fdo_pcnt <= 2'h0;
//        fdo_wcnt <= 3'h0;
//    end
//    else begin
//        if(fdo_cnt_pause) begin 
//            if(fdo_wcnt == 3'h7) begin
//                if(io_cyslff_feb == 1'b0) begin
//                    fdo_cnt_pause <= 1'b0;
//                    fdo_pcnt <= 2'b0;
//                end
//                else if(io_cyslff_ffb == 1'b1) begin
//                    fdo_cnt_pause <= 1'b0;
//                    fdo_pcnt <= 2'b1;
//                end
//            end
//            else begin
//                fdo_wcnt <= fdo_wcnt + 1;
//            end
//        end
//        else begin
//            if(sio_cyslff_dir) begin
//                fdo_dcnt <= 9'h0;
//                fdo_pcnt <= 2'h0;
//                fdo_wcnt <= 3'h0;
//            end
//            else begin
//                if(sio_cyslff_wr == 1'b0) begin
//                    if(fdo_dcnt == 9'd511) begin
//                        //if(fdo_pcnt == 2'h0) begin //Test 1 packet
//                        if(fdo_pcnt == 2'h1) begin //2 Packets
//                            fdo_cnt_pause <= 1'b1;
//                            fdo_pcnt <= 2'h0;
//                            fdo_wcnt <= 3'h0;
//                        end
//                        else begin
//                            fdo_pcnt <= fdo_pcnt+1;
//                        end
//                        fdo_dcnt <= 9'h0;
//                    end
//                    else begin
//                        fdo_dcnt <= fdo_dcnt + 1;
//                    end
//                end
//            end
//        end
//    end
//end

// Count 512 then pause, wait empty after 2 packet out, seems less lost byte, my need enough delay
reg fdo_cnt_pause = 1'b0;
reg [8:0] fdo_dcnt = 9'h0;
reg [1:0] fdo_pcnt = 2'h0; 
//parameter PKT_MAX_CNT = 1; //for 512*1
parameter PKT_MAX_CNT = 2; //for 512*2
//parameter PKT_MAX_CNT = 4; //for 512*4
assign fdo_pause = fdo_cnt_pause;
always@(posedge cyslff_clk) begin
    if(dev_srst) begin
        fdo_cnt_pause <= 1'b0; 
        fdo_dcnt <= 9'h0;
        fdo_pcnt <= 2'h0;
    end
    else begin
        if(fdo_cnt_pause) begin
            if(io_cyslff_feb == 1'b0) begin
                fdo_cnt_pause <= 1'b0;
                fdo_dcnt <= 9'h1;
            end
        end
        else begin
            if(sio_cyslff_dir) begin
                fdo_dcnt <= 9'h0;
                fdo_pcnt <= 2'h0;
            end
            else begin
                if(sio_cyslff_wr == 1'b0) begin
                    if(fdo_dcnt == 9'd511) begin
                        //if(fdo_pcnt == 2'h0) begin //Test 1 packet
                        if(fdo_pcnt == (PKT_MAX_CNT-1)) begin
                            fdo_cnt_pause <= 1'b1;
                            fdo_pcnt <= 2'h0;
                        end
                        else begin
                            fdo_pcnt <= fdo_pcnt+1;
                        end
                        fdo_dcnt <= 9'h0;
                    end
                    else begin
                        fdo_dcnt <= fdo_dcnt + 1;
                        if(sio_cyslff_pktend == 1'b0) begin
                            fdo_dcnt <= 9'h0;
                            fdo_pcnt <= 2'h0;
                        end
                    end
                end
            end
        end
    end
end

reg fdo_paused = 1'b0;
reg fdo_paused_wr = 1'b1;
reg fdo_paused_pktend = 1'b1;

//reg send_delayed = 1'b0;
reg [8:0] dly_cyslff_fdo;
reg dly_cyslff_wr;
reg dly_cyslff_pktend;

always@(posedge cyslff_clk) begin

    sio_cyslff_ffb <= io_cyslff_ffb;

    //io_cyslff_wr <= (sio_cyslff_wr)|fdo_pause;
    //io_cyslff_pktend <= sio_cyslff_pktend|fdo_pause;
    
    fdo_paused <= fdo_pause;
    
    if(fdo_pause) begin
        dly_cyslff_pktend <= 1'b1;
        if(!fdo_paused) begin
            fdo_paused_wr <= sio_cyslff_wr;
            dly_cyslff_wr <= 1'b1;
            
            if(sio_cyslff_fdo_en) begin
                dly_cyslff_fdo <= sio_cyslff_fdo;
            end
            
            if(dly_cyslff_pktend) begin
                fdo_paused_pktend <= sio_cyslff_pktend;
                //dly_cyslff_pktend <= 1'b0;
                dly_cyslff_pktend <= 1'b1;
            end
            else begin
                fdo_paused_pktend <= 1'b1;
                dly_cyslff_pktend <= 1'b1;
            end
        end
    end
    else begin
        if(fdo_paused) begin
            fdo_paused_wr <= 1'b1;
            fdo_paused_pktend <= 1'b1;
            dly_cyslff_wr <= fdo_paused_wr;
            dly_cyslff_pktend <= fdo_paused_pktend;
            fdo_paused <= 1'b0;
        end
        else begin
            dly_cyslff_wr <= sio_cyslff_wr;
            dly_cyslff_pktend <= sio_cyslff_pktend;
            if(sio_cyslff_fdo_en) begin
                dly_cyslff_fdo <= sio_cyslff_fdo;
            end
        end
    end
 
 /*   
    io_cyslff_wr <= dly_cyslff_wr;
    io_cyslff_pktend <= dly_cyslff_pktend;
    
    if(send_delayed) begin
        io_cyslff_fdo <= dly_cyslff_fdo;
        
        if(io_cyslff_hiz == 1'b1) begin
            send_delayed <= 1'b0;
        end
    end
    else begin
        io_cyslff_fdo <= dly_cyslff_fdo;
        if((io_cyslff_hiz == 1'b0)&sio_cyslff_fdo_en) begin
            //io_cyslff_fdo <= sio_cyslff_fdo;
            //io_cyslff_fdo <= 8'hFF;
            io_cyslff_fdo <= sio_cyslff_fdo;
            send_delayed <= 1'b1;
        end
    end
*/    
    if(dev_srst) begin
        fdo_paused <= 1'b0;
        fdo_paused_wr <= 1'b1;
        fdo_paused_pktend <= 1'b1;
        
        //send_delayed <= 1'b0;
        dly_cyslff_fdo <= 8'h0;
        dly_cyslff_wr <= 1'b1;
        dly_cyslff_pktend <= 1'b1;
    end
end

always@(negedge cyslff_clk) begin
    io_cyslff_wr <= dly_cyslff_wr;
    io_cyslff_pktend <= dly_cyslff_pktend;
    io_cyslff_fdo <= dly_cyslff_fdo;
end


always@(posedge cyslff_clk) begin
    io_cyslff_addr <= sio_cyslff_addr;
end

IBUF ibuf_cyslff (
    .O(cyslff_clk_ub),
    .I(io_cyslff_clk)
);

BUFG bufg_cyslff (
    .O(cyslff_clk),
    .I(cyslff_clk_ub)
);


//assign io_cyslff_hiz = sio_cyslff_wr&io_cyslff_wr; //Timing ISSUE
always@(posedge cyslff_clk) begin
    if(dev_srst) begin
        io_cyslff_hiz <= 1'b1;
    end
    else begin
        //io_cyslff_hiz <= sio_cyslff_wr;
        io_cyslff_hiz <= sio_cyslff_dir;
    end
end

genvar i;
generate

    for(i=0; i<8; i=i+1) begin: gen_iobuf_fd
        IOBUF #(
            //.DRIVE(12), // Specify the output drive strength
            //.IBUF_LOW_PWR("TRUE"), // Low Power - "TRUE", High Performance = "FALSE"
            //.IOSTANDARD("DEFAULT"), // Specify the I/O standard
            .SLEW("SLOW") // Specify the output slew rate
        ) IOBUF_inst (
            .O(io_cyslff_fdi[i]), // Buffer output
            .IO(io_cyslff_fd[i]), // Buffer inout port (connect directly to top-level port)
            .I(io_cyslff_fdo[i]), // Buffer input
            .T(io_cyslff_hiz) // 3-state enable input, high=input, low=output
        );
    end

endgenerate

endmodule