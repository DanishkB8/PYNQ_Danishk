// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xam_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAm_accel_CfgInitialize(XAm_accel *InstancePtr, XAm_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAm_accel_Start(XAm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAm_accel_IsDone(XAm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAm_accel_IsIdle(XAm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAm_accel_IsReady(XAm_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAm_accel_EnableAutoRestart(XAm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAm_accel_DisableAutoRestart(XAm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XAm_accel_InterruptGlobalEnable(XAm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XAm_accel_InterruptGlobalDisable(XAm_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XAm_accel_InterruptEnable(XAm_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_IER);
    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XAm_accel_InterruptDisable(XAm_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_IER);
    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAm_accel_InterruptClear(XAm_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAm_accel_WriteReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XAm_accel_InterruptGetEnabled(XAm_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_IER);
}

u32 XAm_accel_InterruptGetStatus(XAm_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAm_accel_ReadReg(InstancePtr->Control_BaseAddress, XAM_ACCEL_CONTROL_ADDR_ISR);
}

