-- В этом файле содержится описание управляющего автомата МИЛИ,который формирует необходимую для выполнения
-- заданной операции последовательность микрокоманд
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.mk_pack.all; -- подключаем пакет, в котором содержится декларация типа сигнала control_y
entity ControlUnit_meely is
Port
( y: out control_y;    								--управляющие сигналы
	   x: in std_logic_vector(2 downto 0);    --логические условия
	   clk: in bit;                           --синхросигнал  
		set: in bit; 									--сигнал начальной установки
		sno: in bit; 									--сигнал начала операции
		sko:out bit 									--сигнал конца операции
		);
end ControlUnit_meely;
architecture arch of ControlUnit_meely is
type T_state is(s0,s1,s2);							-- состояния автомата
signal state,Next_state:T_state;					-- текущее состояние, следующее состояние
   begin
NS:process(state,x,sno) --этот процесс формирует следующее состояние УА, управляющие сигналы y и сигнал конца операции "SKO"
	begin
	sko<='0';
 case state is
		when s0 => 
			if (sno='1') 								--если есть сигнал sno,
			then Next_state<=s1; y<=mk1;			--то переходит в s1 и формирует управляющий сигнал mk1
			else y<=nmk;								--иначе состояние s0 и нет активного у(т.е. микрокоманда не выполняется)
			end if;
		when s1 =>
			if((x(0)='0')and(x(2)='0')) 			--анализируемый разряд равен нулю и это не последний разряд
			then Next_state <=s1;y<=mk4;
			elsif ((x(0) ='1')and (x(1)='1')) 	--знаковый разряд равен 1
			then Next_state <=s2;y<=mk2;
			elsif ((x(0)='1') and (x(1)='0')) 	--цифровой разряд равен единице
			then Next_state<=s2;y<=mk3;
			elsif ((x(0)='0')and(x(2)='1'))		--анализируемый разряд равен нулю и это последний разряд
			then Next_state<=s0;sko<='1';y<=nmk; 
			end if;
		when s2 =>
			if(x(2)='1') 								--если последний разряд
			then Next_state <=s0;sko<='1';y<=nmk; 
			elsif (x(2)='0') then Next_state <=s1; y<=mk4;
			end if;
	end case;
	end process NS;
	--формирование текущего состояния
 state <=s0 when set ='1' else 					--если есть сигнал начальной установки
  Next_state when clk'event and clk='1' 		--по положительному фронту clk
  else state;
  end arch;
 