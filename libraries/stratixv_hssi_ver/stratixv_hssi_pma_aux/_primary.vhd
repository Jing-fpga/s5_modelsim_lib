library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_aux is
    generic(
        silicon_rev     : string  := "reve";
        enable_debug_info: string  := "false";
        continuous_calibration: string  := "false";
        rx_cal_override_value_enable: string  := "false";
        rx_cal_override_value: integer := 0;
        tx_cal_override_value_enable: string  := "false";
        tx_cal_override_value: integer := 0;
        cal_result_status: string  := "pm_aux_result_status_tx";
        rx_imp          : string  := "cal_imp_46_ohm";
        tx_imp          : string  := "cal_imp_46_ohm";
        test_counter_enable: string  := "false";
        cal_clk_sel     : string  := "pm_aux_iqclk_cal_clk_sel_cal_clk";
        pm_aux_cal_clk_test_sel: vl_logic := Hi0;
        avmm_group_channel_index: integer := 0;
        use_default_base_address: string  := "true";
        user_base_address: integer := 0
    );
    port(
        calpdb          : in     vl_logic_vector(0 downto 0);
        calclk          : in     vl_logic_vector(0 downto 0);
        testcntl        : in     vl_logic_vector(0 downto 0);
        refiqclk        : in     vl_logic_vector(10 downto 0);
        nonusertoio     : out    vl_logic_vector(0 downto 0);
        zrxtx50         : out    vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of continuous_calibration : constant is 1;
    attribute mti_svvh_generic_type of rx_cal_override_value_enable : constant is 1;
    attribute mti_svvh_generic_type of rx_cal_override_value : constant is 1;
    attribute mti_svvh_generic_type of tx_cal_override_value_enable : constant is 1;
    attribute mti_svvh_generic_type of tx_cal_override_value : constant is 1;
    attribute mti_svvh_generic_type of cal_result_status : constant is 1;
    attribute mti_svvh_generic_type of rx_imp : constant is 1;
    attribute mti_svvh_generic_type of tx_imp : constant is 1;
    attribute mti_svvh_generic_type of test_counter_enable : constant is 1;
    attribute mti_svvh_generic_type of cal_clk_sel : constant is 1;
    attribute mti_svvh_generic_type of pm_aux_cal_clk_test_sel : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
end stratixv_hssi_pma_aux;
