-- Quartus II VHDL Template
-- Binary patern

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;


entity gen_test is
generic(	n: integer  range 4 downto 1 :=4);
	port
	(
		clk		: in std_logic;
		reset	 	: in std_logic;
		enable	: in std_logic;
		x		  	: out std_logic_vector (n-1 downto 0);
		y		  	: out std_logic_vector (n-1 downto 0);
		finish	: out std_logic			-- признак окончания счета
	);

end entity;

architecture rtl of gen_test is
begin

	process (clk)
	constant start_patern:std_logic_vector(2*n-1 downto 0) := (others => '0');
	constant stop_patern:std_logic_vector(2*n-1 downto 0) := (others => '1');
	variable   cnt		   : std_logic_vector (2*n-1 downto 0);
	
	begin
		if (rising_edge(clk)) then
			if reset = '1' then
				-- Reset the counter to 0
				cnt := start_patern;			--начальное состояние счетчика
			elsif enable = '1' and not(cnt=stop_patern) then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;			
			end if;
		end if;

		-- Output the current count
		if cnt=stop_patern then finish <= '1';
			else finish <= '0';
		end if;
		x <= cnt(n-1  downto 0);
		y <= cnt(2*n-1 downto n);
	end process;
 
end rtl;