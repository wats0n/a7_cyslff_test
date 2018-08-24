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
library UNISIM;
use UNISIM.VComponents.all;

entity cy2axi is
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
        
        --FPGA external IO
        io_cyslff_fd: inout std_logic_vector(7 downto 0);
        io_cyslff_oe: out std_logic;
        io_cyslff_rd: out std_logic;
        io_cyslff_wr: out std_logic;
        io_cyslff_pktend: out std_logic;

        io_cyslff_feb: in std_logic;
        io_cyslff_ffb: in std_logic;

        io_cyslff_addr: out std_logic_vector(1 downto 0);

        io_cyslff_clk: in std_logic;

        --M AXI Interface
        --input wire  M_AXI_ACLK,
        --input wire  M_AXI_ARESETN,
        M_AXI_AWID: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
        M_AXI_AWADDR: out std_logic_vector(32-1 downto 0);
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
        M_AXI_ARADDR: out std_logic_vector(32-1 downto 0);
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

        axim_clk: out std_logic;
        dev_arst: in std_logic
    );
end cy2axi;

architecture behav of cy2axi is
    component cyslff_io
    Port (
        --FPGA external IO
        io_cyslff_fd: inout std_logic_vector(7 downto 0);
        io_cyslff_oe: out std_logic;
        io_cyslff_rd: out std_logic;
        io_cyslff_wr: out std_logic;
        io_cyslff_pktend: out std_logic;

        io_cyslff_feb: in std_logic;
        io_cyslff_ffb: in std_logic;

        io_cyslff_addr: out std_logic_vector(1 downto 0);

        io_cyslff_clk: in std_logic;

        --FPGA internal sync IO

        sio_cyslff_fdo_en: in std_logic;
        sio_cyslff_fdo: in std_logic_vector(7 downto 0);
        sio_cyslff_fdi_en: out std_logic;
        sio_cyslff_fdi: out std_logic_vector(7 downto 0);
        
        sio_cyslff_oe: in std_logic;
        sio_cyslff_rd: in std_logic;
        sio_cyslff_wr: in std_logic;
        sio_cyslff_pktend: in std_logic;

        sio_cyslff_feb: out std_logic;
        sio_cyslff_ffb: out std_logic;

        sio_cyslff_addr: in std_logic_vector(1 downto 0);
        sio_cyslff_dir: in std_logic;

        fdo_pause: out std_logic; --Cause by CySLFF FIFO Full
        fdi_pause: in std_logic; --Cause By Fabric FIFO Full
        
        --input ioctr_rd_ready,
        
        --Output to fabric BUFG clock
        cyslff_clk: out std_logic;
        dev_srst: in std_logic
    );
end component;

component cyslff_syncio
    Port (
        -- FPGA internal sync IO
        sio_cyslff_fdo_en: out std_logic;
        sio_cyslff_fdo: out std_logic_vector(7 downto 0);
        sio_cyslff_fdi_en: in std_logic;
        sio_cyslff_fdi: in std_logic_vector(7 downto 0);

        sio_cyslff_oe: out std_logic;
        sio_cyslff_rd: out std_logic;
        sio_cyslff_wr: out std_logic;
        sio_cyslff_pktend: out std_logic;

        sio_cyslff_feb: in std_logic;
        sio_cyslff_ffb: in std_logic;

        sio_cyslff_addr: out std_logic_vector(1 downto 0);
        sio_cyslff_dir: out std_logic;

        --FPGA internal fabric

        cyslff_fdo_en: in std_logic;
        cyslff_fdo: in std_logic_vector(7 downto 0);
        cyslff_fdi_en: out std_logic;
        cyslff_fdi: out std_logic_vector(7 downto 0);
        
        cyslff_oe: in std_logic;
        cyslff_rd: in std_logic;
        cyslff_wr: in std_logic;
        cyslff_pktend: in std_logic;

        cyslff_feb: out std_logic;
        cyslff_ffb: out std_logic;

        cyslff_addr: in std_logic_vector(1 downto 0);
        cyslff_dir: in std_logic;

        fdo_pause: in std_logic;
        fdi_pause: in std_logic;
        
        cyslff_clk: in std_logic;
        dev_srst: in std_logic
    );
end component;

