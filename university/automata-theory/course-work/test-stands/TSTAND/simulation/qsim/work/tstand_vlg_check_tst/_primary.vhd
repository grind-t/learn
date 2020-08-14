library verilog;
use verilog.vl_types.all;
entity tstand_vlg_check_tst is
    port(
        rez             : in     vl_logic;
        rez_mura        : in     vl_logic;
        rez_y           : in     vl_logic;
        s_true          : in     vl_logic_vector(1 downto 0);
        t1              : in     vl_logic;
        t2              : in     vl_logic;
        tt1             : in     vl_logic;
        tt2             : in     vl_logic;
        tt3             : in     vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        y1              : in     vl_logic;
        y2              : in     vl_logic;
        y3              : in     vl_logic;
        y_true          : in     vl_logic_vector(2 downto 0);
        yy1             : in     vl_logic;
        yy2             : in     vl_logic;
        yy3             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tstand_vlg_check_tst;
