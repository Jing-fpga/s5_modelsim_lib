library verilog;
use verilog.vl_types.all;
entity stratixiv_fsa_isse is
    generic(
        dataa_width     : integer := 36;
        datab_width     : integer := 36;
        datac_width     : integer := 36;
        datad_width     : integer := 36;
        chainin_width   : integer := 44;
        operation_mode  : string  := "output_only";
        multa_signa_internally_grounded: string  := "false";
        multa_signb_internally_grounded: string  := "false";
        multb_signa_internally_grounded: string  := "false";
        multb_signb_internally_grounded: string  := "false";
        multc_signa_internally_grounded: string  := "false";
        multc_signb_internally_grounded: string  := "false";
        multd_signa_internally_grounded: string  := "false";
        multd_signb_internally_grounded: string  := "false"
    );
    port(
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        datac           : in     vl_logic_vector;
        datad           : in     vl_logic_vector;
        chainin         : in     vl_logic_vector;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        dataa_out       : out    vl_logic_vector(71 downto 0);
        datab_out       : out    vl_logic_vector(71 downto 0);
        datac_out       : out    vl_logic_vector(71 downto 0);
        datad_out       : out    vl_logic_vector(71 downto 0);
        chainin_out     : out    vl_logic_vector(71 downto 0);
        operation       : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of datac_width : constant is 1;
    attribute mti_svvh_generic_type of datad_width : constant is 1;
    attribute mti_svvh_generic_type of chainin_width : constant is 1;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of multa_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multa_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multb_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multb_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multc_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multc_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multd_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multd_signb_internally_grounded : constant is 1;
end stratixiv_fsa_isse;
