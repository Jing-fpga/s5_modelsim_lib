library verilog;
use verilog.vl_types.all;
entity stratixiv_dll is
    generic(
        input_frequency : string  := "0 ps";
        delay_buffer_mode: string  := "low";
        delay_chain_length: integer := 12;
        delayctrlout_mode: string  := "normal";
        jitter_reduction: string  := "false";
        use_upndnin     : string  := "false";
        use_upndninclkena: string  := "false";
        sim_valid_lock  : integer := 16;
        sim_valid_lockcount: integer := 0;
        sim_low_buffer_intrinsic_delay: integer := 350;
        sim_high_buffer_intrinsic_delay: integer := 175;
        sim_buffer_delay_increment: integer := 10;
        static_delay_ctrl: integer := 0;
        dual_phase_comparators: string  := "true";
        lpm_type        : string  := "stratixiv_dll";
        sim_buffer_intrinsic_delay: vl_notype
    );
    port(
        clk             : in     vl_logic;
        aload           : in     vl_logic;
        upndnin         : in     vl_logic;
        upndninclkena   : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        offsetdelayctrlout: out    vl_logic_vector(5 downto 0);
        offsetdelayctrlclkout: out    vl_logic;
        delayctrlout    : out    vl_logic_vector(5 downto 0);
        dqsupdate       : out    vl_logic;
        upndnout        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of input_frequency : constant is 1;
    attribute mti_svvh_generic_type of delay_buffer_mode : constant is 1;
    attribute mti_svvh_generic_type of delay_chain_length : constant is 1;
    attribute mti_svvh_generic_type of delayctrlout_mode : constant is 1;
    attribute mti_svvh_generic_type of jitter_reduction : constant is 1;
    attribute mti_svvh_generic_type of use_upndnin : constant is 1;
    attribute mti_svvh_generic_type of use_upndninclkena : constant is 1;
    attribute mti_svvh_generic_type of sim_valid_lock : constant is 1;
    attribute mti_svvh_generic_type of sim_valid_lockcount : constant is 1;
    attribute mti_svvh_generic_type of sim_low_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_high_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of static_delay_ctrl : constant is 1;
    attribute mti_svvh_generic_type of dual_phase_comparators : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_intrinsic_delay : constant is 3;
end stratixiv_dll;
