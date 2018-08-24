----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Watson Huang
-- 
-- Create Date: 08/01, 2018
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL; -- For clog2 function
library UNISIM;
use UNISIM.VComponents.all;

entity aximif is
    generic (
        AXIS_DMA_BUF_LEN: integer :=24;
        AXIS_DATA_RATIO: integer :=4;

        C_M_AXI_ID_WIDTH: integer :=1;
        C_M_AXI_ADDR_WIDTH: integer :=32;
        C_M_AXI_DATA_WIDTH: integer :=32;
        C_M_AXI_AWUSER_WIDTH: integer :=0;
        C_M_AXI_ARUSER_WIDTH: integer :=0;
        C_M_AXI_WUSER_WIDTH: integer :=0;
        C_M_AXI_RUSER_WIDTH: integer :=0;
        C_M_AXI_BUSER_WIDTH: integer :=0
    );
    Port (
    --FPGA fabric

    --For AXI Interface
    --input ioctr_ready,

    ioctr_wr_empty: in std_logic;
    ioctr_rd_ready: in std_logic;

    fdo_pause: in std_logic; --Cause by CySLFF FIFO Full
    fdi_pause: out std_logic; --Cause By Fabric FIFO Full

    axic_fdi_en: in std_logic;
    axic_fdi: in std_logic_vector(7 downto 0);
    axic_fdi_ready: out std_logic;

    axic_fdo_en: out std_logic;
    axic_fdo: out std_logic_vector(7 downto 0);
    axic_fdo_ready: out std_logic;
    axic_fdo_last: out std_logic;

    axis_fdi_en: in std_logic;
    axis_fdi: in std_logic_vector(7 downto 0);
    axis_fdi_ready: out std_logic;

    axis_fdo_en: out std_logic;
    axis_fdo: out std_logic_vector(7 downto 0);
    axis_fdo_ready: out std_logic;
    axis_fdo_last: out std_logic;

    --M AXI Interface
    --input wire  M_AXI_ACLK,
    --input wire  M_AXI_ARESETN,
    M_AXI_AWID: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN: out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE: out std_logic_vector(2 downto 0);
    M_AXI_AWBURST: out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK: out std_logic;
    M_AXI_AWCACHE: out std_logic_vector(3 downto 0);
    M_AXI_AWPROT: out std_logic_vector(2 downto 0);
    M_AXI_AWQOS: out std_logic_vector(3 downto 0);
    --M_AXI_AWUSER: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
    M_AXI_AWVALID: out std_logic;
    M_AXI_AWREADY: in std_logic;
    M_AXI_WDATA: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    M_AXI_WLAST: out std_logic;
    --M_AXI_WUSER: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
    M_AXI_WVALID: out std_logic;
    M_AXI_WREADY: in std_logic;
    M_AXI_BID: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
    M_AXI_BRESP: in std_logic_vector(1 downto 0);
    --M_AXI_BUSER: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
    M_AXI_BVALID: in std_logic;
    M_AXI_BREADY: out std_logic;
    M_AXI_ARID: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN: out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE: out std_logic_vector(2 downto 0);
    M_AXI_ARBURST: out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK: out std_logic;
    M_AXI_ARCACHE: out std_logic_vector(3 downto 0);
    M_AXI_ARPROT: out std_logic_vector(2 downto 0);
    M_AXI_ARQOS: out std_logic_vector(3 downto 0);
    --M_AXI_ARUSER: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
    M_AXI_ARVALID: out std_logic;
    M_AXI_ARREADY: in std_logic;
    M_AXI_RID: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
    M_AXI_RDATA: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP: in std_logic_vector(1 downto 0);
    M_AXI_RLAST: in std_logic;
    --M_AXI_RUSER: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
    M_AXI_RVALID: in std_logic;
    M_AXI_RREADY: out std_logic;

    m_axis_tdata: out std_logic_vector(31 downto 0);
    m_axis_tkeep: out std_logic_vector(3 downto 0);
    m_axis_tlast: out std_logic;
    m_axis_tready: in std_logic;
    m_axis_tvalid: out std_logic;

    s_axis_tdata: in std_logic_vector(31 downto 0);
    s_axis_tkeep: in std_logic_vector(3 downto 0);
    s_axis_tlast: in std_logic;
    s_axis_tready: out std_logic;
    s_axis_tvalid: in std_logic;

    axim_clk: in std_logic;
    dev_srst: in std_logic
);
end aximif;

architecture behav of aximif is

function clog2(input : integer) return natural is
begin
    return integer(ceil(log2(real(input))));
