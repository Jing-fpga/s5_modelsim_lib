library verilog;
use verilog.vl_types.all;
entity stratixv_clk_phase_select is
    generic(
        use_phasectrlin : string  := "true";
        phase_setting   : integer := 0;
        invert_phase    : string  := "false";
        physical_clock_source: string  := "auto"
    );
    port(
        clkin           : in     vl_logic_vector(3 downto 0);
        phasectrlin     : in     vl_logic_vector(1 downto 0);
        phaseinvertctrl : in     vl_logic;
        powerdown       : in     vl_logic;
        clkout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of use_phasectrlin : constant is 1;
    attribute mti_svvh_generic_type of phase_setting : constant is 1;
    attribute mti_svvh_generic_type of invert_phase : constant is 1;
    attribute mti_svvh_generic_type of physical_clock_source : constant is 1;
end stratixv_clk_phase_select;
