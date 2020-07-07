library verilog;
use verilog.vl_types.all;
entity stratixiv_hssi_cmu_chnl_reset is
    port(
        hard_reset      : in     vl_logic;
        soft_reset_all_hssi: in     vl_logic;
        rreset          : in     vl_logic;
        rpowerdown      : in     vl_logic;
        rxurstpma       : in     vl_logic;
        rxurstpcs       : in     vl_logic;
        txurstpcs       : in     vl_logic;
        rpowdnr         : in     vl_logic;
        rpowdnt         : in     vl_logic;
        rrxurstpcs      : in     vl_logic;
        rtxurstpcs      : in     vl_logic;
        rrxurstpma      : in     vl_logic;
        rrx_cru_rst     : in     vl_logic;
        radce_rst       : in     vl_logic;
        urx_pdb         : in     vl_logic;
        rurx_pdb        : in     vl_logic;
        radce_pdb       : in     vl_logic;
        rrx_ib_pdb      : in     vl_logic;
        rtx_ob_pdb      : in     vl_logic;
        rtx_cgb_pdb     : in     vl_logic;
        rrx_cru_pdb     : in     vl_logic;
        rtx_pipe_en     : in     vl_logic;
        p0_state        : in     vl_logic;
        p0s_state       : in     vl_logic;
        p2_state        : in     vl_logic;
        rxpma_rstb      : out    vl_logic;
        txpma_rstb      : out    vl_logic;
        rxpcs_rst       : out    vl_logic;
        txpcs_rst       : out    vl_logic;
        cru_rstb        : out    vl_logic;
        adce_rstb       : out    vl_logic;
        adce_pdb        : out    vl_logic;
        cru_pdb         : out    vl_logic;
        rx_pdb          : out    vl_logic;
        tx_pdb          : out    vl_logic;
        cgb_pdb         : out    vl_logic;
        rx_det_pdb      : out    vl_logic
    );
end stratixiv_hssi_cmu_chnl_reset;
