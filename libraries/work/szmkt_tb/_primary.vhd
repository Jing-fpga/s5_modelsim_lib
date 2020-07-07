library verilog;
use verilog.vl_types.all;
entity szmkt_tb is
    generic(
        CLK_CY          : integer := 6400
    );
    port(
        dclk            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_CY : constant is 1;
end szmkt_tb;
