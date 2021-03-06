library verilog;
use verilog.vl_types.all;
entity stratixv_atx_pll is
    generic(
        enable_debug_info: string  := "false";
        avmm_group_channel_index: integer := 0;
        enabled_for_reconfig: string  := "false";
        sim_use_fast_model: string  := "true";
        output_clock_frequency: string  := "";
        reference_clock_frequency: string  := "";
        silicon_rev     : string  := "reve";
        use_default_base_address: string  := "true";
        user_base_address0: integer := 0;
        user_base_address1: integer := 0;
        user_base_address2: integer := 0;
        ac_cap          : string  := "disable_ac_cap";
        cp_current_ctrl : integer := 0;
        cp_current_test : string  := "enable_ch_pump_normal";
        cp_hs_levshift_power_supply_setting: integer := 1;
        cp_replica_bias_ctrl: string  := "disable_replica_bias_ctrl";
        cp_rgla_bypass  : string  := "false";
        cp_rgla_volt_inc: string  := "boost_30pct";
        fbclk_sel       : string  := "vcoclk";
        l_counter       : integer := -1;
        lc_cmu_pdb      : string  := "false";
        lc_div33_pdb    : string  := "false";
        lcpll_atb_select: string  := "atb_disable";
        lcpll_d2a_sel   : string  := "volt_1p02v";
        lcpll_hclk_driver_enable: string  := "driver_off";
        lcvco_gear_sel  : string  := "high_gear";
        lcvco_sel       : string  := "high_freq_14g";
        lpf_ripple_cap_ctrl: string  := "none";
        lpf_rxpll_pfd_bw_ctrl: integer := 0;
        m_counter       : integer := -1;
        ref_clk_div     : integer := -1;
        refclk_sel      : string  := "refclk";
        sel_buf14g      : string  := "disable_buf14g";
        sel_buf8g       : string  := "enable_buf8g";
        vco_over_range_ref: string  := "vco_over_range_off";
        vco_under_range_ref: string  := "vco_under_range_off";
        vreg1_lcvco_volt_inc: string  := "volt_1p1v";
        vreg1_vccehlow  : string  := "normal_operation";
        vreg2_lcpll_volt_sel: string  := "vreg2_volt_setting0";
        vreg3_lcpll_volt_sel: string  := "vreg3_volt_setting0"
    );
    port(
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        ch0rcsrlc       : in     vl_logic_vector(31 downto 0);
        ch1rcsrlc       : in     vl_logic_vector(31 downto 0);
        ch2rcsrlc       : in     vl_logic_vector(31 downto 0);
        cmurstn         : in     vl_logic_vector(0 downto 0);
        cmurstnlpf      : in     vl_logic_vector(0 downto 0);
        extfbclk        : in     vl_logic_vector(0 downto 0);
        fixedclklc      : in     vl_logic_vector(0 downto 0);
        iqclklc         : in     vl_logic_vector(0 downto 0);
        pldclklc        : in     vl_logic_vector(0 downto 0);
        pllfbswblc      : in     vl_logic_vector(0 downto 0);
        pllfbswtlc      : in     vl_logic_vector(0 downto 0);
        refclklc        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        ch0lctestout    : out    vl_logic_vector(1 downto 0);
        ch1lctestout    : out    vl_logic_vector(1 downto 0);
        ch2lctestout    : out    vl_logic_vector(1 downto 0);
        clk010g         : out    vl_logic_vector(0 downto 0);
        clk025g         : out    vl_logic_vector(0 downto 0);
        clk18010g       : out    vl_logic_vector(0 downto 0);
        clk18025g       : out    vl_logic_vector(0 downto 0);
        clk33cmu        : out    vl_logic_vector(0 downto 0);
        clklowcmu       : out    vl_logic_vector(0 downto 0);
        frefcmu         : out    vl_logic_vector(0 downto 0);
        iqclkatt        : out    vl_logic_vector(0 downto 0);
        pfdmodelockcmu  : out    vl_logic_vector(0 downto 0);
        pldclkatt       : out    vl_logic_vector(0 downto 0);
        refclkatt       : out    vl_logic_vector(0 downto 0);
        txpllhclk       : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of enabled_for_reconfig : constant is 1;
    attribute mti_svvh_generic_type of sim_use_fast_model : constant is 1;
    attribute mti_svvh_generic_type of output_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of reference_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of user_base_address0 : constant is 1;
    attribute mti_svvh_generic_type of user_base_address1 : constant is 1;
    attribute mti_svvh_generic_type of user_base_address2 : constant is 1;
    attribute mti_svvh_generic_type of ac_cap : constant is 1;
    attribute mti_svvh_generic_type of cp_current_ctrl : constant is 1;
    attribute mti_svvh_generic_type of cp_current_test : constant is 1;
    attribute mti_svvh_generic_type of cp_hs_levshift_power_supply_setting : constant is 1;
    attribute mti_svvh_generic_type of cp_replica_bias_ctrl : constant is 1;
    attribute mti_svvh_generic_type of cp_rgla_bypass : constant is 1;
    attribute mti_svvh_generic_type of cp_rgla_volt_inc : constant is 1;
    attribute mti_svvh_generic_type of fbclk_sel : constant is 1;
    attribute mti_svvh_generic_type of l_counter : constant is 1;
    attribute mti_svvh_generic_type of lc_cmu_pdb : constant is 1;
    attribute mti_svvh_generic_type of lc_div33_pdb : constant is 1;
    attribute mti_svvh_generic_type of lcpll_atb_select : constant is 1;
    attribute mti_svvh_generic_type of lcpll_d2a_sel : constant is 1;
    attribute mti_svvh_generic_type of lcpll_hclk_driver_enable : constant is 1;
    attribute mti_svvh_generic_type of lcvco_gear_sel : constant is 1;
    attribute mti_svvh_generic_type of lcvco_sel : constant is 1;
    attribute mti_svvh_generic_type of lpf_ripple_cap_ctrl : constant is 1;
    attribute mti_svvh_generic_type of lpf_rxpll_pfd_bw_ctrl : constant is 1;
    attribute mti_svvh_generic_type of m_counter : constant is 1;
    attribute mti_svvh_generic_type of ref_clk_div : constant is 1;
    attribute mti_svvh_generic_type of refclk_sel : constant is 1;
    attribute mti_svvh_generic_type of sel_buf14g : constant is 1;
    attribute mti_svvh_generic_type of sel_buf8g : constant is 1;
    attribute mti_svvh_generic_type of vco_over_range_ref : constant is 1;
    attribute mti_svvh_generic_type of vco_under_range_ref : constant is 1;
    attribute mti_svvh_generic_type of vreg1_lcvco_volt_inc : constant is 1;
    attribute mti_svvh_generic_type of vreg1_vccehlow : constant is 1;
    attribute mti_svvh_generic_type of vreg2_lcpll_volt_sel : constant is 1;
    attribute mti_svvh_generic_type of vreg3_lcpll_volt_sel : constant is 1;
end stratixv_atx_pll;
