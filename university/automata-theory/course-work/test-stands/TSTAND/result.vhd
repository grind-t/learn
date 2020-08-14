library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity comp_s is
port(S_true :in std_logic_vector(1 downto 0);
	 S_sch: in std_logic_vector(1 downto 0);
	 clk: in std_logic;
	 Result: out std_logic:='1');
end comp_s;
architecture Behavioral of comp_s is
signal s1: integer;
signal s2: integer;
signal count: integer:=0;



begin
 process (clk)
       begin
            s1 <= CONV_INTEGER(S_true);
            s2 <= CONV_INTEGER(S_sch);	
          if (clk'event and clk = '0') then if count<1 then Result<='1';count<=count+1;
		elsif s1=s2 then Result<='1';else Result<='0';end if;end if;


end process;
end Behavioral;

