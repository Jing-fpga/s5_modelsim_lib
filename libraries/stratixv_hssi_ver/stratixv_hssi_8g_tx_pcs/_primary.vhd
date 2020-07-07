library verilog;
use verilog.vl_types.all;
entity stratixv_hssi_8g_tx_pcs is
    generic(
        enable_debug_info: string  := "false";
        clock_gate_bist : string  := "dis_bist_clk_gating";
        clock_gate_bs_enc: string  := "dis_bs_enc_clk_gating";
        ctrl_plane_bonding_compensation: string  := "dis_compensation";
        data_selection_8b10b_encoder_input: string  := "normal_data_path";
        dynamic_clk_switch: string  := "dis_dyn_clk_switch";
        eightb_tenb_disp_ctrl: string  := "dis_disp_ctrl";
        phfifo_write_clk_sel: string  := "pld_tx_clk";
        bist_gen        : string  := "dis_bist";
        polarity_inversion: string  := "dis_polinv";
        user_base_address: integer := 0;
        byte_serializer : string  := "dis_bs";
        refclk_b_clk_sel: string  := "tx_pma_clock";
        clock_gate_prbs : string  := "dis_prbs_clk_gating";
        tx_bitslip      : string  := "dis_tx_bitslip";
        bit_reversal    : string  := "dis_bit_reversal";
        force_kchar     : string  := "dis_force_kchar";
        force_echar     : string  := "dis_force_echar";
        hip_mode        : string  := "dis_hip";
        clock_gate_dw_fifowr: string  := "dis_dw_fifowr_clk_gating";
        symbol_swap     : string  := "dis_symbol_swap";
        ctrl_plane_bonding_distribution: string  := "not_master_chnl_distr";
        cid_pattern     : string  := "cid_pattern_0";
        pma_dw          : string  := "eight_bit";
        bypass_pipeline_reg: string  := "dis_bypass_pipeline";
        cid_pattern_len : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        clock_gate_sw_fifowr: string  := "dis_sw_fifowr_clk_gating";
        pcfifo_urst     : string  := "dis_pcfifourst";
        eightb_tenb_encoder: string  := "dis_8b10b";
        pcs_bypass      : string  := "dis_pcs_bypass";
        avmm_group_channel_index: integer := 0;
        sup_mode        : string  := "user_mode";
        phase_compensation_fifo: string  := "low_latency";
        txclk_freerun   : string  := "en_freerun_tx";
        agg_block_sel   : string  := "same_smrt_pack";
        auto_speed_nego_gen2: string  := "dis_asn_g2";
        txpcs_urst      : string  := "en_txpcs_urst";
        channel_number  : integer := 0;
        revloop_back_rm : string  := "dis_rev_loopback_rx_rm";
        use_default_base_address: string  := "true";
        test_mode       : string  := "prbs";
        ctrl_plane_bonding_consumption: string  := "individual";
        clock_gate_fiford: string  := "dis_fiford_clk_gating";
        prot_mode       : string  := "basic";
        tx_compliance_controlled_disparity: string  := "dis_txcompliance";
        prbs_gen        : string  := "dis_prbs";
        silicon_rev     : string  := "reve"
    );
    port(
        aggtxpcsrst     : out    vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        bitslipboundaryselect: in     vl_logic_vector(4 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0);
        clkout          : out    vl_logic_vector(0 downto 0);
        clkoutgen3      : out    vl_logic_vector(0 downto 0);
        clkselgen3      : in     vl_logic_vector(0 downto 0);
        coreclk         : in     vl_logic_vector(0 downto 0);
        datain          : in     vl_logic_vector(43 downto 0);
        dataout         : out    vl_logic_vector(19 downto 0);
        detectrxloopin  : in     vl_logic_vector(0 downto 0);
        detectrxloopout : out    vl_logic_vector(0 downto 0);
        dispcbyte       : in     vl_logic_vector(0 downto 0);
        dynclkswitchn   : out    vl_logic_vector(0 downto 0);
        elecidleinfersel: in     vl_logic_vector(2 downto 0);
        enrevparallellpbk: in     vl_logic_vector(0 downto 0);
        fifoselectinchnldown: in     vl_logic_vector(1 downto 0);
        fifoselectinchnlup: in     vl_logic_vector(1 downto 0);
        fifoselectoutchnldown: out    vl_logic_vector(1 downto 0);
        fifoselectoutchnlup: out    vl_logic_vector(1 downto 0);
        grayelecidleinferselout: out    vl_logic_vector(2 downto 0);
        hrdrst          : in     vl_logic_vector(0 downto 0);
        invpol          : in     vl_logic_vector(0 downto 0);
        observablebyteserdesclock: out    vl_logic_vector(0 downto 0);
        parallelfdbkout : out    vl_logic_vector(19 downto 0);
        phfifooverflow  : out    vl_logic_vector(0 downto 0);
        phfiforddisable : in     vl_logic_vector(0 downto 0);
        phfiforeset     : in     vl_logic_vector(0 downto 0);
        phfifotxdeemph  : out    vl_logic_vector(0 downto 0);
        phfifotxmargin  : out    vl_logic_vector(2 downto 0);
        phfifotxswing   : out    vl_logic_vector(0 downto 0);
        phfifounderflow : out    vl_logic_vector(0 downto 0);
        phfifowrenable  : in     vl_logic_vector(0 downto 0);
        pipeenrevparallellpbkin: in     vl_logic_vector(0 downto 0);
        pipeenrevparallellpbkout: out    vl_logic_vector(0 downto 0);
        pipepowerdownout: out    vl_logic_vector(1 downto 0);
        pipetxdeemph    : in     vl_logic_vector(0 downto 0);
        pipetxmargin    : in     vl_logic_vector(2 downto 0);
        pipetxswing     : in     vl_logic_vector(0 downto 0);
        polinvrxin      : in     vl_logic_vector(0 downto 0);
        polinvrxout     : out    vl_logic_vector(0 downto 0);
        powerdn         : in     vl_logic_vector(1 downto 0);
        prbscidenable   : in     vl_logic_vector(0 downto 0);
        rateswitch      : in     vl_logic_vector(0 downto 0);
        rdenableinchnldown: in     vl_logic_vector(0 downto 0);
        rdenableinchnlup: in     vl_logic_vector(0 downto 0);
        rdenableoutchnldown: out    vl_logic_vector(0 downto 0);
        rdenableoutchnlup: out    vl_logic_vector(0 downto 0);
        rdenablesync    : out    vl_logic_vector(0 downto 0);
        refclkb         : out    vl_logic_vector(0 downto 0);
        refclkbreset    : out    vl_logic_vector(0 downto 0);
        refclkdig       : in     vl_logic_vector(0 downto 0);
        resetpcptrs     : in     vl_logic_vector(0 downto 0);
        resetpcptrsinchnldown: in     vl_logic_vector(0 downto 0);
        resetpcptrsinchnlup: in     vl_logic_vector(0 downto 0);
        revparallellpbkdata: in     vl_logic_vector(19 downto 0);
        rxpolarityin    : in     vl_logic_vector(0 downto 0);
        rxpolarityout   : out    vl_logic_vector(0 downto 0);
        scanmode        : in     vl_logic_vector(0 downto 0);
        syncdatain      : out    vl_logic_vector(0 downto 0);
        txblkstart      : in     vl_logic_vector(3 downto 0);
        txblkstartout   : out    vl_logic_vector(3 downto 0);
        txcomplianceout : out    vl_logic_vector(0 downto 0);
        txctrlplanetestbus: out    vl_logic_vector(19 downto 0);
        txdatakouttogen3: out    vl_logic_vector(3 downto 0);
        txdataouttogen3 : out    vl_logic_vector(31 downto 0);
        txdatavalid     : in     vl_logic_vector(3 downto 0);
        txdatavalidouttogen3: out    vl_logic_vector(3 downto 0);
        txdivsync       : out    vl_logic_vector(1 downto 0);
        txdivsyncinchnldown: in     vl_logic_vector(1 downto 0);
        txdivsyncinchnlup: in     vl_logic_vector(1 downto 0);
        txdivsyncoutchnldown: out    vl_logic_vector(1 downto 0);
        txdivsyncoutchnlup: out    vl_logic_vector(1 downto 0);
        txelecidleout   : out    vl_logic_vector(0 downto 0);
        txpcsreset      : in     vl_logic_vector(0 downto 0);
        txpipeclk       : out    vl_logic_vector(0 downto 0);
        txpipeelectidle : out    vl_logic_vector(0 downto 0);
        txpipesoftreset : out    vl_logic_vector(0 downto 0);
        txpmalocalclk   : in     vl_logic_vector(0 downto 0);
        txsynchdr       : in     vl_logic_vector(1 downto 0);
        txsynchdrout    : out    vl_logic_vector(1 downto 0);
        txtestbus       : out    vl_logic_vector(19 downto 0);
        wrenableinchnldown: in     vl_logic_vector(0 downto 0);
        wrenableinchnlup: in     vl_logic_vector(0 downto 0);
        wrenableoutchnldown: out    vl_logic_vector(0 downto 0);
        wrenableoutchnlup: out    vl_logic_vector(0 downto 0);
        xgmctrl         : in     vl_logic_vector(0 downto 0);
        xgmctrlenable   : out    vl_logic_vector(0 downto 0);
        xgmctrltoporbottom: in     vl_logic_vector(0 downto 0);
        xgmdatain       : in     vl_logic_vector(7 downto 0);
        xgmdataintoporbottom: in     vl_logic_vector(7 downto 0);
        xgmdataout      : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_bist : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_bs_enc : constant is 1;
    attribute mti_svvh_generic_type of ctrl_plane_bonding_compensation : constant is 1;
    attribute mti_svvh_generic_type of data_selection_8b10b_encoder_input : constant is 1;
    attribute mti_svvh_generic_type of dynamic_clk_switch : constant is 1;
    attribute mti_svvh_generic_type of eightb_tenb_disp_ctrl : constant is 1;
    attribute mti_svvh_generic_type of phfifo_write_clk_sel : constant is 1;
    attribute mti_svvh_generic_type of bist_gen : constant is 1;
    attribute mti_svvh_generic_type of polarity_inversion : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of byte_serializer : constant is 1;
    attribute mti_svvh_generic_type of refclk_b_clk_sel : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_prbs : constant is 1;
    attribute mti_svvh_generic_type of tx_bitslip : constant is 1;
    attribute mti_svvh_generic_type of bit_reversal : constant is 1;
    attribute mti_svvh_generic_type of force_kchar : constant is 1;
    attribute mti_svvh_generic_type of force_echar : constant is 1;
    attribute mti_svvh_generic_type of hip_mode : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_dw_fifowr : constant is 1;
    attribute mti_svvh_generic_type of symbol_swap : constant is 1;
    attribute mti_svvh_generic_type of ctrl_plane_bonding_distribution : constant is 1;
    attribute mti_svvh_generic_type of cid_pattern : constant is 1;
    attribute mti_svvh_generic_type of pma_dw : constant is 1;
    attribute mti_svvh_generic_type of bypass_pipeline_reg : constant is 1;
    attribute mti_svvh_generic_type of cid_pattern_len : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_sw_fifowr : constant is 1;
    attribute mti_svvh_generic_type of pcfifo_urst : constant is 1;
    attribute mti_svvh_generic_type of eightb_tenb_encoder : constant is 1;
    attribute mti_svvh_generic_type of pcs_bypass : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of sup_mode : constant is 1;
    attribute mti_svvh_generic_type of phase_compensation_fifo : constant is 1;
    attribute mti_svvh_generic_type of txclk_freerun : constant is 1;
    attribute mti_svvh_generic_type of agg_block_sel : constant is 1;
    attribute mti_svvh_generic_type of auto_speed_nego_gen2 : constant is 1;
    attribute mti_svvh_generic_type of txpcs_urst : constant is 1;
    attribute mti_svvh_generic_type of channel_number : constant is 1;
    attribute mti_svvh_generic_type of revloop_back_rm : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of test_mode : constant is 1;
    attribute mti_svvh_generic_type of ctrl_plane_bonding_consumption : constant is 1;
    attribute mti_svvh_generic_type of clock_gate_fiford : constant is 1;
    attribute mti_svvh_generic_type of prot_mode : constant is 1;
    attribute mti_svvh_generic_type of tx_compliance_controlled_disparity : constant is 1;
    attribute mti_svvh_generic_type of prbs_gen : constant is 1;
    attribute mti_svvh_generic_type of silicon_rev : constant is 1;
end stratixv_hssi_8g_tx_pcs;
