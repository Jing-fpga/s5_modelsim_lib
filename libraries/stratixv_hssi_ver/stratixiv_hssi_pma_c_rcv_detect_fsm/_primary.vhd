library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_pma_c_rcv_detect_fsm is
    generic(
        RESET           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        WAKE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        STATE_1         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        STATE_2         : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        HOLD            : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        CLK             : in     vl_logic;
        RESET_N         : in     vl_logic;
        COM_PASS        : in     vl_logic;
        PROBE_PASS      : in     vl_logic;
        DET_ON          : out    vl_logic;
        DETECT_VALID    : out    vl_logic;
        RCV_FOUND       : out    vl_logic;
        TX_DET_RX       : in     vl_logic;
        RX_P            : in     vl_logic;
        RX_N            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RESET : constant is 1;
    attribute mti_svvh_generic_type of WAKE : constant is 1;
    attribute mti_svvh_generic_type of STATE_1 : constant is 1;
    attribute mti_svvh_generic_type of STATE_2 : constant is 1;
    attribute mti_svvh_generic_type of HOLD : constant is 1;
end stratixiv_hssi_pma_c_rcv_detect_fsm;
