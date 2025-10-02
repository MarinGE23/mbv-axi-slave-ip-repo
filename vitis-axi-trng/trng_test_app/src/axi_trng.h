/**
 * @file axi_trng.h
 * @brief Driver for AXI TRNG (True Random Number Generator) IP Core
 * 
 * This driver provides an interface to control and read from the AXI TRNG
 * IP core that implements a true random number generator using ring oscillators
 * with health tests (RCT and APT).
 */

#ifndef AXI_TRNG_H
#define AXI_TRNG_H

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
 * AXI TRNG driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_trng_t;

/**
 * Register map (offsets)
 */
enum {
    TRNG_REG_CONTROL          = 0x00u,  /**< Control register */
    TRNG_REG_SAMPLE_DIV       = 0x04u,  /**< Sample divider register */
    TRNG_REG_RANGE_LOW        = 0x08u,  /**< Lower bound for scaled output */
    TRNG_REG_RANGE_HIGH       = 0x0Cu,  /**< Upper bound for scaled output */
    TRNG_REG_RANDOM_RAW       = 0x10u,  /**< Raw random number (read-only) */
    TRNG_REG_RANDOM_IN_RANGE  = 0x14u,  /**< Scaled random number (read-only) */
    TRNG_REG_STATUS           = 0x18u   /**< Status register (read-only) */
};

/**
 * Control register bits
 */
#define TRNG_CTRL_ENABLE_BIT      0x01  /**< Enable TRNG generation */
#define TRNG_CTRL_CLR_ALARMS_BIT  0x02  /**< Clear health test alarms */
#define TRNG_CTRL_VN_ENABLE_BIT   0x04  /**< Enable Von Neumann debiasing */

/**
 * Status register bits
 */
#define TRNG_STATUS_HEALTH_OK_BIT 0x01  /**< Health tests passed */
#define TRNG_STATUS_BUSY_BIT      0x02  /**< TRNG is busy generating */
#define TRNG_STATUS_RCT_FAIL_BIT  0x04  /**< Repetition Count Test failed */
#define TRNG_STATUS_APT_FAIL_BIT  0x08  /**< Adaptive Proportion Test failed */

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read from a TRNG register
 */
#define AXI_TRNG_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a TRNG register
 */
#define AXI_TRNG_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* Initialization and control functions */
void Trng_Initialize(axi_trng_t *InstancePtr, u32 BaseAddress);
void Trng_Enable(axi_trng_t *InstancePtr);
void Trng_Disable(axi_trng_t *InstancePtr);
void Trng_Reset(axi_trng_t *InstancePtr);

/* Configuration functions */
void Trng_SetSampleDivider(axi_trng_t *InstancePtr, u32 Divider);
void Trng_EnableVonNeumann(axi_trng_t *InstancePtr);
void Trng_DisableVonNeumann(axi_trng_t *InstancePtr);
void Trng_ClearAlarms(axi_trng_t *InstancePtr);

/* Range configuration function */
void Trng_SetRange(axi_trng_t *InstancePtr, u32 Low, u32 High);

/* Data read functions */
u32 Trng_Random(axi_trng_t *InstancePtr);
u32 Trng_RawRandom(axi_trng_t *InstancePtr);

/* Status functions */
u32 Trng_GetStatus(axi_trng_t *InstancePtr);
int Trng_IsHealthy(axi_trng_t *InstancePtr);
int Trng_IsBusy(axi_trng_t *InstancePtr);
int Trng_IsRctFailed(axi_trng_t *InstancePtr);
int Trng_IsAptFailed(axi_trng_t *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* AXI_TRNG_H */