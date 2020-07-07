library verilog;
use verilog.vl_types.all;
entity stratixiv_rotate_shift_block is
    generic(
        dataa_width     : integer := 32;
        datab_width     : integer := 32;
        operation_mode  : string  := "output_only"
    );
    port(
        datain          : in     vl_logic_vector(71 downto 0);
        rotate          : in     vl_logic;
        shiftright      : in     vl_logic;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        dataout         : out    vl_logic_vector(71 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
end stratixiv_rotate_shift_block;
