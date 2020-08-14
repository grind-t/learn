library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KodirovkaS is
port(S :in std_logic_vector (1 downto 0);
	 Sq: out std_logic_vector (1 downto 0));
end KodirovkaS;
architecture Behavioral of KodirovkaS is
begin
process(S)
begin
if S="00" then Sq<="00";end if;
if S="10" then Sq<="01";end if;
if S="01" then Sq<="10";end if;
if S="11" then Sq<="11";end if;
end process;
end Behavioral;