end function;

    signal AXIS_RATIO_BITS : integer := clog2(AXIS_DATA_RATIO);
    type stat_type is (ST_IDLE, ST_OP, ST_REG, ST_AXIC, ST_AXIS, ST_CMD_IMCOMPLETE);
    signal st : stat_type := ST_IDLE;

    signal axim_raddr : std_logic_vector(2 downto 0);
    signal axim_rwd_en : std_logic;
    signal axim_rrd_en : std_logic;
    signal axim_rwd : std_logic_vector(31 downto 0);
    signal axim_rrd : std_logic_vector(31 downto 0);

    signal axic_addr : std_logic_vector(31 downto 0); 
    signal axic_wdata : std_logic_vector(31 downto 0);
    signal axic_rdata : std_logic_vector(31 downto 0);  
    signal axis_amt : std_logic_vector(31 downto 0);    

    signal axim_tmp : std_logic_vector(31 downto 0);
    signal axim_stat : std_logic_vector(23 downto 0);

    signal op : std_logic_vector(7 downto 0);
    signal prev_op : std_logic_vector(7 downto 0); 
    signal arg_cnt : std_logic_vector(3 downto 0); 
    signal axim_incomp : std_logic; 

    signal next_op : std_logic_vector(7 downto 0);
    signal next_op_fetched : std_logic;

    signal axim_rd_wait : std_logic;
    signal axim_wr_wait : std_logic;
    signal fdi_resumed : std_logic;

    signal m_axi_awvld : std_logic;
    signal m_axi_awrdy : std_logic;
    signal m_axi_wvld : std_logic;
    signal m_axi_wrdy : std_logic;
    signal m_axi_brdy : std_logic;
    signal m_axi_bvld : std_logic;
    signal m_axi_bresp_intn : std_logic_vector(1 downto 0);
    signal m_axi_arvld : std_logic;
    signal m_axi_arrdy : std_logic;
    signal m_axi_rrdy : std_logic;
    signal m_axi_rdata_intn : std_logic_vector(31 downto 0);
    signal m_axi_rvld : std_logic;
    signal m_axi_rresp_intn : std_logic_vector(1 downto 0);
    signal m_axi_wlast_intn : std_logic;
    signal axic_resp : std_logic_vector(1 downto 0);
    signal axis_ready : std_logic;

    signal xfr_amt : std_logic_vector(AXIS_DMA_BUF_LEN-1 downto 0);

    signal axis_tdata : std_logic_vector(31 downto 0);
    signal axis_tkeep : std_logic_vector(3 downto 0);
    signal axis_tvalid : std_logic;

    signal wait_cnt : std_logic_vector(3 downto 0);

    signal cond_rnw : std_logic;

    signal axim_ctrl : std_logic_vector(7 downto 0);

    signal axim_cen : std_logic;
    signal axim_crw : std_logic;
    signal axim_sen : std_logic;
    signal axim_srw : std_logic;
    
    signal s_axis_tready_intn : std_logic;
    signal fdi_pause_intn : std_logic;
    signal m_axis_tvalid_intn : std_logic;
    signal axis_fdo_ready_intn : std_logic;
    
    type vec_slice is array (0 to (AXIS_DATA_RATIO-1)) of std_logic_vector(7 downto 0);
    signal axim_tmp_slice : vec_slice;
    signal axim_rrd_slice : vec_slice;
    
    attribute keep: string; attribute mark_debug : string;
    
--    attribute keep of st : signal is "true"; attribute mark_debug of st : signal is "true";
--    attribute keep of axis_amt : signal is "true"; attribute mark_debug of axis_amt : signal is "true";
--    attribute keep of xfr_amt : signal is "true"; attribute mark_debug of xfr_amt : signal is "true";
--    attribute keep of fdi_pause : signal is "true"; attribute mark_debug of fdi_pause : signal is "true";
--    attribute keep of fdo_pause : signal is "true"; attribute mark_debug of fdo_pause : signal is "true";
--    --attribute keep of axis_fdo_ready_intn : signal is "true"; attribute mark_debug of axis_fdo_ready_intn : signal is "true";
--    attribute keep of axis_fdi_en : signal is "true"; attribute mark_debug of axis_fdi_en : signal is "true";
--    attribute keep of axis_fdi : signal is "true"; attribute mark_debug of axis_fdi : signal is "true";
--    attribute keep of axis_fdi_ready : signal is "true"; attribute mark_debug of axis_fdi_ready : signal is "true";
--    attribute keep of m_axis_tdata : signal is "true"; attribute mark_debug of m_axis_tdata : signal is "true";
--    attribute keep of m_axis_tkeep : signal is "true"; attribute mark_debug of m_axis_tkeep : signal is "true";
--    attribute keep of m_axis_tlast : signal is "true"; attribute mark_debug of m_axis_tlast : signal is "true";
--    attribute keep of m_axis_tready : signal is "true"; attribute mark_debug of m_axis_tready : signal is "true";
--    attribute keep of m_axis_tvalid : signal is "true"; attribute mark_debug of m_axis_tvalid : signal is "true";
    
