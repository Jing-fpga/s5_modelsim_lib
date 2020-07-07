library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_refclk_divider is
    generic(
        user_base_address: integer := 0;
        divide_by       : integer := 1;
        avmm_group_channel_index: integer := 0;
        use_default_base_address: string  := "true";
        refclk_coupling_termination: string  := "cdb_cdr_refclk_coupling_oct_normal_100_ohm_oct";
        enabled         : string  := "false";
        reference_clock_frequency: string  := "";
        silicon_rev     : string  := "reve"
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
        nonuserfrompmaux: in     vl_logic_vector(0 downto 0);
        refclkin        : in     vl_logic_vector(0 downto 0);
        refclkout       : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of divide_by : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of refclk_coupling_termination : constant is 1;
    attribute mti_svvh_generic_type of enabled : constant is 1;
    attribute mti_svvh_generic_type of reference_clock_frequency : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_refclk_divider;
