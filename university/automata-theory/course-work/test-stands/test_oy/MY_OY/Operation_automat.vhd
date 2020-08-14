--В этом файле содержится описание операционного автомата, который выполняет четыре микрокоманды


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.mk_pack.all;	-- подключаем пакет с описанием микрокоманд
entity Operation_automat is
generic(n:integer);
Port
(y: in control_y;    										-- управляющие сигналы задают микрокоманды
		x: out std_logic_vector(2 downto 0);    		-- логические условия
	   a: in std_logic_vector(n-1 downto 0);    		-- 1-ый операнд (множимое)
	   b: in std_logic_vector(n-1 downto 0);    		-- 2-ой операнд (множитель)
	   rc: buffer std_logic_vector(n*2-1 downto 0); -- результат (произведение)
	   clk: in bit												--синхросигнал 
);
end Operation_automat;
architecture arch of Operation_automat is
   signal ra: std_logic_vector(2*n-1 downto 0); --регистр множимого
   signal rb: std_logic_vector(n-1 downto 0); 	--регистр множителя
   signal i: integer range 0 to n; 					--счетчик анализируемых разрядов
begin
   MK:process(clk) --этот процесс описывает выполняемые в ОА микрокоманды
   begin
   if clk' event and clk='1' then --по положительному фронту clk
	if (y=mk1) then ra(2*n-1 downto n)<=(others=>a(n-1)); ra(n-1 downto 0)<=a;rb<=b;rc<=(others =>'0'); i<=1;-- если mk1, то
	--прием  в ra множимого с расширением знака, прием в rb множителя, обнуление rc, инициализация i
	end if;
	if (y=mk2) then rc<=rc+not(ra)+1; 	-- если mk2, то корректирующий шаг -[A]д
	end if;
	if (y=mk3) then rc<=rc+ra; 			-- если mk3, то прибавляем множимое +[A]д
	end if;
	if (y=mk4) then rc<=rc(n*2-2 downto 0)& '0'; rb<=rb(n-2 downto 0)& '0'; i<=i+1; -- если mk4, то
	-- сдвиг влево rc, сдвиг влево rb, инкремент i 
	end if;
	end if;
	end process;
	--Формируемые ОА логические условия 
	x(0)<=rb(n-1);						-- анализируемый разряд множителя
	x(1)<='1' when i=1 else '0';	-- признак анализа знакового разряда
	x(2)<='1' when i=n else '0';	-- признак анализа младшего цифрового разряда
end arch;
	
	
	