--    attribute keep of axis_fdo_en : signal is "true"; attribute mark_debug of axis_fdo_en : signal is "true";
--    attribute keep of axis_fdo : signal is "true"; attribute mark_debug of axis_fdo : signal is "true";
--    attribute keep of axis_fdo_ready : signal is "true"; attribute mark_debug of axis_fdo_ready : signal is "true";
--    attribute keep of s_axis_tdata : signal is "true"; attribute mark_debug of s_axis_tdata : signal is "true";
--    attribute keep of s_axis_tkeep : signal is "true"; attribute mark_debug of s_axis_tkeep : signal is "true";
--    attribute keep of s_axis_tlast : signal is "true"; attribute mark_debug of s_axis_tlast : signal is "true";
--    attribute keep of s_axis_tready : signal is "true"; attribute mark_debug of s_axis_tready : signal is "true";
--    attribute keep of s_axis_tvalid : signal is "true"; attribute mark_debug of s_axis_tvalid : signal is "true";
    
begin


axim_stat <= prev_op & arg_cnt(3 downto 0) & b"000" & axim_incomp & b"0000" & b"00" & axic_resp;
axim_rwd <= axim_tmp;
cond_rnw <= op(7);
axim_cen <= axim_ctrl(0);
axim_crw <= axim_ctrl(1);
axim_sen <= axim_ctrl(2);
axim_srw <= axim_ctrl(3);

axim_tmp <= axim_tmp_slice(3)(7 downto 0) & axim_tmp_slice(2)(7 downto 0) & axim_tmp_slice(1)(7 downto 0) & axim_tmp_slice(0)(7 downto 0);
axim_rrd_slice(0) <= axim_rrd((8*(0+1)-1) downto 8*(0));
axim_rrd_slice(1) <= axim_rrd((8*(1+1)-1) downto 8*(1));
axim_rrd_slice(2) <= axim_rrd((8*(2+1)-1) downto 8*(2));
axim_rrd_slice(3) <= axim_rrd((8*(3+1)-1) downto 8*(3));

process(axim_clk) begin
    if (rising_edge(axim_clk)) then
        if(dev_srst = '1') then
            st <= ST_IDLE;

            op <= (others => '0');
            prev_op <= (others => '0');
            arg_cnt <= (others => '0');
            axim_incomp <= '0';

            axim_rwd_en <= '0';
            axim_rrd_en <= '0';

            axim_raddr <= b"111";
            --axim_tmp <= (others => '0');
            axim_tmp_slice <= (others => (others => '0'));
            
            fdi_pause_intn <= '0';

            axic_fdi_ready <= '0';
            axis_fdi_ready <= '0';

            axic_fdo_ready <= '0';
            axic_fdo_en <= '0';
            axic_fdo <= (others => '0');
            axic_fdo_last <= '0';

            axis_fdo_ready_intn <= '0';
            axis_fdo_en <= '0';
            axis_fdo <= (others => '0');
            axis_fdo_last <= '0';

            next_op <= (others => '0');
            next_op_fetched <= '0';

            axim_rd_wait <= '0';
            axim_wr_wait <= '0';
            fdi_resumed <= '0';

            m_axi_awvld <= '0';
            m_axi_wvld <= '0';
            m_axi_brdy <= '0';
            m_axi_arvld <= '0';
            m_axi_rrdy <= '0';

            m_axi_wlast_intn <= '0';

            axic_resp <= (others => '0');

            axis_ready <= '0';

            xfr_amt <= (others => '0');

            axis_tdata <= (others => '0');
            axis_tkeep <= (others => '0');
            axis_tvalid <= '0';

            m_axis_tdata <= (others => '0');
            m_axis_tkeep <= (others => '0');
            m_axis_tlast <= '0';
            m_axis_tvalid_intn <= '0';

            s_axis_tready_intn <= '0';

            wait_cnt <= (others => '0');
        else
            case st is 
                when ST_IDLE => 
                    fdi_pause_intn <= '0';
                    axic_fdi_ready <= '1';
                    axim_rwd_en <= '0';
                    axim_rrd_en <= '0';

                    axim_rd_wait <= '0';
                    axim_wr_wait <= '0';
                    
                    axis_ready <= '0';
                    wait_cnt <= (others => '0');

                    if(axic_fdi_en = '1') then
                        op <= axic_fdi;

                        prev_op <= op;
                        arg_cnt <= b"0000";
                        fdi_pause_intn <= '1';
                        st <= ST_OP;
                    end if;

                when ST_OP =>
                    if(cond_rnw = '1') then
                        axim_rrd_en <= '1';
                        if(axic_fdi_en = '1') then
                            next_op <= axic_fdi;
                            next_op_fetched <= '1';
                        end if;

                        fdi_pause_intn <= '1';
                        
                        axic_fdi_ready <= '0';
                        axic_fdo_ready <= '1';
                        axic_fdo_last <= '0';

                        if(axim_rd_wait = '1') then
                            if(ioctr_rd_ready = '1') then
                                if(arg_cnt = b"0011") then
                                    axim_rd_wait <= '0';
                                    arg_cnt <= b"0000";
                                    st <= ST_REG;
                                else
                                    arg_cnt <= std_logic_vector(unsigned(arg_cnt) + 1);
                                end if;
                            else
                                arg_cnt <= b"0000";
                            end if;
                        else
                            axim_rd_wait <= '1';
                            arg_cnt <= b"0000";
                            axim_rrd_en <= '1';
                            axim_raddr <= op(2 downto 0);
                        end if;
                    else
                        axim_rwd_en <= '0';
                        if(fdi_pause_intn = '1') then
                            fdi_pause_intn <= '0';
                            axic_fdi_ready <= '1';
                            axic_fdo_ready <= '0';
                            fdi_resumed <= '0';
                            if(axic_fdi_en = '1') then
                                --axim_tmp(to_integer(8*unsigned(arg_cnt)+7) downto to_integer(8*unsigned(arg_cnt)+0)) <= axic_fdi(7 downto 0);
                                axim_tmp_slice(to_integer(unsigned(arg_cnt))) <= axic_fdi;
                                
