library verilog;
use verilog.vl_types.all;
entity stratixiv_io_config is
    generic(
        enhanced_mode   : string  := "false";
        lpm_type        : string  := "stratixiv_io_config"
    );
    port(
        datain          : in     vl_logic;
        clk             : in     vl_logic;
        ena             : in     vl_logic;
        update          : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        padtoinputregisterdelaysetting: out    vl_logic_vector(3 downto 0);
        outputdelaysetting1: out    vl_logic_vector(3 downto 0);
        outputdelaysetting2: out    vl_logic_vector(2 downto 0);
        dutycycledelaymode: out    vl_logic;
        dutycycledelaysettings: out    vl_logic_vector(3 downto 0);
        outputfinedelaysetting1: out    vl_logic;
        outputfinedelaysetting2: out    vl_logic;
        outputonlydelaysetting2: out    vl_logic_vector(2 downto 0);
        outputonlyfinedelaysetting2: out    vl_logic;
        padtoinputregisterfinedelaysetting: out    vl_logic;
        dataout         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enhanced_mode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_io_config;
