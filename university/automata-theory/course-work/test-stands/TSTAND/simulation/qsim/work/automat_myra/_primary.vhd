library verilog;
use verilog.vl_types.all;
entity automat_myra is
    port(
        tay1            : out    vl_logic;
        reset           : in     vl_logic;
        x2              : in     vl_logic;
        tay2            : out    vl_logic;
        x1              : in     vl_logic;
        tay3            : out    vl_logic;
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        m1              : out    vl_logic;
        m3              : out    vl_logic;
        m2              : out    vl_logic
    );
end automat_myra;
