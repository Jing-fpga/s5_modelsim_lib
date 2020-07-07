library verilog;
use verilog.vl_types.all;
entity index_decode is
    port(
        clk_156m        : in     vl_logic;
        rst_n           : in     vl_logic;
        csr_fsm_restart : in     vl_logic;
        cpu_rd_ram_req  : in     vl_logic;
        fast_ram_rden   : out    vl_logic;
        fast_ram_dout   : in     vl_logic_vector(71 downto 0);
        fast_ram_valid  : in     vl_logic;
        xml_ram_rden    : out    vl_logic;
        xml_ram_raddr   : out    vl_logic_vector(8 downto 0);
        xml_ram_dout    : in     vl_logic_vector(31 downto 0);
        xml_ram_valid   : in     vl_logic;
        none_bit_reg    : in     vl_logic_vector(63 downto 0);
        pmap_valid      : in     vl_logic;
        pmap            : in     vl_logic_vector(63 downto 0);
        msg_type        : in     vl_logic_vector(2 downto 0);
        index_decode_end: out    vl_logic;
        dst_req         : in     vl_logic;
        fast_sop        : out    vl_logic;
        fast_eop        : out    vl_logic;
        fast_valid      : out    vl_logic;
        fast_data       : out    vl_logic_vector(63 downto 0);
        fast_valid_bytes: out    vl_logic_vector(2 downto 0);
        fast_port_map   : out    vl_logic_vector(15 downto 0);
        fast_decml_place: out    vl_logic_vector(3 downto 0);
        fast_op_type    : out    vl_logic_vector(3 downto 0);
        fast_data_type  : out    vl_logic_vector(3 downto 0)
    );
end index_decode;
