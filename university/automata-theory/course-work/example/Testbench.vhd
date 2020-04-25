library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.mealy_pack.all; -- Подключение пакетов с описанием алфавитов													
use work.moore_pack.all;
use work.pack.all;

entity Testbench is 
end Testbench;

architecture ArchTestbench of Testbench is
component Mealy 			-- Автомат МИЛИ
	Port
	(
		x: in in_x; 		-- Вход автомата
		y: out out_y;		-- Выход автомата
		clk: in bit;	 	-- Сигнал синхронизации
		set: in bit			-- Сигнал установки
	);
end component;

component Moore 			-- Автомат МУРА
	Port
	(
		x: in in_x; 		-- Вход автомата
		y: out out_y;		-- Выход автомата
		clk: in bit;	 	-- Сигнал синхронизации
		set: in bit			-- Сигнал установки
	);
end component;

signal x : in_x;			-- Сигналы, подаваемые на испытуемые автоматы
signal clk : bit;
signal set : bit := '1';
signal y_mealy : out_y;	-- Выходной сигнал автомата МИЛИ
signal y_moore : out_y;	--	Выходной сигнал автомата МУРА
signal equal : bit;		-- Сигнал соответствия выходов обоих автоматов
constant clock_period : time := 10 ns; -- Период тактовых сигналов

begin
	mealy_s : Mealy 		-- Испытуемый автомат МИЛИ
	PORT MAP ( x => x, set => set, clk => clk, y => y_mealy);
	moore_s : Moore 		-- Испытуемый автомат МУРА
	PORT MAP (clk => clk, x => x, set => set, y => y_moore);

	clock_process : process -- Формирует последовательность тактовых импульсов
	begin		
		clk <= '1';
		wait for clock_period/2;
		clk <= '0';
		wait for clock_period/2;
	end process;
	
equal <='1' when y_mealy'delayed(clock_period) = y_moore else '0';

	-- Процесс формирует тестовую последовательность входных сигналов для испытуемых автоматов
	stim_proc: process
	begin
		x <= x1;
		wait for clock_period;
		x <= x2;
		set <= '0'; -- Сигнал активен только в первом такте
		wait for 2*clock_period;
		x <= x1;
		wait for clock_period;
		x <= x2;
		wait for clock_period;
		x <= x3;
		wait for 3*clock_period;
		x <= x4;
		wait for 2*clock_period;
		x <= x2;
		wait for 2*clock_period;
		x <= x4;
		wait for clock_period;
		x <= x3;
		wait for clock_period;
		x <= x1;
		wait for clock_period;
		x <= x3;
		wait for 3*clock_period;
		x <= x1;
		wait for clock_period;
		x <= x4;
		wait for clock_period;
	end process;

end ArchTestbench;