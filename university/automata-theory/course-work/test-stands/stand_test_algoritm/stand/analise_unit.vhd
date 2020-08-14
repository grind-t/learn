-- этот файл содержит описание модуля анализа результата
-- Выходной сигнал okey=0 свидетельствует о несовпадении результата с эталонным
-- Сравнение выполняется каждый раз, после формирования испытуемым устройством
-- сигнала конца операции sko
-- Выходной сигнал defect=1 свидетельствует о несовпадении результата с эталонным
-- Достаточно обнаружить одно несоответствие, чтобы этот сигнал установился в единицу
-- До конца тестирования он меняться не будет

library ieee;
use ieee.std_logic_1164.all;
entity analise_unit is
generic(	n:integer range 4 downto 1 :=4);
	port
	(
		real_rez : in std_logic_vector(2*n-1 downto 0); 	-- результат с тестируемого АЛУ
		true_rez : in std_logic_vector(2*n-1 downto 0); 	-- эталонный результат
		
		set : in std_logic;									-- сигнал начальной установки
		clk : in std_logic;									-- синхросигнал
		defect: out std_logic;								-- обнаружение несоответствия
		okey : out std_logic									-- совпадение с эталоном
	);

end entity;

architecture rtl of analise_unit is
begin

process(set,clk)
begin
	if (set = '1') then
		okey<='1'; defect<='0';				
	elsif (rising_edge(clk)) then
		
			if(real_rez=true_rez) then
				okey<='1';
			else
				okey<='0'; defect<='1';
			end if;
		
	end if;
end process;
end rtl;
