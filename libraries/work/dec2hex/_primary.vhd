library verilog;
use verilog.vl_types.all;
entity dec2hex is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        dec_data        : in     vl_logic_vector(19 downto 0);
        hex_data        : out    vl_logic_vector(15 downto 0)
    );
end dec2hex;
