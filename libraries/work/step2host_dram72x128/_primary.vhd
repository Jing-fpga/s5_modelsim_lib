library verilog;
use verilog.vl_types.all;
entity step2host_dram72x128 is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(71 downto 0);
        rdaddress       : in     vl_logic_vector(6 downto 0);
        rden            : in     vl_logic;
        wraddress       : in     vl_logic_vector(6 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(71 downto 0)
    );
end step2host_dram72x128;
