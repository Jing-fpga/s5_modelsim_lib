library verilog;
use verilog.vl_types.all;
entity stratixiv_termination is
    generic(
        runtime_control : string  := "false";
        allow_serial_data_from_core: string  := "false";
        power_down      : string  := "true";
        test_mode       : string  := "false";
        enable_parallel_termination: string  := "false";
        enable_calclk_divider: string  := "false";
        clock_divider_enable: string  := "false";
        enable_pwrupmode_enser_for_usrmode: string  := "false";
        bypass_enser_logic: string  := "false";
        bypass_rt_calclk: string  := "false";
        enable_rt_scan_mode: string  := "false";
        enable_loopback : string  := "false";
        force_rtcalen_for_pllbiasen: string  := "false";
        enable_rt_sm_loopback: string  := "false";
        select_vrefl_values: integer := 0;
        select_vrefh_values: integer := 0;
        divide_intosc_by: integer := 2;
        use_usrmode_clear_for_configmode: string  := "false";
        lpm_type        : string  := "stratixiv_termination"
    );
    port(
        rup             : in     vl_logic;
        rdn             : in     vl_logic;
        terminationclock: in     vl_logic;
        terminationclear: in     vl_logic;
        terminationenable: in     vl_logic;
        serializerenable: in     vl_logic;
        terminationcontrolin: in     vl_logic;
        scanin          : in     vl_logic;
        scanen          : in     vl_logic;
        otherserializerenable: in     vl_logic_vector(8 downto 0);
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        incrup          : out    vl_logic;
        incrdn          : out    vl_logic;
        serializerenableout: out    vl_logic;
        terminationcontrol: out    vl_logic;
        terminationcontrolprobe: out    vl_logic;
        scanout         : out    vl_logic;
        shiftregisterprobe: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of runtime_control : constant is 1;
    attribute mti_svvh_generic_type of allow_serial_data_from_core : constant is 1;
    attribute mti_svvh_generic_type of power_down : constant is 1;
    attribute mti_svvh_generic_type of test_mode : constant is 1;
    attribute mti_svvh_generic_type of enable_parallel_termination : constant is 1;
    attribute mti_svvh_generic_type of enable_calclk_divider : constant is 1;
    attribute mti_svvh_generic_type of clock_divider_enable : constant is 1;
    attribute mti_svvh_generic_type of enable_pwrupmode_enser_for_usrmode : constant is 1;
    attribute mti_svvh_generic_type of bypass_enser_logic : constant is 1;
    attribute mti_svvh_generic_type of bypass_rt_calclk : constant is 1;
    attribute mti_svvh_generic_type of enable_rt_scan_mode : constant is 1;
    attribute mti_svvh_generic_type of enable_loopback : constant is 1;
    attribute mti_svvh_generic_type of force_rtcalen_for_pllbiasen : constant is 1;
    attribute mti_svvh_generic_type of enable_rt_sm_loopback : constant is 1;
    attribute mti_svvh_generic_type of select_vrefl_values : constant is 1;
    attribute mti_svvh_generic_type of select_vrefh_values : constant is 1;
    attribute mti_svvh_generic_type of divide_intosc_by : constant is 1;
    attribute mti_svvh_generic_type of use_usrmode_clear_for_configmode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_termination;