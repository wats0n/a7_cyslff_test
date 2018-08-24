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

use work.SLADDR_CONST.ALL;

entity cyslff_ifctr is
    generic (
        CY_FD_WIDTH: integer := 8
    );
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
end cyslff_ifctr;

architecture behav of cyslff_ifctr is

    signal cond_cyslff_rden : std_logic;
    signal cond_cyslff_wren : std_logic;

    signal fdi_paused : std_logic;
    signal fdi_paused_den : std_logic;
    
    signal fdo_paused : std_logic;
    signal fdo_paused_den : std_logic;
    signal fdo_paused_last : std_logic;
    
    signal cyslff_addr_intn : std_logic_vector(1 downto 0);
    signal cyslff_oe_intn : std_logic;
    
begin

cond_cyslff_rden <= '1' when ((cyslff_addr_intn = SLADDR_RD) and (cyslff_feb = '1')) else '0';
cond_cyslff_wren <= '1' when (cyslff_addr_intn = SLADDR_WR) else '0';
ioctr_wr_empty <= (not cyslff_feb);

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    if(dev_srst = '1') then
        cyslff_oe_intn <= '1';
        cyslff_rd <= '1';
        fdi_paused <= '0';
        fdi_paused_den <= '0';
    else
        cyslff_oe_intn <= '1';
        cyslff_rd <= '1';
        if(cond_cyslff_rden = '1') then
            cyslff_oe_intn <= '0';
            if(cyslff_oe_intn = '0') then
                cyslff_rd <= '0';
            end if;
        end if;

        fdi_paused <= fdi_pause;
        
        if(axic_fdi_ready = '1') then
            if(fdi_pause = '1') then
                if(fdi_paused = '0') then
                    axic_fdi_en <= '0';
                    axic_fdi <= cyslff_fdi;
                    fdi_paused_den <= cyslff_feb;
                end if;
            else
                if(fdi_paused = '1') then
                    axic_fdi_en <= fdi_paused_den;
                    fdi_paused_den <= '0';
                else
                    axic_fdi_en <= cyslff_fdi_en;
                    axic_fdi <= cyslff_fdi;
                end if;
            end if;
        elsif(axis_fdi_ready = '1') then
            if(fdi_pause = '1') then
                if(fdi_paused = '0') then
                    axis_fdi_en <= '0';
                    axis_fdi <= cyslff_fdi;
                    fdi_paused_den <= cyslff_feb;
                end if;
            else
                if(fdi_paused = '1') then
                    axis_fdi_en <= fdi_paused_den;
                    fdi_paused_den <= '0';
                else
                    axis_fdi_en <= cyslff_fdi_en;
                    axis_fdi <= cyslff_fdi;
                end if;
            end if;
        end if;
    end if; 
end if; end process;

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    if(dev_srst = '1') then
        cyslff_wr <= '1';
        cyslff_pktend <= '1';
        cyslff_fdo_en <= '0';
        
        fdo_paused <= '0';
        fdo_paused_den <= '0';
        fdo_paused_last <= '0';
    else
        fdo_paused <= fdo_pause;
        if(cond_cyslff_wren = '1') then
            if(axic_fdo_ready = '1') then
                if(fdo_pause = '1') then
                    if(fdo_paused = '0') then
                        fdo_paused_den <= axic_fdo_en;
                        fdo_paused_last <= axic_fdo_last;
                        cyslff_wr <= '1';
                        cyslff_pktend <= '1';
                        cyslff_fdo_en <= '0';
                        cyslff_fdo <= axic_fdo; 
                    end if;
                else
                    if(fdo_paused = '1') then
                        cyslff_fdo_en <= fdo_paused_den;
                        cyslff_wr <=  not fdo_paused_den;
                        cyslff_pktend <= not fdo_paused_last;
                        fdo_paused_den <= '0';
                        fdo_paused_last <= '0';  
                    else
                        cyslff_wr <= not axic_fdo_en;
                        cyslff_fdo_en <= axic_fdo_en;
                        cyslff_fdo <= axic_fdo;
                        cyslff_pktend <= (not axic_fdo_last);
                    end if;
                end if;
            elsif(axis_fdo_ready = '1') then
                if(fdo_pause = '1') then
                    if(fdo_paused = '0') then
                        fdo_paused_den <= axis_fdo_en;
                        fdo_paused_last <= axis_fdo_last;
                        cyslff_wr <= '1';
                        cyslff_pktend <= '1';
                        cyslff_fdo_en <= '0';
                        cyslff_fdo <= axis_fdo; 
                    end if;
                else
                    if(fdo_paused = '1') then
                        cyslff_fdo_en <= fdo_paused_den;
                        cyslff_wr <= not fdo_paused_den;
                        cyslff_pktend <= not fdo_paused_last;
                        fdo_paused_den <= '0';
                        fdo_paused_last <= '0'; 
                    else
                        cyslff_wr <= not axis_fdo_en;
                        cyslff_fdo_en <= axis_fdo_en;
                        cyslff_fdo <= axis_fdo;
                        cyslff_pktend <= (not axis_fdo_last);
                    end if;
                end if;
            end if;
        end if;
    end if;
end if; end process;

process(cyslff_clk) begin if (rising_edge(cyslff_clk)) then
    if(dev_srst = '1') then
        cyslff_addr_intn <= SLADDR_IDLE;
        cyslff_dir <= '1';
        ioctr_rd_ready <= '0';
    else
        if(((axic_fdo_ready = '1') or (axis_fdo_ready = '1')) and (cyslff_oe_intn = '1')) then
            cyslff_addr_intn <= SLADDR_WR;
            cyslff_dir <= '0';
            ioctr_rd_ready <= '1';
        else
            cyslff_addr_intn <= SLADDR_RD;
            cyslff_dir <= '1';
            ioctr_rd_ready <= '0';
        end if;
    end if;
end if; end process;

cyslff_addr <= cyslff_addr_intn;
cyslff_oe <= cyslff_oe_intn;

end behav;