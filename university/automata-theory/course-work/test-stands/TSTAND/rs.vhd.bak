library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RSTrig is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           en : in  STD_LOGIC;
           AsynClr : in  STD_LOGIC;
           Q : out  STD_LOGIC:='0';
			  nQ: out  STD_LOGIC:='1');
end RSTrig;

architecture Behavioral of RSTrig is
signal Mem : std_logic;
begin

 process (Clock,AsynClr)
 begin
  if (AsynClr = '0') then
      Mem <= '0';
  elsif  en='1' then
  if (clock'event and clock = '1') then
  if (R = '1' and S = '1') then
  Mem <= 'X';
  else
   if (R = '1') then
	 Mem <= '0';
   end if;	
	if (S = '1') then
	 Mem <= '1';
	end if;
  end if;
  end if;
 end if;
 end process;
Q <= Mem;
nQ <= not Mem;
end Behavioral;