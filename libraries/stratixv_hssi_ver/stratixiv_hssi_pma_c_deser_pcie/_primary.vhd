library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_pma_c_deser_pcie is
    generic(
        PARAM_DELAY     : integer := 0
    );
    port(
        ck_div          : in     vl_logic;
        en              : out    vl_logic;
        pcie            : in     vl_logic;
        pcieo           : out    vl_logic;
        rpcie           : in     vl_logic;
        rst_n           : in     vl_logic;
        vcce_la         : in     vl_logic;
        vssexqyx        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PARAM_DELAY : constant is 1;
end stratixiv_hssi_pma_c_deser_pcie;
