library verilog;
use verilog.vl_types.all;
entity stratixv_io_config is
    generic(
        lpm_type        : string  := "stratixv_io_config";
        use_read_vt_tracking: string  := "false";
        use_pvt_compensation: string  := "false"
    );
    port(
        datain          : in     vl_logic;
        clk             : in     vl_logic;
        ena             : in     vl_logic;
        update          : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(6 downto 0);
        calibrationdone : in     vl_logic;
        rankselectread  : in     vl_logic;
        rankselectwrite : in     vl_logic;
        vtreadstatus    : out    vl_logic_vector(1 downto 0);
        outputdelaysetting1: out    vl_logic_vector(5 downto 0);
        outputdelaysetting2: out    vl_logic_vector(5 downto 0);
        padtoinputregisterdelaysetting: out    vl_logic_vector(5 downto 0);
        padtoinputregisterrisefalldelaysetting: out    vl_logic_vector(5 downto 0);
        inputclkdelaysetting: out    vl_logic_vector(1 downto 0);
        inputclkndelaysetting: out    vl_logic_vector(1 downto 0);
        dutycycledelaymode: out    vl_logic;
        dutycycledelaysetting: out    vl_logic_vector(3 downto 0);
        dataout         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of use_read_vt_tracking : constant is 1;
    attribute mti_svvh_generic_type of use_pvt_compensation : constant is 1;
end stratixv_io_config;
