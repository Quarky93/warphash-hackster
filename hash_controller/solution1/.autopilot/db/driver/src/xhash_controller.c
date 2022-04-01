// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhash_controller.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHash_controller_CfgInitialize(XHash_controller *InstancePtr, XHash_controller_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHash_controller_Start(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHash_controller_IsDone(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHash_controller_IsIdle(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHash_controller_IsReady(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHash_controller_EnableAutoRestart(XHash_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHash_controller_DisableAutoRestart(XHash_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0);
}

void XHash_controller_Set_rd_0_offset(XHash_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_0_OFFSET_DATA, (u32)(Data));
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_0_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XHash_controller_Get_rd_0_offset(XHash_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_0_OFFSET_DATA);
    Data += (u64)XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_0_OFFSET_DATA + 4) << 32;
    return Data;
}

void XHash_controller_Set_rd_1_offset(XHash_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_1_OFFSET_DATA, (u32)(Data));
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_1_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XHash_controller_Get_rd_1_offset(XHash_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_1_OFFSET_DATA);
    Data += (u64)XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_RD_1_OFFSET_DATA + 4) << 32;
    return Data;
}

void XHash_controller_Set_wr_0_offset(XHash_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_0_OFFSET_DATA, (u32)(Data));
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_0_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XHash_controller_Get_wr_0_offset(XHash_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_0_OFFSET_DATA);
    Data += (u64)XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_0_OFFSET_DATA + 4) << 32;
    return Data;
}

void XHash_controller_Set_wr_1_offset(XHash_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_1_OFFSET_DATA, (u32)(Data));
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_1_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XHash_controller_Get_wr_1_offset(XHash_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_1_OFFSET_DATA);
    Data += (u64)XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_WR_1_OFFSET_DATA + 4) << 32;
    return Data;
}

void XHash_controller_Set_first(XHash_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_FIRST_DATA, Data);
}

u32 XHash_controller_Get_first(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_FIRST_DATA);
    return Data;
}

void XHash_controller_Set_last(XHash_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_LAST_DATA, Data);
}

u32 XHash_controller_Get_last(XHash_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_LAST_DATA);
    return Data;
}

void XHash_controller_Set_block_header(XHash_controller *InstancePtr, XHash_controller_Block_header Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 0, Data.word_0);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 4, Data.word_1);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 8, Data.word_2);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 12, Data.word_3);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 16, Data.word_4);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 20, Data.word_5);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 24, Data.word_6);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 28, Data.word_7);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 32, Data.word_8);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 36, Data.word_9);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 40, Data.word_10);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 44, Data.word_11);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 48, Data.word_12);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 52, Data.word_13);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 56, Data.word_14);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 60, Data.word_15);
}

XHash_controller_Block_header XHash_controller_Get_block_header(XHash_controller *InstancePtr) {
    XHash_controller_Block_header Data;

    Data.word_0 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 0);
    Data.word_1 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 4);
    Data.word_2 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 8);
    Data.word_3 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 12);
    Data.word_4 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 16);
    Data.word_5 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 20);
    Data.word_6 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 24);
    Data.word_7 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 28);
    Data.word_8 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 32);
    Data.word_9 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 36);
    Data.word_10 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 40);
    Data.word_11 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 44);
    Data.word_12 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 48);
    Data.word_13 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 52);
    Data.word_14 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 56);
    Data.word_15 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_BLOCK_HEADER_DATA + 60);
    return Data;
}

void XHash_controller_Set_target(XHash_controller *InstancePtr, XHash_controller_Target Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 0, Data.word_0);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 4, Data.word_1);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 8, Data.word_2);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 12, Data.word_3);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 16, Data.word_4);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 20, Data.word_5);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 24, Data.word_6);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 28, Data.word_7);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 32, Data.word_8);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 36, Data.word_9);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 40, Data.word_10);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 44, Data.word_11);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 48, Data.word_12);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 52, Data.word_13);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 56, Data.word_14);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 60, Data.word_15);
}

XHash_controller_Target XHash_controller_Get_target(XHash_controller *InstancePtr) {
    XHash_controller_Target Data;

    Data.word_0 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 0);
    Data.word_1 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 4);
    Data.word_2 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 8);
    Data.word_3 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 12);
    Data.word_4 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 16);
    Data.word_5 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 20);
    Data.word_6 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 24);
    Data.word_7 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 28);
    Data.word_8 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 32);
    Data.word_9 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 36);
    Data.word_10 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 40);
    Data.word_11 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 44);
    Data.word_12 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 48);
    Data.word_13 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 52);
    Data.word_14 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 56);
    Data.word_15 = XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_TARGET_DATA + 60);
    return Data;
}

void XHash_controller_InterruptGlobalEnable(XHash_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_GIE, 1);
}

void XHash_controller_InterruptGlobalDisable(XHash_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_GIE, 0);
}

void XHash_controller_InterruptEnable(XHash_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_IER);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_IER, Register | Mask);
}

void XHash_controller_InterruptDisable(XHash_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_IER);
    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XHash_controller_InterruptClear(XHash_controller *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHash_controller_WriteReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_ISR, Mask);
}

u32 XHash_controller_InterruptGetEnabled(XHash_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_IER);
}

u32 XHash_controller_InterruptGetStatus(XHash_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHash_controller_ReadReg(InstancePtr->Control_BaseAddress, XHASH_CONTROLLER_CONTROL_ADDR_ISR);
}

