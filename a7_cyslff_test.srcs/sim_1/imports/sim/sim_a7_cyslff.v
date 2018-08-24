`timescale 1ns/1ps

module sim_k7_cyslff (
);

wire [7:0] io_cyslff_fd;
wire io_cyslff_oe;
wire io_cyslff_rd;
wire io_cyslff_wr;
wire io_cyslff_pktend;

reg io_cyslff_feb;
reg io_cyslff_ffb;

wire [1:0] io_cyslff_addr;

reg io_cyslff_clk = 1'b1; always io_cyslff_clk = #((1000/48)/2) ~io_cyslff_clk; //IFCLK
reg io_fpga_clk = 1'b1; always io_fpga_clk = #((1000/48)/2) ~io_fpga_clk; //FXCLK

reg [7:0] io_cyslff_fdi = 8'hFF;
wire [7:0] io_cyslff_fdo = 8'hZZ;

assign io_cyslff_fd = (io_cyslff_addr == 2'h02)? io_cyslff_fdo : io_cyslff_fdi; //output at negative level

initial begin: initValue
    io_cyslff_feb = 1'b0;
    io_cyslff_ffb = 1'b1;
end

a7_cyslff_test_top dut(
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
    .io_fpga_clk(io_fpga_clk)
);

//reg [7:0] dchk;
//reg dchk_fail;
integer i=0;
integer retry_cnt=0;
reg [7:0] dbuf [63:0];

initial begin
    for(i=0; i<64; i=i+1) begin
        dbuf[i] = 8'h00;
    end
end

integer idx=0;
integer amt=0;

reg [31:0] axim_wdata = 32'h0;
reg [31:0] axim_rdata = 32'h0;

initial begin: simMain
    wait(dut.dev_arst == 1'b0);
    @(posedge io_cyslff_clk);
    
    //axim_wr(32'h00000000, 32'hFFFFFFFF);
    
//    $stop;
    
//    axim_wr(32'h00000004, 32'hFFFFFFFF);
//    axim_wr(32'h00000008, 32'hFFFFFFFF);
//    axim_wr(32'h0000000C, 32'hFFFFFFFF);
//    axim_rd(32'h00000000);
    
    axim_wr(32'h42000030, 32'h00000001);
    axim_wr(32'h42000048, 32'h00000000);
    axim_rd(32'h42000034);
    
    axim_wr(32'h42000058, 32'h00000010);
    
    axis_send(16);
    
    repeat(5) @(posedge io_cyslff_clk);
    
    retry_cnt = 10;
    axim_rd(32'h42000034);
    while(axim_rdata[1] == 1'b0 & (retry_cnt!=0)) begin
        //axim_rd(32'h00000000);
        axim_rd(32'h42000030);
        axim_rd(32'h42000034);
        retry_cnt = retry_cnt-1;
    end
    
    if(!retry_cnt) begin
        $display("DMAI FAIL");
    end
    
    axim_wr(32'h42000030, 32'h00000000);
    //axim_rd(32'h00000000);
    repeat(5) @(posedge io_cyslff_clk);
    
    //Read from Memory
    axim_wr(32'h42000000, 32'h00000001);
    axim_wr(32'h42000018, 32'h00000000);
    axim_rd(32'h42000004);
    axim_wr(32'h42000028, 32'h00000010);
    
    axis_recv(16);
    
    repeat(5) @(posedge io_cyslff_clk);
    
    $finish;
end

task cysl_sim_full;
    input integer full_size;
    integer i;
    integer full_delay;
    reg next_ffb;
    begin
        full_delay = 4;
        i = 0;
        next_ffb = 1'b1;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_ffb = 1'b1;
        wait(io_cyslff_wr == 1'b0);
        
        while(io_cyslff_pktend != 1'b0) begin
            @(negedge io_cyslff_clk);
            if(io_cyslff_ffb) begin
                if(io_cyslff_wr == 1'b0 && (io_cyslff_pktend == 1'b1)) begin             
                    if(i == (full_size-1)) begin
                        next_ffb = 1'b0;
                        i = 0;
                    end else begin
                        i = i+1;
                    end
                end
            end
            else begin
                if(i == (full_delay-1)) begin
                    next_ffb = 1'b1;
                    i = 0;
                end
                else begin
                    i = i+1;
                end
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_ffb = next_ffb;
        end
        @(posedge io_cyslff_clk);
        next_ffb = 1'b1;
        #1 io_cyslff_ffb = next_ffb;
        @(posedge io_cyslff_clk);
    end
endtask

task axim_wr;
    input reg [31:0] axi_addr;
    input reg [31:0] axi_wdata;
begin
    
    @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = axi_addr[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h01; idx=idx+1;
    dbuf[idx] = axi_wdata[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_wdata[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h01; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    
    amt = idx;
    cysl_send_dbuf(amt);
    
    wait(dut.aximif.st == 3'h0); //IDLE
    
    @(posedge io_cyslff_clk);
    
    axi_wdata = dut.aximif.aximrt.axic_wdata;
    
    axim_wdata = axi_wdata;
    
    $display("AXIM_WR[%08h]:%08h", axi_addr, axi_wdata);
    
end
endtask

task axim_rd;
    input reg [31:0] axi_addr;
    reg [31:0]  axi_rdata;
begin
    @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = axi_addr[8*0+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*1+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*2+:8]; idx=idx+1;
    dbuf[idx] = axi_addr[8*3+:8]; idx=idx+1;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    
    amt = idx;
    cysl_send_dbuf(amt);
    
    wait(dut.aximif.st == 3'h0); //IDLE
    
    @(posedge io_cyslff_clk);
    
    axi_rdata = dut.aximif.aximrt.axic_rdata;
    axim_rdata = axi_rdata;
    
    $display("AXIM_RD[%08h]:%08h", axi_addr, axi_rdata);
end
endtask

task axis_send;
    input integer size;
begin
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = size; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h04; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    wait(dut.aximif.axis_fdi_ready == 1'b1);
    repeat(1) @(posedge io_cyslff_clk);
    
    cysl_send_mono(size+4, 0);
    
    wait(dut.aximif.st == 3'h0); //IDLE
    repeat(1) @(posedge io_cyslff_clk);
end
endtask

task axis_recv;
    input integer size;
begin
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    dbuf[idx] = size; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h0C; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    wait(dut.aximif.axis_fdo_ready == 1'b1);
    repeat(1) @(posedge io_cyslff_clk);
    
    //cysl_send_mono(size+4, 0);
    
    wait(dut.aximif.st == 3'h0); //IDLE
    repeat(1) @(posedge io_cyslff_clk);
end
endtask

task cysl_send_dbuf;
    input integer size;
    reg [7:0] d;
    integer i;
    begin
        i = 0;
        d = dbuf[0];
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b1;
        wait(io_cyslff_oe == 1'b0);
        #1 io_cyslff_fdi = d;
        wait(io_cyslff_rd == 1'b0);
        #1 io_cyslff_fdi = d;
        
        while(i<size) begin
            @(negedge io_cyslff_clk);
            if(io_cyslff_rd == 1'b0) begin
                i = i+1;
                d = dbuf[i];
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_fdi = d;
        end
        #1 io_cyslff_feb = 1'b0;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b0;
        #1 io_cyslff_fdi = 8'hFF;
        
        wait(io_cyslff_oe == 1'b1);
        
        repeat(4) @(posedge io_cyslff_clk);
        
    end
endtask

//task test_dchk;
//    input integer tlen;
//    input reg [7:0] tinit; 
//begin
//    @(posedge io_cyslff_clk);
//    dchk_fail = 0;
//    dchk = tinit;
//    i = 0;
//    fork : check_data
//        cysl_send(tlen, tinit);
//        begin
//            while(i<tlen) begin
//                @(negedge io_cyslff_clk);
//                if(dut.cyslff.cyslff_fdi_en == 1) begin
//                    if( dchk != dut.cyslff.cyslff_fdi) begin
//                        $display("data check fail: [%d] %h, %h", i, dchk, dut.cyslff.cyslff_fdi);
//                        dchk_fail = 1;
//                        $stop;
//                    end
//                    dchk = dchk + 1;
//                    i = i + 1;
//                end
//            end
//        end
//    join
    
//    @(posedge io_cyslff_clk);
//    if(!dchk_fail) begin
//        $display("dchk compare pass! (%d, %h)", tlen, tinit);
//    end
//end
//endtask

task cysl_send_mono;
    input integer size;
    input reg [7:0] init;
    reg [7:0] d;
    integer i;
    reg nsrd;
    begin
        d = init;
        i = 0;
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b1;
        wait(io_cyslff_oe == 1'b0);
        #1 io_cyslff_fdi = d;
        wait(io_cyslff_rd == 1'b0);
        #1 io_cyslff_fdi = d;
        i = 1;
        nsrd = 1'b0;
        while(i<size) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
            if(io_cyslff_rd == 1'b0) begin
                d = d+1;
                i = i+1;
            end
            @(posedge io_cyslff_clk);
            #1 io_cyslff_fdi = d;
        end
        @(negedge io_cyslff_clk);
        nsrd = io_cyslff_rd;
        while(nsrd == 1'b1) begin
            @(negedge io_cyslff_clk);
            nsrd = io_cyslff_rd;
        end
        
        @(posedge io_cyslff_clk);
        #1 io_cyslff_feb = 1'b0;
        #1 io_cyslff_fdi = 8'hFF;
        
        wait(io_cyslff_oe == 1'b1);
        
        repeat(4) @(posedge io_cyslff_clk);
        
    end
endtask

endmodule