library verilog;
use verilog.vl_types.all;
entity tstand_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        en              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tstand_vlg_sample_tst;
