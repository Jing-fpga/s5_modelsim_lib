library verilog;
use verilog.vl_types.all;
entity stratixv_phy_clkbuf is
    generic(
        level1_mux      : string  := "VALUE_FAST";
        level2_mux      : string  := "VALUE_FAST"
    );
    port(
        inclk           : in     vl_logic_vector(3 downto 0);
        outclk          : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of level1_mux : constant is 1;
    attribute mti_svvh_generic_type of level2_mux : constant is 1;
end stratixv_phy_clkbuf;
