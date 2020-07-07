library verilog;
use verilog.vl_types.all;
entity stratixv_lvds_tx is
    generic(
        bypass_serializer: string  := "false";
        invert_clock    : string  := "false";
        use_falling_clock_edge: string  := "false";
        use_serial_data_input: string  := "false";
        use_post_dpa_serial_data_input: string  := "false";
        is_used_as_outclk: string  := "false";
        tx_output_path_delay_engineering_bits: integer := -1;
        enable_dpaclk_to_lvdsout: string  := "false";
        enable_clock_pin_mode: string  := "false";
        lpm_type        : string  := "stratixv_lvds_tx";
        data_width      : integer := 10
    );
    port(
        datain          : in     vl_logic_vector;
        clock0          : in     vl_logic;
        enable0         : in     vl_logic;
        serialdatain    : in     vl_logic;
        postdpaserialdatain: in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        dpaclkin        : in     vl_logic;
        dataout         : out    vl_logic;
        serialfdbkout   : out    vl_logic;
        observableout   : out    vl_logic_vector(2 downto 0)
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
    attribute mti_svvh_generic_type of enable_clock_pin_mode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of data_width : constant is 1;
end stratixv_lvds_tx;
