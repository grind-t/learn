library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mura is
port(Y_true :in std_logic_vector(2 downto 0);
	 Y_sch: in std_logic_vector(2 downto 0);
	 clk: in std_logic;
	 Result_mura: out std_logic:='1');
end mura;
architecture Behavioral of mura is
signal y1: integer;
signal y2: integer;
signal count: integer:=0;
begin
 process (clk)
       begin
            y1 <= CONV_INTEGER(Y_true);
            y2 <= CONV_INTEGER(Y_sch);	
          if (clk'event and clk = '0') then if count<1 then Result_mura<='1';count<=count+1;
		elsif y1=y2 then Result_mura<='1';else Result_mura<='0';end if;end if;

end process;
end Behavioral;