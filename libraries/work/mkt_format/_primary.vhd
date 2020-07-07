library verilog;
use verilog.vl_types.all;
entity mkt_format is
    generic(
        HRT_TYPE        : integer := 3
    );
    port(
        clk_156m        : in     vl_logic;
        reset_n         : in     vl_logic;
        toe_tcp_stat    : in     vl_logic;
        toe_data        : in     vl_logic_vector(63 downto 0);
        toe_valid       : in     vl_logic;
        toe_sop         : in     vl_logic;
        toe_eop         : in     vl_logic;
        toe_valid_bytes : in     vl_logic_vector(2 downto 0);
        tx_rdy          : in     vl_logic;
        tx_data         : out    vl_logic_vector(63 downto 0);
        tx_valid        : out    vl_logic;
        tx_sop          : out    vl_logic;
        tx_eop          : out    vl_logic;
        tx_valid_bytes  : out    vl_logic_vector(2 downto 0);
        sz_vld_hrt      : out    vl_logic;
        mkt_ready       : out    vl_logic;
        msg_lens        : out    vl_logic_vector(31 downto 0);
        fmt_msgtype     : out    vl_logic_vector(31 downto 0);
        fmt_fsm_stat    : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of HRT_TYPE : constant is 1;
end mkt_format;
