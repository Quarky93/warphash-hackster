// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of rd_0_offset
//        bit 31~0 - rd_0_offset[31:0] (Read/Write)
// 0x14 : Data signal of rd_0_offset
//        bit 31~0 - rd_0_offset[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of rd_1_offset
//        bit 31~0 - rd_1_offset[31:0] (Read/Write)
// 0x20 : Data signal of rd_1_offset
//        bit 31~0 - rd_1_offset[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of wr_0_offset
//        bit 31~0 - wr_0_offset[31:0] (Read/Write)
// 0x2c : Data signal of wr_0_offset
//        bit 31~0 - wr_0_offset[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of wr_1_offset
//        bit 31~0 - wr_1_offset[31:0] (Read/Write)
// 0x38 : Data signal of wr_1_offset
//        bit 31~0 - wr_1_offset[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of first
//        bit 0  - first[0] (Read/Write)
//        others - reserved
// 0x44 : reserved
// 0x48 : Data signal of last
//        bit 0  - last[0] (Read/Write)
//        others - reserved
// 0x4c : reserved
// 0x50 : Data signal of block_header
//        bit 31~0 - block_header[31:0] (Read/Write)
// 0x54 : Data signal of block_header
//        bit 31~0 - block_header[63:32] (Read/Write)
// 0x58 : Data signal of block_header
//        bit 31~0 - block_header[95:64] (Read/Write)
// 0x5c : Data signal of block_header
//        bit 31~0 - block_header[127:96] (Read/Write)
// 0x60 : Data signal of block_header
//        bit 31~0 - block_header[159:128] (Read/Write)
// 0x64 : Data signal of block_header
//        bit 31~0 - block_header[191:160] (Read/Write)
// 0x68 : Data signal of block_header
//        bit 31~0 - block_header[223:192] (Read/Write)
// 0x6c : Data signal of block_header
//        bit 31~0 - block_header[255:224] (Read/Write)
// 0x70 : Data signal of block_header
//        bit 31~0 - block_header[287:256] (Read/Write)
// 0x74 : Data signal of block_header
//        bit 31~0 - block_header[319:288] (Read/Write)
// 0x78 : Data signal of block_header
//        bit 31~0 - block_header[351:320] (Read/Write)
// 0x7c : Data signal of block_header
//        bit 31~0 - block_header[383:352] (Read/Write)
// 0x80 : Data signal of block_header
//        bit 31~0 - block_header[415:384] (Read/Write)
// 0x84 : Data signal of block_header
//        bit 31~0 - block_header[447:416] (Read/Write)
// 0x88 : Data signal of block_header
//        bit 31~0 - block_header[479:448] (Read/Write)
// 0x8c : Data signal of block_header
//        bit 31~0 - block_header[511:480] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of target
//        bit 31~0 - target[31:0] (Read/Write)
// 0x98 : Data signal of target
//        bit 31~0 - target[63:32] (Read/Write)
// 0x9c : Data signal of target
//        bit 31~0 - target[95:64] (Read/Write)
// 0xa0 : Data signal of target
//        bit 31~0 - target[127:96] (Read/Write)
// 0xa4 : Data signal of target
//        bit 31~0 - target[159:128] (Read/Write)
// 0xa8 : Data signal of target
//        bit 31~0 - target[191:160] (Read/Write)
// 0xac : Data signal of target
//        bit 31~0 - target[223:192] (Read/Write)
// 0xb0 : Data signal of target
//        bit 31~0 - target[255:224] (Read/Write)
// 0xb4 : Data signal of target
//        bit 31~0 - target[287:256] (Read/Write)
// 0xb8 : Data signal of target
//        bit 31~0 - target[319:288] (Read/Write)
// 0xbc : Data signal of target
//        bit 31~0 - target[351:320] (Read/Write)
// 0xc0 : Data signal of target
//        bit 31~0 - target[383:352] (Read/Write)
// 0xc4 : Data signal of target
//        bit 31~0 - target[415:384] (Read/Write)
// 0xc8 : Data signal of target
//        bit 31~0 - target[447:416] (Read/Write)
// 0xcc : Data signal of target
//        bit 31~0 - target[479:448] (Read/Write)
// 0xd0 : Data signal of target
//        bit 31~0 - target[511:480] (Read/Write)
// 0xd4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL            0x00
#define CONTROL_ADDR_GIE                0x04
#define CONTROL_ADDR_IER                0x08
#define CONTROL_ADDR_ISR                0x0c
#define CONTROL_ADDR_RD_0_OFFSET_DATA   0x10
#define CONTROL_BITS_RD_0_OFFSET_DATA   64
#define CONTROL_ADDR_RD_1_OFFSET_DATA   0x1c
#define CONTROL_BITS_RD_1_OFFSET_DATA   64
#define CONTROL_ADDR_WR_0_OFFSET_DATA   0x28
#define CONTROL_BITS_WR_0_OFFSET_DATA   64
#define CONTROL_ADDR_WR_1_OFFSET_DATA   0x34
#define CONTROL_BITS_WR_1_OFFSET_DATA   64
#define CONTROL_ADDR_FIRST_DATA         0x40
#define CONTROL_BITS_FIRST_DATA         1
#define CONTROL_ADDR_LAST_DATA          0x48
#define CONTROL_BITS_LAST_DATA          1
#define CONTROL_ADDR_BLOCK_HEADER_DATA  0x50
#define CONTROL_BITS_BLOCK_HEADER_DATA  512
#define CONTROL_ADDR_BLOCK_HEADER_DATA_ 0x78
#define CONTROL_BITS_BLOCK_HEADER_DATA  512
#define CONTROL_ADDR_TARGET_DATA        0x94
#define CONTROL_BITS_TARGET_DATA        512
#define CONTROL_ADDR_TARGET_DATA_       0xbc
#define CONTROL_BITS_TARGET_DATA        512
