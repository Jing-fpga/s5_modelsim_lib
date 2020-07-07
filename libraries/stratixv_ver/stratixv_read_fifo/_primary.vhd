library verilog;
use verilog.vl_types.all;
entity stratixv_read_fifo is
    generic(
        use_half_rate_read: string  := "false";
        sim_wclk_pre_delay: integer := 0
    );
    port(
        datain          : in     vl_logic_vector(1 downto 0);
        wclk            : in     vl_logic;
        we              : in     vl_logic;
        rclk            : in     vl_logic;
        re              : in     vl_logic;
        areset          : in     vl_logic;
        plus2           : in     vl_logic;
        dataout         : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of use_half_rate_read : constant is 1;
    attribute mti_svvh_generic_type of sim_wclk_pre_delay : constant is 1;
end stratixv_read_fifo;
