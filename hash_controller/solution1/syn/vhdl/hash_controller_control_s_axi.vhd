-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity hash_controller_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    rd_0_offset           :out  STD_LOGIC_VECTOR(63 downto 0);
    rd_1_offset           :out  STD_LOGIC_VECTOR(63 downto 0);
    wr_0_offset           :out  STD_LOGIC_VECTOR(63 downto 0);
    wr_1_offset           :out  STD_LOGIC_VECTOR(63 downto 0);
    first                 :out  STD_LOGIC_VECTOR(0 downto 0);
    last                  :out  STD_LOGIC_VECTOR(0 downto 0);
    block_header          :out  STD_LOGIC_VECTOR(511 downto 0);
    target                :out  STD_LOGIC_VECTOR(511 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    ap_local_deadlock     :in   STD_LOGIC_VECTOR(0 downto 0)
);
end entity hash_controller_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read/COR)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0 - enable ap_done interrupt (Read/Write)
--        bit 1 - enable ap_ready interrupt (Read/Write)
--        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0 - ap_done (COR/TOW)
--        bit 1 - ap_ready (COR/TOW)
--        bit 5 - ap_local_deadlock (COR/TOW)
--        others - reserved
-- 0x10 : Data signal of rd_0_offset
--        bit 31~0 - rd_0_offset[31:0] (Read/Write)
-- 0x14 : Data signal of rd_0_offset
--        bit 31~0 - rd_0_offset[63:32] (Read/Write)
-- 0x18 : reserved
-- 0x1c : Data signal of rd_1_offset
--        bit 31~0 - rd_1_offset[31:0] (Read/Write)
-- 0x20 : Data signal of rd_1_offset
--        bit 31~0 - rd_1_offset[63:32] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of wr_0_offset
--        bit 31~0 - wr_0_offset[31:0] (Read/Write)
-- 0x2c : Data signal of wr_0_offset
--        bit 31~0 - wr_0_offset[63:32] (Read/Write)
-- 0x30 : reserved
-- 0x34 : Data signal of wr_1_offset
--        bit 31~0 - wr_1_offset[31:0] (Read/Write)
-- 0x38 : Data signal of wr_1_offset
--        bit 31~0 - wr_1_offset[63:32] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of first
--        bit 0  - first[0] (Read/Write)
--        others - reserved
-- 0x44 : reserved
-- 0x48 : Data signal of last
--        bit 0  - last[0] (Read/Write)
--        others - reserved
-- 0x4c : reserved
-- 0x50 : Data signal of block_header
--        bit 31~0 - block_header[31:0] (Read/Write)
-- 0x54 : Data signal of block_header
--        bit 31~0 - block_header[63:32] (Read/Write)
-- 0x58 : Data signal of block_header
--        bit 31~0 - block_header[95:64] (Read/Write)
-- 0x5c : Data signal of block_header
--        bit 31~0 - block_header[127:96] (Read/Write)
-- 0x60 : Data signal of block_header
--        bit 31~0 - block_header[159:128] (Read/Write)
-- 0x64 : Data signal of block_header
--        bit 31~0 - block_header[191:160] (Read/Write)
-- 0x68 : Data signal of block_header
--        bit 31~0 - block_header[223:192] (Read/Write)
-- 0x6c : Data signal of block_header
--        bit 31~0 - block_header[255:224] (Read/Write)
-- 0x70 : Data signal of block_header
--        bit 31~0 - block_header[287:256] (Read/Write)
-- 0x74 : Data signal of block_header
--        bit 31~0 - block_header[319:288] (Read/Write)
-- 0x78 : Data signal of block_header
--        bit 31~0 - block_header[351:320] (Read/Write)
-- 0x7c : Data signal of block_header
--        bit 31~0 - block_header[383:352] (Read/Write)
-- 0x80 : Data signal of block_header
--        bit 31~0 - block_header[415:384] (Read/Write)
-- 0x84 : Data signal of block_header
--        bit 31~0 - block_header[447:416] (Read/Write)
-- 0x88 : Data signal of block_header
--        bit 31~0 - block_header[479:448] (Read/Write)
-- 0x8c : Data signal of block_header
--        bit 31~0 - block_header[511:480] (Read/Write)
-- 0x90 : reserved
-- 0x94 : Data signal of target
--        bit 31~0 - target[31:0] (Read/Write)
-- 0x98 : Data signal of target
--        bit 31~0 - target[63:32] (Read/Write)
-- 0x9c : Data signal of target
--        bit 31~0 - target[95:64] (Read/Write)
-- 0xa0 : Data signal of target
--        bit 31~0 - target[127:96] (Read/Write)
-- 0xa4 : Data signal of target
--        bit 31~0 - target[159:128] (Read/Write)
-- 0xa8 : Data signal of target
--        bit 31~0 - target[191:160] (Read/Write)
-- 0xac : Data signal of target
--        bit 31~0 - target[223:192] (Read/Write)
-- 0xb0 : Data signal of target
--        bit 31~0 - target[255:224] (Read/Write)
-- 0xb4 : Data signal of target
--        bit 31~0 - target[287:256] (Read/Write)
-- 0xb8 : Data signal of target
--        bit 31~0 - target[319:288] (Read/Write)
-- 0xbc : Data signal of target
--        bit 31~0 - target[351:320] (Read/Write)
-- 0xc0 : Data signal of target
--        bit 31~0 - target[383:352] (Read/Write)
-- 0xc4 : Data signal of target
--        bit 31~0 - target[415:384] (Read/Write)
-- 0xc8 : Data signal of target
--        bit 31~0 - target[447:416] (Read/Write)
-- 0xcc : Data signal of target
--        bit 31~0 - target[479:448] (Read/Write)
-- 0xd0 : Data signal of target
--        bit 31~0 - target[511:480] (Read/Write)
-- 0xd4 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of hash_controller_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL              : INTEGER := 16#00#;
    constant ADDR_GIE                  : INTEGER := 16#04#;
    constant ADDR_IER                  : INTEGER := 16#08#;
    constant ADDR_ISR                  : INTEGER := 16#0c#;
    constant ADDR_RD_0_OFFSET_DATA_0   : INTEGER := 16#10#;
    constant ADDR_RD_0_OFFSET_DATA_1   : INTEGER := 16#14#;
    constant ADDR_RD_0_OFFSET_CTRL     : INTEGER := 16#18#;
    constant ADDR_RD_1_OFFSET_DATA_0   : INTEGER := 16#1c#;
    constant ADDR_RD_1_OFFSET_DATA_1   : INTEGER := 16#20#;
    constant ADDR_RD_1_OFFSET_CTRL     : INTEGER := 16#24#;
    constant ADDR_WR_0_OFFSET_DATA_0   : INTEGER := 16#28#;
    constant ADDR_WR_0_OFFSET_DATA_1   : INTEGER := 16#2c#;
    constant ADDR_WR_0_OFFSET_CTRL     : INTEGER := 16#30#;
    constant ADDR_WR_1_OFFSET_DATA_0   : INTEGER := 16#34#;
    constant ADDR_WR_1_OFFSET_DATA_1   : INTEGER := 16#38#;
    constant ADDR_WR_1_OFFSET_CTRL     : INTEGER := 16#3c#;
    constant ADDR_FIRST_DATA_0         : INTEGER := 16#40#;
    constant ADDR_FIRST_CTRL           : INTEGER := 16#44#;
    constant ADDR_LAST_DATA_0          : INTEGER := 16#48#;
    constant ADDR_LAST_CTRL            : INTEGER := 16#4c#;
    constant ADDR_BLOCK_HEADER_DATA_0  : INTEGER := 16#50#;
    constant ADDR_BLOCK_HEADER_DATA_1  : INTEGER := 16#54#;
    constant ADDR_BLOCK_HEADER_DATA_2  : INTEGER := 16#58#;
    constant ADDR_BLOCK_HEADER_DATA_3  : INTEGER := 16#5c#;
    constant ADDR_BLOCK_HEADER_DATA_4  : INTEGER := 16#60#;
    constant ADDR_BLOCK_HEADER_DATA_5  : INTEGER := 16#64#;
    constant ADDR_BLOCK_HEADER_DATA_6  : INTEGER := 16#68#;
    constant ADDR_BLOCK_HEADER_DATA_7  : INTEGER := 16#6c#;
    constant ADDR_BLOCK_HEADER_DATA_8  : INTEGER := 16#70#;
    constant ADDR_BLOCK_HEADER_DATA_9  : INTEGER := 16#74#;
    constant ADDR_BLOCK_HEADER_DATA_10 : INTEGER := 16#78#;
    constant ADDR_BLOCK_HEADER_DATA_11 : INTEGER := 16#7c#;
    constant ADDR_BLOCK_HEADER_DATA_12 : INTEGER := 16#80#;
    constant ADDR_BLOCK_HEADER_DATA_13 : INTEGER := 16#84#;
    constant ADDR_BLOCK_HEADER_DATA_14 : INTEGER := 16#88#;
    constant ADDR_BLOCK_HEADER_DATA_15 : INTEGER := 16#8c#;
    constant ADDR_BLOCK_HEADER_CTRL    : INTEGER := 16#90#;
    constant ADDR_TARGET_DATA_0        : INTEGER := 16#94#;
    constant ADDR_TARGET_DATA_1        : INTEGER := 16#98#;
    constant ADDR_TARGET_DATA_2        : INTEGER := 16#9c#;
    constant ADDR_TARGET_DATA_3        : INTEGER := 16#a0#;
    constant ADDR_TARGET_DATA_4        : INTEGER := 16#a4#;
    constant ADDR_TARGET_DATA_5        : INTEGER := 16#a8#;
    constant ADDR_TARGET_DATA_6        : INTEGER := 16#ac#;
    constant ADDR_TARGET_DATA_7        : INTEGER := 16#b0#;
    constant ADDR_TARGET_DATA_8        : INTEGER := 16#b4#;
    constant ADDR_TARGET_DATA_9        : INTEGER := 16#b8#;
    constant ADDR_TARGET_DATA_10       : INTEGER := 16#bc#;
    constant ADDR_TARGET_DATA_11       : INTEGER := 16#c0#;
    constant ADDR_TARGET_DATA_12       : INTEGER := 16#c4#;
    constant ADDR_TARGET_DATA_13       : INTEGER := 16#c8#;
    constant ADDR_TARGET_DATA_14       : INTEGER := 16#cc#;
    constant ADDR_TARGET_DATA_15       : INTEGER := 16#d0#;
    constant ADDR_TARGET_CTRL          : INTEGER := 16#d4#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(5 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(5 downto 0) := (others => '0');
    signal int_rd_0_offset     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_rd_1_offset     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wr_0_offset     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wr_1_offset     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_first           : UNSIGNED(0 downto 0) := (others => '0');
    signal int_last            : UNSIGNED(0 downto 0) := (others => '0');
    signal int_block_header    : UNSIGNED(511 downto 0) := (others => '0');
    signal int_target          : UNSIGNED(511 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(5 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(5 downto 0) <= int_isr;
                    when ADDR_RD_0_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_rd_0_offset(31 downto 0), 32);
                    when ADDR_RD_0_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_rd_0_offset(63 downto 32), 32);
                    when ADDR_RD_1_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_rd_1_offset(31 downto 0), 32);
                    when ADDR_RD_1_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_rd_1_offset(63 downto 32), 32);
                    when ADDR_WR_0_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_wr_0_offset(31 downto 0), 32);
                    when ADDR_WR_0_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_wr_0_offset(63 downto 32), 32);
                    when ADDR_WR_1_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_wr_1_offset(31 downto 0), 32);
                    when ADDR_WR_1_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_wr_1_offset(63 downto 32), 32);
                    when ADDR_FIRST_DATA_0 =>
                        rdata_data <= RESIZE(int_first(0 downto 0), 32);
                    when ADDR_LAST_DATA_0 =>
                        rdata_data <= RESIZE(int_last(0 downto 0), 32);
                    when ADDR_BLOCK_HEADER_DATA_0 =>
                        rdata_data <= RESIZE(int_block_header(31 downto 0), 32);
                    when ADDR_BLOCK_HEADER_DATA_1 =>
                        rdata_data <= RESIZE(int_block_header(63 downto 32), 32);
                    when ADDR_BLOCK_HEADER_DATA_2 =>
                        rdata_data <= RESIZE(int_block_header(95 downto 64), 32);
                    when ADDR_BLOCK_HEADER_DATA_3 =>
                        rdata_data <= RESIZE(int_block_header(127 downto 96), 32);
                    when ADDR_BLOCK_HEADER_DATA_4 =>
                        rdata_data <= RESIZE(int_block_header(159 downto 128), 32);
                    when ADDR_BLOCK_HEADER_DATA_5 =>
                        rdata_data <= RESIZE(int_block_header(191 downto 160), 32);
                    when ADDR_BLOCK_HEADER_DATA_6 =>
                        rdata_data <= RESIZE(int_block_header(223 downto 192), 32);
                    when ADDR_BLOCK_HEADER_DATA_7 =>
                        rdata_data <= RESIZE(int_block_header(255 downto 224), 32);
                    when ADDR_BLOCK_HEADER_DATA_8 =>
                        rdata_data <= RESIZE(int_block_header(287 downto 256), 32);
                    when ADDR_BLOCK_HEADER_DATA_9 =>
                        rdata_data <= RESIZE(int_block_header(319 downto 288), 32);
                    when ADDR_BLOCK_HEADER_DATA_10 =>
                        rdata_data <= RESIZE(int_block_header(351 downto 320), 32);
                    when ADDR_BLOCK_HEADER_DATA_11 =>
                        rdata_data <= RESIZE(int_block_header(383 downto 352), 32);
                    when ADDR_BLOCK_HEADER_DATA_12 =>
                        rdata_data <= RESIZE(int_block_header(415 downto 384), 32);
                    when ADDR_BLOCK_HEADER_DATA_13 =>
                        rdata_data <= RESIZE(int_block_header(447 downto 416), 32);
                    when ADDR_BLOCK_HEADER_DATA_14 =>
                        rdata_data <= RESIZE(int_block_header(479 downto 448), 32);
                    when ADDR_BLOCK_HEADER_DATA_15 =>
                        rdata_data <= RESIZE(int_block_header(511 downto 480), 32);
                    when ADDR_TARGET_DATA_0 =>
                        rdata_data <= RESIZE(int_target(31 downto 0), 32);
                    when ADDR_TARGET_DATA_1 =>
                        rdata_data <= RESIZE(int_target(63 downto 32), 32);
                    when ADDR_TARGET_DATA_2 =>
                        rdata_data <= RESIZE(int_target(95 downto 64), 32);
                    when ADDR_TARGET_DATA_3 =>
                        rdata_data <= RESIZE(int_target(127 downto 96), 32);
                    when ADDR_TARGET_DATA_4 =>
                        rdata_data <= RESIZE(int_target(159 downto 128), 32);
                    when ADDR_TARGET_DATA_5 =>
                        rdata_data <= RESIZE(int_target(191 downto 160), 32);
                    when ADDR_TARGET_DATA_6 =>
                        rdata_data <= RESIZE(int_target(223 downto 192), 32);
                    when ADDR_TARGET_DATA_7 =>
                        rdata_data <= RESIZE(int_target(255 downto 224), 32);
                    when ADDR_TARGET_DATA_8 =>
                        rdata_data <= RESIZE(int_target(287 downto 256), 32);
                    when ADDR_TARGET_DATA_9 =>
                        rdata_data <= RESIZE(int_target(319 downto 288), 32);
                    when ADDR_TARGET_DATA_10 =>
                        rdata_data <= RESIZE(int_target(351 downto 320), 32);
                    when ADDR_TARGET_DATA_11 =>
                        rdata_data <= RESIZE(int_target(383 downto 352), 32);
                    when ADDR_TARGET_DATA_12 =>
                        rdata_data <= RESIZE(int_target(415 downto 384), 32);
                    when ADDR_TARGET_DATA_13 =>
                        rdata_data <= RESIZE(int_target(447 downto 416), 32);
                    when ADDR_TARGET_DATA_14 =>
                        rdata_data <= RESIZE(int_target(479 downto 448), 32);
                    when ADDR_TARGET_DATA_15 =>
                        rdata_data <= RESIZE(int_target(511 downto 480), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1) or int_isr(5));
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    rd_0_offset          <= STD_LOGIC_VECTOR(int_rd_0_offset);
    rd_1_offset          <= STD_LOGIC_VECTOR(int_rd_1_offset);
    wr_0_offset          <= STD_LOGIC_VECTOR(int_wr_0_offset);
    wr_1_offset          <= STD_LOGIC_VECTOR(int_wr_1_offset);
    first                <= STD_LOGIC_VECTOR(int_first);
    last                 <= STD_LOGIC_VECTOR(int_last);
    block_header         <= STD_LOGIC_VECTOR(int_block_header);
    target               <= STD_LOGIC_VECTOR(int_target);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(5 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(5) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(5) = '1' and ap_local_deadlock(0) = '1') then
                    int_isr(5) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(5) <= int_isr(5) xor WDATA(5); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RD_0_OFFSET_DATA_0) then
                    int_rd_0_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_rd_0_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RD_0_OFFSET_DATA_1) then
                    int_rd_0_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_rd_0_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RD_1_OFFSET_DATA_0) then
                    int_rd_1_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_rd_1_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RD_1_OFFSET_DATA_1) then
                    int_rd_1_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_rd_1_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WR_0_OFFSET_DATA_0) then
                    int_wr_0_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wr_0_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WR_0_OFFSET_DATA_1) then
                    int_wr_0_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wr_0_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WR_1_OFFSET_DATA_0) then
                    int_wr_1_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wr_1_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WR_1_OFFSET_DATA_1) then
                    int_wr_1_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wr_1_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FIRST_DATA_0) then
                    int_first(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_first(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LAST_DATA_0) then
                    int_last(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_last(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_0) then
                    int_block_header(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_1) then
                    int_block_header(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_2) then
                    int_block_header(95 downto 64) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(95 downto 64));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_3) then
                    int_block_header(127 downto 96) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(127 downto 96));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_4) then
                    int_block_header(159 downto 128) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(159 downto 128));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_5) then
                    int_block_header(191 downto 160) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(191 downto 160));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_6) then
                    int_block_header(223 downto 192) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(223 downto 192));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_7) then
                    int_block_header(255 downto 224) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(255 downto 224));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_8) then
                    int_block_header(287 downto 256) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(287 downto 256));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_9) then
                    int_block_header(319 downto 288) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(319 downto 288));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_10) then
                    int_block_header(351 downto 320) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(351 downto 320));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_11) then
                    int_block_header(383 downto 352) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(383 downto 352));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_12) then
                    int_block_header(415 downto 384) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(415 downto 384));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_13) then
                    int_block_header(447 downto 416) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(447 downto 416));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_14) then
                    int_block_header(479 downto 448) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(479 downto 448));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BLOCK_HEADER_DATA_15) then
                    int_block_header(511 downto 480) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_block_header(511 downto 480));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_0) then
                    int_target(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_1) then
                    int_target(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_2) then
                    int_target(95 downto 64) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(95 downto 64));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_3) then
                    int_target(127 downto 96) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(127 downto 96));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_4) then
                    int_target(159 downto 128) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(159 downto 128));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_5) then
                    int_target(191 downto 160) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(191 downto 160));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_6) then
                    int_target(223 downto 192) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(223 downto 192));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_7) then
                    int_target(255 downto 224) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(255 downto 224));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_8) then
                    int_target(287 downto 256) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(287 downto 256));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_9) then
                    int_target(319 downto 288) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(319 downto 288));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_10) then
                    int_target(351 downto 320) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(351 downto 320));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_11) then
                    int_target(383 downto 352) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(383 downto 352));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_12) then
                    int_target(415 downto 384) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(415 downto 384));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_13) then
                    int_target(447 downto 416) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(447 downto 416));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_14) then
                    int_target(479 downto 448) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(479 downto 448));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TARGET_DATA_15) then
                    int_target(511 downto 480) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_target(511 downto 480));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
