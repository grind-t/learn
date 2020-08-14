library verilog;
use verilog.vl_types.all;
entity automat_myra_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end automat_myra_vlg_sample_tst;
