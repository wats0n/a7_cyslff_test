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

entity aximrt is
    generic (
        AXIS_DMA_BUF_LEN: integer := 24
    );
    Port (
        --AXIM Register Tables

        axim_raddr: in std_logic_vector(2 downto 0);
        axim_rwd_en: in std_logic;
        axim_rwd: in std_logic_vector(31 downto 0);
        axim_rrd_en: in std_logic;
        axim_rrd: out std_logic_vector(31 downto 0);

        axim_stat: in std_logic_vector(23 downto 0);

        axic_addr: out std_logic_vector(31 downto 0);
        axic_wdata: out std_logic_vector(31 downto 0);
        axic_rdata: out std_logic_vector(31 downto 0);
        axis_amt: out std_logic_vector(31 downto 0);
        
        axim_ctrl: out std_logic_vector(7 downto 0);

        axim_clk: in std_logic;
        dev_srst: in std_logic
    );
end aximrt;

architecture behav of aximrt is
    signal axim_ctrl_intn: std_logic_vector(7 downto 0);
    signal axim_rrd_intn : std_logic_vector(31 downto 0);
    signal axic_addr_intn : std_logic_vector(31 downto 0);
    signal axic_wdata_intn: std_logic_vector(31 downto 0);
    signal axic_rdata_intn: std_logic_vector(31 downto 0);
    signal axis_amt_intn: std_logic_vector(31 downto 0);
begin

    process(axim_clk) begin
        if (rising_edge(axim_clk)) then
            if (dev_srst = '1') then
                axim_rrd_intn <= (others=>'0');
                axic_addr_intn <= (others=>'0');
                axic_wdata_intn <= (others=>'0');
                axic_rdata_intn <= (others=>'0');
                axis_amt_intn <= (others=>'0');
                axim_ctrl_intn <= (others=>'0');
            else
                if(axim_rwd_en = '1') then
                    if(axim_raddr(2) = '1') then
                        if(axim_raddr(1 downto 0) = b"11") then
                            axim_ctrl_intn <= axim_rwd(7 downto 0);
                        end if;
                    else
                        case axim_raddr(1 downto 0) is
                            when "00" => axic_addr_intn <= axim_rwd;
                            when "01" => axic_wdata_intn <= axim_rwd;
                            when "10" => axic_rdata_intn <= axim_rwd;
                            when "11" => axis_amt_intn <= (others => '0');
                                         axis_amt_intn(AXIS_DMA_BUF_LEN-1 downto 0) <= axim_rwd(AXIS_DMA_BUF_LEN-1 downto 0);
                            when others => null;
                        end case;
                    end if;
                end if;

                if(axim_rrd_en = '1') then
                    if(axim_raddr(2) = '1') then
                        if(axim_raddr(1 downto 0) = b"11") then
                            axim_rrd_intn <= axim_stat & axim_ctrl_intn;
                        end if;
                    else
                        case axim_raddr(1 downto 0) is
                            when "00" => axim_rrd_intn <= axic_addr_intn;
                            when "01" => axim_rrd_intn <= axic_wdata_intn;
                            when "10" => axim_rrd_intn <= axic_rdata_intn;
                            when "11" => axim_rrd_intn <= axis_amt_intn;
                            when others => null;
                        end case;
                    end if;
                end if;
            end if;
        end if;
    end process;

axim_ctrl <= axim_ctrl_intn;
axim_rrd <= axim_rrd_intn;
axic_addr <= axic_addr_intn;
axic_wdata <= axic_wdata_intn;
axic_rdata <= axic_rdata_intn;
axis_amt <= axis_amt_intn;

end behav;