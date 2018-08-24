`timescale 1ns/1ps
module sim_axis (
);

wire [31:0] m_axis_tdata;
wire [3:0] m_axis_tkeep;
wire m_axis_tlast;
reg m_axis_tready = 1'b0;
wire m_axis_tvalid;

reg [31:0] s_axis_tdata = 32'h0;
reg [3:0] s_axis_tkeep = 4'h0;
reg s_axis_tlast = 1'b0;
wire s_axis_tready;
reg s_axis_tvalid = 1'b0;

wire [7:0] io_cyslff_fd;
wire io_cyslff_oe;
wire io_cyslff_rd;
wire io_cyslff_wr;
wire io_cyslff_pktend;

reg io_cyslff_feb;
reg io_cyslff_ffb;

wire [1:0] io_cyslff_addr;

reg io_cyslff_clk = 1'b1; always io_cyslff_clk = #((1000/48)/2) ~io_cyslff_clk; //IFCLK

reg [7:0] io_cyslff_fdi = 8'hFF;
wire [7:0] io_cyslff_fdo = 8'hZZ;

assign io_cyslff_fd = (io_cyslff_addr == 2'h02)? io_cyslff_fdo : io_cyslff_fdi; //output at negative level

initial begin: initValue
    io_cyslff_feb = 1'b0;
    io_cyslff_ffb = 1'b1;
end

sim_axis_top dut(
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
    
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tready(s_axis_tready),
    .s_axis_tvalid(s_axis_tvalid)
);

integer i=0;
reg [7:0] dbuf [63:0];

initial begin
    for(i=0; i<64; i=i+1) begin
        dbuf[i] = 8'h00;
    end
end

integer idx=0;
integer amt=0;

initial begin: simMain
    wait(dut.dev_arst == 1'b0);
    @(posedge io_cyslff_clk);
    
    //cysl_test_diffsize(16);
    //cysl_test_diffsize(17);
    //cysl_test_diffsize(18);
    //cysl_test_diffsize(19);
    
    idx = 0;
    dbuf[idx] = 8'h03; idx=idx+1;
    //dbuf[idx] = 8'h10; idx=idx+1;
    //dbuf[idx] = 8'h00; idx=idx+1;
    //1024
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h08; idx=idx+1; //2048
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    idx = 0;
    dbuf[idx] = 8'h07; idx=idx+1;
    dbuf[idx] = 8'h0C; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    dbuf[idx] = 8'h00; idx=idx+1;
    amt = idx;
    cysl_send_dbuf(amt);
    
    repeat(10) @(posedge io_cyslff_clk);
    
    
    //sim_axis_tx(15);
    //fork: test_fdo_pause
        //sim_axis_tx(16);
        //cysl_fdo_pause_delay(1, 16, 8);
    //join
    //sim_axis_tx(17);
    //sim_axis_tx(16+4*3);
    fork: test_fdo_cnt
        sim_axis_tx(2048);
        sim_fdo_cnt_pause;
    join
    
    repeat(20) @(posedge io_cyslff_clk);
    
    $finish;
end

task sim_fdo_cnt_pause;
begin
    @(posedge io_cyslff_clk);
    wait(io_cyslff_wr == 1'b0);
    @(posedge io_cyslff_clk);
    io_cyslff_feb = 1'b1; io_cyslff_ffb = ~io_cyslff_feb;
    repeat(1024) @(posedge io_cyslff_clk);
    io_cyslff_feb = 1'b0; io_cyslff_ffb = ~io_cyslff_feb;
    repeat(64) @(posedge io_cyslff_clk);
    io_cyslff_feb = 1'b1; io_cyslff_ffb = ~io_cyslff_feb;
    repeat(1024) @(posedge io_cyslff_clk);
    io_cyslff_feb = 1'b0; io_cyslff_ffb = ~io_cyslff_feb;
    @(posedge io_cyslff_clk);
end
endtask

task sim_axis_tx;
    input integer size;
    reg [32:0] nxd;
    reg [3:0] nxk;
    reg nxv;
    reg nxl;
    integer i;
begin
    nxd = 32'h04030201;
    nxk = 4'hF;
    nxv = 1'b1;
    nxl = 1'b0;
    i = size;
    
    case(i)
        0: nxk = 4'h0;
        1: nxk = 4'h1;
        2: nxk = 4'h3;
        3: nxk = 4'h7;
    default: nxk = 4'hF;
    endcase
    
    if(i<=4)
        i = 0;
    else
        i = i-4;
    
    nxv = 1'b1;
    
    @(posedge io_cyslff_clk);
    #1;
    s_axis_tdata = nxd;
    s_axis_tkeep = nxk;
    s_axis_tvalid = nxv;
    s_axis_tlast = nxl;
    
    
    while(i>0) begin    
        
        @(negedge io_cyslff_clk);
        if(s_axis_tready&s_axis_tvalid) begin
            nxd[8*4-1:8*(4-1)] = nxd[8*4-1:8*(4-1)]+4;
            nxd[8*3-1:8*(3-1)] = nxd[8*3-1:8*(3-1)]+4;
            nxd[8*2-1:8*(2-1)] = nxd[8*2-1:8*(2-1)]+4;
            nxd[8*1-1:8*(1-1)] = nxd[8*1-1:8*(1-1)]+4;
            nxv = 1'b1;
            if(i<=4) begin
                case(i)
                    0: nxk = 4'h0;
                    1: nxk = 4'h1;
                    2: nxk = 4'h3;
                    3: nxk = 4'h7;
                default: nxk = 4'hF;
                endcase
                i = 0;
                nxl = 1'b1;
            end
            else begin
                i = i - 4;
            end
        end
        
        @(posedge io_cyslff_clk);
        #1;
        s_axis_tdata = nxd;
        s_axis_tkeep = nxk;
        s_axis_tvalid = nxv;
        s_axis_tlast = nxl;
        
    end
    
    @(negedge io_cyslff_clk);
    
    while(!(s_axis_tvalid & s_axis_tready)) begin
        @(negedge io_cyslff_clk);
    end
    
    @(posedge io_cyslff_clk);
    #1;
    s_axis_tdata = 32'h0;
    s_axis_tkeep = 4'h0;
    s_axis_tvalid = 1'b0;
    s_axis_tlast = 1'b0;
    
end
endtask

task cysl_test_diffsize;
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
    
    repeat(10) @(posedge io_cyslff_clk);
    
    m_axis_tready = 1'b1;
    fork: test_tvalid_delay
        cysl_send_mono(size+1, 0);
        cysl_tvalid_delay(9);
    join
    
    repeat(2) @(posedge io_cyslff_clk);
    m_axis_tready = 1'b0;
    
    repeat(10) @(posedge io_cyslff_clk);
end
endtask

task cysl_fdo_pause_delay;
    input integer init_delay;
    input integer lo_delay;
    input integer hi_delay;
    integer loop_exit;
    reg next_ffb;
    integer i;
    integer init_done;
begin
    loop_exit = 0;
    next_ffb = 1'b1;
    init_done = 0;
    
    if(init_delay < 1)
        init_delay = 1;
    
    wait(dut.s_axis_tvalid == 1'b1);
    
    i = 0;
    while(loop_exit == 0) begin
        @(negedge io_cyslff_clk);
        if(s_axis_tlast == 1'b1) loop_exit = 1;
        
        if(init_done) begin
            i = i+1;
            if(next_ffb == 1'b0) begin
                if( i >= lo_delay) begin
                    next_ffb = 1'b1;
                    i = 0;
                end
            end
            else begin
                if( i >= hi_delay) begin
                    next_ffb = 1'b0;
                    i = 0;
                end
            end
        end
        else begin
            i = i+1;
            if(i >= (init_delay)) begin
                init_done = 1'b1;
                next_ffb = ~next_ffb;
                i = 0;
            end
        end
        
        @(posedge io_cyslff_clk);
        #1 io_cyslff_ffb = next_ffb;
    end
    @(posedge io_cyslff_clk);
    #1 io_cyslff_ffb = 1'b1;
end
endtask

task cysl_tvalid_delay;
    input integer delay;
    reg loop_exit;
    reg next_tready;
    integer i;
begin
    loop_exit = 0;
    next_tready = 1'b1;
    while(loop_exit == 0) begin
        @(negedge io_cyslff_clk);
        if(m_axis_tlast == 1'b1) loop_exit = 1;
        if(m_axis_tready) begin
            if(m_axis_tvalid&m_axis_tready) begin
                next_tready = 1'b0;
                i = 0;
            end
        end
        else begin
            if(i==(delay-1)) begin
                next_tready = 1'b1;
            end
            else begin
                i = i + 1;
            end 
        end
        @(posedge io_cyslff_clk);
        #1 m_axis_tready = next_tready;
    end
    @(posedge io_cyslff_clk);
    #1 m_axis_tready = 1'b1;
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