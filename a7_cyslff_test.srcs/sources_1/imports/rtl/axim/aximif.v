module aximif#(
    parameter AXIS_DMA_BUF_LEN = 24,
    parameter AXIS_DATA_RATIO = 4,

    parameter integer C_M_AXI_ID_WIDTH	= 1,
    parameter integer C_M_AXI_ADDR_WIDTH	= 32,
    parameter integer C_M_AXI_DATA_WIDTH	= 32,
    parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
    parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
    parameter integer C_M_AXI_WUSER_WIDTH	= 0,
    parameter integer C_M_AXI_RUSER_WIDTH	= 0,
    parameter integer C_M_AXI_BUSER_WIDTH	= 0
)(
    //FPGA fabric
    
    //For AXI Interface
    //input ioctr_ready,
    
    input ioctr_wr_empty,
    input ioctr_rd_ready,
    
    input fdo_pause, //Cause by CySLFF FIFO Full
(* keep = "true" *)(* mark_debug = "true" *)    output reg fdi_pause, //Cause By Fabric FIFO Full

    input       axic_fdi_en,
    input [7:0] axic_fdi,
    output reg axic_fdi_ready,

    output reg       axic_fdo_en,
    output reg [7:0] axic_fdo,
    output reg axic_fdo_ready,
    output reg axic_fdo_last,

    input       axis_fdi_en,
    input [7:0] axis_fdi,
    output reg axis_fdi_ready,

    output reg       axis_fdo_en,
    output reg [7:0] axis_fdo,
    output reg axis_fdo_ready,
    output reg axis_fdo_last,

    //M AXI Interface
    //input wire  M_AXI_ACLK,
    //input wire  M_AXI_ARESETN,
    output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
    output wire [7 : 0] M_AXI_AWLEN,
    output wire [2 : 0] M_AXI_AWSIZE,
    output wire [1 : 0] M_AXI_AWBURST,
    output wire  M_AXI_AWLOCK,
    output wire [3 : 0] M_AXI_AWCACHE,
    output wire [2 : 0] M_AXI_AWPROT,
    output wire [3 : 0] M_AXI_AWQOS,
    output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
    output wire  M_AXI_AWVALID,
    input wire  M_AXI_AWREADY,
    output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    output wire  M_AXI_WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
    output wire  M_AXI_WVALID,
    input wire  M_AXI_WREADY,
    input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
    input wire [1 : 0] M_AXI_BRESP,
    input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
    input wire  M_AXI_BVALID,
    output wire  M_AXI_BREADY,
    output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
    output wire [7 : 0] M_AXI_ARLEN,
    output wire [2 : 0] M_AXI_ARSIZE,
    output wire [1 : 0] M_AXI_ARBURST,
    output wire  M_AXI_ARLOCK,
    output wire [3 : 0] M_AXI_ARCACHE,
    output wire [2 : 0] M_AXI_ARPROT,
    output wire [3 : 0] M_AXI_ARQOS,
    output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
    output wire  M_AXI_ARVALID,
    input wire  M_AXI_ARREADY,
    input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
    input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
    input wire [1 : 0] M_AXI_RRESP,
    input wire  M_AXI_RLAST,
    input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
    input wire  M_AXI_RVALID,
    output wire  M_AXI_RREADY,

(* keep = "true" *)(* mark_debug = "true" *)    output reg [31:0] m_axis_tdata,
(* keep = "true" *)(* mark_debug = "true" *)    output reg [3:0] m_axis_tkeep,
(* keep = "true" *)(* mark_debug = "true" *)    output reg m_axis_tlast,
(* keep = "true" *)(* mark_debug = "true" *)    input m_axis_tready,
(* keep = "true" *)(* mark_debug = "true" *)    output reg m_axis_tvalid,

    input [31:0] s_axis_tdata,
    input [3:0] s_axis_tkeep,
    input s_axis_tlast,
    output reg s_axis_tready,
    input s_axis_tvalid,

    input axim_clk,
    input dev_srst
);

