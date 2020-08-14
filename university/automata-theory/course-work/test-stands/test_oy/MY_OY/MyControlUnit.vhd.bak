-- В этом файле содержится описание управляющего автомата ControlUnit
-- Архитектурное тело arch_mealy описывает поведение автомата МИЛИ
-- УА формирует необходимую последовательность
-- управляющих сигналов y в зависимости от значений логических условий x
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Далее следует описание интерфейса УА
entity ControlUnit is
Port( 
	y: out std_logic_vector(9 downto 0); -- управляющие сигналы
	x: in std_logic_vector(2 downto 0); -- логические условия  
	clk: in std_logic; -- синхросигнал                             
	set: in std_logic; -- сигнал начальной установки
	sno: in std_logic; -- сигнал начала операции
	sko:out std_logic -- сигнал конца операции
);
end ControlUnit;

architecture arch_mealy of ControlUnit is
type T_state is(s0,s1,s2,s3); -- используем перечислимый тип для состояний УА
signal state,Next_state:T_state; -- текущее состояние УА, следующее состояние УА
begin
NS:process(state,sno,x) -- этот процесс формирует следующее состояние УА, управляющие силгналы y и сигнал конца операции SKO
begin
	sko <= '0'; -- нет sko
	y <= "0000000000"; -- nmk
	case state is
		when s0 => 
			if (sno = '1') -- если есть сигнал SNO
			then Next_state <= s1; y <= "0000001111"; -- => s1 mk1
			else Next_state <= s0; y <= "0000000000"; -- => s0 nmk
			end if;
		when s1 =>
			if (x(0) = '1') -- знаковый разряд множителя отрицательный 
			then Next_state <= s2; y <= "0000110000"; -- => s2 mk2 	
			elsif (x(1) = '1') -- знак. разряд положительный, анализ. разряд = 1
			then Next_state <= s3; y <= "0001000000"; -- => s3 mk3
			else Next_state <= s3; y <= "0010000000"; -- => s3 mk4
			end if;
		when s2 =>
			if (x(1) = '1') -- анализ. разряд = 1
			then Next_state <= s3; y <= "0001000000"; -- => s3 mk3
			else Next_state <= s3; y <= "0010000000"; -- => s3 mk4
			end if;
		when s3 =>
			if (x(2) = '0') -- это не последний разряд
			then Next_state <= s2; y <= "1100000000"; -- => s2 mk5
			else Next_state <= s0; y <= "0000000000"; sko <= '1'; -- => s0 nmk sko
			end if;
	end case;
end process NS;
--формирование текущего состояния
state <= s0 when set = '1' else -- если есть сигнал начальной установки
	Next_state when clk'event and clk = '1' --по положительному фронту clk
	else state;
end arch_mealy;
 