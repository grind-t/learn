-- В этом файле содержится одно из описаний архитектурного тела
-- УА в виде автомата МУРА. Имя архитектуры arch_moore. Описание создано путем разметки 
-- закодированного графа микропрограммы, в соответствии с рисунком 1.11 методички
-- УА формирует необходимую последовательность
-- управляющих сигналов y в зависимости от значений логических условий x

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

architecture arch_moore of ControlUnit is
type T_state is(s0,s1,s2,s3,s4,s5,s6);	-- используем перечислимый тип для состояний УА
signal state,Next_state:T_state;	-- текущее состояние УА, следующее состояние УА
   begin
   NS:process(state,x,sno) -- этот процесс формирует следующее состояние УА,
									-- которое зависит от текущего состояния, логических условий, sno
	begin
	Next_state<=s0; -- следующее s0
	case state is
	 when s0 => 
		if(sno = '1') -- если есть сигнал sno,
			then Next_state <= s1;	-- то следующее s1
		else Next_state <= s0;	-- иначе s0	
		end if;
	 when s1 =>
		if(x(0) = '1') -- если знаковый разряд равен 1,
			then Next_state <= s2; -- то следующее s2
		elsif (x(1) = '1') -- если знаковый разряд равен 0 и анализируемый разряд равен 1,
			then Next_state <= s3; -- то следующее s3
		else  Next_state <= s4; -- если знаковый и анализируемый разряд равны 0, то следующее S4 
		end if;
	when s2 =>
		if (x(1) = '1') -- если анализируемый разряд равен 1,
			then Next_state <= s3; -- то следующее s3
		else Next_state <= s4; -- если анализируемый разряд равен 0, то следующее s4
		end if;
	 when s3 =>
		if(x(2) = '1') --	если это последний разряд,
			then Next_state <= s6; -- то следующее s6
		else Next_state <= s5; -- иначе следующее s5
		end if;
	 when s4 =>
		if(x(2) = '1') --	если это последний разряд,
			then Next_state <= s6; -- то следующее s6
		else Next_state <= s5; -- иначе следующее s5
		end if;
	 when s5 =>
		if (x(1) = '1') -- если анализируемый разряд равен 1,
			then Next_state <= s3; -- то следующее s3
		else Next_state <= s4; -- иначе следующее s4
		end if;
	 when s6 => Next_state <= s0; -- из s6 безусловно в s0
	end case;
end process NS;

 -- Формирование управляющих сигналов  
  y<="0000001111" when state=s1 else	-- mk1
     "0000110000" when state=s2 else	-- mk2
     "0001000000" when state=s3 else	-- mk3
	  "0010000000" when state=s4 else   -- mk4
     "1100000000" when state=s5 else	-- mk5
	  "0000000000";							-- nmk
	  
-- Формирование сигнала конца операции	
	  sko<='1' when state=s6 else '0';	-- только, если состояние s6 
	 
 --формирование текущего состояния 
  state <=s0 when set ='1' else 				--если есть сигнал начальной установки 
  Next_state when clk'event and clk='0'	--по отрицательному фронту clk  
  else state;  
 end arch_moore ;
 