library verilog;
use verilog.vl_types.all;
entity stop_bit_decode is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        rx_rdy          : out    vl_logic;
        rx_sop          : in     vl_logic;
        rx_eop          : in     vl_logic;
        rx_valid        : in     vl_logic;
        rx_data         : in     vl_logic_vector(63 downto 0);
        rx_valid_byte   : in     vl_logic_vector(2 downto 0);
        rx_msg_type     : in     vl_logic_vector(2 downto 0);
        dram_rdy        : in     vl_logic;
        dram_sop        : out    vl_logic;
        dram_eop        : out    vl_logic;
        dram_valid      : out    vl_logic;
        dram_data       : out    vl_logic_vector(63 downto 0);
        dram_valid_byte : out    vl_logic_vector(2 downto 0);
        dram_msg_type   : out    vl_logic_vector(2 downto 0);
        err_cnt         : out    vl_logic_vector(7 downto 0)
    );
end stop_bit_decode;
