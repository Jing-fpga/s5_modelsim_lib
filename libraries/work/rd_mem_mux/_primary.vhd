library verilog;
use verilog.vl_types.all;
entity rd_mem_mux is
    port(
        msg_type        : in     vl_logic_vector(2 downto 0);
        cpu_rd_req      : in     vl_logic;
        cpu_xml_rden    : in     vl_logic;
        cpu_xml_raddr   : in     vl_logic_vector(8 downto 0);
        cpu_fast_rden   : in     vl_logic;
        mkt_xml_rden    : in     vl_logic;
        mkt_xml_raddr   : in     vl_logic_vector(8 downto 0);
        mkt_fast_rden   : in     vl_logic;
        mkt_decode_end  : in     vl_logic;
        mix_xml_rden    : in     vl_logic;
        mix_xml_raddr   : in     vl_logic_vector(8 downto 0);
        mix_fast_rden   : in     vl_logic;
        mix_decode_end  : in     vl_logic;
        xml_ram_rden    : out    vl_logic;
        xml_ram_raddr   : out    vl_logic_vector(8 downto 0);
        fast_ram_rden   : out    vl_logic;
        decode_end      : out    vl_logic
    );
end rd_mem_mux;
