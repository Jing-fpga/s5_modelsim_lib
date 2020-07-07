library verilog;
use verilog.vl_types.all;
entity mkt_decode is
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
        mkt_decode_end  : out    vl_logic;
        mkt_base_addr   : in     vl_logic_vector(8 downto 0);
        no_bid_level_base_addr: in     vl_logic_vector(8 downto 0);
        bid_no_orders_base_addr: in     vl_logic_vector(8 downto 0);
        no_offer_level_base_addr: in     vl_logic_vector(8 downto 0);
        offer_no_orders_base_addr: in     vl_logic_vector(8 downto 0);
        dst_req         : in     vl_logic;
        fast_sop        : out    vl_logic;
        fast_eop        : out    vl_logic;
        fast_valid      : out    vl_logic;
        fast_data       : out    vl_logic_vector(63 downto 0);
        fast_valid_bytes: out    vl_logic_vector(2 downto 0);
        fast_port_map   : out    vl_logic_vector(15 downto 0);
        fast_decml_place: out    vl_logic_vector(3 downto 0);
        fast_op_type    : out    vl_logic_vector(3 downto 0);
        fast_data_type  : out    vl_logic_vector(3 downto 0);
        mkt_decod_fsm_stat: out    vl_logic_vector(15 downto 0)
    );
end mkt_decode;
