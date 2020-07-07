library verilog;
use verilog.vl_types.all;
entity stratixiv_lvds_rx_deser is
    generic(
        channel_width   : integer := 10
    );
    port(
        clk             : in     vl_logic;
        datain          : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        dataout         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of channel_width : constant is 1;
end stratixiv_lvds_rx_deser;
