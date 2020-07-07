library verilog;
use verilog.vl_types.all;
entity stratixiv_dpa_block is
    generic(
        net_ppm_variation: integer := 0;
        is_negative_ppm_drift: string  := "off";
        enable_soft_cdr_mode: string  := "on"
    );
    port(
        clkin           : in     vl_logic;
        dpareset        : in     vl_logic;
        dpahold         : in     vl_logic;
        datain          : in     vl_logic;
        clkout          : out    vl_logic;
        dataout         : out    vl_logic;
        dpalock         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of net_ppm_variation : constant is 1;
    attribute mti_svvh_generic_type of is_negative_ppm_drift : constant is 1;
    attribute mti_svvh_generic_type of enable_soft_cdr_mode : constant is 1;
end stratixiv_dpa_block;
