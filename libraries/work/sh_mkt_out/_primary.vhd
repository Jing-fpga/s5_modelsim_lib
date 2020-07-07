library verilog;
use verilog.vl_types.all;
entity sh_mkt_out is
    port(
        msg_type        : in     vl_logic_vector(2 downto 0);
        mix_fast_sop    : in     vl_logic;
        mix_fast_eop    : in     vl_logic;
        mix_fast_valid  : in     vl_logic;
        mix_fast_data   : in     vl_logic_vector(63 downto 0);
        mix_fast_valid_bytes: in     vl_logic_vector(2 downto 0);
        mix_fast_port_map: in     vl_logic_vector(15 downto 0);
        mix_fast_decml_place: in     vl_logic_vector(3 downto 0);
        mix_fast_op_type: in     vl_logic_vector(3 downto 0);
        mix_fast_data_type: in     vl_logic_vector(3 downto 0);
        mkt_fast_sop    : in     vl_logic;
        mkt_fast_eop    : in     vl_logic;
        mkt_fast_valid  : in     vl_logic;
        mkt_fast_data   : in     vl_logic_vector(63 downto 0);
        mkt_fast_valid_bytes: in     vl_logic_vector(2 downto 0);
        mkt_fast_port_map: in     vl_logic_vector(15 downto 0);
        mkt_fast_decml_place: in     vl_logic_vector(3 downto 0);
        mkt_fast_op_type: in     vl_logic_vector(3 downto 0);
        mkt_fast_data_type: in     vl_logic_vector(3 downto 0);
        fast_mkt_sop    : out    vl_logic;
        fast_mkt_eop    : out    vl_logic;
        fast_mkt_valid  : out    vl_logic;
        fast_mkt_data   : out    vl_logic_vector(63 downto 0);
        fast_mkt_valid_bytes: out    vl_logic_vector(2 downto 0);
        fast_mkt_port_map: out    vl_logic_vector(15 downto 0);
        fast_mkt_decml_place: out    vl_logic_vector(3 downto 0);
        fast_mkt_op_type: out    vl_logic_vector(3 downto 0);
        fast_mkt_data_type: out    vl_logic_vector(3 downto 0)
    );
end sh_mkt_out;
