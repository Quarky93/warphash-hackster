// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhash_controller.h"

extern XHash_controller_Config XHash_controller_ConfigTable[];

XHash_controller_Config *XHash_controller_LookupConfig(u16 DeviceId) {
	XHash_controller_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHASH_CONTROLLER_NUM_INSTANCES; Index++) {
		if (XHash_controller_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHash_controller_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHash_controller_Initialize(XHash_controller *InstancePtr, u16 DeviceId) {
	XHash_controller_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHash_controller_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHash_controller_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

