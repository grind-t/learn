LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
LIBRARY work;
-- 	���������� ����������� ������� � �������� ������������� �������� ���������
--		0   ������ ���, ����� �����.
--		1   ������ ���, ������� �����.
--		2   �������� ���, ����� �����.
--		3   �������� ���, ������� �����.
--		4   �������������� ���, ����� �����.
--		5   �������������� ���, ������� �����.
ENTITY TEST_OY IS 
GENERIC (n : INTEGER:=4; mode : integer:=4);
	PORT
	(
		clk :  IN  STD_LOGIC;						-- �������� ������, ������� ��� ������
		reset :  IN  STD_LOGIC;						-- ������ ��������� ���������, ������� ��� ������
		sko :  buffer  STD_LOGIC;					-- ������ ����� ��������, ����������� ���������� �����������
		sno :  buffer  STD_LOGIC;					-- ������ ������ ��������, ����������� � ������ ����� ������ reset � ������ ��� ����� sko
		okey :  OUT  STD_LOGIC;						-- ������ ����������� ������� analise � ������ ���������� ���������� � ��������
		defect :  OUT  STD_LOGIC;					-- ������ ����������� ������������ ���������� � ��������
		finish :  buffer  STD_LOGIC;				-- ������, ����������������� � ������������ ���������� ��������� ������
		real_rez :  buffer  STD_LOGIC_VECTOR(n*2-1 DOWNTO 0);	-- ��������� � ����������� ����������
		true_rez :  buffer  STD_LOGIC_VECTOR(n*2-1 DOWNTO 0);	-- ���������� ���������
		x :  buffer  STD_LOGIC_VECTOR(n-1 DOWNTO 0);			-- ������ ������� (��������)
		y :  buffer  STD_LOGIC_VECTOR(n-1 DOWNTO 0)				-- ������ ������� (���������)
	);
END TEST_OY;

ARCHITECTURE bdf_type OF TEST_OY IS 

-- � ������������� ���� ������ ���������� ������������ ���������� - ��� ��������� Operation_device 
COMPONENT Operation_device
GENERIC (n : INTEGER);								-- ��������, ������ ����������� ���������
	PORT(clk : IN STD_LOGIC;						-- �������� ������, ������� ��� ������
		 set : IN STD_LOGIC;						-- ������ ��������� ���������
		 sno : IN STD_LOGIC;						-- ������ ������ ��������
		 a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);		-- ������ ������� (��������)
		 b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);		-- ������ ������� (���������)
		 sko : OUT STD_LOGIC;						-- ������ ����� ��������
		 rc : OUT STD_LOGIC_VECTOR(n*2-1 DOWNTO 0)	-- ��������� (������������)
	);
END COMPONENT;

