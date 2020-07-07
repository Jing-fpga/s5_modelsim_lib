library verilog;
use verilog.vl_types.all;
entity sh_quota is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        cpu_wr          : in     vl_logic;
        cpu_vld         : in     vl_logic;
        cpu_addr        : in     vl_logic_vector(7 downto 0);
        cpu_wdata       : in     vl_logic_vector(31 downto 0);
        cpu_rdata       : out    vl_logic_vector(31 downto 0);
        cpu_done        : out    vl_logic;
        host_rx_rdy     : in     vl_logic;
        host_rx_type    : out    vl_logic_vector(2 downto 0);
        host_rx_sop     : out    vl_logic;
        host_rx_eop     : out    vl_logic;
        host_rx_vld     : out    vl_logic;
        host_rx_vld_bytes: out    vl_logic_vector(2 downto 0);
        host_rx_data    : out    vl_logic_vector(63 downto 0);
        app_rx_rdy      : out    vl_logic;
        app_rx_sop      : in     vl_logic;
        app_rx_eop      : in     vl_logic;
        app_rx_vld      : in     vl_logic;
        app_rx_vld_bytes: in     vl_logic_vector(2 downto 0);
        app_rx_data     : in     vl_logic_vector(63 downto 0);
        app_rx_cid      : in     vl_logic_vector(7 downto 0);
        dst_rdy         : in     vl_logic;
        fast_mkt_sop    : out    vl_logic;
        fast_mkt_eop    : out    vl_logic;
        fast_mkt_valid  : out    vl_logic;
        fast_mkt_data   : out    vl_logic_vector(63 downto 0);
        fast_mkt_valid_bytes: out    vl_logic_vector(2 downto 0);
        fast_mkt_port_map: out    vl_logic_vector(15 downto 0);
        fast_mkt_decml_place: out    vl_logic_vector(3 downto 0);
        fast_mkt_op_type: out    vl_logic_vector(3 downto 0);
        fast_mkt_data_type: out    vl_logic_vector(3 downto 0)
    );
end sh_quota;
