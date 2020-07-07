library verilog;
use verilog.vl_types.all;
entity fast_addr_zero is
    port(
        clk_156m        : in     vl_logic;
        rst_n           : in     vl_logic;
        msg_type        : in     vl_logic_vector(2 downto 0);
        pmap_valid      : in     vl_logic;
        fast_ram_addr_zero: out    vl_logic
    );
end fast_addr_zero;
