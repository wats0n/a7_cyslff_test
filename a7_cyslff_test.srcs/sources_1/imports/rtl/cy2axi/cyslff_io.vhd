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

entity cyslff_io is
    generic (
        CY_FD_WIDTH: integer := 8
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

        cyslff_clk: out std_logic;
        dev_srst: in std_logic
    );
end cyslff_io;

architecture behav of cyslff_io is
    signal io_cyslff_fdi : std_logic_vector(7 downto 0);
    signal io_cyslff_fdo : std_logic_vector(7 downto 0);
    signal io_cyslff_hiz : std_logic := '1';
    signal fdi_paused : std_logic := '0';
    signal fdi_paused_den : std_logic := '0';

    signal fdo_cnt_pause : std_logic := '0';
    signal fdo_dcnt : std_logic_vector(8 downto 0) := b"000000000";
    signal fdo_pcnt : std_logic_vector(1 downto 0) := b"00";
    constant PKT_MAX_CNT : integer := 2;

    signal fdo_paused : std_logic := '0';
    signal fdo_paused_wr : std_logic := '1';
    signal fdo_paused_pktend : std_logic := '1';

    signal dly_cyslff_fdo : std_logic_vector(7 downto 0);
    signal dly_cyslff_wr : std_logic;
    signal dly_cyslff_pktend : std_logic;
    signal dly_cyslff_fdi_en : std_logic;
    signal dly_cyslff_fdi : std_logic_vector(7 downto 0);
    
    signal cyslff_clk_ibuf : std_logic;
    signal cyslff_clk_bufg : std_logic;
    signal sio_cyslff_feb_intn : std_logic;
    signal io_cyslff_rd_intn : std_logic;
    signal fdo_pause_intn : std_logic;
    
    attribute keep: string; attribute mark_debug : string;
    
--    attribute keep of dly_cyslff_fdo : signal is "true"; attribute mark_debug of dly_cyslff_fdo : signal is "true";
--    attribute keep of dly_cyslff_wr : signal is "true"; attribute mark_debug of dly_cyslff_wr : signal is "true";
--    attribute keep of dly_cyslff_pktend : signal is "true"; attribute mark_debug of dly_cyslff_pktend : signal is "true";
--    attribute keep of dly_cyslff_fdi_en : signal is "true"; attribute mark_debug of dly_cyslff_fdi_en : signal is "true";
--    attribute keep of dly_cyslff_fdi : signal is "true"; attribute mark_debug of dly_cyslff_fdi : signal is "true";
    
--    attribute keep of fdi_pause : signal is "true"; attribute mark_debug of fdi_pause : signal is "true";
--    attribute keep of fdo_pause : signal is "true"; attribute mark_debug of fdo_pause : signal is "true";
    
--    attribute keep of sio_cyslff_addr : signal is "true"; attribute mark_debug of sio_cyslff_addr : signal is "true";
--    attribute keep of io_cyslff_hiz : signal is "true"; attribute mark_debug of io_cyslff_hiz : signal is "true";
    
begin

process(cyslff_clk_bufg) begin if (rising_edge(cyslff_clk_bufg)) then
    sio_cyslff_feb_intn <= io_cyslff_feb;
    
    io_cyslff_oe <= sio_cyslff_oe or ( not sio_cyslff_feb_intn);
    io_cyslff_rd_intn <= (sio_cyslff_rd or fdi_pause) or ( not sio_cyslff_feb_intn);

    fdi_paused <= fdi_pause;

    if(fdi_pause = '1') then
        if(fdi_paused = '0') then
            dly_cyslff_fdi_en <= '0' after 1ps;
            dly_cyslff_fdi <= io_cyslff_fdi after 1ps;
            fdi_paused_den <= io_cyslff_feb;
        end if;
    else
        if(fdi_paused = '1') then
            dly_cyslff_fdi_en <= fdi_paused_den after 1ps;
            fdi_paused_den <= '0';
        else
            dly_cyslff_fdi_en <= '0' after 1ps;
            if((not (io_cyslff_rd_intn = '1')) and (io_cyslff_feb = '1')) then
                dly_cyslff_fdi_en <= '1' after 1ps;
                dly_cyslff_fdi <= io_cyslff_fdi after 1ps;
            end if;
        end if;
    end if;

    if(dev_srst = '1') then
        dly_cyslff_fdi_en <= '0';
        fdi_paused <= '0';
        fdi_paused_den <= '0';
    end if;

end if; end process;