BEGIN
	gen_test:
	process (clk)				-- ���� ������� ��������� �������� ������ ��� �������� ����������� ��
		constant start_patern:STD_LOGIC_VECTOR(2*n-1 downto 0):=(others =>'0');	-- ������ �������� �����
		constant	stop_patern:STD_LOGIC_VECTOR(2*n-1 downto 0):=(others =>'1');	-- ��������� �������� �����
		variable   cnt		   : std_logic_vector (2*n-1 downto 0);
		variable ena: std_logic;
	begin
		if (rising_edge(clk)) then
			if reset = '1' then		
				cnt := start_patern;				-- ��������� �������� � ��������� ���������	
			elsif sko = '1' and stop_patern/=cnt then			   
				cnt := cnt + 1;				-- ��������� ��������
			end if;
		end if;
		-- Output the current count
		if cnt=stop_patern then finish <= '1';		-- ���� ����������� ��������� �������� �����, ��������������� ������ finish
			else finish <= '0';
		end if;
		x <= cnt(n-1  downto 0);			-- ���������� � �������� ������� �������� (���������) 
		y <= cnt(2*n-1 downto n);			-- ���������� � �������� ������� �������� (���������)
	end process;
	
	ctl_unit: 
	process (clk,reset) 					-- ���� ������� ��������� ������ sno 
	variable v_sno : std_logic;			-- ���������� ��� sno
	begin
		if (reset = '1') then				
			v_sno :='1';
		elsif (rising_edge(clk)) then 			-- �� ����������� ������ 
			if(sko='1'and finish='0') then		-- ���� ���� sko � ��� �� ��������� �������� �����, ��
				v_sno :='1';					-- ��������� sno
			else v_sno :='0';					-- ����� ���
			end if;
		end if;
		if (clk'event and clk='0') then sno<=v_sno; -- after 1 ns
		end if;
	 end process;

	analise_unit:	 
	process(reset,clk)							-- ���� ������� ���������� ���������, ����������� ���������� ����������� � ��������� �����������
	begin
		if (reset = '1') then
			okey<='1'; defect<='0';				-- ������� 			
		elsif (rising_edge(clk)) then
			if(sko='1') then
				if(real_rez=true_rez) then
					okey<='1';					-- ���� ��������� ��������� � ��������
				else
					okey<='0'; defect<='1';		-- ���� ��������� �� ��������� � ��������
				end if;
			end if;
		end if;
	end process;

	actual_result:
	process(x,y)	-- ���� ������� ��������� ��������� ��������� ���������, ��� �������� ��������� 
		variable mbin : std_logic_vector(2*n-1 downto 0);	-- ��� ���������� ������������
		variable xbin,ybin,xp,yp : std_logic_vector(n-1  downto 0);
		variable nol : std_logic_vector(2*n-1 downto 0);
	-- ��,�� ��������������� �������� � ���������
	begin
		xbin:=x;		-- ��������
		ybin:=y;		-- ���������
		if xbin(n-1)='1' then 
			if(mode=0 or mode=1) then	-- ���� �������� �������������, �� ���������� ��� � �������������
				xp:='0'& xbin(n-2 downto 0);	--  ���� ������ ���
			elsif(mode=2 or mode=3) then xp:=not xbin(n-1 downto 0);		--  ���� �������� ���
			elsif(mode=4 or mode=5) then xp:=not xbin(n-1 downto 0)+1;		--  ���� �������������� ���
			end if;
			else xp:=xbin; 
		end if;												-- �����, �� ������ ��������
		if ybin(n-1)='1' then -- ����������� ������� ���������� ���������, ���� �� �������������
			if(mode=0 or mode=1) then yp:='0'& ybin(n-2 downto 0);		-- ���� ������ ���
			elsif(mode=2 or mode=3) then yp:=not ybin(n-1 downto 0);	-- ���� �������� ���
			elsif(mode=4 or mode=5) then yp:=not ybin(n-1 downto 0)+1;	-- ���� �������������� ���
			end if;
			else yp:=ybin; end if;										-- �����, �� ������ ���������
		mbin:=xp*yp;			-- ��������� ������������ ��� ������������� ���������
		if (ybin(n-1) xor xbin(n-1))='1' then		-- ���� ��������� �������������, ������������ ��� � �������� ����
			if(mode=0) then mbin(2*n-1):='1'; -- � �������� ������ ���������� '1', ���� ������ ��� � ����� �����
			elsif(mode=1) then mbin:='1'& mbin(2*n-3 downto 0)&'0';						-- ���� ������ ��� � ������� �����
			elsif(mode=2) then mbin:=not mbin;-- mbin(2*n-1):='1';						-- ���� �������� ��� � ����� �����
			elsif(mode=3) then mbin:=not mbin; mbin:='1'& mbin(2*n-3 downto 0)&'1';		-- ���� �������� ��� � ������� ����� 									   
			elsif(mode=4) then if mbin/=0 then 											-- ���� �������������� ��� � ����� �����
				mbin:=not mbin+1; mbin(2*n-1):='1'; end if;
			elsif(mode=5) then if mbin/=0 then											-- ���� �������������� ��� � ������� �����
				mbin:=not mbin+1; mbin:='1'& mbin(2*n-3 downto 0)&'0'; end if;
									   end if;
		else				-- ���� ��������� �������������
				  if(mode=0 or mode=2 or mode=4) then null;-- ���� ����� �����
				  elsif(mode=1 or mode=3 or mode=5) then mbin(2*n-2 downto 0):=mbin(2*n-3 downto 0)&'0';-- ���� ����� �������
				end if;
		end if;
		true_rez <= mbin;	--�������� �� ����� �������������� ���������
	end process;

	b2v_inst6 : Operation_device		-- ��� ���������� ����������
	GENERIC MAP(n => n)					-- ��� �����������
	PORT MAP(clk => clk,					-- �������� ������
			 set => reset,					-- ��������� � ��������� ���������
			 sno =>sno,						-- ������ ������ ��������, ����������� � ������ ����� ������ reset � ������ ��� ����� sko
			 a => x,							-- ������ ������� (��������)
			 b => y,							-- ������ ������� (���������)						
			 sko => sko,					-- ������ ����� ��������, ����������� ���������� �����������
			 rc =>real_rez);				-- ��������� � ����������� ����������
END bdf_type;