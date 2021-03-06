library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_tx_att is
    generic(
        enable_debug_info: string  := "false";
        main_driver_switch_en_2: string  := "enable_main_switch_2";
        pre_emp_ctrl_post_tap_level: string  := "fir_post_disabled";
        post_tap_lowpass_filter_en_1: string  := "enable_lp_post_1";
        main_tap_lowpass_filter_en_0: string  := "enable_lp_main_0";
        clock_monitor   : string  := "disable_clk_mon";
        main_driver_switch_en_1: string  := "enable_main_switch_1";
        vcm_current_addl: string  := "low_current";
        post_driver_switch_en_0: string  := "disable_post_switch_0";
        term_sel        : string  := "r_setting_7";
        pre_driver_switch_en_0: string  := "disable_pre_switch_0";
        rev_ser_lb_en   : string  := "disable_rev_ser_lb";
        pre_tap_lowpass_filter_en_0: string  := "enable_lp_pre_0";
        high_vccehtx    : string  := "volt_1p5v";
        vod_ctrl_main_tap_level: string  := "vod_0ma";
        sig_inv_pre_tap : string  := "non_inv_pre_tap";
        main_tap_lowpass_filter_en_1: string  := "enable_lp_main_1";
        lst             : string  := "atb_disabled";
        pre_tap_lowpass_filter_en_1: string  := "enable_lp_pre_1";
        post_driver_switch_en_1: string  := "disable_post_switch_1";
        pre_driver_switch_en_1: string  := "disable_pre_switch_1";
        tx_powerdown    : string  := "normal_tx_on";
        revlb_select    : string  := "sel_met_lb";
        pre_emp_ctrl_pre_tap_level: string  := "fir_pre_disabled";
        post_tap_lowpass_filter_en_0: string  := "enable_lp_post_0";
        main_driver_switch_en_3: string  := "disable_main_switch_3";
        main_driver_switch_en_0: string  := "enable_main_switch_0";
        common_mode_driver_sel: string  := "volt_0p65v";
        silicon_rev     : string  := "reve";
        enable_icdr     : string  := "sel_metalic_lb";
        termination_en  : string  := "enable_termination"
    );
    port(
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        clk270bout      : in     vl_logic_vector(0 downto 0);
        clk90bout       : in     vl_logic_vector(0 downto 0);
        devenbout       : in     vl_logic_vector(0 downto 0);
        devenout        : in     vl_logic_vector(0 downto 0);
        doddbout        : in     vl_logic_vector(0 downto 0);
        doddout         : in     vl_logic_vector(0 downto 0);
        nonuserfrompmaux: in     vl_logic_vector(0 downto 0);
        oe              : in     vl_logic_vector(0 downto 0);
        oeb             : in     vl_logic_vector(0 downto 0);
        oo              : in     vl_logic_vector(0 downto 0);
        oob             : in     vl_logic_vector(0 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0);
        rtxrlpbk        : in     vl_logic_vector(0 downto 0);
        rxrlpbkn        : in     vl_logic_vector(0 downto 0);
        rxrlpbkp        : in     vl_logic_vector(0 downto 0);
        vonbidirin      : in     vl_logic_vector(0 downto 0);
        vonbidirout     : out    vl_logic_vector(0 downto 0);
        vopbidirin      : in     vl_logic_vector(0 downto 0);
        vopbidirout     : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of main_driver_switch_en_2 : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_ctrl_post_tap_level : constant is 1;
    attribute mti_svvh_generic_type of post_tap_lowpass_filter_en_1 : constant is 1;
    attribute mti_svvh_generic_type of main_tap_lowpass_filter_en_0 : constant is 1;
    attribute mti_svvh_generic_type of clock_monitor : constant is 1;
    attribute mti_svvh_generic_type of main_driver_switch_en_1 : constant is 1;
    attribute mti_svvh_generic_type of vcm_current_addl : constant is 1;
    attribute mti_svvh_generic_type of post_driver_switch_en_0 : constant is 1;
    attribute mti_svvh_generic_type of term_sel : constant is 1;
    attribute mti_svvh_generic_type of pre_driver_switch_en_0 : constant is 1;
    attribute mti_svvh_generic_type of rev_ser_lb_en : constant is 1;
    attribute mti_svvh_generic_type of pre_tap_lowpass_filter_en_0 : constant is 1;
    attribute mti_svvh_generic_type of high_vccehtx : constant is 1;
    attribute mti_svvh_generic_type of vod_ctrl_main_tap_level : constant is 1;
    attribute mti_svvh_generic_type of sig_inv_pre_tap : constant is 1;
    attribute mti_svvh_generic_type of main_tap_lowpass_filter_en_1 : constant is 1;
    attribute mti_svvh_generic_type of lst : constant is 1;
    attribute mti_svvh_generic_type of pre_tap_lowpass_filter_en_1 : constant is 1;
    attribute mti_svvh_generic_type of post_driver_switch_en_1 : constant is 1;
    attribute mti_svvh_generic_type of pre_driver_switch_en_1 : constant is 1;
    attribute mti_svvh_generic_type of tx_powerdown : constant is 1;
    attribute mti_svvh_generic_type of revlb_select : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_ctrl_pre_tap_level : constant is 1;
    attribute mti_svvh_generic_type of post_tap_lowpass_filter_en_0 : constant is 1;
    attribute mti_svvh_generic_type of main_driver_switch_en_3 : constant is 1;
    attribute mti_svvh_generic_type of main_driver_switch_en_0 : constant is 1;
    attribute mti_svvh_generic_type of common_mode_driver_sel : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of enable_icdr : constant is 1;
    attribute mti_svvh_generic_type of termination_en : constant is 1;
end stratixv_hssi_pma_tx_att;
