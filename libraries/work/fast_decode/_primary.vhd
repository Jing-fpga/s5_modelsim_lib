library verilog;
use verilog.vl_types.all;
entity fast_decode is
    port(
        clk_156m        : in     vl_logic;
        rst_n           : in     vl_logic;
        fast_ram_rdy    : out    vl_logic;
        fast_ram_sop    : in     vl_logic;
        fast_ram_eop    : in     vl_logic;
        fast_ram_valid  : in     vl_logic;
        fast_ram_data   : in     vl_logic_vector(63 downto 0);
        fast_ram_valid_bytes: in     vl_logic_vector(2 downto 0);
        fast_ram_msg_type: in     vl_logic_vector(2 downto 0);
        xml_ram_wren    : in     vl_logic;
        xml_ram_waddr   : in     vl_logic_vector(8 downto 0);
        xml_ram_wdata   : in     vl_logic_vector(31 downto 0);
        xml_ram_valid   : in     vl_logic;
        none_bit_reg    : in     vl_logic_vector(63 downto 0);
        dst_req         : in     vl_logic;
        fast_sop        : out    vl_logic;
        fast_eop        : out    vl_logic;
        fast_valid      : out    vl_logic;
        fast_data       : out    vl_logic_vector(63 downto 0);
        fast_valid_bytes: out    vl_logic_vector(2 downto 0);
        fast_port_map   : out    vl_logic_vector(7 downto 0);
        fast_decml_place: out    vl_logic_vector(4 downto 0);
        fast_op_type    : out    vl_logic_vector(3 downto 0);
        fast_data_type  : out    vl_logic_vector(3 downto 0)
    );
end fast_decode;