function integer clog2;
    input integer value;
    begin
        value = value-1;
        for (clog2=0; value>0; clog2=clog2+1)
            value = value>>1;
        end
endfunction

localparam AXIS_RATIO_BITS = clog2(AXIS_DATA_RATIO);

localparam ST_IDLE = 3'h0;
localparam ST_OP = 3'h1;
localparam ST_REG = 3'h2;
localparam ST_AXIC = 3'h3;
localparam ST_AXIS = 3'h4;
localparam ST_CMD_IMCOMPLETE = 3'h7;

(* keep = "true" *)(* mark_debug = "true" *) reg [3-1:0] st = ST_IDLE;

reg [2:0] axim_raddr;
reg axim_rwd_en;
reg axim_rrd_en;
wire [31:0] axim_rwd;
wire [31:0] axim_rrd;

wire [31:0] axic_addr;   //ADDR: 0x0
wire [31:0] axic_wdata;  //ADDR: 0x1
wire [31:0] axic_rdata;  //ADDR: 0x2
(* keep = "true" *)(* mark_debug = "true" *) wire [31:0] axis_amt;    //ADDR: 0x3, only 23bit available

reg [31:0] axim_tmp;
wire [23:0] axim_stat;

reg [7:0] op, prev_op; //op[7] = R/W, op[6] = FAXIM/REG, current only op[7] works
reg [3:0] arg_cnt; //argument count
reg axim_incomp; //Indicate entered command incomplete state

reg [7:0] next_op;
reg next_op_fetched;

reg axim_rd_wait;
reg axim_wr_wait;
reg fdi_resumed;

reg m_axi_awvld;
wire m_axi_awrdy;
reg m_axi_wvld;
wire m_axi_wrdy;
reg m_axi_brdy;
wire m_axi_bvld;
wire [1:0] m_axi_bresp;
reg m_axi_arvld;
wire m_axi_arrdy;
reg m_axi_rrdy;
wire [31:0] m_axi_rdata;
wire m_axi_rvld;
wire [1:0] m_axi_rresp;
reg m_axi_wlast;

reg [1:0] axic_resp;
reg axis_ready;

(* keep = "true" *)(* mark_debug = "true" *) reg [AXIS_DMA_BUF_LEN-1:0] xfr_amt;

//reg [AXIS_DMA_BUF_LEN-1:0] axis_bamt;
//reg [3:0] axis_bcnt; //4bit
(* keep = "true" *)(* mark_debug = "true" *) reg [31:0] axis_tdata;
(* keep = "true" *)(* mark_debug = "true" *) reg [3:0] axis_tkeep;
(* keep = "true" *)(* mark_debug = "true" *) reg axis_tvalid;

reg [3:0] wait_cnt; //wait count

wire cond_rnw = op[7]; //1:Read/0:Write
//wire [2:0] reg_addr = op[2:0]; //Change to reg type for AXIC writeback

