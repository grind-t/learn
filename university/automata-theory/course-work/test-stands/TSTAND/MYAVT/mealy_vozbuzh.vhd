library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vozbuzh is
port
(
	x1, x2: in bit;  -- входные сигналы автомата
	t1, t2: in bit;  -- состояния элементов памяти
	J, K, D: out bit -- функции возбуждения элементов памяти
);
end vozbuzh;

architecture Behavioral of vozbuzh is
begin
-- описание J в основном базисе
J <= (not x1) or (x2 and not t2) or (not x2 and t2);
-- описание K в основном базисе
K <= (not t2) or (not x1 and x2);
-- описание D в основном базисе
D <= (not t1 and not t2) or (x2 and not t1) or (not x1 and x2 and t2) or (x1 and not x2 and t1);
end Behavioral;
