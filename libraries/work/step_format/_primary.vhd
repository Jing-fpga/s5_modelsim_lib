library verilog;
use verilog.vl_types.all;
entity step_format is
    generic(
        STEP_HEAD       : vl_logic_vector(0 to 47) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        LENS_FLAG       : vl_logic_vector(0 to 23) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        TYPE_FLAG       : integer := 1026896641;
        FM0_IDLE        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        FM1_STEP_HEDA   : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        FM2_STEP_LEN    : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        FM3_MSG_BODY    : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        csr_cnt_clr     : in     vl_logic;
        csr_fsm_restart : in     vl_logic;
        fifo_empty      : in     vl_logic;
        fifo_q          : in     vl_logic_vector(71 downto 0);
        step_rx_rdy     : in     vl_logic;
        fifo_rdreq      : out    vl_logic;
        step_rx_sop     : out    vl_logic;
        step_rx_eop     : out    vl_logic;
        step_rx_vld     : out    vl_logic;
        step_rx_vld_bytes: out    vl_logic_vector(2 downto 0);
        step_rx_data    : out    vl_logic_vector(63 downto 0);
        step_rx_ultra   : out    vl_logic;
        step_sop_cnt    : out    vl_logic_vector(31 downto 0);
        step_eop_cnt    : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of STEP_HEAD : constant is 1;
    attribute mti_svvh_generic_type of LENS_FLAG : constant is 1;
    attribute mti_svvh_generic_type of TYPE_FLAG : constant is 1;
    attribute mti_svvh_generic_type of FM0_IDLE : constant is 1;
    attribute mti_svvh_generic_type of FM1_STEP_HEDA : constant is 1;
    attribute mti_svvh_generic_type of FM2_STEP_LEN : constant is 1;
    attribute mti_svvh_generic_type of FM3_MSG_BODY : constant is 1;
end step_format;
