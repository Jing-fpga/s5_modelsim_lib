library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_cmu_dprio_map is
    generic(
        clkdiv0_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv0_inclk1_logical_to_physical_mapping: string  := "pll1";
        clkdiv1_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv1_inclk1_logical_to_physical_mapping: string  := "pll1";
        clkdiv2_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv2_inclk1_logical_to_physical_mapping: string  := "pll1";
        clkdiv3_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv3_inclk1_logical_to_physical_mapping: string  := "pll1";
        clkdiv4_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv4_inclk1_logical_to_physical_mapping: string  := "pll1";
        clkdiv5_inclk0_logical_to_physical_mapping: string  := "pll0";
        clkdiv5_inclk1_logical_to_physical_mapping: string  := "pll1";
        pll0_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll0_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll0_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll0_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll0_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll0_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll0_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll0_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll0_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll0_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll0_logical_to_physical_mapping: integer := 0;
        pll1_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll1_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll1_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll1_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll1_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll1_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll1_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll1_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll1_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll1_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll1_logical_to_physical_mapping: integer := 1;
        pll2_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll2_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll2_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll2_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll2_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll2_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll2_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll2_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll2_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll2_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll2_logical_to_physical_mapping: integer := 2;
        pll3_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll3_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll3_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll3_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll3_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll3_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll3_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll3_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll3_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll3_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll3_logical_to_physical_mapping: integer := 3;
        pll4_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll4_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll4_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll4_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll4_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll4_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll4_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll4_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll4_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll4_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll4_logical_to_physical_mapping: integer := 4;
        pll5_inclk0_logical_to_physical_mapping: string  := "clkrefclk0";
        pll5_inclk1_logical_to_physical_mapping: string  := "clkrefclk1";
        pll5_inclk2_logical_to_physical_mapping: string  := "iq2";
        pll5_inclk3_logical_to_physical_mapping: string  := "iq3";
        pll5_inclk4_logical_to_physical_mapping: string  := "iq4";
        pll5_inclk5_logical_to_physical_mapping: string  := "iq5";
        pll5_inclk6_logical_to_physical_mapping: string  := "iq6";
        pll5_inclk7_logical_to_physical_mapping: string  := "iq7";
        pll5_inclk8_logical_to_physical_mapping: string  := "pld_clk";
        pll5_inclk9_logical_to_physical_mapping: string  := "gpll_clk";
        pll5_logical_to_physical_mapping: integer := 5;
        refclk_divider0_logical_to_physical_mapping: integer := 0;
        refclk_divider1_logical_to_physical_mapping: integer := 1;
        rx0_logical_to_physical_mapping: integer := 0;
        rx1_logical_to_physical_mapping: integer := 1;
        rx2_logical_to_physical_mapping: integer := 2;
        rx3_logical_to_physical_mapping: integer := 3;
        rx4_logical_to_physical_mapping: integer := 4;
        rx5_logical_to_physical_mapping: integer := 5;
        tx0_logical_to_physical_mapping: integer := 0;
        tx1_logical_to_physical_mapping: integer := 1;
        tx2_logical_to_physical_mapping: integer := 2;
        tx3_logical_to_physical_mapping: integer := 3;
        tx4_logical_to_physical_mapping: integer := 4;
        tx5_logical_to_physical_mapping: integer := 5;
        tx0_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx0_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx0_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx0_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx0_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        tx1_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx1_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx1_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx1_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx1_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        tx2_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx2_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx2_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx2_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx2_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        tx3_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx3_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx3_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx3_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx3_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        tx4_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx4_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx4_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx4_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx4_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        tx5_pma_inclk0_logical_to_physical_mapping: string  := "x1";
        tx5_pma_inclk1_logical_to_physical_mapping: string  := "x4";
        tx5_pma_inclk2_logical_to_physical_mapping: string  := "xn_top";
        tx5_pma_inclk3_logical_to_physical_mapping: string  := "xn_bottom";
        tx5_pma_inclk4_logical_to_physical_mapping: string  := "hypertransport";
        sim_dump_dprio_internal_reg_at_time: integer := 0;
        sim_dump_filename: string  := "sim_dprio_dump.txt"
    );
    port(
        cmudividerdprioin: in     vl_logic_vector(599 downto 0);
        cmuplldprioin   : in     vl_logic_vector(1799 downto 0);
        refclkdividerdprioin: in     vl_logic_vector(1 downto 0);
        rxpcsdprioin    : in     vl_logic_vector(1599 downto 0);
        rxpmadprioin    : in     vl_logic_vector(1799 downto 0);
        txpcsdprioin    : in     vl_logic_vector(599 downto 0);
        txpmadprioin    : in     vl_logic_vector(1799 downto 0);
        ch0_dp_chnl_out : in     vl_logic_vector(831 downto 0);
        ch1_dp_chnl_out : in     vl_logic_vector(831 downto 0);
        ch2_dp_chnl_out : in     vl_logic_vector(831 downto 0);
        ch3_dp_chnl_out : in     vl_logic_vector(831 downto 0);
        ch0_dp_chnl_out_reserved: in     vl_logic_vector(15 downto 0);
        ch1_dp_chnl_out_reserved: in     vl_logic_vector(15 downto 0);
        ch2_dp_chnl_out_reserved: in     vl_logic_vector(15 downto 0);
        ch3_dp_chnl_out_reserved: in     vl_logic_vector(15 downto 0);
        dp_centrl_out   : in     vl_logic_vector(703 downto 0);
        dp_centrl_out_reserved: in     vl_logic_vector(31 downto 0);
        ch0_csr_chnl_in : out    vl_logic_vector(831 downto 0);
        ch1_csr_chnl_in : out    vl_logic_vector(831 downto 0);
        ch2_csr_chnl_in : out    vl_logic_vector(831 downto 0);
        ch3_csr_chnl_in : out    vl_logic_vector(831 downto 0);
        ch0_csr_chnl_in_reserved: out    vl_logic_vector(15 downto 0);
        ch1_csr_chnl_in_reserved: out    vl_logic_vector(15 downto 0);
        ch2_csr_chnl_in_reserved: out    vl_logic_vector(15 downto 0);
        ch3_csr_chnl_in_reserved: out    vl_logic_vector(15 downto 0);
        csr_centrl_in   : out    vl_logic_vector(703 downto 0);
        csr_centrl_in_reserved: out    vl_logic_vector(31 downto 0);
        cmudividerdprioout: out    vl_logic_vector(599 downto 0);
        cmuplldprioout  : out    vl_logic_vector(1799 downto 0);
        refclkdividerdprioout: out    vl_logic_vector(1 downto 0);
        rxpcsdprioout   : out    vl_logic_vector(1599 downto 0);
        rxpmadprioout   : out    vl_logic_vector(1799 downto 0);
        txpcsdprioout   : out    vl_logic_vector(599 downto 0);
        txpmadprioout   : out    vl_logic_vector(1799 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clkdiv0_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv0_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv1_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv1_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv2_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv2_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv3_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv3_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv4_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv4_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv5_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of clkdiv5_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk6_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk7_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk8_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_inclk9_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of pll5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of refclk_divider0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of refclk_divider1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of rx5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx0_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx1_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx2_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx3_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx4_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_pma_inclk0_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_pma_inclk1_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_pma_inclk2_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_pma_inclk3_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of tx5_pma_inclk4_logical_to_physical_mapping : constant is 1;
    attribute mti_svvh_generic_type of sim_dump_dprio_internal_reg_at_time : constant is 1;
    attribute mti_svvh_generic_type of sim_dump_filename : constant is 1;
end stratixiv_hssi_cmu_dprio_map;