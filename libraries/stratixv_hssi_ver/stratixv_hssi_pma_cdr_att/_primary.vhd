library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_cdr_att is
    generic(
        enable_debug_info: string  := "false";
        refclk_sel      : string  := "refclk";
        bbpd_salatch_offset_ctrl_clk90: string  := "offset_0mv";
        pd_l_counter    : integer := 1;
        rxpll_pd_bw_ctrl: integer := 320;
        output_clock_frequency: string  := "";
        ripple_cap_ctrl : string  := "none";
        reverse_serial_lpbk: string  := "false";
        ref_clk_div     : integer := -1;
        ignore_phslock  : string  := "false";
        pd_charge_pump_current_ctrl: integer := 5;
        bbpd_salatch_offset_ctrl_clk180: string  := "offset_0mv";
        bbpd_salatch_offset_ctrl_clk270: string  := "offset_0mv";
        bbpd_salatch_offset_ctrl_clk0: string  := "offset_0mv";
        diag_rev_lpbk   : string  := "false";
        replica_bias_ctrl: string  := "true";
        m_counter       : integer := -1;
        pfd_charge_pump_current_ctrl: integer := 20;
        clklow_fref_to_ppm_div_sel: integer := 4;
        reverse_loopback: string  := "reverse_lpbk_cdr";
        charge_pump_current_test: string  := "enable_ch_pump_normal";
        cdr_atb_select  : string  := "atb_disable";
        rxpll_pfd_bw_ctrl: integer := 3200;
        powerdown       : vl_logic := Hi1;
        pfd_l_counter   : integer := 1;
        fast_lock_mode  : string  := "false";
        regulator_volt_inc: string  := "0";
        bypass_cp_rgla  : string  := "false";
        fb_sel          : string  := "vcoclk";
        force_vco_const : string  := "v1p39";
        bbpd_salatch_sel: string  := "normal";
        reference_clock_frequency: string  := "";
        hs_levshift_power_supply_setting: integer := 1;
        ppmsel          : string  := "ppmsel_100";
        ppm_lock_sel    : string  := "pcs_ppm_lock";
        silicon_rev     : string  := "reve";
        cdr_or_eyeq_sel : string  := "normal_cdr_path"
    );
    port(
        ck0pd           : out    vl_logic_vector(0 downto 0);
        ck180pd         : out    vl_logic_vector(0 downto 0);
        ck270pd         : out    vl_logic_vector(0 downto 0);
        ck90pd          : out    vl_logic_vector(0 downto 0);
        clk270bout      : out    vl_logic_vector(0 downto 0);
        clk90bout       : out    vl_logic_vector(0 downto 0);
        clklow          : out    vl_logic_vector(0 downto 0);
        crurstb         : in     vl_logic_vector(0 downto 0);
        devenadiv2p     : out    vl_logic_vector(0 downto 0);
        devenbdiv2p     : out    vl_logic_vector(0 downto 0);
        devenout        : out    vl_logic_vector(0 downto 0);
        div2270         : out    vl_logic_vector(0 downto 0);
        doddadiv2p      : out    vl_logic_vector(0 downto 0);
        doddbdiv2p      : out    vl_logic_vector(0 downto 0);
        doddout         : out    vl_logic_vector(0 downto 0);
        fref            : out    vl_logic_vector(0 downto 0);
        ltd             : in     vl_logic_vector(0 downto 0);
        ltr             : in     vl_logic_vector(0 downto 0);
        pdof            : out    vl_logic_vector(3 downto 0);
        pfdmodelock     : out    vl_logic_vector(0 downto 0);
        ppmlock         : in     vl_logic_vector(0 downto 0);
        refclk          : in     vl_logic_vector(0 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0);
        rxp             : in     vl_logic_vector(0 downto 0);
        rxplllock       : out    vl_logic_vector(0 downto 0);
        txrlpbk         : out    vl_logic_vector(0 downto 0);
        discdrreset     : in     vl_logic_vector(0 downto 0);
        pldclkatt       : in     vl_logic_vector(0 downto 0);
        refclkatt       : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of refclk_sel : constant is 1;
    attribute mti_svvh_generic_type of bbpd_salatch_offset_ctrl_clk90 : constant is 1;
    attribute mti_svvh_generic_type of pd_l_counter : constant is 1;
    attribute mti_svvh_generic_type of rxpll_pd_bw_ctrl : constant is 1;
    attribute mti_svvh_generic_type of output_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of ripple_cap_ctrl : constant is 1;
    attribute mti_svvh_generic_type of reverse_serial_lpbk : constant is 1;
    attribute mti_svvh_generic_type of ref_clk_div : constant is 1;
    attribute mti_svvh_generic_type of ignore_phslock : constant is 1;
    attribute mti_svvh_generic_type of pd_charge_pump_current_ctrl : constant is 1;
    attribute mti_svvh_generic_type of bbpd_salatch_offset_ctrl_clk180 : constant is 1;
    attribute mti_svvh_generic_type of bbpd_salatch_offset_ctrl_clk270 : constant is 1;
    attribute mti_svvh_generic_type of bbpd_salatch_offset_ctrl_clk0 : constant is 1;
    attribute mti_svvh_generic_type of diag_rev_lpbk : constant is 1;
    attribute mti_svvh_generic_type of replica_bias_ctrl : constant is 1;
    attribute mti_svvh_generic_type of m_counter : constant is 1;
    attribute mti_svvh_generic_type of pfd_charge_pump_current_ctrl : constant is 1;
    attribute mti_svvh_generic_type of clklow_fref_to_ppm_div_sel : constant is 1;
    attribute mti_svvh_generic_type of reverse_loopback : constant is 1;
    attribute mti_svvh_generic_type of charge_pump_current_test : constant is 1;
    attribute mti_svvh_generic_type of cdr_atb_select : constant is 1;
    attribute mti_svvh_generic_type of rxpll_pfd_bw_ctrl : constant is 1;
    attribute mti_svvh_generic_type of powerdown : constant is 1;
    attribute mti_svvh_generic_type of pfd_l_counter : constant is 1;
    attribute mti_svvh_generic_type of fast_lock_mode : constant is 1;
    attribute mti_svvh_generic_type of regulator_volt_inc : constant is 1;
    attribute mti_svvh_generic_type of bypass_cp_rgla : constant is 1;
    attribute mti_svvh_generic_type of fb_sel : constant is 1;
    attribute mti_svvh_generic_type of force_vco_const : constant is 1;
    attribute mti_svvh_generic_type of bbpd_salatch_sel : constant is 1;
    attribute mti_svvh_generic_type of reference_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of hs_levshift_power_supply_setting : constant is 1;
    attribute mti_svvh_generic_type of ppmsel : constant is 1;
    attribute mti_svvh_generic_type of ppm_lock_sel : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of cdr_or_eyeq_sel : constant is 1;
end stratixv_hssi_pma_cdr_att;
