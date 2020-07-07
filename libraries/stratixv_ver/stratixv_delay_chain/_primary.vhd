library verilog;
use verilog.vl_types.all;
entity stratixv_delay_chain is
    generic(
        sim_intrinsic_rising_delay: integer := 200;
        sim_intrinsic_falling_delay: integer := 200;
        sim_rising_delay_increment: integer := 10;
        sim_falling_delay_increment: integer := 10;
        lpm_type        : string  := "stratixv_delay_chain";
        use_pvt_compensation: string  := "false"
    );
    port(
        datain          : in     vl_logic;
        delayctrlin     : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of sim_intrinsic_rising_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_intrinsic_falling_delay : constant is 1;
    attribute mti_svvh_generic_type of sim_rising_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of sim_falling_delay_increment : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of use_pvt_compensation : constant is 1;
end stratixv_delay_chain;
