library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D is
port(clk :in std_logic;
	 D_in: in std_logic;
	 en: in std_logic;
	 D_out: out std_logic);
end D;
architecture Behavioral of D is
shared variable count: integer:=0;
begin
 process (clk)
       begin
       if en='1' then
           if clk'event and clk = '1' then D_out<=D_in;end if;
           end if;
end process;
end Behavioral;