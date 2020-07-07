library verilog;
use verilog.vl_types.all;
entity stratixiv_input_phase_alignment is
    generic(
        use_phasectrlin : string  := "true";
        phase_setting   : integer := 0;
        delay_buffer_mode: string  := "high";
        power_up        : string  := "low";
        async_mode      : string  := "none";
        add_input_cycle_delay: string  := "false";
        bypass_output_register: string  := "false";
        add_phase_transfer_reg: string  := "false";
        invert_phase    : string  := "false";
        sim_low_buffer_intrinsic_delay: integer := 350;
        sim_high_buffer_intrinsic_delay: integer := 175;
        sim_buffer_delay_increment: integer := 10;
        lpm_type        : string  := "stratixiv_input_phase_alignment";
        sim_intrinsic_delay: vl_notype
    );
    port(
        datain          : in     vl_logic;
        clk             : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(5 downto 0);
        phasectrlin     : in     vl_logic_vector(3 downto 0);
        areset          : in     vl_logic;
        enainputcycledelay: in     vl_logic;
        enaphasetransferreg: in     vl_logic;
        phaseinvertctrl : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        dffin           : out    vl_logic;
        dff1t           : out    vl_logic;
        dataout         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of use_phasectrlin : constant is 1;
    attribute mti_svvh_generic_type of phase_setting : constant is 1;
    attribute mti_svvh_generic_type of delay_buffer_mode : constant is 1;
    attribute mti_svvh_generic_type of power_up : constant is 1;
    attribute mti_svvh_generic_type of async_mode : constant is 1;
    attribute mti_svvh_generic_type of add_input_cycle_delay : constant is 1;
    attribute mti_svvh_generic_type of bypass_output_register : constant is 1;
    attribute mti_svvh_generic_type of add_phase_transfer_reg : constant is 1;
    attribute mti_svvh_generic_type of invert_phase : constant is 1;
    attribute mti_svvh_generic_type of sim_low_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_high_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of sim_intrinsic_delay : constant is 3;
end stratixiv_input_phase_alignment;
