library verilog;
use verilog.vl_types.all;
entity stratixv_dqs_enable_ctrl is
    generic(
        bypass_output_register: string  := "false";
        delay_dqs_enable_by_half_cycle: string  := "false";
        add_phase_transfer_reg: string  := "false";
        ext_delay_chain_setting: integer := 0;
        int_delay_chain_setting: integer := 0;
        use_enable_tracking: string  := "false";
        use_on_die_variation_tracking: string  := "false";
        use_pvt_compensation: string  := "false";
        sim_dqsenablein_pre_delay: integer := 0
    );
    port(
        dqsenablein     : in     vl_logic;
        zerophaseclk    : in     vl_logic;
        enaphasetransferreg: in     vl_logic;
        levelingclk     : in     vl_logic;
        dffin           : out    vl_logic;
        coredqsenabledelayctrlin: in     vl_logic_vector(7 downto 0);
        coredqsdisablendelayctrlin: in     vl_logic_vector(7 downto 0);
        coredqsenabledelayctrlout: out    vl_logic_vector(7 downto 0);
        coredqsdisablendelayctrlout: out    vl_logic_vector(7 downto 0);
        rankclkout      : out    vl_logic;
        dffphasetransfer: out    vl_logic;
        dffextenddqsenable: out    vl_logic;
        dqsenableout    : out    vl_logic;
        prevphasevalid  : out    vl_logic;
        enatrackingreset: in     vl_logic;
        enatrackingevent: out    vl_logic;
        enatrackingupdwn: out    vl_logic;
        nextphasealign  : out    vl_logic;
        prevphasealign  : out    vl_logic;
        prevphasedelaysetting: out    vl_logic_vector(5 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bypass_output_register : constant is 1;
    attribute mti_svvh_generic_type of delay_dqs_enable_by_half_cycle : constant is 1;
    attribute mti_svvh_generic_type of add_phase_transfer_reg : constant is 1;
    attribute mti_svvh_generic_type of ext_delay_chain_setting : constant is 1;
    attribute mti_svvh_generic_type of int_delay_chain_setting : constant is 1;
    attribute mti_svvh_generic_type of use_enable_tracking : constant is 1;
    attribute mti_svvh_generic_type of use_on_die_variation_tracking : constant is 1;
    attribute mti_svvh_generic_type of use_pvt_compensation : constant is 1;
    attribute mti_svvh_generic_type of sim_dqsenablein_pre_delay : constant is 1;
end stratixv_dqs_enable_ctrl;
