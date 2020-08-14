library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity T_trig is
    Port ( T : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           en : in  STD_LOGIC;
           AsynClr : in  STD_LOGIC;
           Q : out  STD_LOGIC:='0';
		   nQ: out  STD_LOGIC:='1');
end T_trig;

architecture Behavioral of T_trig is
signal Mem : std_logic;
signal Mem_pred : std_logic:='0';
begin

 process (Clock,AsynClr)
 begin
  if (AsynClr = '0') then
      Mem <= '0';
  elsif  en='1' then
  if (clock'event and clock = '1') then
  if T = '1'  then
  Mem <= not Mem_pred;
  
  end if;
 end if;
 end if;
 end process;
Q <= Mem;
nQ <= Mem_pred;
Mem_pred<=Mem;
end Behavioral;