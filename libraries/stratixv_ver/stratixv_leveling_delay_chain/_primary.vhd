library verilog;
use verilog.vl_types.all;
entity stratixv_leveling_delay_chain is
    generic(
        physical_clock_source: string  := "dqs";
        sim_buffer_intrinsic_delay: integer := 175;
        sim_buffer_delay_increment: integer := 10;
        use_duty_cycle_correction: string  := "false";
        test_mode       : string  := "false"
    );
    port(
        clkin           : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(6 downto 0);
        clkout          : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of physical_clock_source : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_intrinsic_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_buffer_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of use_duty_cycle_correction : constant is 1;
    attribute mti_svvh_generic_type of test_mode : constant is 1;
end stratixv_leveling_delay_chain;
