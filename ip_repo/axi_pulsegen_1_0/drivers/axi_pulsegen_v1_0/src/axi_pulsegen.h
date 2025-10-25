/**
 * @file axi_pulsegen.h
 * @brief Driver for AXI Pulse Generator IP Core
 * 
 * This driver provides an interface to control the AXI Pulse Generator
 * IP core that generates configurable pulse waveforms with programmable
 * period and width.
 */

#ifndef AXI_PULSEGEN_H
#define AXI_PULSEGEN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/**
 * AXI Pulse Generator driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_pulsegen_t;

/**
 * Register map (offsets)
 */
enum {
    PULSEGEN_REG_CONTROL       = 0x00u,  /**< Control register */
    PULSEGEN_REG_CONFIG_VALID  = 0x04u,  /**< Configuration valid register */
    PULSEGEN_REG_PERIOD        = 0x08u,  /**< Period configuration register */
    PULSEGEN_REG_WIDTH         = 0x0Cu   /**< Width configuration register */
};

/**
 * Control register bits
 */
#define PULSEGEN_CTRL_START_BIT     0x01  /**< Start/Enable pulse generation */
#define PULSEGEN_CTRL_RESET_BIT     0x02  /**< Reset pulse generator */

/**
 * Default values (in clock cycles)
 */
#define DEFAULT_PERIOD   100000000  /**< Default: 1s at 100MHz */
#define DEFAULT_WIDTH    50000000   /**< Default: 0.5s at 100MHz */

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read from a Pulse Generator register
 */
#define AXI_PULSEGEN_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a Pulse Generator register
 */
#define AXI_PULSEGEN_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* Initialization and control functions */
void PulseGen_Initialize(axi_pulsegen_t *InstancePtr, u32 BaseAddress);
void PulseGen_Start(axi_pulsegen_t *InstancePtr);
void PulseGen_Stop(axi_pulsegen_t *InstancePtr);
void PulseGen_Reset(axi_pulsegen_t *InstancePtr);

/* Configuration functions */
void PulseGen_SetPeriod(axi_pulsegen_t *InstancePtr, u32 Period);
void PulseGen_SetWidth(axi_pulsegen_t *InstancePtr, u32 Width);
void PulseGen_SetPulseParameters(axi_pulsegen_t *InstancePtr, u32 Period, u32 Width);
void PulseGen_ApplyConfiguration(axi_pulsegen_t *InstancePtr);

/* Status functions */
u32 PulseGen_GetControlStatus(axi_pulsegen_t *InstancePtr);
u32 PulseGen_GetPeriod(axi_pulsegen_t *InstancePtr);
u32 PulseGen_GetWidth(axi_pulsegen_t *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* AXI_PULSEGEN_H */