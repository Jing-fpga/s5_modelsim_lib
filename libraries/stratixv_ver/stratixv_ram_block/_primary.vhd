library verilog;
use verilog.vl_types.all;
entity stratixv_ram_block is
    generic(
        operation_mode  : string  := "single_port";
        mixed_port_feed_through_mode: string  := "dont_care";
        ram_block_type  : string  := "auto";
        logical_ram_name: string  := "ram_name";
        init_file       : string  := "init_file.hex";
        init_file_layout: string  := "none";
        ecc_pipeline_stage_enabled: string  := "false";
        enable_ecc      : string  := "false";
        width_eccstatus : integer := 2;
        data_interleave_width_in_bits: integer := 1;
        data_interleave_offset_in_bits: integer := 1;
        port_a_logical_ram_depth: integer := 0;
        port_a_logical_ram_width: integer := 0;
        port_a_first_address: integer := 0;
        port_a_last_address: integer := 0;
        port_a_first_bit_number: integer := 0;
        port_a_data_out_clear: string  := "none";
        port_a_data_out_clock: string  := "none";
        port_a_data_width: integer := 1;
        port_a_address_width: integer := 1;
        port_a_byte_enable_mask_width: integer := 1;
        port_b_logical_ram_depth: integer := 0;
        port_b_logical_ram_width: integer := 0;
        port_b_first_address: integer := 0;
        port_b_last_address: integer := 0;
        port_b_first_bit_number: integer := 0;
        port_b_address_clear: string  := "none";
        port_b_data_out_clear: string  := "none";
        port_b_data_in_clock: string  := "clock1";
        port_b_address_clock: string  := "clock1";
        port_b_write_enable_clock: string  := "clock1";
        port_b_read_enable_clock: string  := "clock1";
        port_b_byte_enable_clock: string  := "clock1";
        port_b_data_out_clock: string  := "none";
        port_b_data_width: integer := 1;
        port_b_address_width: integer := 1;
        port_b_byte_enable_mask_width: integer := 1;
        port_a_read_during_write_mode: string  := "new_data_no_nbe_read";
        port_b_read_during_write_mode: string  := "new_data_no_nbe_read";
        power_up_uninitialized: string  := "false";
        lpm_type        : string  := "stratixv_ram_block";
        lpm_hint        : string  := "true";
        connectivity_checking: string  := "off";
        mem_init0       : string  := "";
        mem_init1       : string  := "";
        mem_init2       : string  := "";
        mem_init3       : string  := "";
        mem_init4       : string  := "";
        mem_init5       : string  := "";
        mem_init6       : string  := "";
        mem_init7       : string  := "";
        mem_init8       : string  := "";
        mem_init9       : string  := "";
        port_a_byte_size: integer := 0;
        port_b_byte_size: integer := 0;
        clk0_input_clock_enable: string  := "none";
        clk0_core_clock_enable: string  := "none";
        clk0_output_clock_enable: string  := "none";
        clk1_input_clock_enable: string  := "none";
        clk1_core_clock_enable: string  := "none";
        clk1_output_clock_enable: string  := "none";
        bist_ena        : string  := "false";
        port_a_address_clear: string  := "none";
        port_a_data_in_clock: string  := "clock0";
        port_a_address_clock: string  := "clock0";
        port_a_write_enable_clock: string  := "clock0";
        port_a_byte_enable_clock: string  := "clock0";
        port_a_read_enable_clock: string  := "clock0"
    );
    port(
        portadatain     : in     vl_logic_vector;
        portaaddr       : in     vl_logic_vector;
        portawe         : in     vl_logic;
        portare         : in     vl_logic;
        portbdatain     : in     vl_logic_vector;
        portbaddr       : in     vl_logic_vector;
        portbwe         : in     vl_logic;
        portbre         : in     vl_logic;
        clk0            : in     vl_logic;
        clk1            : in     vl_logic;
        ena0            : in     vl_logic;
        ena1            : in     vl_logic;
        ena2            : in     vl_logic;
        ena3            : in     vl_logic;
        clr0            : in     vl_logic;
        clr1            : in     vl_logic;
        nerror          : in     vl_logic;
        portabyteenamasks: in     vl_logic_vector;
        portbbyteenamasks: in     vl_logic_vector;
        portaaddrstall  : in     vl_logic;
        portbaddrstall  : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        eccstatus       : out    vl_logic_vector;
        portadataout    : out    vl_logic_vector;
        portbdataout    : out    vl_logic_vector;
        dftout          : out    vl_logic_vector(8 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of mixed_port_feed_through_mode : constant is 1;
    attribute mti_svvh_generic_type of ram_block_type : constant is 1;
    attribute mti_svvh_generic_type of logical_ram_name : constant is 1;
    attribute mti_svvh_generic_type of init_file : constant is 1;
    attribute mti_svvh_generic_type of init_file_layout : constant is 1;
    attribute mti_svvh_generic_type of ecc_pipeline_stage_enabled : constant is 1;
    attribute mti_svvh_generic_type of enable_ecc : constant is 1;
    attribute mti_svvh_generic_type of width_eccstatus : constant is 1;
    attribute mti_svvh_generic_type of data_interleave_width_in_bits : constant is 1;
    attribute mti_svvh_generic_type of data_interleave_offset_in_bits : constant is 1;
    attribute mti_svvh_generic_type of port_a_logical_ram_depth : constant is 1;
    attribute mti_svvh_generic_type of port_a_logical_ram_width : constant is 1;
    attribute mti_svvh_generic_type of port_a_first_address : constant is 1;
    attribute mti_svvh_generic_type of port_a_last_address : constant is 1;
    attribute mti_svvh_generic_type of port_a_first_bit_number : constant is 1;
    attribute mti_svvh_generic_type of port_a_data_out_clear : constant is 1;
    attribute mti_svvh_generic_type of port_a_data_out_clock : constant is 1;
    attribute mti_svvh_generic_type of port_a_data_width : constant is 1;
    attribute mti_svvh_generic_type of port_a_address_width : constant is 1;
    attribute mti_svvh_generic_type of port_a_byte_enable_mask_width : constant is 1;
    attribute mti_svvh_generic_type of port_b_logical_ram_depth : constant is 1;
    attribute mti_svvh_generic_type of port_b_logical_ram_width : constant is 1;
    attribute mti_svvh_generic_type of port_b_first_address : constant is 1;
    attribute mti_svvh_generic_type of port_b_last_address : constant is 1;
    attribute mti_svvh_generic_type of port_b_first_bit_number : constant is 1;
    attribute mti_svvh_generic_type of port_b_address_clear : constant is 1;
    attribute mti_svvh_generic_type of port_b_data_out_clear : constant is 1;
    attribute mti_svvh_generic_type of port_b_data_in_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_address_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_write_enable_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_read_enable_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_byte_enable_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_data_out_clock : constant is 1;
    attribute mti_svvh_generic_type of port_b_data_width : constant is 1;
    attribute mti_svvh_generic_type of port_b_address_width : constant is 1;
    attribute mti_svvh_generic_type of port_b_byte_enable_mask_width : constant is 1;
    attribute mti_svvh_generic_type of port_a_read_during_write_mode : constant is 1;
    attribute mti_svvh_generic_type of port_b_read_during_write_mode : constant is 1;
    attribute mti_svvh_generic_type of power_up_uninitialized : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of lpm_hint : constant is 1;
    attribute mti_svvh_generic_type of connectivity_checking : constant is 1;
    attribute mti_svvh_generic_type of mem_init0 : constant is 1;
    attribute mti_svvh_generic_type of mem_init1 : constant is 1;
    attribute mti_svvh_generic_type of mem_init2 : constant is 1;
    attribute mti_svvh_generic_type of mem_init3 : constant is 1;
    attribute mti_svvh_generic_type of mem_init4 : constant is 1;
    attribute mti_svvh_generic_type of mem_init5 : constant is 1;
    attribute mti_svvh_generic_type of mem_init6 : constant is 1;
    attribute mti_svvh_generic_type of mem_init7 : constant is 1;
    attribute mti_svvh_generic_type of mem_init8 : constant is 1;
    attribute mti_svvh_generic_type of mem_init9 : constant is 1;
    attribute mti_svvh_generic_type of port_a_byte_size : constant is 1;
    attribute mti_svvh_generic_type of port_b_byte_size : constant is 1;
    attribute mti_svvh_generic_type of clk0_input_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of clk0_core_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of clk0_output_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of clk1_input_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of clk1_core_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of clk1_output_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of bist_ena : constant is 1;
    attribute mti_svvh_generic_type of port_a_address_clear : constant is 1;
    attribute mti_svvh_generic_type of port_a_data_in_clock : constant is 1;
    attribute mti_svvh_generic_type of port_a_address_clock : constant is 1;
    attribute mti_svvh_generic_type of port_a_write_enable_clock : constant is 1;
    attribute mti_svvh_generic_type of port_a_byte_enable_clock : constant is 1;
    attribute mti_svvh_generic_type of port_a_read_enable_clock : constant is 1;
end stratixv_ram_block;
