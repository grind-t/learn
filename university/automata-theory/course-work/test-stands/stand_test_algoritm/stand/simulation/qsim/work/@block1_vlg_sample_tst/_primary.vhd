library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        mode            : in     vl_logic_vector(2 downto 0);
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
