library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_common_pcs_pma_interface is
    generic(
        ppm_deassert_early: string  := "deassert_early_dis";
        auto_speed_ena  : string  := "dis_auto_speed_ena";
        pcie_gen3_cap   : string  := "non_pcie_gen3_cap";
        pipe_if_g3pcs   : string  := "pipe_if_8gpcs";
        ppmsel          : string  := "ppmsel_default";
        pma_if_dft_en   : string  := "dft_dis";
        avmm_group_channel_index: integer := 0;
        sup_mode        : string  := "user_mode";
        ppm_cnt_rst     : string  := "ppm_cnt_rst_dis";
        user_base_address: integer := 0;
        refclk_dig_sel  : string  := "refclk_dig_dis";
        selectpcs       : string  := "eight_g_pcs";
        use_default_base_address: string  := "true";
        force_freqdet   : string  := "force_freqdet_dis";
        ppm_gen1_2_cnt  : string  := "cnt_32k";
        prot_mode       : string  := "disabled_prot_mode";
        ppm_post_eidle_delay: string  := "cnt_200_cycles";
        pma_if_dft_val  : string  := "dft_0";
        func_mode       : string  := "disable";
        silicon_rev     : string  := "reve"
    );
    port(
        aggaligndetsync : out    vl_logic_vector(1 downto 0);
        aggalignstatus  : in     vl_logic_vector(0 downto 0);
        aggalignstatussync: out    vl_logic_vector(0 downto 0);
        aggalignstatussync0: in     vl_logic_vector(0 downto 0);
        aggalignstatussync0toporbot: in     vl_logic_vector(0 downto 0);
        aggalignstatustoporbot: in     vl_logic_vector(0 downto 0);
        aggcgcomprddall : in     vl_logic_vector(0 downto 0);
        aggcgcomprddalltoporbot: in     vl_logic_vector(0 downto 0);
        aggcgcomprddout : out    vl_logic_vector(1 downto 0);
        aggcgcompwrall  : in     vl_logic_vector(0 downto 0);
        aggcgcompwralltoporbot: in     vl_logic_vector(0 downto 0);
        aggcgcompwrout  : out    vl_logic_vector(1 downto 0);
        aggdecctl       : out    vl_logic_vector(0 downto 0);
        aggdecdata      : out    vl_logic_vector(7 downto 0);
        aggdecdatavalid : out    vl_logic_vector(0 downto 0);
        aggdelcondmet0  : in     vl_logic_vector(0 downto 0);
        aggdelcondmet0toporbot: in     vl_logic_vector(0 downto 0);
        aggdelcondmetout: out    vl_logic_vector(0 downto 0);
        aggendskwqd     : in     vl_logic_vector(0 downto 0);
        aggendskwqdtoporbot: in     vl_logic_vector(0 downto 0);
        aggendskwrdptrs : in     vl_logic_vector(0 downto 0);
        aggendskwrdptrstoporbot: in     vl_logic_vector(0 downto 0);
        aggfifoovr0     : in     vl_logic_vector(0 downto 0);
        aggfifoovr0toporbot: in     vl_logic_vector(0 downto 0);
        aggfifoovrout   : out    vl_logic_vector(0 downto 0);
        aggfifordincomp0: in     vl_logic_vector(0 downto 0);
        aggfifordincomp0toporbot: in     vl_logic_vector(0 downto 0);
        aggfifordoutcomp: out    vl_logic_vector(0 downto 0);
        aggfiforstrdqd  : in     vl_logic_vector(0 downto 0);
        aggfiforstrdqdtoporbot: in     vl_logic_vector(0 downto 0);
        agginsertincomplete0: in     vl_logic_vector(0 downto 0);
        agginsertincomplete0toporbot: in     vl_logic_vector(0 downto 0);
        agginsertincompleteout: out    vl_logic_vector(0 downto 0);
        agglatencycomp0 : in     vl_logic_vector(0 downto 0);
        agglatencycomp0toporbot: in     vl_logic_vector(0 downto 0);
        agglatencycompout: out    vl_logic_vector(0 downto 0);
        aggrcvdclkagg   : in     vl_logic_vector(0 downto 0);
        aggrcvdclkaggtoporbot: in     vl_logic_vector(0 downto 0);
        aggrdalign      : out    vl_logic_vector(1 downto 0);
        aggrdenablesync : out    vl_logic_vector(0 downto 0);
        aggrefclkdig    : out    vl_logic_vector(0 downto 0);
        aggrunningdisp  : out    vl_logic_vector(1 downto 0);
        aggrxcontrolrs  : in     vl_logic_vector(0 downto 0);
        aggrxcontrolrstoporbot: in     vl_logic_vector(0 downto 0);
        aggrxdatars     : in     vl_logic_vector(7 downto 0);
        aggrxdatarstoporbot: in     vl_logic_vector(7 downto 0);
        aggrxpcsrst     : out    vl_logic_vector(0 downto 0);
        aggscanmoden    : out    vl_logic_vector(0 downto 0);
        aggscanshiftn   : out    vl_logic_vector(0 downto 0);
        aggsyncstatus   : out    vl_logic_vector(0 downto 0);
        aggtestbus      : in     vl_logic_vector(15 downto 0);
        aggtestsotopldin: in     vl_logic_vector(0 downto 0);
        aggtestsotopldout: out    vl_logic_vector(0 downto 0);
        aggtxctltc      : out    vl_logic_vector(0 downto 0);
        aggtxctlts      : in     vl_logic_vector(0 downto 0);
        aggtxctltstoporbot: in     vl_logic_vector(0 downto 0);
        aggtxdatatc     : out    vl_logic_vector(7 downto 0);
        aggtxdatats     : in     vl_logic_vector(7 downto 0);
        aggtxdatatstoporbot: in     vl_logic_vector(7 downto 0);
        aggtxpcsrst     : out    vl_logic_vector(0 downto 0);
        asynchdatain    : out    vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        clklow          : in     vl_logic_vector(0 downto 0);
        fref            : in     vl_logic_vector(0 downto 0);
        freqlock        : out    vl_logic_vector(0 downto 0);
        hardreset       : in     vl_logic_vector(0 downto 0);
        pcs8gearlyeios  : in     vl_logic_vector(0 downto 0);
        pcs8geidleexit  : in     vl_logic_vector(0 downto 0);
        pcs8ggen2ngen1  : out    vl_logic_vector(0 downto 0);
        pcs8gltrpma     : in     vl_logic_vector(0 downto 0);
        pcs8gpcieswitch : in     vl_logic_vector(0 downto 0);
        pcs8gpmacurrentcoeff: in     vl_logic_vector(17 downto 0);
        pcs8gpmarxfound : out    vl_logic_vector(0 downto 0);
        pcs8gpowerstatetransitiondone: out    vl_logic_vector(0 downto 0);
        pcs8grxdetectvalid: out    vl_logic_vector(0 downto 0);
        pcs8gtxdetectrx : in     vl_logic_vector(0 downto 0);
        pcs8gtxelecidle : in     vl_logic_vector(0 downto 0);
        pcsaggaligndetsync: in     vl_logic_vector(1 downto 0);
        pcsaggalignstatus: out    vl_logic_vector(0 downto 0);
        pcsaggalignstatussync: in     vl_logic_vector(0 downto 0);
        pcsaggalignstatussync0: out    vl_logic_vector(0 downto 0);
        pcsaggalignstatussync0toporbot: out    vl_logic_vector(0 downto 0);
        pcsaggalignstatustoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggcgcomprddall: out    vl_logic_vector(0 downto 0);
        pcsaggcgcomprddalltoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggcgcomprddout: in     vl_logic_vector(1 downto 0);
        pcsaggcgcompwrall: out    vl_logic_vector(0 downto 0);
        pcsaggcgcompwralltoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggcgcompwrout: in     vl_logic_vector(1 downto 0);
        pcsaggdecctl    : in     vl_logic_vector(0 downto 0);
        pcsaggdecdata   : in     vl_logic_vector(7 downto 0);
        pcsaggdecdatavalid: in     vl_logic_vector(0 downto 0);
        pcsaggdelcondmet0: out    vl_logic_vector(0 downto 0);
        pcsaggdelcondmet0toporbot: out    vl_logic_vector(0 downto 0);
        pcsaggdelcondmetout: in     vl_logic_vector(0 downto 0);
        pcsaggendskwqd  : out    vl_logic_vector(0 downto 0);
        pcsaggendskwqdtoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggendskwrdptrs: out    vl_logic_vector(0 downto 0);
        pcsaggendskwrdptrstoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggfifoovr0  : out    vl_logic_vector(0 downto 0);
        pcsaggfifoovr0toporbot: out    vl_logic_vector(0 downto 0);
        pcsaggfifoovrout: in     vl_logic_vector(0 downto 0);
        pcsaggfifordincomp0: out    vl_logic_vector(0 downto 0);
        pcsaggfifordincomp0toporbot: out    vl_logic_vector(0 downto 0);
        pcsaggfifordoutcomp: in     vl_logic_vector(0 downto 0);
        pcsaggfiforstrdqd: out    vl_logic_vector(0 downto 0);
        pcsaggfiforstrdqdtoporbot: out    vl_logic_vector(0 downto 0);
        pcsagginsertincomplete0: out    vl_logic_vector(0 downto 0);
        pcsagginsertincomplete0toporbot: out    vl_logic_vector(0 downto 0);
        pcsagginsertincompleteout: in     vl_logic_vector(0 downto 0);
        pcsagglatencycomp0: out    vl_logic_vector(0 downto 0);
        pcsagglatencycomp0toporbot: out    vl_logic_vector(0 downto 0);
        pcsagglatencycompout: in     vl_logic_vector(0 downto 0);
        pcsaggrcvdclkagg: out    vl_logic_vector(0 downto 0);
        pcsaggrcvdclkaggtoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggrdalign   : in     vl_logic_vector(1 downto 0);
        pcsaggrdenablesync: in     vl_logic_vector(0 downto 0);
        pcsaggrefclkdig : in     vl_logic_vector(0 downto 0);
        pcsaggrunningdisp: in     vl_logic_vector(1 downto 0);
        pcsaggrxcontrolrs: out    vl_logic_vector(0 downto 0);
        pcsaggrxcontrolrstoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggrxdatars  : out    vl_logic_vector(7 downto 0);
        pcsaggrxdatarstoporbot: out    vl_logic_vector(7 downto 0);
        pcsaggrxpcsrst  : in     vl_logic_vector(0 downto 0);
        pcsaggscanmoden : in     vl_logic_vector(0 downto 0);
        pcsaggscanshiftn: in     vl_logic_vector(0 downto 0);
        pcsaggsyncstatus: in     vl_logic_vector(0 downto 0);
        pcsaggtestbus   : out    vl_logic_vector(15 downto 0);
        pcsaggtxctltc   : in     vl_logic_vector(0 downto 0);
        pcsaggtxctlts   : out    vl_logic_vector(0 downto 0);
        pcsaggtxctltstoporbot: out    vl_logic_vector(0 downto 0);
        pcsaggtxdatatc  : in     vl_logic_vector(7 downto 0);
        pcsaggtxdatats  : out    vl_logic_vector(7 downto 0);
        pcsaggtxdatatstoporbot: out    vl_logic_vector(7 downto 0);
        pcsaggtxpcsrst  : in     vl_logic_vector(0 downto 0);
        pcsgen3gen3datasel: in     vl_logic_vector(0 downto 0);
        pcsgen3pllfixedclk: out    vl_logic_vector(0 downto 0);
        pcsgen3pmacurrentcoeff: in     vl_logic_vector(17 downto 0);
        pcsgen3pmacurrentrxpreset: in     vl_logic_vector(2 downto 0);
        pcsgen3pmaearlyeios: in     vl_logic_vector(0 downto 0);
        pcsgen3pmaltr   : in     vl_logic_vector(0 downto 0);
        pcsgen3pmapcieswdone: out    vl_logic_vector(1 downto 0);
        pcsgen3pmapcieswitch: in     vl_logic_vector(1 downto 0);
        pcsgen3pmarxdetectvalid: out    vl_logic_vector(0 downto 0);
        pcsgen3pmarxfound: out    vl_logic_vector(0 downto 0);
        pcsgen3pmatxdetectrx: in     vl_logic_vector(0 downto 0);
        pcsgen3pmatxelecidle: in     vl_logic_vector(0 downto 0);
        pcsgen3ppmeidleexit: in     vl_logic_vector(0 downto 0);
        pcsrefclkdig    : in     vl_logic_vector(0 downto 0);
        pcsscanmoden    : in     vl_logic_vector(0 downto 0);
        pcsscanshiftn   : in     vl_logic_vector(0 downto 0);
        pldhclkout      : out    vl_logic_vector(0 downto 0);
        pldlccmurstb    : in     vl_logic_vector(0 downto 0);
        pldnfrzdrv      : in     vl_logic_vector(0 downto 0);
        pldpartialreconfig: in     vl_logic_vector(0 downto 0);
        pldtestsitoaggin: in     vl_logic_vector(0 downto 0);
        pldtestsitoaggout: out    vl_logic_vector(0 downto 0);
        pmaclklowout    : out    vl_logic_vector(0 downto 0);
        pmacurrentcoeff : out    vl_logic_vector(17 downto 0);
        pmacurrentrxpreset: out    vl_logic_vector(2 downto 0);
        pmaearlyeios    : out    vl_logic_vector(0 downto 0);
        pmafrefout      : out    vl_logic_vector(0 downto 0);
        pmahclk         : in     vl_logic_vector(0 downto 0);
        pmaiftestbus    : out    vl_logic_vector(9 downto 0);
        pmalccmurstb    : out    vl_logic_vector(0 downto 0);
        pmaltr          : out    vl_logic_vector(0 downto 0);
        pmanfrzdrv      : out    vl_logic_vector(0 downto 0);
        pmaoffcaldone   : out    vl_logic_vector(0 downto 0);
        pmaoffcalenin   : in     vl_logic_vector(0 downto 0);
        pmapartialreconfig: out    vl_logic_vector(0 downto 0);
        pmapcieswdone   : in     vl_logic_vector(1 downto 0);
        pmapcieswitch   : out    vl_logic_vector(1 downto 0);
        pmarxdetectvalid: in     vl_logic_vector(0 downto 0);
        pmarxfound      : in     vl_logic_vector(0 downto 0);
        pmarxpmarstb    : in     vl_logic_vector(0 downto 0);
        pmatxdetectrx   : out    vl_logic_vector(0 downto 0);
        pmatxelecidle   : out    vl_logic_vector(0 downto 0);
        resetppmcntrs   : in     vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ppm_deassert_early : constant is 1;
    attribute mti_svvh_generic_type of auto_speed_ena : constant is 1;
    attribute mti_svvh_generic_type of pcie_gen3_cap : constant is 1;
    attribute mti_svvh_generic_type of pipe_if_g3pcs : constant is 1;
    attribute mti_svvh_generic_type of ppmsel : constant is 1;
    attribute mti_svvh_generic_type of pma_if_dft_en : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of sup_mode : constant is 1;
    attribute mti_svvh_generic_type of ppm_cnt_rst : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of refclk_dig_sel : constant is 1;
    attribute mti_svvh_generic_type of selectpcs : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of force_freqdet : constant is 1;
    attribute mti_svvh_generic_type of ppm_gen1_2_cnt : constant is 1;
    attribute mti_svvh_generic_type of prot_mode : constant is 1;
    attribute mti_svvh_generic_type of ppm_post_eidle_delay : constant is 1;
    attribute mti_svvh_generic_type of pma_if_dft_val : constant is 1;
    attribute mti_svvh_generic_type of func_mode : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_common_pcs_pma_interface;
