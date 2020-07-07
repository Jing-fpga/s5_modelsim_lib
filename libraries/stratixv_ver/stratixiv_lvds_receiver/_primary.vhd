library verilog;
use verilog.vl_types.all;
entity stratixiv_lvds_receiver is
    generic(
        data_align_rollover: integer := 2;
        enable_dpa      : string  := "off";
        lose_lock_on_one_change: string  := "off";
        reset_fifo_at_first_lock: string  := "on";
        align_to_rising_edge_only: string  := "on";
        use_serial_feedback_input: string  := "off";
        dpa_debug       : string  := "off";
        x_on_bitslip    : string  := "on";
        enable_soft_cdr : string  := "off";
        dpa_output_clock_phase_shift: integer := 0;
        enable_dpa_initial_phase_selection: string  := "off";
        dpa_initial_phase_value: integer := 0;
        enable_dpa_align_to_rising_edge_only: string  := "off";
        net_ppm_variation: integer := 0;
        is_negative_ppm_drift: string  := "off";
        rx_input_path_delay_engineering_bits: integer := 2;
        lpm_type        : string  := "stratixiv_lvds_receiver";
        channel_width   : integer := 10
    );
    port(
        clk0            : in     vl_logic;
        datain          : in     vl_logic;
        enable0         : in     vl_logic;
        dpareset        : in     vl_logic;
        dpahold         : in     vl_logic;
        dpaswitch       : in     vl_logic;
        fiforeset       : in     vl_logic;
        bitslip         : in     vl_logic;
        bitslipreset    : in     vl_logic;
        serialfbk       : in     vl_logic;
        dataout         : out    vl_logic_vector;
        dpalock         : out    vl_logic;
        bitslipmax      : out    vl_logic;
        serialdataout   : out    vl_logic;
        postdpaserialdataout: out    vl_logic;
        divfwdclk       : out    vl_logic;
        dpaclkout       : out    vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_align_rollover : constant is 1;
    attribute mti_svvh_generic_type of enable_dpa : constant is 1;
    attribute mti_svvh_generic_type of lose_lock_on_one_change : constant is 1;
    attribute mti_svvh_generic_type of reset_fifo_at_first_lock : constant is 1;
    attribute mti_svvh_generic_type of align_to_rising_edge_only : constant is 1;
    attribute mti_svvh_generic_type of use_serial_feedback_input : constant is 1;
    attribute mti_svvh_generic_type of dpa_debug : constant is 1;
    attribute mti_svvh_generic_type of x_on_bitslip : constant is 1;
    attribute mti_svvh_generic_type of enable_soft_cdr : constant is 1;
    attribute mti_svvh_generic_type of dpa_output_clock_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of enable_dpa_initial_phase_selection : constant is 1;
    attribute mti_svvh_generic_type of dpa_initial_phase_value : constant is 1;
    attribute mti_svvh_generic_type of enable_dpa_align_to_rising_edge_only : constant is 1;
    attribute mti_svvh_generic_type of net_ppm_variation : constant is 1;
    attribute mti_svvh_generic_type of is_negative_ppm_drift : constant is 1;
    attribute mti_svvh_generic_type of rx_input_path_delay_engineering_bits : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of channel_width : constant is 1;
end stratixiv_lvds_receiver;