//assign axim_csr = {prev_op, 4'h0, arg_cnt[3:0], 7'h0, axim_incomp, axim_resp[3:0], axim_exec[3:0]};
assign axim_stat = {prev_op, arg_cnt[3:0], 3'h0, axim_incomp, 4'h0, 2'h0, axic_resp};
assign axim_rwd = axim_tmp;
//assign axim_raddr = op[2:0];

wire [7:0] axim_ctrl;

wire axim_cen = axim_ctrl[0];
wire axim_crw = axim_ctrl[1]; //1:read/0:write
wire axim_sen = axim_ctrl[2];
wire axim_srw = axim_ctrl[3]; //1:read/0:write


always@(posedge axim_clk) begin

    if(dev_srst) begin
        st <= ST_IDLE;

        op <= 8'h0;
        prev_op <= 8'h0;
        arg_cnt <= 4'h0;
        axim_incomp <= 1'b0;
        
        axim_rwd_en <= 1'b0;
        axim_rrd_en <= 1'b0;

        axim_raddr <= 3'h7;
        axim_tmp <= 32'h0;

        //IO
        fdi_pause <= 1'b0;
        
        axic_fdi_ready <= 1'b0;
        axis_fdi_ready <= 1'b0;

        axic_fdo_ready <= 1'b0;
        axic_fdo_en <= 1'b0;
        axic_fdo <= 8'h0;
        axic_fdo_last <= 1'b0;
        
        axis_fdo_ready <= 1'b0;
        axis_fdo_en <= 1'b0;
        axis_fdo <= 8'h0;
        axis_fdo_last <= 1'b0;

        next_op <= 8'h0;
        next_op_fetched <= 1'b0;

        axim_rd_wait <= 1'b0;
        axim_wr_wait <= 1'b0;
        fdi_resumed <= 1'b0;

        m_axi_awvld <= 1'b0;
        m_axi_wvld <= 1'b0;
        m_axi_brdy <= 1'b0;
        m_axi_arvld <= 1'b0;
        m_axi_rrdy <= 1'b0;
        
        m_axi_wlast <= 1'b0;
        
        axic_resp <= 2'h0;
        
        axis_ready <= 1'b0;
        xfr_amt <= {AXIS_DMA_BUF_LEN{1'b0}};
        //axis_bamt <= {AXIS_DMA_BUF_LEN{1'b0}}; //23bit
        //axis_bcnt <= 2'h0;
        axis_tdata <= 32'h0;
        axis_tkeep <= 4'h0;
        axis_tvalid <= 1'b0;

        m_axis_tdata <= 32'h0;
        m_axis_tkeep <= 4'h0;
        m_axis_tlast <= 1'b0;
        m_axis_tvalid <= 1'b0;

        s_axis_tready <= 1'b0;
        
        wait_cnt <= 4'h0;
    end
    else begin

        case (st)
            ST_IDLE: begin
                fdi_pause <= 1'b0;
                axic_fdi_ready <= 1'b1;
                axim_rwd_en <= 1'b0;
                axim_rrd_en <= 1'b0;

                axim_rd_wait <= 1'b0;
                axim_wr_wait <= 1'b0;
                
                axis_ready <= 1'b0;
                wait_cnt <= 4'h0;
                
                if(axic_fdi_en) begin
                    op <= axic_fdi;

                    prev_op <= op;
                    arg_cnt <= 4'h0;
                    fdi_pause <= 1'b1;
                    st <= ST_OP;
                end
            end

            ST_OP: begin
                if(cond_rnw) begin
                    //Read

                    axim_rrd_en <= 1'b0;

                    if(axic_fdi_en) begin
                        next_op <= axic_fdi;
                        next_op_fetched <= 1'b1;
                    end
                    
                    fdi_pause <= 1'b1;
                    
                    axic_fdi_ready <= 1'b0;
                    axic_fdo_ready <= 1'b1;
                    axic_fdo_last <= 1'b0;

                    if(axim_rd_wait) begin
                        if(ioctr_rd_ready) begin
                            if(arg_cnt == 4'h3) begin
                                axim_rd_wait <= 1'b0;
                                arg_cnt <= 4'h0;    
                                st <= ST_REG;
                            end
                            else begin
                                arg_cnt <= arg_cnt + 1;
                            end
                        end
                        else begin
                            arg_cnt <= 4'h0;
                        end
                                
                    end
                    else begin
                        axim_rd_wait <= 1'b1;
                        arg_cnt <= 4'h0;

                        axim_rrd_en <= 1'b1;
                        axim_raddr <= op[2:0];
                    end
                end
                else begin
                    //Write
                    axim_rwd_en <= 1'b0;
                    if(fdi_pause) begin
                        fdi_pause <= 1'b0;
                        axic_fdi_ready <= 1'b1;
                        axic_fdo_ready <= 1'b0;
                        
                        fdi_resumed <= 1'b0;
                        
                        if(axic_fdi_en) begin
                            axim_tmp[8*arg_cnt+:8] <= axic_fdi;
                            arg_cnt <= arg_cnt + 1;
                            if(arg_cnt == 4'h3) begin
                                fdi_pause <= 1'b1;
                                axim_tmp[8*arg_cnt+:8] <= axic_fdi;
                                arg_cnt <= 4'h0;
                                st <= ST_REG;
                            end
                        end
                    end
                    else begin
                        fdi_resumed <= 1'b1;
                        if(fdi_resumed) begin
                            if(axic_fdi_en) begin
                                if(arg_cnt == 4'h2) begin
                                    fdi_pause <= 1'b1;
                                end
                                axim_tmp[8*arg_cnt+:8] <= axic_fdi;
                                arg_cnt <= arg_cnt + 1;
                            end
                            else begin
                                st <= ST_CMD_IMCOMPLETE;
                                fdi_resumed <= 1'b0;
                            end
                        end
                    end
                end
            end

            ST_REG: begin
                if(cond_rnw) begin
                    //Read
                    axic_fdo_en <= 1'b0;
                    axic_fdo_last <= 1'b0;
                    if(axim_rd_wait) begin
                        if(fdo_pause) begin
                            arg_cnt <= 4'h0;
                        end
                        else begin
                            if((arg_cnt == 4'h3)) begin
                                arg_cnt <= 4'h0;
                                axic_fdi_ready <= 1'b1;
                                axic_fdo_ready <= 1'b0;
                                axim_incomp <= 1'b0;
                                axim_rd_wait <= 1'b0;
                                if(next_op_fetched) begin
                                    op <= next_op;
                                    prev_op <= op;
                                    fdi_pause <= 1'b1;
                                    st = ST_OP;
                                end
                                else begin
                                    fdi_pause <= 1'b0;
                                    st = ST_IDLE;
                                end
                            end
                            else begin
                                arg_cnt <= arg_cnt + 1;
                            end
                        end
                    end
                    else begin
                        if(!fdo_pause) begin
                            axic_fdo_en <= 1'b1;
                            axic_fdo <= axim_rrd[8*arg_cnt+:8];
                            
                            if(arg_cnt == 4'h3) begin
                                axic_fdo_last <= 1'b1;
                                arg_cnt <= 4'h0;
                                axim_rd_wait <= 1'b1;
                            end
                            else begin
                                arg_cnt <= arg_cnt + 1;
                            end
                        end
                        else begin
                            axic_fdo_en <= 1'b0;
                        end
                    end
                end
                else begin
                    //Write
                    if(axim_wr_wait) begin
                        axim_rwd_en <= 1'b0;
                        if(!axim_rwd_en) begin     
                            axim_wr_wait <= 1'b0;
                            axim_rwd_en <= 1'b0;
                            axim_incomp <= 1'b0;
                            fdi_pause <= 1'b1;
                            if(axim_cen) begin
                                axim_rwd_en <= 1'b1;
                                axim_tmp <= {axim_tmp[31:4], axim_tmp[3], 1'b0, axim_tmp[1], 1'b0}; //Clear AXIC/S Enable
                                if(axim_crw) begin
                                    //Read
                                    m_axi_arvld <= 1'b1;
                                end
                                else begin
                                    //Write
                                    m_axi_awvld <= 1'b1;
                                end
                                st = ST_AXIC;   
                            end
                            else if(axim_sen) begin
                                axim_rwd_en <= 1'b1;
                                axim_tmp <= {axim_tmp[31:4], axim_tmp[3], 1'b0, axim_tmp[1], 1'b0}; //Clear AXIC/S Enable
                                st = ST_AXIS;
                            end
                            else begin
                                fdi_pause <= 1'b0;
                                st = ST_IDLE;
                            end
                        end
                    end
                    else begin
                        axim_wr_wait <= 1'b1;
                        fdi_pause <= 1'b1;
                        axim_rwd_en <= 1'b1;
                        axim_raddr <= op[2:0];
                        axim_incomp <= 1'b0;
                        fdi_pause <= 1'b1;
                        //st = ST_IDLE;
                    end
                end
            end

            ST_AXIC: begin
                fdi_pause <= 1'b1;
                axim_rwd_en <= 1'b0;
                axim_tmp <= axim_tmp;

                if(axim_crw) begin
                    //Read
                    //start from m_axi_arvld <= 1'b1;
                    if(m_axi_arvld&m_axi_arrdy) begin
                        m_axi_arvld <= 1'b0;
                        m_axi_rrdy <= 1'b1;
                    end
                    
                    if(axim_rd_wait) begin
                        axim_rwd_en <= 1'b0;
                        axim_rd_wait <= 1'b0;
                        fdi_pause <= 1'b0;
                        st = ST_IDLE;
                    end
                    else begin
                        if(m_axi_rrdy&m_axi_rvld) begin
                            m_axi_rrdy <= 1'b0;
                            
                            axim_raddr <= 3'h2; //from aximrt.v
                            axim_rwd_en <= 1'b1;
                            axim_tmp <= m_axi_rdata;

                            axim_rd_wait <= 1'b1;
                        end
                    end
                end
                else begin
                    //Write
                    //start from m_axi_awvld <= 1'b1;
                    if(m_axi_awvld&m_axi_awrdy) begin
                        m_axi_awvld <= 1'b0;
                        m_axi_wvld <= 1'b1;
                        m_axi_wlast <= 1'b1;
                    end
                    
                    if(m_axi_wvld&m_axi_wrdy) begin
                        m_axi_wvld <= 1'b0;
                        m_axi_wlast <= 1'b0;
                        m_axi_brdy <= 1'b1;
                    end

                    if(m_axi_brdy&m_axi_bvld) begin
                        m_axi_brdy <= 1'b0;
                        axic_resp <= m_axi_bresp;
                        
                        fdi_pause <= 1'b0;
                        st = ST_IDLE;
                    end
                end
            end

            ST_AXIS: begin
                //fdi_pause <= 1'b0;
                axim_rwd_en <= 1'b0;
                axim_tmp <= axim_tmp;
                if(axis_ready) begin
                    if(axim_srw) begin
                        //Read
                        if(fdo_pause) begin
                            axis_fdo_en <= 1'b0;
                            if(s_axis_tready&s_axis_tvalid) begin
                                s_axis_tready <= 1'b0; //already sampled data, just stop
                            end
                        end
                        else begin
                            axis_fdo_en <= 1'b0;
                            axis_fdo_last <= 1'b0;
                            
                            if(xfr_amt < axis_amt) begin
                                //xfr_amt < axis_amt
                                if(axis_tvalid) begin
                                    //Data buffer valid
                                    s_axis_tready <= 1'b0;
                                    
                                    axis_fdo_en <= 1'b1;
                                    axis_fdo <= axis_tdata[7:0];
                                    axis_tdata <= {8'h0, axis_tdata[31:8]};
                                    axis_tkeep[0+:AXIS_DATA_RATIO] <= {1'b0, axis_tkeep[1+:(AXIS_DATA_RATIO-1)]};
                                    
                                    xfr_amt <= xfr_amt + 1;
                                    
                                    axis_fdo_last <= 1'b0;
                                    if(xfr_amt == (axis_amt-1)) begin
                                        axis_fdo_last <= 1'b1;
                                    end
                                    
                                    if(axis_tkeep == {{(AXIS_DATA_RATIO-1){1'b0}}, 1'b1}) begin
                                        if(s_axis_tvalid) begin
                                            axis_tvalid <= 1'b1;
                                            axis_tdata <= s_axis_tdata;
                                            axis_tkeep <= s_axis_tkeep; 
                                            s_axis_tready <= 1'b1;
                                        end
                                        else begin
                                            axis_tvalid <= 1'b0;
                                        end
                                    end
                                    
                                end
                                else begin
                                    //Data buffer empty
                                    axis_fdo_en <= 1'b0;
                                    s_axis_tready <= 1'b0;
                                    if(s_axis_tvalid) begin
                                        axis_tvalid <= 1'b1;
                                        axis_tdata <= s_axis_tdata;
                                        axis_tkeep <= s_axis_tkeep; 
                                        s_axis_tready <= 1'b1;
                                    end
                                    xfr_amt <= xfr_amt;
                                end
                            end
                            else begin
                                //xfr_amt >= axis_amt
                                axis_fdo_en <= 1'b0;
                                axis_fdo_last <= 1'b0;
                                s_axis_tready <= 1'b0;
                                
                                if(s_axis_tvalid) begin
                                    s_axis_tready <= 1'b1;
                                end
                                else begin
                                    if(wait_cnt == 4'h7) begin                                                   
                                        if(ioctr_wr_empty) begin //EP6 empty
                                            s_axis_tready <= 1'b0;
                                            //Back to normal mode
                                            axic_fdi_ready <= 1'b1;
                                            axis_fdo_ready <= 1'b0;
                                            
                                            axis_tvalid <= 1'b0;
                                            axis_tkeep <= 4'h0;
                                            
                                            wait_cnt <= 4'h0;
                                            
                                            st = ST_IDLE;
                                        end
                                    end
                                    else begin
                                        wait_cnt <= wait_cnt + 1;
                                    end
                                end
                            end
                        end
                    end
                    else begin
                        //Write
                        if(fdi_pause) begin
                            if(m_axis_tvalid) begin
                                if(m_axis_tready) begin
                                    if(axis_tvalid) begin //Avoid last data error
                                        m_axis_tvalid <= 1'b1;
                                        fdi_pause <= 1'b1;
                                        axis_tvalid <= 1'b0;
                                    end
                                    else begin
                                        m_axis_tvalid <= 1'b0;
                                        fdi_pause <= 1'b0;
                                    end
                                end
                            end
                            else begin
                                if(axis_tvalid) begin
                                    m_axis_tvalid <= 1'b1;
                                    axis_tvalid <= 1'b0;
                                    fdi_pause <= 1'b1;
                                end
                            end
                            
                            if(xfr_amt < axis_amt) begin
                                if(axis_fdi_en) begin //Handle paused data
                                    //axis_tdata[8*xfr_amt[0+:AXIS_RATIO_BITS]+:8] <= axis_fdi;
                                    axis_tdata <= {axis_fdi, axis_tdata[31:8]};
                                    axis_tkeep[0+:AXIS_DATA_RATIO] <= {axis_tkeep[0+:(AXIS_DATA_RATIO-1)], 1'b1};
                                    xfr_amt <= xfr_amt + 1;
                                end
                            end
                        end
                        else begin
                            fdi_pause <= 1'b0;
                            if(xfr_amt < axis_amt) begin
                                //xfr_amt < axis_amt
                                if(axis_fdi_en) begin
                                    //axis_fdi_en = 1
                                    //axis_tdata[8*xfr_amt[0+:AXIS_RATIO_BITS]+:8] <= axis_fdi;
                                    axis_tdata <= {axis_fdi, axis_tdata[31:8]};
                                    axis_tkeep[0+:AXIS_DATA_RATIO] <= {axis_tkeep[0+:(AXIS_DATA_RATIO-1)], 1'b1};
                                    
                                    xfr_amt <= xfr_amt + 1;
                                    
                                    if(xfr_amt == (axis_amt-1)) begin
                                        //axis_tvalid <= 1'b1; //For last data valid, but use tkeep to send last
                                        if(axis_tvalid) begin //Previous data in there
                                            m_axis_tvalid <= 1'b1;
                                            m_axis_tdata <= axis_tdata;
                                            m_axis_tkeep <= axis_tkeep;
                                            axis_tkeep <= {{(AXIS_DATA_RATIO-1){1'b0}}, 1'b1};
                                            fdi_pause = 1'b1;
                                        end
                                    end
                                    else begin
                                        if(xfr_amt[0+:AXIS_RATIO_BITS] == (AXIS_DATA_RATIO-1)) begin
                                            axis_tvalid <= 1'b1;
                                        end
                                        
                                        if(axis_tvalid) begin
                                            m_axis_tvalid <= 1'b1;
                                            m_axis_tdata <= axis_tdata;
                                            m_axis_tkeep <= axis_tkeep;
                                            axis_tvalid <= 1'b0;
                                            axis_tkeep <= {{(AXIS_DATA_RATIO-1){1'b0}}, 1'b1};
                                        end

                                        if(m_axis_tvalid) begin
                                            if(m_axis_tready) begin
                                                m_axis_tvalid <= 1'b0;
                                            end
                                            else begin
                                                fdi_pause <= 1'b1;
                                            end
                                        end
                                        
                                    end
                                end
                                else begin
                                    //axis_fdi_en = 0
                                    //Wait data
                                    xfr_amt <= xfr_amt;
                                end
                           end
                           else begin
                                //xfr_amt >= axis_amt
                                fdi_pause <= 1'b0;
                                //m_axis_tvalid <= 1'b0;
                                //m_axis_tlast <= 1'b0;
                                if(m_axis_tvalid) begin
                                    if(m_axis_tready) begin
                                        m_axis_tvalid <= 1'b0;
                                        m_axis_tlast <= 1'b0;
                                    end
                                end
                                else begin
                                    if(axis_tkeep != {(AXIS_DATA_RATIO){1'b0}}) begin
                                        m_axis_tvalid <= 1'b1;
                                        m_axis_tdata <= axis_tdata;
                                        m_axis_tkeep <= axis_tkeep;
                                        m_axis_tlast <= 1'b1;
                                        axis_tvalid <= 1'b0;
                                        axis_tkeep <= {{(AXIS_DATA_RATIO-1){1'b0}}, 1'b0};
                                    end
                                    else begin
                                        //back to axic mode
                                        if(ioctr_wr_empty) begin
                                            axic_fdi_ready <= 1'b1;
                                            axis_fdi_ready <= 1'b0;
                                            axis_tvalid <= 1'b0;
                                            axis_tkeep <= {{(AXIS_DATA_RATIO-1){1'b0}}, 1'b0};
                                            st = ST_IDLE;
                                        end
                                    end
                                end
                           end
                        end
                    end
                end
                else begin
                    //axis_bcnt <= 2'h0;
                    fdi_pause <= 1'b0;
                    if(axim_srw) begin
                        //Read
                        axis_tdata <= 32'h0;
                        xfr_amt <= {AXIS_DMA_BUF_LEN{1'b0}};
                        if(ioctr_wr_empty&(!axis_fdo_ready)) begin
                            axic_fdi_ready <= 1'b0;
                            axis_fdo_ready <= 1'b1;
                        end
                        else if(axis_fdo_ready&ioctr_rd_ready) begin
                            if(axim_rd_wait) begin
                                if(wait_cnt == 4'h7) begin
                                    axis_ready <= 1'b1;
                                    axim_rd_wait <= 1'b0;
                                    wait_cnt <= 4'h0;
                                end
                                else begin
                                    wait_cnt <= wait_cnt + 1;
                                end
                            end
                            else begin
                                axim_rd_wait <= 1'b1;
                                wait_cnt <= 4'h0;
                            end
                        end
                    end
                    else begin
                        //Write
                        axis_tdata <= 32'h0;
                        xfr_amt <= {AXIS_DMA_BUF_LEN{1'b0}};
                        if(ioctr_wr_empty) begin
                            axic_fdi_ready <= 1'b0;
                            axis_fdi_ready <= 1'b1;
                            axis_ready <= 1'b1;
                        end
                    end
                end
            end

            ST_CMD_IMCOMPLETE: begin

                axim_incomp <= 1'b1;

                fdi_pause <= 1'b0;
                arg_cnt <= 4'h0;
                axic_fdi_ready <= 1'b1;
                axic_fdo_ready <= 1'b0;
                next_op <= 8'h0;
                next_op_fetched <= 1'b0;
                axim_rd_wait <= 1'b0;
                axim_wr_wait <= 1'b0;
                axis_ready <= 1'b0;
                wait_cnt <= 4'h0;
                st = ST_IDLE;
            end

            default: begin
                fdi_pause <= 1'b0;
                arg_cnt <= 4'h0;
                axic_fdi_ready <= 1'b1;
                axic_fdo_ready <= 1'b0;
                next_op <= 8'h0;
                next_op_fetched <= 1'b0;
                axim_rd_wait <= 1'b0;
                axim_wr_wait <= 1'b0;
                axis_ready <= 1'b0;
                wait_cnt <= 4'h0;
                st = ST_IDLE;
            end

        endcase

    end
end

aximrt #(
    .AXIS_DMA_BUF_LEN(AXIS_DMA_BUF_LEN)
) aximrt (
    //AXIM Register Tables

    .axim_raddr(axim_raddr),
    .axim_rwd_en(axim_rwd_en),
    .axim_rwd(axim_rwd),
    .axim_rrd_en(axim_rrd_en),
    .axim_rrd(axim_rrd),
    
    .axim_stat(axim_stat),
    
    .axic_addr(axic_addr),
    .axic_wdata(axic_wdata),
    .axic_rdata(axic_rdata),
    .axis_amt(axis_amt),

    .axim_ctrl(axim_ctrl),

    .axim_clk(axim_clk),
    .dev_srst(dev_srst)
);

//M_AXI Constants
//AW Port
assign M_AXI_AWID = 0;
assign M_AXI_AWLEN = 0;
assign M_AXI_AWSIZE = 2;
assign M_AXI_AWBURST = 0;
assign M_AXI_AWLOCK = 0;
assign M_AXI_AWCACHE = 0;
assign M_AXI_AWPROT = 0;
assign M_AXI_AWQOS = 0;
assign M_AXI_AWUSER = 0;
//W Port
assign M_AXI_WSTRB = 4'hF;
assign M_AXI_WUSER = 0;
//AR Port
assign M_AXI_ARID = 0;
assign M_AXI_ARLEN = 0;
assign M_AXI_ARSIZE = 2;
assign M_AXI_ARBURST = 0;
assign M_AXI_ARLOCK = 0;
assign M_AXI_ARCACHE = 0;
assign M_AXI_ARPROT = 0;
assign M_AXI_ARQOS = 0;
assign M_AXI_ARUSER = 0;

//M_AXI Connection
assign M_AXI_AWADDR = axic_addr;
assign M_AXI_AWVALID = m_axi_awvld;
assign m_axi_awrdy = M_AXI_AWREADY;

assign M_AXI_WDATA = axic_wdata;
assign M_AXI_WVALID = m_axi_wvld;
assign M_AXI_WLAST = m_axi_wlast;
assign m_axi_wrdy = M_AXI_WREADY;

assign m_axi_bresp =  M_AXI_BRESP;
assign m_axi_bvld = M_AXI_BVALID;
//assign M_AXI_BREADY = m_axi_brdy;
assign M_AXI_BREADY = 1'b1; //Always 1 as s2mm simulation

assign M_AXI_ARADDR = axic_addr;
assign M_AXI_ARVALID = m_axi_arvld;
assign m_axi_arrdy = M_AXI_ARREADY;

assign m_axi_rdata =  M_AXI_RDATA;
assign m_axi_rresp =  M_AXI_RRESP;
assign m_axi_rvld = M_AXI_RVALID;
assign M_AXI_RREADY = m_axi_rrdy;

endmodule