--                                case arg_cnt(1 downto 0) is
--                                    when b"00" => axim_tmp(8*(0+1)-1 downto 8*0) <= axic_fdi;
--                                    when b"01" => axim_tmp(8*(1+1)-1 downto 8*1) <= axic_fdi;
--                                    when b"10" => axim_tmp(8*(2+1)-1 downto 8*2) <= axic_fdi;
--                                    when b"11" => axim_tmp(8*(3+1)-1 downto 8*3) <= axic_fdi;
--                                    when others => null;
--                                end case;
                                
                                arg_cnt <= std_logic_vector(unsigned(arg_cnt) + 1);
                                if(arg_cnt = b"0011") then
                                    fdi_pause_intn <= '1';
                                    arg_cnt <= b"0000";
                                    st <= ST_REG;
                                end if;
                            end if;
                        else
                            fdi_resumed <= '1';
                            if(fdi_resumed = '1') then
                                if(axic_fdi_en = '1') then
                                    if(arg_cnt = b"0010") then
                                        fdi_pause_intn <= '1';
                                    end if;
                                    --axim_tmp(to_integer(8*unsigned(arg_cnt)+7) downto to_integer(8*unsigned(arg_cnt)+0)) <= axic_fdi(7 downto 0);
                                    axim_tmp_slice(to_integer(unsigned(arg_cnt))) <= axic_fdi;
                                    
--                                    case arg_cnt(1 downto 0) is
--                                        when b"00" => axim_tmp(8*(0+1)-1 downto 8*0) <= axic_fdi;
--                                        when b"01" => axim_tmp(8*(1+1)-1 downto 8*1) <= axic_fdi;
--                                        when b"10" => axim_tmp(8*(2+1)-1 downto 8*2) <= axic_fdi;
--                                        when b"11" => axim_tmp(8*(3+1)-1 downto 8*3) <= axic_fdi;
--                                        when others => null;
--                                    end case;
                                    
                                    arg_cnt <= std_logic_vector(unsigned(arg_cnt) + 1);
                                else 
                                    st <= ST_CMD_IMCOMPLETE;
                                    fdi_resumed <= '0';
                                end if;
                            end if;
                        end if;
                    end if;
                when ST_REG =>
                    if(cond_rnw = '1') then
                        axic_fdo_en <= '0';
                        axic_fdo_last <= '0';
                        if(axim_rd_wait = '1') then
                            if(fdo_pause = '1') then
                                arg_cnt <= b"0000";
                            else
                                if(arg_cnt = b"0011") then
                                    arg_cnt <= b"0000";
                                    axic_fdi_ready <= '1';
                                    axic_fdo_ready <= '0';
                                    axim_incomp <= '0';
                                    axim_rd_wait <= '0';
                                    if(next_op_fetched = '1') then
                                        op <= next_op;
                                        prev_op <= op;
                                        fdi_pause_intn <= '1';
                                        st <= ST_OP;
                                    else
                                        fdi_pause_intn <= '0';
                                        st <= ST_IDLE;
                                    end if;
                                else
                                    arg_cnt <= std_logic_vector(unsigned(arg_cnt) + 1);
                                end if;
                            end if;
                        else
                            if(fdo_pause = '0') then
                                axic_fdo_en <= '1';
                                --axic_fdo <= axim_rrd(integer(8*unsigned(arg_cnt+1)-1) downto integer(unsigned(8*arg_cnt)));
                                --axic_fdo <= axim_rrd(to_integer(8*(unsigned(arg_cnt)+1)-1) downto to_integer(8*(unsigned(arg_cnt))));
                                axic_fdo <= axim_rrd_slice(to_integer(unsigned(arg_cnt)));
                                
