library verilog;
use verilog.vl_types.all;
entity xml_dram32x1024 is
    port(
        address_a       : in     vl_logic_vector(9 downto 0);
        address_b       : in     vl_logic_vector(9 downto 0);
        clock_a         : in     vl_logic;
        clock_b         : in     vl_logic;
        data_a          : in     vl_logic_vector(31 downto 0);
        data_b          : in     vl_logic_vector(31 downto 0);
        wren_a          : in     vl_logic;
        wren_b          : in     vl_logic;
        q_a             : out    vl_logic_vector(31 downto 0);
        q_b             : out    vl_logic_vector(31 downto 0)
    );
end xml_dram32x1024;
