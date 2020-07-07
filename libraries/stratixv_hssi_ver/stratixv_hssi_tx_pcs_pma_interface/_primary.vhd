library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_tx_pcs_pma_interface is
    generic(
        user_base_address: integer := 0;
        avmm_group_channel_index: integer := 0;
        selectpcs       : string  := "eight_g_pcs";
        use_default_base_address: string  := "true";
        silicon_rev     : string  := "reve"
    );
    port(
        asynchdatain    : out    vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        clockinfrompma  : in     vl_logic_vector(0 downto 0);
        clockoutto10gpcs: out    vl_logic_vector(0 downto 0);
        clockoutto8gpcs : out    vl_logic_vector(0 downto 0);
        datainfrom10gpcs: in     vl_logic_vector(79 downto 0);
        datainfrom8gpcs : in     vl_logic_vector(19 downto 0);
        datainfromgen3pcs: in     vl_logic_vector(31 downto 0);
        dataouttopma    : out    vl_logic_vector(79 downto 0);
        pcs10gclkdiv33lc: out    vl_logic_vector(0 downto 0);
        pcs10gtxclkiqout: in     vl_logic_vector(0 downto 0);
        pcs8gtxclkiqout : in     vl_logic_vector(0 downto 0);
        pcsemsiptxclkiqout: in     vl_logic_vector(0 downto 0);
        pcsgen3gen3datasel: in     vl_logic_vector(0 downto 0);
        pldtxpmasyncpfbkp: in     vl_logic_vector(0 downto 0);
        pmaclkdiv33lcin : in     vl_logic_vector(0 downto 0);
        pmaclkdiv33lcout: out    vl_logic_vector(0 downto 0);
        pmarxfreqtxcmuplllockin: in     vl_logic_vector(0 downto 0);
        pmarxfreqtxcmuplllockout: out    vl_logic_vector(0 downto 0);
        pmatxclkout     : out    vl_logic_vector(0 downto 0);
        pmatxlcplllockin: in     vl_logic_vector(0 downto 0);
        pmatxlcplllockout: out    vl_logic_vector(0 downto 0);
        pmatxpmasyncpfbkp: out    vl_logic_vector(0 downto 0);
        reset           : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of selectpcs : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_tx_pcs_pma_interface;
