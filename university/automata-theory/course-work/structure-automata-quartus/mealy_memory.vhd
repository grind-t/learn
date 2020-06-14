library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is 
Port
(
	J, K, D: in bit; -- функции возбуждения 
	clock, enable, resetn: in bit; -- сигналы синхронизации, разрешения, сброса 
	t1, t2: buffer bit -- состояния
);
end memory;

architecture Behavioral of memory is
begin
process(clock,resetn) 
begin
	if (resetn = '0') then t1 <= '0'; -- сброс триггера
	elsif clock' event and clock = '1' then
		-- если есть разрешение, устанавливаем состояние JK и D триггера
		if (enable = '1') then
			if (J = '0' and K = '1') then t1 <= '0';
			elsif (J = '1' and K = '0') then t1 <= '1';
         	elsif (J = '1' and K = '1') then t1 <= not t1;
         	end if;
			t2 <= D;
		end if;
	end if;
end process;
end Behavioral;
