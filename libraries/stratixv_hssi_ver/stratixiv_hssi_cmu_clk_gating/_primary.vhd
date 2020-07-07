library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_cmu_clk_gating is
    port(
        select_n        : in     vl_logic;
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        clk1out_n       : out    vl_logic;
        clk2out_n       : out    vl_logic
    );
end stratixiv_hssi_cmu_clk_gating;
