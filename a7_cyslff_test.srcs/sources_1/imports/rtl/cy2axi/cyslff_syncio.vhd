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

entity cyslff_syncio is
    generic (
        CY_FD_WIDTH: integer := 8
    );
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
end cyslff_syncio;

architecture behav of cyslff_syncio is
    signal fdi_paused : std_logic;
    signal fdi_paused_den : std_logic;
    signal fdo_paused : std_logic := '0';
    signal fdo_paused_den : std_logic := '0';
    signal fdo_paused_wr : std_logic := '1';
    signal fdo_paused_pktend : std_logic := '1';
    
    signal sio_cyslff_fdo_en_intn : std_logic;
    signal sio_cyslff_fdo_intn : std_logic_vector(7 downto 0);
    
    signal cyslff_fdi_en_intn : std_logic;
    signal cyslff_fdi_intn : std_logic_vector(7 downto 0);
begin

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    cyslff_feb <= sio_cyslff_feb;

    sio_cyslff_oe <= cyslff_oe;
    sio_cyslff_rd <= cyslff_rd;
end if; end process;

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then

    fdi_paused <= fdi_pause;

    if(fdi_pause = '1') then
        if(fdi_paused = '0') then
            cyslff_fdi_en_intn <= '0';
            cyslff_fdi_intn <= sio_cyslff_fdi;
            fdi_paused_den <= sio_cyslff_feb;
        end if;
    else
        if(fdi_paused = '1') then
            cyslff_fdi_en_intn <= fdi_paused_den;
            fdi_paused_den <= '0';
        else
            cyslff_fdi_en_intn <= sio_cyslff_fdi_en;
            cyslff_fdi_intn <= sio_cyslff_fdi;
        end if;
    end if;

    if(dev_srst = '1') then
        cyslff_fdi_en_intn <= '0';
        fdi_paused <= '0';
        fdi_paused_den <= '0';
    end if;

end if; end process;

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    cyslff_ffb <= sio_cyslff_ffb;
    fdo_paused <= fdo_pause;
    if(fdo_pause = '1') then
        if(fdo_paused = '0') then
            fdo_paused_wr <= cyslff_wr;
            fdo_paused_pktend <= cyslff_pktend;
            fdo_paused_den <= cyslff_fdo_en;
            sio_cyslff_wr <= '1';
            sio_cyslff_pktend <= '1';
            sio_cyslff_fdo_en_intn <= '0';
            sio_cyslff_fdo_intn <= cyslff_fdo;
        end if;
    else
        if(fdo_paused = '1') then
            fdo_paused_wr <= '1';
            fdo_paused_pktend <= '1';
            fdo_paused_den <= '0';
            sio_cyslff_wr <= fdo_paused_wr;
            sio_cyslff_pktend <= fdo_paused_pktend;
            sio_cyslff_fdo_en_intn <= fdo_paused_den;
        else
            sio_cyslff_wr <= cyslff_wr;
            sio_cyslff_pktend <= cyslff_pktend;
            sio_cyslff_fdo_en_intn <= cyslff_fdo_en;
            sio_cyslff_fdo_intn <= cyslff_fdo;
        end if;
    end if;

    if(dev_srst = '1') then
        fdo_paused <= '0';
        fdo_paused_den <= '0';
        fdo_paused_wr <= '1';
        fdo_paused_pktend <= '1';
    end if;
end if; end process;

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    sio_cyslff_addr <= cyslff_addr;
    sio_cyslff_dir <= cyslff_dir;
end if; end process;

sio_cyslff_fdo_en <= sio_cyslff_fdo_en_intn;
sio_cyslff_fdo <= sio_cyslff_fdo_intn;

cyslff_fdi_en <= cyslff_fdi_en_intn;
cyslff_fdi <= cyslff_fdi_intn;

end behav;