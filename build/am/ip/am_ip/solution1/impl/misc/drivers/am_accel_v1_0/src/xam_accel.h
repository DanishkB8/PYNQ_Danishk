// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAM_ACCEL_H
#define XAM_ACCEL_H

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
#include "xam_accel_hw.h"

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
} XAm_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAm_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAm_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAm_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAm_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAm_accel_ReadReg(BaseAddress, RegOffset) \
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
int XAm_accel_Initialize(XAm_accel *InstancePtr, u16 DeviceId);
XAm_accel_Config* XAm_accel_LookupConfig(u16 DeviceId);
int XAm_accel_CfgInitialize(XAm_accel *InstancePtr, XAm_accel_Config *ConfigPtr);
#else
int XAm_accel_Initialize(XAm_accel *InstancePtr, const char* InstanceName);
int XAm_accel_Release(XAm_accel *InstancePtr);
#endif

void XAm_accel_Start(XAm_accel *InstancePtr);
u32 XAm_accel_IsDone(XAm_accel *InstancePtr);
u32 XAm_accel_IsIdle(XAm_accel *InstancePtr);
u32 XAm_accel_IsReady(XAm_accel *InstancePtr);
void XAm_accel_EnableAutoRestart(XAm_accel *InstancePtr);
void XAm_accel_DisableAutoRestart(XAm_accel *InstancePtr);


void XAm_accel_InterruptGlobalEnable(XAm_accel *InstancePtr);
void XAm_accel_InterruptGlobalDisable(XAm_accel *InstancePtr);
void XAm_accel_InterruptEnable(XAm_accel *InstancePtr, u32 Mask);
void XAm_accel_InterruptDisable(XAm_accel *InstancePtr, u32 Mask);
void XAm_accel_InterruptClear(XAm_accel *InstancePtr, u32 Mask);
u32 XAm_accel_InterruptGetEnabled(XAm_accel *InstancePtr);
u32 XAm_accel_InterruptGetStatus(XAm_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
