library verilog;
use verilog.vl_types.all;
entity stratixiv_crcblock is
    generic(
        oscillator_divider: integer := 1;
        lpm_type        : string  := "stratixiv_crcblock";
        crc_deld_disable: string  := "off";
        error_delay     : integer := 0;
        error_dra_dl_bypass: string  := "off"
    );
    port(
        clk             : in     vl_logic;
        shiftnld        : in     vl_logic;
        crcerror        : out    vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of oscillator_divider : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of crc_deld_disable : constant is 1;
    attribute mti_svvh_generic_type of error_delay : constant is 1;
    attribute mti_svvh_generic_type of error_dra_dl_bypass : constant is 1;
end stratixiv_crcblock;
