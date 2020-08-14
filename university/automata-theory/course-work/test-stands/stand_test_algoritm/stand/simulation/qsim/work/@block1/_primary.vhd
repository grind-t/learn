library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        enable          : out    vl_logic;
        mode            : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        x               : out    vl_logic_vector(3 downto 0);
        z               : out    vl_logic_vector(7 downto 0);
        rez             : out    vl_logic_vector(7 downto 0)
    );
end Block1;
