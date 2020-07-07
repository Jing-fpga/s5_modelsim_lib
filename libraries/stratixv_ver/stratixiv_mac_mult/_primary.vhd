library verilog;
use verilog.vl_types.all;
entity stratixiv_mac_mult is
    generic(
        dataa_width     : integer := 18;
        datab_width     : integer := 18;
        dataa_clock     : string  := "none";
        datab_clock     : string  := "none";
        signa_clock     : string  := "none";
        signb_clock     : string  := "none";
        scanouta_clock  : string  := "none";
        dataa_clear     : string  := "none";
        datab_clear     : string  := "none";
        signa_clear     : string  := "none";
        signb_clear     : string  := "none";
        scanouta_clear  : string  := "none";
        signa_internally_grounded: string  := "false";
        signb_internally_grounded: string  := "false";
        dataout_width   : vl_notype;
        lpm_type        : string  := "stratixiv_mac_mult"
    );
    port(
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        clk             : in     vl_logic_vector(3 downto 0);
        aclr            : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic_vector(3 downto 0);
        dataout         : out    vl_logic_vector;
        scanouta        : out    vl_logic_vector;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of dataa_clock : constant is 1;
    attribute mti_svvh_generic_type of datab_clock : constant is 1;
    attribute mti_svvh_generic_type of signa_clock : constant is 1;
    attribute mti_svvh_generic_type of signb_clock : constant is 1;
    attribute mti_svvh_generic_type of scanouta_clock : constant is 1;
    attribute mti_svvh_generic_type of dataa_clear : constant is 1;
    attribute mti_svvh_generic_type of datab_clear : constant is 1;
    attribute mti_svvh_generic_type of signa_clear : constant is 1;
    attribute mti_svvh_generic_type of signb_clear : constant is 1;
    attribute mti_svvh_generic_type of scanouta_clear : constant is 1;
    attribute mti_svvh_generic_type of signa_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of signb_internally_grounded : constant is 1;
    attribute mti_svvh_generic_type of dataout_width : constant is 3;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end stratixiv_mac_mult;
