library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_pma_ser_att is
    generic(
        enable_debug_info: string  := "false";
        ser_loopback    : string  := "loopback_disable";
        ser_pdb         : string  := "power_down";
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
        clk0            : in     vl_logic_vector(0 downto 0);
        clk180          : in     vl_logic_vector(0 downto 0);
        clkdivtxtop     : out    vl_logic_vector(0 downto 0);
        datain          : in     vl_logic_vector(127 downto 0);
        lbvon           : out    vl_logic_vector(0 downto 0);
        lbvop           : out    vl_logic_vector(0 downto 0);
        observableasyncdatain: out    vl_logic_vector(0 downto 0);
        observableintclk: out    vl_logic_vector(0 downto 0);
        observablesyncdatain: out    vl_logic_vector(0 downto 0);
        oe              : out    vl_logic_vector(0 downto 0);
        oeb             : out    vl_logic_vector(0 downto 0);
        oo              : out    vl_logic_vector(0 downto 0);
        oob             : out    vl_logic_vector(0 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0);
        slpbk           : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of ser_loopback : constant is 1;
    attribute mti_svvh_generic_type of ser_pdb : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_pma_ser_att;