component cyslff_ifctr
    Port (
        cyslff_fdo_en: out std_logic;
        cyslff_fdo: out std_logic_vector(7 downto 0);
        cyslff_fdi_en: in std_logic;
        cyslff_fdi: in std_logic_vector(7 downto 0);
        
        cyslff_oe: out std_logic;
        cyslff_rd: out std_logic;
        cyslff_wr: out std_logic;
        cyslff_pktend: out std_logic;

        cyslff_feb: in std_logic;
        cyslff_ffb: in std_logic;

        cyslff_addr: out std_logic_vector(1 downto 0);
        
        cyslff_dir: out std_logic := '1';
        
        fdo_pause: in std_logic; --Cause by CySLFF FIFO Full
        fdi_pause: in std_logic;

        --For AXI Interface
        ioctr_wr_empty: out std_logic;
        ioctr_rd_ready: out std_logic;

        axic_fdi_en: out std_logic;
        axic_fdi: out std_logic_vector(7 downto 0);
        axic_fdi_ready: in std_logic;

        axic_fdo_en: in std_logic;
        axic_fdo: in std_logic_vector(7 downto 0);
        axic_fdo_ready: in std_logic;
        axic_fdo_last: in std_logic;

        axis_fdi_en: out std_logic;
        axis_fdi: out std_logic_vector(7 downto 0);
        axis_fdi_ready: in std_logic;

        axis_fdo_en: in std_logic;
        axis_fdo: in std_logic_vector(7 downto 0);
        axis_fdo_ready: in std_logic;
        axis_fdo_last: in std_logic;

        cyslff_clk: in std_logic;
        dev_srst: in std_logic
    );
end component;

component aximif
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
    M_AXI_AWADDR: out std_logic_vector(32-1 downto 0);
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
    M_AXI_ARADDR: out std_logic_vector(32-1 downto 0);
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
end component;
    
    signal sio_cyslff_fdo_en : std_logic;
    signal sio_cyslff_fdo : std_logic_vector(7 downto 0);
    signal sio_cyslff_fdi_en : std_logic;
    signal sio_cyslff_fdi : std_logic_vector(7 downto 0);

    signal sio_cyslff_oe : std_logic;
    signal sio_cyslff_rd : std_logic;
    signal sio_cyslff_wr : std_logic;
    signal sio_cyslff_pktend : std_logic;

    signal sio_cyslff_feb : std_logic;
    signal sio_cyslff_ffb : std_logic;

    signal sio_cyslff_addr : std_logic_vector(1 downto 0);
    signal sio_cyslff_dir : std_logic;

    signal cyslff_fdo_en : std_logic;
    signal cyslff_fdo : std_logic_vector(7 downto 0);
    signal cyslff_fdi_en : std_logic;
    signal cyslff_fdi : std_logic_vector(7 downto 0);

    signal cyslff_oe : std_logic;
    signal cyslff_rd : std_logic;
    signal cyslff_wr : std_logic;
    signal cyslff_pktend : std_logic;

    signal cyslff_feb : std_logic;
    signal cyslff_ffb : std_logic;

    signal cyslff_addr : std_logic_vector(1 downto 0);
    signal cyslff_dir : std_logic;

    signal cyslff_clk : std_logic;

    signal ioctr_wr_empty : std_logic;
    signal ioctr_rd_ready : std_logic;

    signal fdo_pause : std_logic;
    signal fdi_pause : std_logic;

    signal axic_fdi_en : std_logic;
    signal axic_fdi : std_logic_vector(7 downto 0);
    signal axic_fdi_ready : std_logic;

    signal axic_fdo_en : std_logic;
    signal axic_fdo : std_logic_vector(7 downto 0);
    signal axic_fdo_ready : std_logic;
    signal axic_fdo_last : std_logic;

    signal axis_fdi_en : std_logic;
    signal axis_fdi : std_logic_vector(7 downto 0);
    signal axis_fdi_ready : std_logic;

    signal axis_fdo_en : std_logic;
    signal axis_fdo : std_logic_vector(7 downto 0);
    signal axis_fdo_ready : std_logic;
    signal axis_fdo_last : std_logic;

    signal dev_srst : std_logic := '1';
    
begin

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    if(dev_arst = '1') then
        dev_srst <= '1' after 0.1ns;
    else
        dev_srst <= '0' after 0.1ns;
    end if;
end if; end process;

