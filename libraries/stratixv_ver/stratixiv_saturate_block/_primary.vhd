library verilog;
use verilog.vl_types.all;
entity stratixiv_saturate_block is
    generic(
        dataa_width     : integer := 36;
        datab_width     : integer := 36;
        round_width     : integer := 15;
        saturate_width  : integer := 1;
        accum_width     : vl_notype;
        saturate_mode   : string  := " asymmetric";
        operation_mode  : string  := "output_only"
    );
    port(
        datain          : in     vl_logic_vector(71 downto 0);
        saturate        : in     vl_logic;
        round           : in     vl_logic;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        datain_width    : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(71 downto 0);
        saturation_overflow: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of round_width : constant is 1;
    attribute mti_svvh_generic_type of saturate_width : constant is 1;
    attribute mti_svvh_generic_type of accum_width : constant is 3;
    attribute mti_svvh_generic_type of saturate_mode : constant is 1;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
end stratixiv_saturate_block;
