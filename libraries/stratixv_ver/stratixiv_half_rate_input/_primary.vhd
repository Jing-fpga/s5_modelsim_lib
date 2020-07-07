library verilog;
use verilog.vl_types.all;
entity stratixiv_half_rate_input is
    generic(
        power_up        : string  := "low";
        async_mode      : string  := "none";
        use_dataoutbypass: string  := "false";
        lpm_type        : string  := "stratixiv_half_rate_input"
    );
    port(
        datain          : in     vl_logic_vector(1 downto 0);
        directin        : in     vl_logic;
        clk             : in     vl_logic;
        areset          : in     vl_logic;
        dataoutbypass   : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        dffin           : out    vl_logic_vector(1 downto 0);
        dataout         : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of power_up : constant is 1;
    attribute mti_svvh_generic_type of async_mode : constant is 1;
    attribute mti_svvh_generic_type of use_dataoutbypass : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_half_rate_input;
