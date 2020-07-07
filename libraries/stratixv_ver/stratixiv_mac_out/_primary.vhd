library verilog;
use verilog.vl_types.all;
entity stratixiv_mac_out is
    generic(
        operation_mode  : string  := "output_only";
        dataa_width     : integer := 1;
        datab_width     : integer := 1;
        datac_width     : integer := 1;
        datad_width     : integer := 1;
        chainin_width   : integer := 1;
        round_width     : integer := 15;
        round_chain_out_width: integer := 15;
        saturate_width  : integer := 15;
        saturate_chain_out_width: integer := 15;
        first_adder0_clock: string  := "none";
        first_adder0_clear: string  := "none";
        first_adder1_clock: string  := "none";
        first_adder1_clear: string  := "none";
        second_adder_clock: string  := "none";
        second_adder_clear: string  := "none";
        output_clock    : string  := "none";
        output_clear    : string  := "none";
        signa_clock     : string  := "none";
        signa_clear     : string  := "none";
        signb_clock     : string  := "none";
        signb_clear     : string  := "none";
        round_clock     : string  := "none";
        round_clear     : string  := "none";
        roundchainout_clock: string  := "none";
        roundchainout_clear: string  := "none";
        saturate_clock  : string  := "none";
        saturate_clear  : string  := "none";
        saturatechainout_clock: string  := "none";
        saturatechainout_clear: string  := "none";
        zeroacc_clock   : string  := "none";
        zeroacc_clear   : string  := "none";
        zeroloopback_clock: string  := "none";
        zeroloopback_clear: string  := "none";
        rotate_clock    : string  := "none";
        rotate_clear    : string  := "none";
        shiftright_clock: string  := "none";
        shiftright_clear: string  := "none";
        signa_pipeline_clock: string  := "none";
        signa_pipeline_clear: string  := "none";
        signb_pipeline_clock: string  := "none";
        signb_pipeline_clear: string  := "none";
        round_pipeline_clock: string  := "none";
        round_pipeline_clear: string  := "none";
        roundchainout_pipeline_clock: string  := "none";
        roundchainout_pipeline_clear: string  := "none";
        saturate_pipeline_clock: string  := "none";
        saturate_pipeline_clear: string  := "none";
        saturatechainout_pipeline_clock: string  := "none";
        saturatechainout_pipeline_clear: string  := "none";
        zeroacc_pipeline_clock: string  := "none";
        zeroacc_pipeline_clear: string  := "none";
        zeroloopback_pipeline_clock: string  := "none";
        zeroloopback_pipeline_clear: string  := "none";
        rotate_pipeline_clock: string  := "none";
        rotate_pipeline_clear: string  := "none";
        shiftright_pipeline_clock: string  := "none";
        shiftright_pipeline_clear: string  := "none";
        roundchainout_output_clock: string  := "none";
        roundchainout_output_clear: string  := "none";
        saturatechainout_output_clock: string  := "none";
        saturatechainout_output_clear: string  := "none";
        zerochainout_output_clock: string  := "none";
        zerochainout_output_clear: string  := "none";
        zeroloopback_output_clock: string  := "none";
        zeroloopback_output_clear: string  := "none";
        rotate_output_clock: string  := "none";
        rotate_output_clear: string  := "none";
        shiftright_output_clock: string  := "none";
        shiftright_output_clear: string  := "none";
        first_adder0_mode: string  := "add";
        first_adder1_mode: string  := "add";
        acc_adder_operation: string  := "add";
        round_mode      : string  := "nearest_integer";
        round_chain_out_mode: string  := "nearest_integer";
        saturate_mode   : string  := "asymmetric";
        saturate_chain_out_mode: string  := "asymmetric";
        multa_signa_internally_grounded: string  := "false";
        multa_signb_internally_grounded: string  := "false";
        multb_signa_internally_grounded: string  := "false";
        multb_signb_internally_grounded: string  := "false";
        multc_signa_internally_grounded: string  := "false";
        multc_signb_internally_grounded: string  := "false";
        multd_signa_internally_grounded: string  := "false";
        multd_signb_internally_grounded: string  := "false";
        lpm_type        : string  := "stratixiv_mac_out";
        dataout_width   : integer := 72
    );
    port(
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        datac           : in     vl_logic_vector;
        datad           : in     vl_logic_vector;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        chainin         : in     vl_logic_vector;
        round           : in     vl_logic;
        saturate        : in     vl_logic;
        zeroacc         : in     vl_logic;
        roundchainout   : in     vl_logic;
        saturatechainout: in     vl_logic;
        zerochainout    : in     vl_logic;
        zeroloopback    : in     vl_logic;
        rotate          : in     vl_logic;
        shiftright      : in     vl_logic;
        clk             : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic_vector(3 downto 0);
        aclr            : in     vl_logic_vector(3 downto 0);
        loopbackout     : out    vl_logic_vector(17 downto 0);
        dataout         : out    vl_logic_vector(71 downto 0);
        overflow        : out    vl_logic;
        dftout          : out    vl_logic;
        saturatechainoutoverflow: out    vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of datac_width : constant is 1;
    attribute mti_svvh_generic_type of datad_width : constant is 1;
    attribute mti_svvh_generic_type of chainin_width : constant is 1;
    attribute mti_svvh_generic_type of round_width : constant is 1;
    attribute mti_svvh_generic_type of round_chain_out_width : constant is 1;
    attribute mti_svvh_generic_type of saturate_width : constant is 1;
    attribute mti_svvh_generic_type of saturate_chain_out_width : constant is 1;
    attribute mti_svvh_generic_type of first_adder0_clock : constant is 1;
    attribute mti_svvh_generic_type of first_adder0_clear : constant is 1;
    attribute mti_svvh_generic_type of first_adder1_clock : constant is 1;
    attribute mti_svvh_generic_type of first_adder1_clear : constant is 1;
    attribute mti_svvh_generic_type of second_adder_clock : constant is 1;
    attribute mti_svvh_generic_type of second_adder_clear : constant is 1;
    attribute mti_svvh_generic_type of output_clock : constant is 1;
    attribute mti_svvh_generic_type of output_clear : constant is 1;
    attribute mti_svvh_generic_type of signa_clock : constant is 1;
    attribute mti_svvh_generic_type of signa_clear : constant is 1;
    attribute mti_svvh_generic_type of signb_clock : constant is 1;
    attribute mti_svvh_generic_type of signb_clear : constant is 1;
    attribute mti_svvh_generic_type of round_clock : constant is 1;
    attribute mti_svvh_generic_type of round_clear : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_clock : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_clear : constant is 1;
    attribute mti_svvh_generic_type of saturate_clock : constant is 1;
    attribute mti_svvh_generic_type of saturate_clear : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_clock : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_clear : constant is 1;
    attribute mti_svvh_generic_type of zeroacc_clock : constant is 1;
    attribute mti_svvh_generic_type of zeroacc_clear : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_clock : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_clear : constant is 1;
    attribute mti_svvh_generic_type of rotate_clock : constant is 1;
    attribute mti_svvh_generic_type of rotate_clear : constant is 1;
    attribute mti_svvh_generic_type of shiftright_clock : constant is 1;
    attribute mti_svvh_generic_type of shiftright_clear : constant is 1;
    attribute mti_svvh_generic_type of signa_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of signa_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of signb_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of signb_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of round_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of round_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of saturate_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of saturate_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of zeroacc_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of zeroacc_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of rotate_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of rotate_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of shiftright_pipeline_clock : constant is 1;
    attribute mti_svvh_generic_type of shiftright_pipeline_clear : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_output_clock : constant is 1;
    attribute mti_svvh_generic_type of roundchainout_output_clear : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_output_clock : constant is 1;
    attribute mti_svvh_generic_type of saturatechainout_output_clear : constant is 1;
    attribute mti_svvh_generic_type of zerochainout_output_clock : constant is 1;
    attribute mti_svvh_generic_type of zerochainout_output_clear : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_output_clock : constant is 1;
    attribute mti_svvh_generic_type of zeroloopback_output_clear : constant is 1;
    attribute mti_svvh_generic_type of rotate_output_clock : constant is 1;
    attribute mti_svvh_generic_type of rotate_output_clear : constant is 1;
    attribute mti_svvh_generic_type of shiftright_output_clock : constant is 1;
    attribute mti_svvh_generic_type of shiftright_output_clear : constant is 1;
    attribute mti_svvh_generic_type of first_adder0_mode : constant is 1;
    attribute mti_svvh_generic_type of first_adder1_mode : constant is 1;
    attribute mti_svvh_generic_type of acc_adder_operation : constant is 1;
    attribute mti_svvh_generic_type of round_mode : constant is 1;
    attribute mti_svvh_generic_type of round_chain_out_mode : constant is 1;
    attribute mti_svvh_generic_type of saturate_mode : constant is 1;
    attribute mti_svvh_generic_type of saturate_chain_out_mode : constant is 1;
    attribute mti_svvh_generic_type of multa_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multa_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multb_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multb_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multc_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multc_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multd_signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of multd_signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of dataout_width : constant is 1;
end stratixiv_mac_out;