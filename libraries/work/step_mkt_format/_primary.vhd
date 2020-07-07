library verilog;
use verilog.vl_types.all;
entity step_mkt_format is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        csr_cnt_clr     : in     vl_logic;
        csr_fsm_restart : in     vl_logic;
        csr_shmkt_cid   : in     vl_logic_vector(7 downto 0);
        csr_shmkt_fifo_th: in     vl_logic_vector(11 downto 0);
        app_rx_sop      : in     vl_logic;
        app_rx_eop      : in     vl_logic;
        app_rx_vld      : in     vl_logic;
        app_rx_vld_bytes: in     vl_logic_vector(2 downto 0);
        app_rx_data     : in     vl_logic_vector(63 downto 0);
        app_rx_cid      : in     vl_logic_vector(7 downto 0);
        step_rx_rdy     : in     vl_logic;
        app_rx_rdy      : out    vl_logic;
        step_rx_sop     : out    vl_logic;
        step_rx_eop     : out    vl_logic;
        step_rx_vld     : out    vl_logic;
        step_rx_vld_bytes: out    vl_logic_vector(2 downto 0);
        step_rx_data    : out    vl_logic_vector(63 downto 0);
        step_rx_ultra   : out    vl_logic;
        step_sop_cnt    : out    vl_logic_vector(31 downto 0);
        step_eop_cnt    : out    vl_logic_vector(31 downto 0)
    );
end step_mkt_format;
