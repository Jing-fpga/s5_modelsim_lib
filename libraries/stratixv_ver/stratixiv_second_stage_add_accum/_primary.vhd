library verilog;
use verilog.vl_types.all;
entity stratixiv_second_stage_add_accum is
    generic(
        dataa_width     : integer := 36;
        datab_width     : integer := 36;
        accum_width     : vl_notype;
        ssa_mode        : string  := "add"
    );
    port(
        dataa           : in     vl_logic_vector(71 downto 0);
        datab           : in     vl_logic_vector(71 downto 0);
        accumin         : in     vl_logic_vector(71 downto 0);
        sign            : in     vl_logic;
        operation       : in     vl_logic_vector(3 downto 0);
        dataout         : out    vl_logic_vector(71 downto 0);
        overflow        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of accum_width : constant is 3;
    attribute mti_svvh_generic_type of ssa_mode : constant is 1;
end stratixiv_second_stage_add_accum;
