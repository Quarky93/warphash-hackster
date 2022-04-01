// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHASH_CONTROLLER_H
#define XHASH_CONTROLLER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhash_controller_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XHash_controller_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XHash_controller;

typedef u32 word_type;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
} XHash_controller_Block_header;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
} XHash_controller_Target;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHash_controller_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHash_controller_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHash_controller_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHash_controller_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHash_controller_Initialize(XHash_controller *InstancePtr, u16 DeviceId);
XHash_controller_Config* XHash_controller_LookupConfig(u16 DeviceId);
int XHash_controller_CfgInitialize(XHash_controller *InstancePtr, XHash_controller_Config *ConfigPtr);
#else
int XHash_controller_Initialize(XHash_controller *InstancePtr, const char* InstanceName);
int XHash_controller_Release(XHash_controller *InstancePtr);
#endif

void XHash_controller_Start(XHash_controller *InstancePtr);
u32 XHash_controller_IsDone(XHash_controller *InstancePtr);
u32 XHash_controller_IsIdle(XHash_controller *InstancePtr);
u32 XHash_controller_IsReady(XHash_controller *InstancePtr);
void XHash_controller_EnableAutoRestart(XHash_controller *InstancePtr);
void XHash_controller_DisableAutoRestart(XHash_controller *InstancePtr);

void XHash_controller_Set_rd_0_offset(XHash_controller *InstancePtr, u64 Data);
u64 XHash_controller_Get_rd_0_offset(XHash_controller *InstancePtr);
void XHash_controller_Set_rd_1_offset(XHash_controller *InstancePtr, u64 Data);
u64 XHash_controller_Get_rd_1_offset(XHash_controller *InstancePtr);
void XHash_controller_Set_wr_0_offset(XHash_controller *InstancePtr, u64 Data);
u64 XHash_controller_Get_wr_0_offset(XHash_controller *InstancePtr);
void XHash_controller_Set_wr_1_offset(XHash_controller *InstancePtr, u64 Data);
u64 XHash_controller_Get_wr_1_offset(XHash_controller *InstancePtr);
void XHash_controller_Set_first(XHash_controller *InstancePtr, u32 Data);
u32 XHash_controller_Get_first(XHash_controller *InstancePtr);
void XHash_controller_Set_last(XHash_controller *InstancePtr, u32 Data);
u32 XHash_controller_Get_last(XHash_controller *InstancePtr);
void XHash_controller_Set_block_header(XHash_controller *InstancePtr, XHash_controller_Block_header Data);
XHash_controller_Block_header XHash_controller_Get_block_header(XHash_controller *InstancePtr);
void XHash_controller_Set_target(XHash_controller *InstancePtr, XHash_controller_Target Data);
XHash_controller_Target XHash_controller_Get_target(XHash_controller *InstancePtr);

void XHash_controller_InterruptGlobalEnable(XHash_controller *InstancePtr);
void XHash_controller_InterruptGlobalDisable(XHash_controller *InstancePtr);
void XHash_controller_InterruptEnable(XHash_controller *InstancePtr, u32 Mask);
void XHash_controller_InterruptDisable(XHash_controller *InstancePtr, u32 Mask);
void XHash_controller_InterruptClear(XHash_controller *InstancePtr, u32 Mask);
u32 XHash_controller_InterruptGetEnabled(XHash_controller *InstancePtr);
u32 XHash_controller_InterruptGetStatus(XHash_controller *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
