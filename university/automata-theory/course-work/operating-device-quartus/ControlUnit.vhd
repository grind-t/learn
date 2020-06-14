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
 