--                                case arg_cnt(1 downto 0) is
--                                    when b"00" => axic_fdo <= axim_rrd(8*(0+1)-1 downto 8*0);
--                                    when b"01" => axic_fdo <= axim_rrd(8*(1+1)-1 downto 8*1);
--                                    when b"10" => axic_fdo <= axim_rrd(8*(2+1)-1 downto 8*2);
--                                    when b"11" => axic_fdo <= axim_rrd(8*(3+1)-1 downto 8*3);
--                                    when others => null;
--                                end case;
                                
                                if(arg_cnt = b"0011") then
                                    axic_fdo_last <= '1';
                                    arg_cnt <= "0000";
                                    axim_rd_wait <= '1';
                                else
                                    arg_cnt <= std_logic_vector(unsigned(arg_cnt) + 1);
                                end if;
                            else
                                axic_fdo_en <= '0';
                            end if;
                        end if;
                    else
                        if(axim_wr_wait = '1') then
                            axim_rwd_en <= '0';
                            if(axim_rwd_en = '0') then
                                axim_wr_wait <= '0';
                                axim_rwd_en <= '0';
                                axim_incomp <= '0';
                                fdi_pause_intn <= '1';
                                if(axim_cen = '1') then
                                    axim_rwd_en <= '1';
                                    --axim_tmp <= axim_tmp(31 downto 4) & axim_tmp(3) & '0' & axim_tmp(1) & '0';
                                    axim_tmp_slice(0) <= axim_tmp_slice(0)(7 downto 4) & axim_tmp_slice(0)(3) & '0' & axim_tmp_slice(0)(1) & '0';
                                    
                                    if(axim_crw = '1') then
                                        m_axi_arvld <= '1';
                                    else
                                        m_axi_awvld <= '1';
                                    end if;
                                    st <= ST_AXIC;
                                
                                elsif(axim_sen = '1') then
                                    axim_rwd_en <= '1';
                                    --axim_tmp <= axim_tmp(31 downto 4) & axim_tmp(3) & '0' & axim_tmp(1) & '0';
                                    axim_tmp_slice(0) <= axim_tmp_slice(0)(7 downto 4) & axim_tmp_slice(0)(3) & '0' & axim_tmp_slice(0)(1) & '0';
                                    st <= ST_AXIS;
                                else
                                    fdi_pause_intn <= '0';
                                    st <= ST_IDLE;
                                end if;
                            end if;
                        else
                            axim_wr_wait <= '1';
                            fdi_pause_intn <= '1';
                            axim_rwd_en <= '1';
                            axim_raddr <= op(2 downto 0);
                            axim_incomp <= '0';
                            fdi_pause_intn <= '1';
                        end if;
                    end if;
                when ST_AXIC =>
                    fdi_pause_intn <= '1';
                    axim_rwd_en <= '0';
                    --axim_tmp <= axim_tmp;
                    if(axim_crw = '1') then
                        if((m_axi_arvld = '1') and (m_axi_arrdy = '1')) then
                            m_axi_arvld <= '0';
                            m_axi_rrdy <= '1';
                        end if;

                        if(axim_rd_wait = '1') then
                            axim_rwd_en <= '0';
                            axim_rd_wait <= '0';
                            fdi_pause_intn <= '0';
                            st <= ST_IDLE;
                        else
                            if((m_axi_rrdy = '1') and (m_axi_rvld = '1')) then
                                m_axi_rrdy <= '0';
                                axim_raddr <= b"010";
                                axim_rwd_en <= '1';
                                --axim_tmp <= m_axi_rdata_intn;
                                axim_tmp_slice(0) <= m_axi_rdata_intn(8*(0+1)-1 downto 8*0);
                                axim_tmp_slice(1) <= m_axi_rdata_intn(8*(1+1)-1 downto 8*1);
                                axim_tmp_slice(2) <= m_axi_rdata_intn(8*(2+1)-1 downto 8*2);
                                axim_tmp_slice(3) <= m_axi_rdata_intn(8*(3+1)-1 downto 8*3);
                                axim_rd_wait <= '1';
                            end if;
                        end if;
                    else
                        if((m_axi_awvld = '1') and (m_axi_awrdy = '1')) then
                            m_axi_awvld <= '0';
                            m_axi_wvld <= '1';
                            m_axi_wlast_intn <= '1';
                        end if;
                        if((m_axi_wvld = '1') and (m_axi_wrdy = '1')) then
                            m_axi_wvld <= '0';
                            m_axi_wlast_intn <= '0';
                            m_axi_brdy <= '1';
                        end if;
                        if((m_axi_brdy = '1') and (m_axi_bvld = '1')) then
                            m_axi_brdy <= '0';
                            axic_resp <= m_axi_bresp_intn;
                            fdi_pause_intn <= '0';
                            st <= ST_IDLE;
                        end if;
                    end if;

                when ST_AXIS =>
                    axim_rwd_en <= '0';
                    --axim_tmp <= axim_tmp;
                    if(axis_ready = '1') then
                        if(axim_srw = '1') then
                            if(fdo_pause = '1') then
                                axis_fdo_en <= '0';
                                if((s_axis_tready_intn = '1') and (s_axis_tvalid = '1')) then
                                    s_axis_tready_intn <= '0';
                                end if;
                            else 
                                axis_fdo_en <= '0';
                                axis_fdo_last <= '0';

                                if(unsigned(xfr_amt) < unsigned(axis_amt)) then
                                    if(axis_tvalid = '1') then
                                        s_axis_tready_intn <= '0';
                                        axis_fdo_en <= '1';
                                        axis_fdo <= axis_tdata(7 downto 0);
                                        axis_tdata <= x"00" & axis_tdata(31 downto 8);
                                        axis_tkeep(AXIS_DATA_RATIO-1 downto 0) <= '0' & axis_tkeep(AXIS_DATA_RATIO-1 downto 1);
                                        xfr_amt <= std_logic_vector(unsigned(xfr_amt) + 1);
                                        axis_fdo_last <= '0';

                                        if(unsigned(xfr_amt) = (unsigned(axis_amt)-1)) then
                                            axis_fdo_last <= '1';
                                        end if;

                                        if(axis_tkeep = b"0001") then
                                            if(s_axis_tvalid = '1') then
                                                axis_tvalid <= '1';
                                                axis_tdata <= s_axis_tdata;
                                                axis_tkeep <= s_axis_tkeep;
                                                s_axis_tready_intn <= '1';
                                            else
                                                axis_tvalid <= '0';
                                            end if;
                                        end if;
                                    else
                                        axis_fdo_en <= '0';
                                        s_axis_tready_intn <= '0';
                                        if(s_axis_tvalid = '1') then
                                            axis_tvalid <= '1';
                                            axis_tdata <= s_axis_tdata;
                                            axis_tkeep <= s_axis_tkeep;
                                            s_axis_tready_intn <= '1';
                                        end if;
                                        xfr_amt <= xfr_amt;
                                    end if;
                                else
                                    axis_fdo_en <= '0';
                                    axis_fdo_last <= '0';
                                    s_axis_tready_intn <= '0';

                                    if(s_axis_tvalid = '1') then
                                        s_axis_tready_intn <= '1';
                                    else
                                        if(wait_cnt = b"0111") then
                                            if(ioctr_wr_empty = '1') then
                                                s_axis_tready_intn <= '0';
                                                axic_fdi_ready <= '1';
                                                axis_fdo_ready_intn <= '0';
                                                axis_tvalid <= '0';
                                                axis_tkeep <= b"0000";
                                                wait_cnt <= b"0000";

                                                st <= ST_IDLE;
                                            end if;
                                        else
                                            wait_cnt <= std_logic_vector(unsigned(wait_cnt) + 1);
                                        end if;
                                    end if;
                                end if;
                            end if;
                        else
                            if(fdi_pause_intn = '1') then
                                if((m_axis_tvalid_intn = '1') and (m_axis_tready = '1')) then
                                    if(axis_tvalid = '1') then
                                        m_axis_tvalid_intn <= '1';
                                        fdi_pause_intn <= '1';
                                        axis_tvalid <= '0';
                                    else
                                        m_axis_tvalid_intn <= '0';
                                        fdi_pause_intn <= '0';
                                    end if;
                                end if;

                                if(unsigned(xfr_amt) < unsigned(axis_amt)) then
                                    if(axis_fdi_en = '1') then
                                        axis_tdata <= axis_fdi & axis_tdata(31 downto 8);
                                        axis_tkeep <= axis_tkeep(AXIS_DATA_RATIO-2 downto 0) & '1';
                                        xfr_amt <= std_logic_vector(unsigned(xfr_amt) + 1);
                                    end if;
                                end if;
                            else
                                fdi_pause_intn <= '0';
                                if(unsigned(xfr_amt) < unsigned(axis_amt)) then
                                    if(axis_fdi_en = '1') then
                                        axis_tdata <= axis_fdi & axis_tdata(31 downto 8);
                                        axis_tkeep <= axis_tkeep(AXIS_DATA_RATIO-2 downto 0) & '1';
                                        xfr_amt <= std_logic_vector(unsigned(xfr_amt) + 1);

                                        if(unsigned(xfr_amt) = (unsigned(axis_amt)-1)) then
                                            axis_tvalid <= '1';
                                            if(axis_tvalid = '1') then
                                                m_axis_tvalid_intn <= '1';
                                                m_axis_tdata <= axis_tdata;
                                                m_axis_tkeep <= axis_tkeep;
                                                axis_tvalid <= '0';
                                                axis_tkeep <= std_logic_vector(to_unsigned(0, AXIS_DATA_RATIO-1)) & '1';
                                                fdi_pause_intn <= '1';
                                            end if;
                                        else
                                            if(unsigned (xfr_amt(AXIS_RATIO_BITS-1 downto 0)) = (to_unsigned(AXIS_DATA_RATIO, 4)-1)) then
                                                axis_tvalid <= '1';
                                            else
                                                if(axis_tvalid = '1') then
                                                    m_axis_tvalid_intn <= '1';
                                                    m_axis_tdata <= axis_tdata;
                                                    m_axis_tkeep <= axis_tkeep;
                                                    axis_tvalid <= '0';
                                                    axis_tkeep <= std_logic_vector(to_unsigned(0, AXIS_DATA_RATIO-1)) & '1';
                                                else
                                                    if(m_axis_tvalid_intn = '1') then
                                                        if(m_axis_tready = '1') then
                                                            m_axis_tvalid_intn <= '0';
                                                        else
                                                            fdi_pause_intn <= '1';
                                                        end if;
                                                    end if;
                                                end if;
                                            end if;
                                        end if;
                                    else
                                        xfr_amt <= xfr_amt;
                                    end if;
                                else 
                                    fdi_pause_intn <= '0';
                                    if(m_axis_tvalid_intn = '1') then
                                        if(m_axis_tready = '1') then
                                            m_axis_tvalid_intn <= '0';
                                            m_axis_tlast <= '0';
                                        end if;
                                    else
                                        if(unsigned(axis_tkeep) /= to_unsigned(0, AXIS_DATA_RATIO)) then
                                            m_axis_tvalid_intn <= '1';
                                            m_axis_tdata <= axis_tdata;
                                            m_axis_tkeep <= axis_tkeep;
                                            m_axis_tlast <= '1';
                                            axis_tvalid <= '0';
                                            axis_tkeep <= std_logic_vector(to_unsigned(0, AXIS_DATA_RATIO-1)) & '0';
                                        else
                                            if(ioctr_wr_empty = '1') then
                                                axic_fdi_ready <= '1';
                                                axis_fdi_ready <= '0';
                                                axis_tvalid <= '0';
                                                axis_tkeep <= b"0000";
                                                st <= ST_IDLE;
                                            end if;
                                        end if;
                                    end if;
                                end if;
                            end if;
                        end if;
                    else
                        fdi_pause_intn <= '0';
                        if(axim_srw = '1') then
                            if((ioctr_wr_empty = '1') and (not (axis_fdo_ready_intn = '1'))) then
                                axic_fdi_ready <= '0';
                                axis_fdo_ready_intn <= '1';
                            elsif((axis_fdo_ready_intn = '1') and (ioctr_rd_ready = '1')) then
                                if(axim_rd_wait = '1') then
                                    if(wait_cnt = b"0111") then
                                        axis_ready <= '1';
                                        --xfr_amt <= std_logic_vector(unsigned(x"00000000", AXIS_DMA_BUF_LEN));
                                        xfr_amt <= (others => '0');
                                        axim_rd_wait <= '0';
                                        wait_cnt <= b"0000";
                                    else
                                        wait_cnt <= std_logic_vector(unsigned(wait_cnt) + 1);
                                    end if;
                                else
                                    axim_rd_wait <= '1';
                                    wait_cnt <= b"0000";
                                end if;
                            end if;
                        else
                            if(ioctr_wr_empty = '1') then
                                axic_fdi_ready <= '0';
                                axis_fdi_ready <= '1';
                                axis_ready <= '1';
                                xfr_amt <= (others => '0');
                            end if;
                        end if;
                    end if;

                when ST_CMD_IMCOMPLETE =>
                    axim_incomp <= '1';
                    fdi_pause_intn <= '0';
                    arg_cnt <= std_logic_vector(to_unsigned(0, 4));
                    axic_fdi_ready <= '1';
                    axic_fdo_ready <= '0';
                    next_op <= std_logic_vector(to_unsigned(0, 8));
                    next_op_fetched <= '0';
                    axim_rd_wait <= '0';
                    axim_wr_wait <= '0';
                    axis_ready <= '0';
                    wait_cnt <= std_logic_vector(to_unsigned(0, 4));
                    st <= ST_IDLE;
                when others =>
                    fdi_pause_intn <= '0';
                    arg_cnt <= std_logic_vector(to_unsigned(0, 4));
                    axic_fdi_ready <= '1';
                    axic_fdo_ready <= '0';
                    next_op <= std_logic_vector(to_unsigned(0, 8));
                    next_op_fetched <= '0';
                    axim_rd_wait <= '0';
                    axim_wr_wait <= '0';
                    axis_ready <= '0';
                    wait_cnt <= std_logic_vector(to_unsigned(0, 4));
                    st <= ST_IDLE;
            end case;
        end if;
    end if;
