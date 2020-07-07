library verilog;
use verilog.vl_types.all;
entity stratixiv_ddr_delay_chain_s is
    generic(
        use_phasectrlin : string  := "true";
        phase_setting   : integer := 0;
        sim_buffer_intrinsic_delay: integer := 350;
        sim_buffer_delay_increment: integer := 10;
        phasectrlin_limit: integer := 7
    );
    port(
        clk             : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(5 downto 0);
        phasectrlin     : in     vl_logic_vector(3 downto 0);
        delayed_clkout  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of use_phasectrlin : constant is 1;
    attribute mti_svvh_generic_type of phase_setting : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of phasectrlin_limit : constant is 1;
end stratixiv_ddr_delay_chain_s;
