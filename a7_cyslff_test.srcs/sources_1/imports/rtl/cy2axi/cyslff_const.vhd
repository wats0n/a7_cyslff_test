library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package SLADDR_CONST is
    constant SLADDR_IDLE : std_logic_vector(1 downto 0) := b"11";
    constant SLADDR_RD : std_logic_vector(1 downto 0) := b"00";
    constant SLADDR_WR : std_logic_vector(1 downto 0) := b"10";
end SLADDR_CONST;
package body SLADDR_CONST is 
end SLADDR_CONST;