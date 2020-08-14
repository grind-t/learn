library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KodirovkaMura is
port(Y :in std_logic_vector (2 downto 0);
	 Yq: out std_logic_vector (2 downto 0));
end KodirovkaMura;
architecture Behavioral of KodirovkaMura is
begin
process(Y)
begin
if Y="000" then Yq<="000";end if;
if Y="001" then Yq<="001";end if;
if Y="010" then Yq<="010";end if;
if Y="011" then Yq<="011";end if;
if Y="100" then Yq<="100";end if;
if Y="101" then Yq<="101";end if;
end process;
end Behavioral;