library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KodirovkaX is
port(x :in std_logic_vector (1 downto 0);
	 Xq: out std_logic_vector (1 downto 0));
end KodirovkaX;
architecture Behavioral of KodirovkaX is
begin
process(x)
begin
if x="00" then Xq<="00";end if;
if x="01" then Xq<="10";end if;
if x="10" then Xq<="01";end if;
if x="11" then Xq<="11";end if;
end process;
end Behavioral;
