/**
 * @file axi_7seg.h
 * @brief Driver for AXI 7-Segment Display Controller IP Core
 * 
 * This driver provides an interface to control a 4-digit 7-segment display
 * with multiplexing support and digit decoding.
 */

#ifndef AXI_7SEG_H
#define AXI_7SEG_H

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
 * AXI 7-Segment driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_7seg_t;

/**
 * Register map (offsets)
 */
enum {
    SEG7_REG_ANODE_CTRL    = 0x00u,  /**< Anode control register */
    SEG7_REG_DIGIT_VALUES  = 0x04u   /**< Digit values register */
};

/**
 * Anode control bits
 */
#define SEG7_ANODE_ALL_BITS    0x0F  /**< Enable all digits */

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read from a 7-Segment register
 */
#define AXI_7SEG_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a 7-Segment register
 */
#define AXI_7SEG_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* Initialization and control functions */
void Seg7_Initialize(axi_7seg_t *InstancePtr, u32 BaseAddress);
void Seg7_Reset(axi_7seg_t *InstancePtr);

/* Anode control functions */
void Seg7_EnableAllDigits(axi_7seg_t *InstancePtr);

/* Digit value functions */
void Seg7_SetDigit(axi_7seg_t *InstancePtr, u8 Digit, u8 Value);
void Seg7_SetAllDigits(axi_7seg_t *InstancePtr, u8 Digit0, u8 Digit1, u8 Digit2, u8 Digit3);
void Seg7_SetNumber(axi_7seg_t *InstancePtr, u16 Number);

/* Utility functions */
void Seg7_ClearDisplay(axi_7seg_t *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* AXI_7SEG_H */