library verilog;
use verilog.vl_types.all;
entity type_det is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        det_vld         : in     vl_logic;
        det_data        : in     vl_logic_vector(31 downto 0);
        hrt_ena         : in     vl_logic;
        det_suss        : out    vl_logic;
        hrt_get         : out    vl_logic
    );
end type_det;
