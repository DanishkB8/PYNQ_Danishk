// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xam_accel.h"

extern XAm_accel_Config XAm_accel_ConfigTable[];

XAm_accel_Config *XAm_accel_LookupConfig(u16 DeviceId) {
	XAm_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAM_ACCEL_NUM_INSTANCES; Index++) {
		if (XAm_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAm_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAm_accel_Initialize(XAm_accel *InstancePtr, u16 DeviceId) {
	XAm_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAm_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAm_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

