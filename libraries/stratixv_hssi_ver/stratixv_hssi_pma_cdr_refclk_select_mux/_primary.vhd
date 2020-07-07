library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_cdr_refclk_select_mux is
    generic(
        inclk20_logical_to_physical_mapping: string  := "unused";
        inclk3_logical_to_physical_mapping: string  := "unused";
        inclk23_logical_to_physical_mapping: string  := "unused";
        inclk8_logical_to_physical_mapping: string  := "unused";
        inclk17_logical_to_physical_mapping: string  := "unused";
        inclk6_logical_to_physical_mapping: string  := "unused";
        inclk10_logical_to_physical_mapping: string  := "unused";
        inclk24_logical_to_physical_mapping: string  := "unused";
        inclk18_logical_to_physical_mapping: string  := "unused";
        inclk14_logical_to_physical_mapping: string  := "unused";
        refclk_select   : string  := "ref_iqclk0";
        user_base_address: integer := 0;
        inclk21_logical_to_physical_mapping: string  := "unused";
        inclk16_logical_to_physical_mapping: string  := "unused";
        inclk25_logical_to_physical_mapping: string  := "unused";
        inclk9_logical_to_physical_mapping: string  := "unused";
        inclk5_logical_to_physical_mapping: string  := "unused";
        reference_clock_frequency: string  := "";
        inclk2_logical_to_physical_mapping: string  := "unused";
        mux_type        : string  := "cdr_refclk_select_mux";
        avmm_group_channel_index: integer := 0;
        inclk13_logical_to_physical_mapping: string  := "unused";
        channel_number  : integer := 0;
        inclk15_logical_to_physical_mapping: string  := "unused";
        inclk0_logical_to_physical_mapping: string  := "unused";
        inclk12_logical_to_physical_mapping: string  := "unused";
        use_default_base_address: string  := "true";
        inclk4_logical_to_physical_mapping: string  := "unused";
        inclk7_logical_to_physical_mapping: string  := "unused";
        inclk1_logical_to_physical_mapping: string  := "unused";
        inclk22_logical_to_physical_mapping: string  := "unused";
        inclk19_logical_to_physical_mapping: string  := "unused";
        inclk11_logical_to_physical_mapping: string  := "unused";
        silicon_rev     : string  := "reve"
    );
    port(
        refclklc        : in     vl_logic_vector(0 downto 0);
        occalen         : in     vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        calclk          : in     vl_logic_vector(0 downto 0);
        clkout          : out    vl_logic_vector(0 downto 0);
        ffplloutbot     : in     vl_logic_vector(0 downto 0);
        ffpllouttop     : in     vl_logic_vector(0 downto 0);
        pldclk          : in     vl_logic_vector(0 downto 0);
        refiqclk0       : in     vl_logic_vector(0 downto 0);
        refiqclk1       : in     vl_logic_vector(0 downto 0);
        refiqclk10      : in     vl_logic_vector(0 downto 0);
        refiqclk2       : in     vl_logic_vector(0 downto 0);
        refiqclk3       : in     vl_logic_vector(0 downto 0);
        refiqclk4       : in     vl_logic_vector(0 downto 0);
        refiqclk5       : in     vl_logic_vector(0 downto 0);
        refiqclk6       : in     vl_logic_vector(0 downto 0);
        refiqclk7       : in     vl_logic_vector(0 downto 0);
        refiqclk8       : in     vl_logic_vector(0 downto 0);
        refiqclk9       : in     vl_logic_vector(0 downto 0);
        rxiqclk0        : in     vl_logic_vector(0 downto 0);
        rxiqclk1        : in     vl_logic_vector(0 downto 0);
        rxiqclk10       : in     vl_logic_vector(0 downto 0);
        rxiqclk2        : in     vl_logic_vector(0 downto 0);
        rxiqclk3        : in     vl_logic_vector(0 downto 0);
        rxiqclk4        : in     vl_logic_vector(0 downto 0);
        rxiqclk5        : in     vl_logic_vector(0 downto 0);
        rxiqclk6        : in     vl_logic_vector(0 downto 0);
        rxiqclk7        : in     vl_logic_vector(0 downto 0);
        rxiqclk8        : in     vl_logic_vector(0 downto 0);
        rxiqclk9        : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of inclk20_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk23_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk17_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk10_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk24_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk18_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk14_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of refclk_select : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of inclk21_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk16_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk25_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of reference_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of mux_type : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of inclk13_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of channel_number : constant is 1;
    attribute mti_svvh_generic_type of inclk15_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk12_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk22_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk19_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of inclk11_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_pma_cdr_refclk_select_mux;