cyslff_io_inst : cyslff_io port map (
    io_cyslff_fd => io_cyslff_fd,
    io_cyslff_oe => io_cyslff_oe,
    io_cyslff_rd => io_cyslff_rd,
    io_cyslff_wr => io_cyslff_wr,
    io_cyslff_pktend => io_cyslff_pktend,

    io_cyslff_feb => io_cyslff_feb,
    io_cyslff_ffb => io_cyslff_ffb,

    io_cyslff_addr => io_cyslff_addr,

    io_cyslff_clk => io_cyslff_clk,

    sio_cyslff_fdo_en => sio_cyslff_fdo_en,
    sio_cyslff_fdo => sio_cyslff_fdo,
    sio_cyslff_fdi_en => sio_cyslff_fdi_en,
    sio_cyslff_fdi => sio_cyslff_fdi,
        
    sio_cyslff_oe => sio_cyslff_oe,
    sio_cyslff_rd => sio_cyslff_rd,
    sio_cyslff_wr => sio_cyslff_wr,
    sio_cyslff_pktend => sio_cyslff_pktend,

    sio_cyslff_feb => sio_cyslff_feb,
    sio_cyslff_ffb => sio_cyslff_ffb,

    sio_cyslff_addr => sio_cyslff_addr,
    sio_cyslff_dir => sio_cyslff_dir,

    fdo_pause => fdo_pause,
    fdi_pause => fdi_pause,

    cyslff_clk => cyslff_clk,
    dev_srst => dev_srst
);

cyslff_syncio_inst : cyslff_syncio port map (
    sio_cyslff_fdo_en => sio_cyslff_fdo_en,
    sio_cyslff_fdo => sio_cyslff_fdo,
    sio_cyslff_fdi_en => sio_cyslff_fdi_en,
    sio_cyslff_fdi => sio_cyslff_fdi,

    sio_cyslff_oe => sio_cyslff_oe,
    sio_cyslff_rd => sio_cyslff_rd,
    sio_cyslff_wr => sio_cyslff_wr,
    sio_cyslff_pktend => sio_cyslff_pktend,

    sio_cyslff_feb => sio_cyslff_feb,
    sio_cyslff_ffb => sio_cyslff_ffb,

    sio_cyslff_addr => sio_cyslff_addr,
    sio_cyslff_dir => sio_cyslff_dir,

    cyslff_fdo_en => cyslff_fdo_en,
    cyslff_fdo => cyslff_fdo,
    cyslff_fdi_en => cyslff_fdi_en,
    cyslff_fdi => cyslff_fdi,
        
    cyslff_oe => cyslff_oe,
    cyslff_rd => cyslff_rd,
    cyslff_wr => cyslff_wr,
    cyslff_pktend => cyslff_pktend,

    cyslff_feb => cyslff_feb,
    cyslff_ffb => cyslff_ffb,

    cyslff_addr => cyslff_addr,
    cyslff_dir => cyslff_dir,

    fdo_pause => fdo_pause,
    fdi_pause => fdi_pause,

    cyslff_clk => cyslff_clk,
    dev_srst => dev_srst
);

cyslff_ifctr_inst : cyslff_ifctr port map (
    cyslff_fdo_en => cyslff_fdo_en,
    cyslff_fdo => cyslff_fdo,
    cyslff_fdi_en => cyslff_fdi_en,
    cyslff_fdi => cyslff_fdi,
        
    cyslff_oe => cyslff_oe,
    cyslff_rd => cyslff_rd,
    cyslff_wr => cyslff_wr,
    cyslff_pktend => cyslff_pktend,

    cyslff_feb => cyslff_feb,
    cyslff_ffb => cyslff_ffb,

    cyslff_addr => cyslff_addr,
    cyslff_dir => cyslff_dir,

    fdo_pause => fdo_pause,
    fdi_pause => fdi_pause,
    
    ioctr_wr_empty => ioctr_wr_empty,
    ioctr_rd_ready => ioctr_rd_ready,

    axic_fdi_en => axic_fdi_en,
    axic_fdi => axic_fdi,
    axic_fdi_ready => axic_fdi_ready,

    axic_fdo_en => axic_fdo_en,
    axic_fdo => axic_fdo,
    axic_fdo_ready => axic_fdo_ready,
    axic_fdo_last => axic_fdo_last,

    axis_fdi_en => axis_fdi_en,
    axis_fdi => axis_fdi,
    axis_fdi_ready => axis_fdi_ready,

    axis_fdo_en => axis_fdo_en,
    axis_fdo => axis_fdo,
    axis_fdo_ready => axis_fdo_ready,
    axis_fdo_last => axis_fdo_last,

    cyslff_clk => cyslff_clk,
    dev_srst => dev_srst
);

