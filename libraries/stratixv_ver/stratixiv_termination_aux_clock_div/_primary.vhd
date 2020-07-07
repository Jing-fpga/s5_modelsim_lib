library verilog;
use verilog.vl_types.all;
entity stratixiv_termination_aux_clock_div is
    generic(
        clk_divide_by   : integer := 1;
        extra_latency   : integer := 0
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clkout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_divide_by : constant is 1;
    attribute mti_svvh_generic_type of extra_latency : constant is 1;
end stratixiv_termination_aux_clock_div;
