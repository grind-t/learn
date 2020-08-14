library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        enable          : in     vl_logic;
        rez             : in     vl_logic_vector(7 downto 0);
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        z               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
