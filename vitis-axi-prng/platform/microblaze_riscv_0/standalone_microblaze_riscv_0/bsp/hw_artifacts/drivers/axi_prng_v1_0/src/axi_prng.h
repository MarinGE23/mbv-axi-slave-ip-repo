/**
 * @file axi_prng.h
 * @brief Driver for AXI PRNG (Pseudo-Random Number Generator) IP Core
 * 
 * This driver provides an interface to control and read from the AXI PRNG
 * IP core that implements a 32-bit XorShift random number generator.
 */

#ifndef AXI_PRNG_H
#define AXI_PRNG_H

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
 * AXI PRNG driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_prng_t;

/**
 * Register map (offsets)
 */
enum {
    PRNG_REG_ENABLE          = 0x00u,
    PRNG_REG_UPDATE_SEED     = 0x04u,
    PRNG_REG_NEW_SEED        = 0x08u,
    PRNG_REG_UPDATE_RANGE    = 0x0Cu,
    PRNG_REG_NEW_LOW         = 0x10u,
    PRNG_REG_NEW_HIGH        = 0x14u,
    PRNG_REG_RANDOM_RAW      = 0x18u,
    PRNG_REG_RANDOM_IN_RANGE = 0x1Cu
};

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read from a PRNG register
 */
#define AXI_PRNG_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a PRNG register
 */
#define AXI_PRNG_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* Initialization and control functions */
void Prng_Initialize(axi_prng_t *InstancePtr, u32 BaseAddress);
void Prng_Enable(axi_prng_t *InstancePtr);
void Prng_Disable(axi_prng_t *InstancePtr);
void Prng_Reset(axi_prng_t *InstancePtr);

/* Seed configuration function */
void Prng_ChangeSeed(axi_prng_t *InstancePtr, u32 Seed);

/* Range configuration function */
void Prng_ChanceRange(axi_prng_t *InstancePtr, u32 Low, u32 High);

/* Data read functions */
u32 Prng_Random(axi_prng_t *InstancePtr);
u32 Prng_RawRandom(axi_prng_t *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* AXI_PRNG_H */
