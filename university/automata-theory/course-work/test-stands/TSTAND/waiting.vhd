library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity waiting is
port(clk :in std_logic;
	 clkout: out std_logic);
end waiting;
architecture Behavioral of waiting is
shared variable count: integer:=0;
begin
 process (clk)
       begin
         if count>2 then clkout <= clk; 
          elsif (clk'event and clk = '1') then count:=count+1;end if;
          if count=0 then clkout <= '0'; end if;
end process;
end Behavioral;