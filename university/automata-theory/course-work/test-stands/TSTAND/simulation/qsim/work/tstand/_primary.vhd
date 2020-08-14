library verilog;
use verilog.vl_types.all;
entity tstand is
    port(
        rez             : out    vl_logic;
        clk             : in     vl_logic;
        t1              : out    vl_logic;
        x1              : out    vl_logic;
        x2              : out    vl_logic;
        en              : in     vl_logic;
        clr             : in     vl_logic;
        t2              : out    vl_logic;
        s_true          : out    vl_logic_vector(1 downto 0);
        rez_y           : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic;
        y_true          : out    vl_logic_vector(2 downto 0);
        rez_mura        : out    vl_logic;
        yy1             : out    vl_logic;
        yy2             : out    vl_logic;
        yy3             : out    vl_logic;
        tt1             : out    vl_logic;
        tt2             : out    vl_logic;
        tt3             : out    vl_logic
    );
end tstand;
