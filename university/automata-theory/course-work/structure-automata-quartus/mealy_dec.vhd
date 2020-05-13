library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mealy_dec is -- описание интерфейса автомата МИЛИ
port
(
    x1, x2: in bit;     -- входы автомата
    clock: in bit;      -- вход синхросигнала
    resetn: in bit;     -- установка в начальное состояние
    enable: in bit;     -- вход разрешения
    t1, t2: buffer bit; -- сотояния автомата
    y1, y2, y3: out bit -- выходные сигналы автомата
); 
end mealy_dec;

architecture structure of mealy_dec is -- описание архитектурног тела
-- с использованием структурного стиля
-- далее следует декларация компонент автомата
component
memory port(J, K, D, clock, enable, resetn: in bit; t1, t2: buffer bit);
-- компонента память автомата
end component;
component
vozbuzh port(x1, x2, t1, t2: in bit; J, K, D: out bit);
-- компонента формирует функции возбуждения
end component;
component
output port(x1, x2, t1, t2: in bit; y1,y2,y3:out bit);
--компонента формирует выходные сигналы
end component;
--ниже следует декларация сигналов 
signal s_J,s_K,s_D:bit;
--далее следует описание соединений компонент 
begin
circ1: memory --память автомата
port map (s_J,s_K,s_D,clock,enable,resetn,t1,t2); 
circ2: vozbuzh --схема возбуждения памяти автомата 
port map (x1, x2, t1, t2, s_J, s_K, s_D);
circ3: output --схема формирования выходных сигналов автомата 
port map (x1, x2, t1, t2, y1, y2, y3);
end structure;
