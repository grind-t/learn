library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- Пакет, содержащий определение
--преобразований данных в многозначном алфавите
use IEEE.STD_LOGIC_ARITH.ALL;-- Пакеты, содержащие функции
--преобразования форматовиз битового вектора в эквивалетное число и наоборот
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.mealy_pack.all; -- Подключение созданных пакетов
use work.pack.all;

entity Mealy is -- Описание интерфейса абстрактного автомата МИЛИ
	port
	(
		x: in in_x; 	-- Вход автомата
		y: out out_y; 	-- Выход автомата
		clk: in bit; 	-- Сигнал синхронизации автомата
		set: in bit 	-- Сигнал установки в начальное состояние
	);
end Mealy;

architecture ArchMealy of Mealy is -- Описание архитектурного тела
signal s: state_s; 		-- Текущее состояние
signal NEXT_s: state_s; -- Следующее состояние автомата
begin
	N_state:	process (x,s)
	-- Процесс формирования следующего состояния и выходного сигнала автомата										
	begin
			case s is
			-- Формирование состояний и выходов автомата в состоянии s1
				when s1=>
					if (x=x2) then NEXT_s<=s4; y<=y3;
                    elsif (x=x3) then NEXT_s<=s2; y<=y6;
                    elsif (x=x4) then NEXT_s<=s4; y<=y5;
					end if;
			-- Формирование состояний и выходов автомата в состоянии s2
				when s2=>
                    if (x=x2) then NEXT_s<=s4; y<=y5;
                    elsif (x=x3) then NEXT_s<=s3; y<=y2;
                    elsif (x=x4) then NEXT_s<=s2; y<=y6;
                    end if;
			-- Формирование состояний и выходов автомата в состоянии s3
				when s3=>
					if (x=x1 or x=x2) then NEXT_s<=s1; y<=y2;
					end if;
			-- Формирование состояний и выходов автомата в состоянии s4
				when s4=>
					if (x=x1) then NEXT_s<=s3; y<=y1;
					elsif (x=x2) then NEXT_s<=s2; y<=y6;
                    elsif (x=x3) then NEXT_s<=s4; y<=y5;
                    elsif (x=x4) then NEXT_s<=s3; y<=y4;
					end if;
			end case;		
	end process N_state;
	
	T_state: process (set,clk) -- Процесс формирует текущее состояние автомата
	begin
		if (set='1') then
			s<=s1; -- Установка в начальное состояние
		elsif (clk'event and clk='1') then
			s<=NEXT_s; -- Переход в новое состояние по положительному фронту clk
		end if;
	end process T_state;
end ArchMealy;