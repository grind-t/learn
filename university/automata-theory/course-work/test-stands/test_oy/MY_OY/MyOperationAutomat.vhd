-- В этом файле содержится описание операционного автомата
-- ОА выполняет микрооперации, каждая из которых задается своим управляющим сигналом у
-- и формирует логические условия х
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity OperationAutomat is
generic(n:integer:=4); -- параметр n определяет разрядность операндов
Port(
	y: in std_logic_vector(9 downto 0); -- управляющие сигналы,задают микрооперации
	x: out std_logic_vector(2 downto 0); -- логические условия
	a: in std_logic_vector(n-1 downto 0); -- 1-ый операнд(множимое)
	b: in std_logic_vector(n-1 downto 0); -- 2-ой операнд (множитель)
	rc: buffer std_logic_vector(2*n-1 downto 0); -- результат (произведение)
	clk: in std_logic -- синхросигнал 
);
end OperationAutomat;

architecture arch of OperationAutomat is
    signal ra: std_logic_vector(2*n-1 downto 0); -- регистр множимого
    signal rb: std_logic_vector(n-1 downto 0); -- регистр множителя
    signal i: integer range 0 to n-1; -- счетчик анализируемого разряда
begin
execution_mo:
process(clk) -- этот процесс описывает выполняемые в ОА микрооперации
begin
	if clk' event and clk='1' then -- по положительному фронту clk
		if (y(0) = '1') then 
			ra(2*n-1 downto n) <= (others => a(n-1)); ra(n-1 downto 0) <= a; -- прием в ra множимого с расширением знака 
		end if;
		if (y(1) = '1') then 
			rb <= b; -- прием в rb множителя
		end if;
		if (y(2) = '1') then 
			rc <= (others => '0'); -- обнуление rc
		end if;
		if (y(3) = '1') then 
			i <= 0; -- инициализация i
		end if;
		if (y(4) = '1') then 
			ra <= not(ra) + 1; -- -[A]д
		end if;
		if (y(5) = '1') then 
			rb <= not(rb) + 1; -- -[B]д
		end if;
		if (y(6) = '1') then  
			rc <= rc + ra; -- прибавление ra к СЧП
		end if; 
		if (y(7) = '1') then
			rc <= rc + 0; -- прибавление 0 к СЧП
		end if;
		if (y(8) = '1') then 
			ra(n*2-1 downto 0) <= ra(n*2-2 downto 0) & '0'; -- сдвиг влево ra
		end if;
		if (y(9) = '1') then 
			i <= i+1; -- инкремент i
		end if;
	end if;
end process;
-- Формируемые ОА логические условия
x(0) <= rb(n-1); -- анализируемый знаковый разряд множителя
x(1) <= rb(i); -- анализируемый разряд множителя
x(2) <= '1' when i = n-1 else '0'; 	-- признак анализа старшего цифрового разряда
end arch;
	