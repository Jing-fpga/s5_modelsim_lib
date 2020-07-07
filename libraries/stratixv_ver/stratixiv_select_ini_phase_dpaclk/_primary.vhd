library verilog;
use verilog.vl_types.all;
entity stratixiv_select_ini_phase_dpaclk is
    generic(
        initial_phase_select: integer := 0
    );
    port(
        clkin           : in     vl_logic;
        loaden          : in     vl_logic;
        enable          : in     vl_logic;
        clkout          : out    vl_logic;
        loadenout       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of initial_phase_select : constant is 1;
end stratixiv_select_ini_phase_dpaclk;
