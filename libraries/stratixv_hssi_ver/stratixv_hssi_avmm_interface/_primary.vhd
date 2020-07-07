library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_avmm_interface is
    generic(
        num_ch0_atoms   : integer := 0;
        num_ch1_atoms   : integer := 0;
        num_ch2_atoms   : integer := 0
    );
    port(
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        blockselect     : in     vl_logic_vector(89 downto 0);
        readdatachnl    : in     vl_logic_vector(1439 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        clkchnl         : out    vl_logic_vector(0 downto 0);
        rstnchnl        : out    vl_logic_vector(0 downto 0);
        writedatachnl   : out    vl_logic_vector(15 downto 0);
        regaddrchnl     : out    vl_logic_vector(10 downto 0);
        writechnl       : out    vl_logic_vector(0 downto 0);
        readchnl        : out    vl_logic_vector(0 downto 0);
        byteenchnl      : out    vl_logic_vector(1 downto 0);
        refclkdig       : in     vl_logic_vector(0 downto 0);
        avmmreservedin  : in     vl_logic_vector(0 downto 0);
        avmmreservedout : out    vl_logic_vector(0 downto 0);
        dpriorstntop    : out    vl_logic_vector(0 downto 0);
        dprioclktop     : out    vl_logic_vector(0 downto 0);
        mdiodistopchnl  : out    vl_logic_vector(0 downto 0);
        dpriorstnmid    : out    vl_logic_vector(0 downto 0);
        dprioclkmid     : out    vl_logic_vector(0 downto 0);
        mdiodismidchnl  : out    vl_logic_vector(0 downto 0);
        dpriorstnbot    : out    vl_logic_vector(0 downto 0);
        dprioclkbot     : out    vl_logic_vector(0 downto 0);
        mdiodisbotchnl  : out    vl_logic_vector(0 downto 0);
        dpriotestsitopchnl: out    vl_logic_vector(3 downto 0);
        dpriotestsimidchnl: out    vl_logic_vector(3 downto 0);
        dpriotestsibotchnl: out    vl_logic_vector(3 downto 0);
        pmatestbussel   : in     vl_logic_vector(11 downto 0);
        pmatestbus      : out    vl_logic_vector(23 downto 0);
        scanmoden       : in     vl_logic_vector(0 downto 0);
        scanshiftn      : in     vl_logic_vector(0 downto 0);
        interfacesel    : in     vl_logic_vector(0 downto 0);
        sershiftload    : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_ch0_atoms : constant is 1;
    attribute mti_svvh_generic_type of num_ch1_atoms : constant is 1;
    attribute mti_svvh_generic_type of num_ch2_atoms : constant is 1;
end stratixv_hssi_avmm_interface;
