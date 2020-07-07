library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_deser_att is
    generic(
        vcobypass       : string  := "clk_divrx";
        enable_debug_info: string  := "false";
        silicon_rev     : string  := "reve";
        serializer_clk_inv: string  := "non_inv_clk"
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
        clkdivrx        : out    vl_logic_vector(0 downto 0);
        dataout         : out    vl_logic_vector(127 downto 0);
        devenadiv2n     : in     vl_logic_vector(0 downto 0);
        devenadiv2p     : in     vl_logic_vector(0 downto 0);
        devenbdiv2n     : in     vl_logic_vector(0 downto 0);
        devenbdiv2p     : in     vl_logic_vector(0 downto 0);
        div2270         : in     vl_logic_vector(0 downto 0);
        div2270n        : in     vl_logic_vector(0 downto 0);
        doddadiv2n      : in     vl_logic_vector(0 downto 0);
        doddadiv2p      : in     vl_logic_vector(0 downto 0);
        doddbdiv2n      : in     vl_logic_vector(0 downto 0);
        doddbdiv2p      : in     vl_logic_vector(0 downto 0);
        observableasyncdata: out    vl_logic_vector(0 downto 0);
        observableintclk: out    vl_logic_vector(0 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of vcobypass : constant is 1;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
    attribute mti_svvh_generic_type of serializer_clk_inv : constant is 1;
end stratixv_hssi_pma_deser_att;
