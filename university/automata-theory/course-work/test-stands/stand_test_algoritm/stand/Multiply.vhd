library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Multiply is
generic (n:integer := 4);
  Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0);--1-�� �������
         b : in  STD_LOGIC_VECTOR (n-1 downto 0);--2-�� �������
         c : out  STD_LOGIC_VECTOR (n*2-1 downto 0));--���������
end Multiply;
architecture Behavioral of Multiply is
begin
process (a,b)
variable rb : std_logic_vector (n-1 downto 0);
variable ra : std_logic_vector (n*2-1 downto 0);
variable rc : std_logic_vector (n*2-1 downto 0);

begin
ra(n-1 downto 0) := a;
ra(n*2-1 downto n):=(others => a(n-1));
rb:=b;
rc:=(others => '0');
for i in 1 to n loop
	if (rb(n-1)='1') then
		if i = 1 then 
			rc := rc+not(ra)+1;
			else rc := rc + ra;
		end if;
	end if;
		if i = n then exit;
	end if;
	rc(n*2-1 downto 0) := rc(n*2-2 downto 0) & '0';
	rb:=rb(n-2 downto 0) & '0';
end loop;
c<=rc(n*2-1 downto 0);
end process;	
end Behavioral;
