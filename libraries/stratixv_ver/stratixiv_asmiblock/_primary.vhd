library verilog;
use verilog.vl_types.all;
entity stratixiv_asmiblock is
    generic(
        lpm_type        : string  := "stratixiv_asmiblock"
    );
    port(
        dclkin          : in     vl_logic;
        scein           : in     vl_logic;
        sdoin           : in     vl_logic;
        data0in         : in     vl_logic;
        oe              : in     vl_logic;
        dclkout         : out    vl_logic;
        sceout          : out    vl_logic;
        sdoout          : out    vl_logic;
        data0out        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_asmiblock;
