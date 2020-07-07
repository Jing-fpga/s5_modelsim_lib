library verilog;
use verilog.vl_types.all;
entity decode_ctl is
    port(
        clk_156m        : in     vl_logic;
        rst_n           : in     vl_logic;
        dram_rdy        : out    vl_logic;
        dram_sop        : in     vl_logic;
        dram_eop        : in     vl_logic;
        dram_valid      : in     vl_logic;
        dram_data       : in     vl_logic_vector(63 downto 0);
        dram_valid_bytes: in     vl_logic_vector(2 downto 0);
        dram_msg_type   : in     vl_logic_vector(2 downto 0);
        csr_fsm_restart : in     vl_logic;
        decode_end      : in     vl_logic;
        xml_ram_waddr   : in     vl_logic_vector(8 downto 0);
        xml_ram_wren    : in     vl_logic;
        xml_ram_wdata   : in     vl_logic_vector(31 downto 0);
        xml_ram_rden    : in     vl_logic;
        xml_ram_raddr   : in     vl_logic_vector(8 downto 0);
        xml_ram_dout    : out    vl_logic_vector(31 downto 0);
        fast_ram_dout   : out    vl_logic_vector(71 downto 0);
        fast_ram_rden   : in     vl_logic;
        fast_ram_valid  : out    vl_logic;
        pmap_valid      : out    vl_logic;
        pmap            : out    vl_logic_vector(63 downto 0);
        msg_type        : out    vl_logic_vector(2 downto 0);
        decod_ctl_fsm_stat: out    vl_logic_vector(7 downto 0)
    );
end decode_ctl;
