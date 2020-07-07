library verilog;
use verilog.vl_types.all;
entity stratixv_output_alignment is
    generic(
        power_up        : string  := "low";
        async_mode      : string  := "none";
        sync_mode       : string  := "none";
        add_output_cycle_delay: string  := "false";
        add_phase_transfer_reg: string  := "false"
    );
    port(
        datain          : in     vl_logic;
        clk             : in     vl_logic;
        areset          : in     vl_logic;
        sreset          : in     vl_logic;
        enaoutputcycledelay: in     vl_logic_vector(2 downto 0);
        enaphasetransferreg: in     vl_logic;
        dataout         : out    vl_logic;
        dffin           : out    vl_logic;
        dff1t           : out    vl_logic;
        dff2t           : out    vl_logic;
        dffphasetransfer: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of power_up : constant is 1;
    attribute mti_svvh_generic_type of async_mode : constant is 1;
    attribute mti_svvh_generic_type of sync_mode : constant is 1;
    attribute mti_svvh_generic_type of add_output_cycle_delay : constant is 1;
    attribute mti_svvh_generic_type of add_phase_transfer_reg : constant is 1;
end stratixv_output_alignment;