fdo_pause_intn <= fdo_cnt_pause;
process(cyslff_clk_bufg) begin if (rising_edge(cyslff_clk_bufg)) then
    if(dev_srst = '1') then
        fdo_cnt_pause <= '0'; 
        fdo_dcnt <= b"000000000";
        fdo_pcnt <= b"00";
    else
        if(fdo_cnt_pause = '1') then
            if(io_cyslff_feb = '0') then
                fdo_cnt_pause <= '0';
                fdo_dcnt <= b"000000001";
            end if;
        else
            if(sio_cyslff_dir = '1') then
                fdo_dcnt <= b"000000000";
                fdo_pcnt <= b"00";
            else
                if(sio_cyslff_wr = '0') then
                    if(fdo_dcnt = b"111111111") then
                        if(fdo_pcnt = std_logic_vector((to_unsigned(PKT_MAX_CNT-1, 2)))) then
                            fdo_cnt_pause <= '1';
                            fdo_pcnt <= b"00";
                        else
                            fdo_pcnt <= std_logic_vector(unsigned(fdo_pcnt) + 1);
                        end if;
                        fdo_dcnt <= b"000000000";
                    else
                        fdo_dcnt <= std_logic_vector(unsigned(fdo_dcnt) + 1);
                        if(sio_cyslff_pktend = '0') then
                            fdo_dcnt <= b"000000000";
                            fdo_pcnt <= b"00";
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end if;
end if; end process;

process(cyslff_clk_bufg) begin if (rising_edge(cyslff_clk_bufg)) then
    sio_cyslff_ffb <= io_cyslff_ffb after 1ps;
    fdo_paused <= fdo_pause_intn after 1ps;
    if(fdo_pause_intn = '1') then
        dly_cyslff_pktend <= '1';
        if(fdo_paused = '0') then
            fdo_paused_wr <= sio_cyslff_wr;
            dly_cyslff_wr <= '1';

            if(sio_cyslff_fdo_en = '1') then
                dly_cyslff_fdo <= sio_cyslff_fdo;
            end if;

            if(dly_cyslff_pktend = '1') then
                fdo_paused_pktend <= sio_cyslff_pktend;
                dly_cyslff_pktend <= '1';
            else
                fdo_paused_pktend <= '1';
                dly_cyslff_pktend <= '1';
            end if;
        end if;
    else
        if(fdo_paused = '1') then
            fdo_paused_wr <= '1';
            fdo_paused_pktend <= '1';
            dly_cyslff_wr <= fdo_paused_wr;
            dly_cyslff_pktend <= fdo_paused_pktend;
            fdo_paused <= '0';
        else
            dly_cyslff_wr <= sio_cyslff_wr;
            dly_cyslff_pktend <= sio_cyslff_pktend;
            if(sio_cyslff_fdo_en = '1') then
                dly_cyslff_fdo <= sio_cyslff_fdo;
            end if;
        end if;
    end if;

    if(dev_srst = '1') then
        fdo_paused <= '0';
        fdo_paused_wr <= '1';
        fdo_paused_pktend <= '1';
        dly_cyslff_fdo <= x"00";
        dly_cyslff_wr <= '1';
        dly_cyslff_pktend <= '1';
    end if;
end if; end process;

process(cyslff_clk_bufg) begin if (falling_edge(cyslff_clk_bufg)) then
    io_cyslff_wr <= dly_cyslff_wr after 1ps;
    io_cyslff_pktend <= dly_cyslff_pktend after 1ps;
    io_cyslff_fdo <= dly_cyslff_fdo after 1ps;
end if; end process;

process(cyslff_clk_bufg) begin if (rising_edge(cyslff_clk_bufg)) then
    io_cyslff_addr <= sio_cyslff_addr;
end if; end process;

ibuf_cyslff : IBUF
port map (
    O => cyslff_clk_ibuf, -- 1-bit output: Clock output
    I => io_cyslff_clk -- 1-bit input: Clock input
);

bufg_cyslff : BUFG
port map(
    O => cyslff_clk_bufg,
    I => cyslff_clk_ibuf
);

cyslff_clk <= cyslff_clk_bufg;

process(cyslff_clk_bufg) begin if (rising_edge(cyslff_clk_bufg)) then
    if(dev_srst = '1') then
        io_cyslff_hiz <= '1';
    else
        io_cyslff_hiz <= sio_cyslff_dir;
    end if;
end if; end process;

gen_iobuf_fd : for i in  0 to 7 generate

    io_cyslff_iobuf : IOBUF
    generic map (
        --DRIVE => 12,
        --IOSTANDARD => "DEFAULT",
        SLEW => "SLOW" )
    port map (
        O => io_cyslff_fdi(i), -- Buffer output
        IO => io_cyslff_fd(i), -- Buffer inout port (connect directly to top-level port)
        I => io_cyslff_fdo(i), -- Buffer input
        T => io_cyslff_hiz -- 3-state enable input, high=input, low=output
    );

end generate gen_iobuf_fd;

sio_cyslff_feb <= sio_cyslff_feb_intn;
io_cyslff_rd <= io_cyslff_rd_intn;
fdo_pause <= fdo_pause_intn;

--wired situation, must force delay to make simulation correct, or syncio block won't delay through FF
sio_cyslff_fdi_en <= dly_cyslff_fdi_en;
sio_cyslff_fdi <= dly_cyslff_fdi;

end behav;