library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_tx_buf is
    generic(
        pre_emp_switching_ctrl_2nd_post_tap: integer := 0;
        rx_det_output_sel: string  := "rx_det_pcie_out";
        vcm_current_addl: string  := "vcm_current_default";
        term_sel        : string  := "int_100ohm";
        rx_det          : integer := 0;
        fir_coeff_ctrl_sel: string  := "ram_ctl";
        dft_sel         : string  := "disabled";
        avmm_group_channel_index: integer := 0;
        pre_emp_switching_ctrl_pre_tap: integer := 0;
        vod_switching_ctrl_main_tap: integer := 50;
        local_ib_ctl    : string  := "ib_29ohm";
        sig_inv_pre_tap : string  := "false";
        user_base_address: integer := 0;
        driver_resolution_ctrl: string  := "disabled";
        channel_number  : integer := 0;
        vccela_supply_voltage: string  := "vccela_1p0v";
        vcm_ctrl_sel    : string  := "ram_ctl";
        swing_boost     : string  := "not_boost";
        qpi_en          : string  := "false";
        vod_boost       : string  := "not_boost";
        use_default_base_address: string  := "true";
        rx_det_pdb      : string  := "true";
        sig_inv_2nd_tap : string  := "false";
        common_mode_driver_sel: string  := "volt_0p65v";
        pre_emp_switching_ctrl_1st_post_tap: integer := 0;
        slew_rate_ctrl  : integer := 5;
        silicon_rev     : string  := "reve";
        pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig: integer := 0;
        local_ib_en     : string  := "local_ib_en";
        pre_emp_switching_ctrl_pre_tap_analog_reconfig: integer := 0;
        ser_att_buf_en  : string  := "disable"
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
        datain          : in     vl_logic_vector(0 downto 0);
        dataout         : out    vl_logic_vector(0 downto 0);
        fixedclkout     : out    vl_logic_vector(0 downto 0);
        icoeff          : in     vl_logic_vector(17 downto 0);
        nonuserfrompmaux: in     vl_logic_vector(0 downto 0);
        rxdetclk        : in     vl_logic_vector(0 downto 0);
        rxdetectvalid   : out    vl_logic_vector(0 downto 0);
        rxfound         : out    vl_logic_vector(0 downto 0);
        txdetrx         : in     vl_logic_vector(0 downto 0);
        txelecidl       : in     vl_logic_vector(0 downto 0);
        txqpipulldn     : in     vl_logic_vector(0 downto 0);
        txqpipullup     : in     vl_logic_vector(0 downto 0);
        vrlpbkn         : in     vl_logic_vector(0 downto 0);
        vrlpbkn1t       : in     vl_logic_vector(0 downto 0);
        vrlpbkp         : in     vl_logic_vector(0 downto 0);
        vrlpbkp1t       : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of pre_emp_switching_ctrl_2nd_post_tap : constant is 1;
    attribute mti_svvh_generic_type of rx_det_output_sel : constant is 1;
    attribute mti_svvh_generic_type of vcm_current_addl : constant is 1;
    attribute mti_svvh_generic_type of term_sel : constant is 1;
    attribute mti_svvh_generic_type of rx_det : constant is 1;
    attribute mti_svvh_generic_type of fir_coeff_ctrl_sel : constant is 1;
    attribute mti_svvh_generic_type of dft_sel : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_switching_ctrl_pre_tap : constant is 1;
    attribute mti_svvh_generic_type of vod_switching_ctrl_main_tap : constant is 1;
    attribute mti_svvh_generic_type of local_ib_ctl : constant is 1;
    attribute mti_svvh_generic_type of sig_inv_pre_tap : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of driver_resolution_ctrl : constant is 1;
    attribute mti_svvh_generic_type of channel_number : constant is 1;
    attribute mti_svvh_generic_type of vccela_supply_voltage : constant is 1;
    attribute mti_svvh_generic_type of vcm_ctrl_sel : constant is 1;
    attribute mti_svvh_generic_type of swing_boost : constant is 1;
    attribute mti_svvh_generic_type of qpi_en : constant is 1;
    attribute mti_svvh_generic_type of vod_boost : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of rx_det_pdb : constant is 1;
    attribute mti_svvh_generic_type of sig_inv_2nd_tap : constant is 1;
    attribute mti_svvh_generic_type of common_mode_driver_sel : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_switching_ctrl_1st_post_tap : constant is 1;
    attribute mti_svvh_generic_type of slew_rate_ctrl : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_switching_ctrl_2nd_post_tap_analog_reconfig : constant is 1;
    attribute mti_svvh_generic_type of local_ib_en : constant is 1;
    attribute mti_svvh_generic_type of pre_emp_switching_ctrl_pre_tap_analog_reconfig : constant is 1;
    attribute mti_svvh_generic_type of ser_att_buf_en : constant is 1;
end stratixv_hssi_pma_tx_buf;
