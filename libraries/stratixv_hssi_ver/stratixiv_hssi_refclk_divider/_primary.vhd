library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_refclk_divider is
    generic(
        lpm_type        : string  := "stratixiv_hssi_refclk_divider";
        divider_number  : integer := 0;
        enable_divider  : string  := "false";
        refclk_coupling_termination: string  := "normal_100_ohm_termination";
        protocol_hint   : string  := "basic"
    );
    port(
        dpriodisable    : in     vl_logic;
        dprioin         : in     vl_logic;
        inclk           : in     vl_logic;
        clkout          : out    vl_logic;
        dprioout        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of divider_number : constant is 1;
    attribute mti_svvh_generic_type of enable_divider : constant is 1;
    attribute mti_svvh_generic_type of refclk_coupling_termination : constant is 1;
    attribute mti_svvh_generic_type of protocol_hint : constant is 1;
end stratixiv_hssi_refclk_divider;