end process;

aximrt_inst : entity work.aximrt
generic map (
    AXIS_DMA_BUF_LEN => AXIS_DMA_BUF_LEN
)
port map (
    axim_raddr => axim_raddr,
    axim_rwd_en => axim_rwd_en,
    axim_rwd => axim_rwd,
    axim_rrd_en => axim_rrd_en,
    axim_rrd => axim_rrd,
    
    axim_stat => axim_stat,
    
    axic_addr => axic_addr,
    axic_wdata => axic_wdata,
    axic_rdata => axic_rdata,
    axis_amt => axis_amt,

    axim_ctrl => axim_ctrl,

    axim_clk => axim_clk,
    dev_srst => dev_srst
);

M_AXI_AWID <= "0";
M_AXI_AWLEN <= x"00";
M_AXI_AWSIZE <= b"010";
M_AXI_AWBURST <= b"00";
M_AXI_AWLOCK <= '0';
M_AXI_AWCACHE <= x"0";
M_AXI_AWPROT <= "000";
M_AXI_AWQOS <= x"0";
--M_AXI_AWUSER <= "0";

M_AXI_WSTRB <= x"F";
--M_AXI_WUSER <= "0";

M_AXI_ARID <= "0";
M_AXI_ARLEN <= x"00";
M_AXI_ARSIZE <= b"010";
M_AXI_ARBURST <= b"00";
M_AXI_ARLOCK <= '0';
M_AXI_ARCACHE <= x"0";
M_AXI_ARPROT <= b"000";
M_AXI_ARQOS <= x"0";
--M_AXI_ARUSER <= "0";

M_AXI_AWADDR <= axic_addr;
M_AXI_AWVALID <= m_axi_awvld;
m_axi_awrdy <= M_AXI_AWREADY;

M_AXI_WDATA <= axic_wdata;
M_AXI_WVALID <= m_axi_wvld;
M_AXI_WLAST <= m_axi_wlast_intn;
m_axi_wrdy <= M_AXI_WREADY;

m_axi_bresp_intn <= M_AXI_BRESP;
m_axi_bvld <= M_AXI_BVALID;
M_AXI_BREADY <= '1';

M_AXI_ARADDR <= axic_addr;
M_AXI_ARVALID <= m_axi_arvld;
m_axi_arrdy <= M_AXI_ARREADY;

m_axi_rdata_intn <= M_AXI_RDATA;
m_axi_rresp_intn <= M_AXI_RRESP;
m_axi_rvld <= M_AXI_RVALID;
M_AXI_RREADY <= m_axi_rrdy;

s_axis_tready <= s_axis_tready_intn;
fdi_pause <= fdi_pause_intn;
m_axis_tvalid <= m_axis_tvalid_intn;
axis_fdo_ready <= axis_fdo_ready_intn;

end behav;