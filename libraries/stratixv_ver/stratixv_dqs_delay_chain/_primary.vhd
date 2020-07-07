library verilog;
use verilog.vl_types.all;
entity stratixv_dqs_delay_chain is
    generic(
        dqs_period      : string  := "unused";
        dqs_input_frequency: string  := "unused";
        dqs_phase_shift : integer := 0;
        use_phasectrlin : string  := "false";
        phase_setting   : integer := 0;
        dqs_offsetctrl_enable: string  := "false";
        dqs_ctrl_latches_enable: string  := "false";
        use_alternate_input_for_first_stage_delayctrl: string  := "false";
        sim_buffer_intrinsic_delay: integer := 175;
        sim_buffer_delay_increment: integer := 10;
        test_enable     : string  := "false"
    );
    port(
        dqsin           : in     vl_logic;
        dqsenable       : in     vl_logic;
        dqsdisablen     : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(6 downto 0);
        offsetctrlin    : in     vl_logic_vector(6 downto 0);
        dqsupdateen     : in     vl_logic;
        phasectrlin     : in     vl_logic_vector(1 downto 0);
        testin          : in     vl_logic;
        dffin           : out    vl_logic;
        dqsbusout       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dqs_period : constant is 1;
    attribute mti_svvh_generic_type of dqs_input_frequency : constant is 1;
    attribute mti_svvh_generic_type of dqs_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of use_phasectrlin : constant is 1;
    attribute mti_svvh_generic_type of phase_setting : constant is 1;
    attribute mti_svvh_generic_type of dqs_offsetctrl_enable : constant is 1;
    attribute mti_svvh_generic_type of dqs_ctrl_latches_enable : constant is 1;
    attribute mti_svvh_generic_type of use_alternate_input_for_first_stage_delayctrl : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of test_enable : constant is 1;
end stratixv_dqs_delay_chain;
