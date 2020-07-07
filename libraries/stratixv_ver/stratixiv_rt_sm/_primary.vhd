library verilog;
use verilog.vl_types.all;
entity stratixiv_rt_sm is
    generic(
        STRATIXIV_RTOCT_WAIT: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        RUP_VREF_M_RDN_VER_M: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        RUP_VREF_L_RDN_VER_L: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        RUP_VREF_H_RDN_VER_H: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi1);
        RUP_VREF_L_RDN_VER_H: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        RUP_VREF_H_RDN_VER_L: vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi1);
        STRATIXIV_RTOCT_INC_PN: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        STRATIXIV_RTOCT_DEC_PN: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi1);
        STRATIXIV_RTOCT_INC_P: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi0);
        STRATIXIV_RTOCT_DEC_P: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi1);
        STRATIXIV_RTOCT_INC_N: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi0);
        STRATIXIV_RTOCT_DEC_N: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi1);
        STRATIXIV_RTOCT_SWITCH_REG: vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi1);
        STRATIXIV_RTOCT_DONE: vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        rup             : in     vl_logic;
        rdn             : in     vl_logic;
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        clr             : in     vl_logic;
        rtena           : in     vl_logic;
        rscaldone       : in     vl_logic;
        rtoffsetp       : out    vl_logic_vector(3 downto 0);
        rtoffsetn       : out    vl_logic_vector(3 downto 0);
        caldone         : out    vl_logic;
        sel_rup_vref    : out    vl_logic_vector(2 downto 0);
        sel_rdn_vref    : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_WAIT : constant is 1;
    attribute mti_svvh_generic_type of RUP_VREF_M_RDN_VER_M : constant is 1;
    attribute mti_svvh_generic_type of RUP_VREF_L_RDN_VER_L : constant is 1;
    attribute mti_svvh_generic_type of RUP_VREF_H_RDN_VER_H : constant is 1;
    attribute mti_svvh_generic_type of RUP_VREF_L_RDN_VER_H : constant is 1;
    attribute mti_svvh_generic_type of RUP_VREF_H_RDN_VER_L : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_INC_PN : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_DEC_PN : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_INC_P : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_DEC_P : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_INC_N : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_DEC_N : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_SWITCH_REG : constant is 1;
    attribute mti_svvh_generic_type of STRATIXIV_RTOCT_DONE : constant is 1;
end stratixiv_rt_sm;
