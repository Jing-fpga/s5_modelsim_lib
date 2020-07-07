library verilog;
use verilog.vl_types.all;
entity stratixiv_ddr_gray_decoder is
    generic(
        width           : integer := 6
    );
    port(
        gin             : in     vl_logic_vector;
        bout            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end stratixiv_ddr_gray_decoder;
