library verilog;
use verilog.vl_types.all;
entity stratixiv_first_stage_add_sub is
    generic(
        dataa_width     : integer := 36;
        datab_width     : integer := 36;
        fsa_mode        : string  := "add"
    );
    port(
        dataa           : in     vl_logic_vector(71 downto 0);
        datab           : in     vl_logic_vector(71 downto 0);
        sign            : in     vl_logic;
        operation       : in     vl_logic_vector(3 downto 0);
        dataout         : out    vl_logic_vector(71 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of fsa_mode : constant is 1;
end stratixiv_first_stage_add_sub;
