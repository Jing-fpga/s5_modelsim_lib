library verilog;
use verilog.vl_types.all;
entity stratixiv_lvds_transmitter is
    generic(
        bypass_serializer: string  := "false";
        invert_clock    : string  := "false";
        use_falling_clock_edge: string  := "false";
        use_serial_data_input: string  := "false";
        use_post_dpa_serial_data_input: string  := "false";
        is_used_as_outclk: string  := "false";
        tx_output_path_delay_engineering_bits: integer := -1;
        enable_dpaclk_to_lvdsout: string  := "off";
        preemphasis_setting: integer := 0;
        vod_setting     : integer := 0;
        differential_drive: integer := 0;
        lpm_type        : string  := "stratixiv_lvds_transmitter";
        channel_width   : integer := 10
    );
    port(
        clk0            : in     vl_logic;
        enable0         : in     vl_logic;
        datain          : in     vl_logic_vector;
        serialdatain    : in     vl_logic;
        postdpaserialdatain: in     vl_logic;
        dataout         : out    vl_logic;
        serialfdbkout   : out    vl_logic;
        dpaclkin        : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bypass_serializer : constant is 1;
    attribute mti_svvh_generic_type of invert_clock : constant is 1;
    attribute mti_svvh_generic_type of use_falling_clock_edge : constant is 1;
    attribute mti_svvh_generic_type of use_serial_data_input : constant is 1;
    attribute mti_svvh_generic_type of use_post_dpa_serial_data_input : constant is 1;
    attribute mti_svvh_generic_type of is_used_as_outclk : constant is 1;
    attribute mti_svvh_generic_type of tx_output_path_delay_engineering_bits : constant is 1;
    attribute mti_svvh_generic_type of enable_dpaclk_to_lvdsout : constant is 1;
    attribute mti_svvh_generic_type of preemphasis_setting : constant is 1;
    attribute mti_svvh_generic_type of vod_setting : constant is 1;
    attribute mti_svvh_generic_type of differential_drive : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of channel_width : constant is 1;
end stratixiv_lvds_transmitter;