aximif_inst : aximif port map (
    ioctr_wr_empty => ioctr_wr_empty,
    ioctr_rd_ready => ioctr_rd_ready,
    
    fdo_pause => fdo_pause,
    fdi_pause => fdi_pause,

    axic_fdi_en => axic_fdi_en,
    axic_fdi => axic_fdi,
    axic_fdi_ready => axic_fdi_ready,

    axic_fdo_en => axic_fdo_en,
    axic_fdo => axic_fdo,
    axic_fdo_ready => axic_fdo_ready,
    axic_fdo_last => axic_fdo_last,
    
    axis_fdi_en => axis_fdi_en,
    axis_fdi => axis_fdi,
    axis_fdi_ready => axis_fdi_ready,

    axis_fdo_en => axis_fdo_en,
    axis_fdo => axis_fdo,
    axis_fdo_ready => axis_fdo_ready,
    axis_fdo_last => axis_fdo_last,

    M_AXI_AWID => M_AXI_AWID,
    M_AXI_AWADDR => M_AXI_AWADDR,
    M_AXI_AWLEN => M_AXI_AWLEN,
    M_AXI_AWSIZE => M_AXI_AWSIZE,
    M_AXI_AWBURST => M_AXI_AWBURST,
    M_AXI_AWLOCK => M_AXI_AWLOCK,
    M_AXI_AWCACHE => M_AXI_AWCACHE,
    M_AXI_AWPROT => M_AXI_AWPROT,
    M_AXI_AWQOS => M_AXI_AWQOS,
    --M_AXI_AWUSER => M_AXI_AWUSER,
    M_AXI_AWVALID => M_AXI_AWVALID,
    M_AXI_AWREADY => M_AXI_AWREADY,
    M_AXI_WDATA => M_AXI_WDATA,
    M_AXI_WSTRB => M_AXI_WSTRB,
    M_AXI_WLAST => M_AXI_WLAST,
    --M_AXI_WUSER => M_AXI_WUSER,
    M_AXI_WVALID => M_AXI_WVALID,
    M_AXI_WREADY => M_AXI_WREADY,
    M_AXI_BID => M_AXI_BID,
    M_AXI_BRESP => M_AXI_BRESP,
    --M_AXI_BUSER => M_AXI_BUSER,
    M_AXI_BVALID => M_AXI_BVALID,
    M_AXI_BREADY => M_AXI_BREADY,
    M_AXI_ARID => M_AXI_ARID,
    M_AXI_ARADDR => M_AXI_ARADDR,
    M_AXI_ARLEN => M_AXI_ARLEN,
    M_AXI_ARSIZE => M_AXI_ARSIZE,
    M_AXI_ARBURST => M_AXI_ARBURST,
    M_AXI_ARLOCK => M_AXI_ARLOCK,
    M_AXI_ARCACHE => M_AXI_ARCACHE,
    M_AXI_ARPROT => M_AXI_ARPROT,
    M_AXI_ARQOS => M_AXI_ARQOS,
    --M_AXI_ARUSER => M_AXI_ARUSER,
    M_AXI_ARVALID => M_AXI_ARVALID,
    M_AXI_ARREADY => M_AXI_ARREADY,
    M_AXI_RID => M_AXI_RID,
    M_AXI_RDATA => M_AXI_RDATA,
    M_AXI_RRESP => M_AXI_RRESP,
    M_AXI_RLAST => M_AXI_RLAST,
    --M_AXI_RUSER => M_AXI_RUSER,
    M_AXI_RVALID => M_AXI_RVALID,
    M_AXI_RREADY => M_AXI_RREADY,
    
    m_axis_tdata => m_axis_tdata,
    m_axis_tkeep => m_axis_tkeep,
    m_axis_tlast => m_axis_tlast,
    m_axis_tready => m_axis_tready,
    m_axis_tvalid => m_axis_tvalid,
    
    s_axis_tdata => s_axis_tdata,
    s_axis_tkeep => s_axis_tkeep,
    s_axis_tlast => s_axis_tlast,
    s_axis_tready => s_axis_tready,
    s_axis_tvalid => s_axis_tvalid,

    axim_clk => cyslff_clk,
    dev_srst => dev_srst
);

axim_clk <= cyslff_clk;

end behav;