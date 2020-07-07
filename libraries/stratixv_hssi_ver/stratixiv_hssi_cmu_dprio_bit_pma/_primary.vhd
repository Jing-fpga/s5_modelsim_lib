library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_cmu_dprio_bit_pma is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        sig_in          : in     vl_logic;
        ext_in          : in     vl_logic;
        serial_mode     : in     vl_logic;
        si              : in     vl_logic;
        shift           : in     vl_logic;
        mdio_dis        : in     vl_logic;
        pma_cram_test   : in     vl_logic;
        sig_out         : out    vl_logic;
        so              : out    vl_logic
    );
end stratixiv_hssi_cmu_dprio_bit_pma;
