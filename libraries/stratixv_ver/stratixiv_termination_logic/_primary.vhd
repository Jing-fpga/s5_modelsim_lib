library verilog;
use verilog.vl_types.all;
entity stratixiv_termination_logic is
    generic(
        test_mode       : string  := "false";
        lpm_type        : string  := "stratixiv_termination_logic"
    );
    port(
        serialloadenable: in     vl_logic;
        terminationclock: in     vl_logic;
        parallelloadenable: in     vl_logic;
        terminationdata : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        seriesterminationcontrol: out    vl_logic_vector(13 downto 0);
        parallelterminationcontrol: out    vl_logic_vector(13 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of test_mode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_termination_logic;