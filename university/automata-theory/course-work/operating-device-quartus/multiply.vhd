library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiply is
generic (n:integer:=4); -- n параметр, задает разрядность операндов
Port(a: in std_logic_vector(n-1 downto 0); -- множимое
     b: in std_logic_vector(n-1 downto 0); -- множитель
     c: out std_logic_vector(2*n-1 downto 0)); -- произведение
end Multiply;

architecture Behavioral of Multiply is 
begin process(a,b)
variable ra : std_logic_vector (2*n-1 downto 0); -- для хранения множимого
variable rb : std_logic_vector (n-1 downto 0); -- для хранения множителя
variable rc : std_logic_vector (2*n-1 downto 0); -- для формирования суммы ЧП
begin
ra(n-1 downto 0) := a; -- помещаем множимое в регистр.
ra(2*n-1 downto n) := (others => a(n-1)); -- заполняем старшие разряды регистра знаковым.
rb := b; -- помещаем множитель в регистр.
rc := (others => '0'); -- обнулям сумму ЧП
if b(n-1) = '1' then -- если знак множителя отрицательный, то преобразуем коды сомножителей на противоположные
	ra := not(ra) + 1; -- [-A]д
	rb := not(rb) + 1; -- [-B]д
end if;
for i in 0 to n-1 loop -- выполняем в цикле n раз
	if (rb(i) = '1') -- если анализируемый разряд равен единице,
		then rc := rc + ra; -- то прибавляем множимое к сумме ЧП
	else rc := rc + 0; -- Иначе прибавляем 0
	end if;
	ra(2*n-1 downto 0) := ra(2*n-2 downto 0) & '0'; -- сдвигаем множимое влево
end loop;
c<=rc(2*n-1 downto 0); -- передача результата на выход устройства
end process;
end Behavioral;
