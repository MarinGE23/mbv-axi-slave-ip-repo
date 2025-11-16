/**
 * @file axi_perceptron.h
 * @brief Driver for AXI Perceptron IP Core
 * 
 * This driver provides an interface to control and read from the AXI Perceptron.
 */

#ifndef AXI_PERCEPTRON_H
#define AXI_PERCEPTRON_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include <stddef.h>
#include "xil_types.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/**
 * AXI Perceptron driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_perceptron_t;

/**
 * Register map (offsets)
 */
enum {
    PERCEPTRON_REG_CONTROL    = 0x00u,  /**< Control register */
    PERCEPTRON_REG_MAXEPOCHS  = 0x04u,  /**< Max epochs register */
    PERCEPTRON_REG_ETA        = 0x08u,  /**< Learning rate register */
    PERCEPTRON_REG_INIT       = 0x0Cu,  /**< Init register */
    PERCEPTRON_REG_STATUS     = 0x10u,  /**< Status register (read-only) */
    PERCEPTRON_REG_W12        = 0x14u,  /**< Weights register */
    PERCEPTRON_REG_BIAS       = 0x18u,  /**< Bias register */
    PERCEPTRON_REG_RESULT     = 0x1Cu   /**< Result register */
};

/**
 * Targets helpers (truth tables for x1,x2 in {11,10,01,00})
 */
#define PERCEPTRON_TARGETS_AND   (0x8u)  /* 1000b */
#define PERCEPTRON_TARGETS_OR    (0xEu)  /* 1110b */
#define PERCEPTRON_TARGETS_NAND  (0x7u)  /* 0111b */
#define PERCEPTRON_TARGETS_NOR   (0x1u)  /* 0001b */
#define PERCEPTRON_TARGETS_XOR   (0x6u)  /* 0110b */
#define PERCEPTRON_TARGETS_XNOR  (0x9u)  /* 1001b */

/**
 * Control register bits
 */
#define PERCEPTRON_CTRL_START_MASK      0x01
#define PERCEPTRON_CTRL_TARGETS_SHIFT   0x04

/**
 * Status register bits
 */
#define PERCEPTRON_STATUS_CONV_MASK     0x01

/**
 * Default values
 */
#define DEFAULT_MAX_EPOCHS 64
#define DEFAULT_ETA_Q4_4   8
#define POLL_US            100
#define MAX_WAIT_MS        3000

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read from a Perceptron register
 */
#define AXI_PERCEPTRON_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a Perceptron register
 */
#define AXI_PERCEPTRON_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* Initialization functions */
void Perceptron_Initialize(axi_perceptron_t* InstancePtr, u32 BaseAddress);
void Perceptron_StartTraining(axi_perceptron_t* InstancePtr, u8 Targets, u32* StatusOut);

/* Configuration functions */
void Perceptron_SetTrainingParams(axi_perceptron_t* InstancePtr, u16 MaxEpochs, s8 LearningRate);
void Perceptron_LoadWeights(axi_perceptron_t* InstancePtr, s8 Weight1, s8 Weight2, s8 Bias);

/* Read functions */
u32 Perceptron_ReadStatus(const axi_perceptron_t* InstancePtr);
void Perceptron_ReadWeights(const axi_perceptron_t* InstancePtr, s8* W1, s8* W2, s8* B);
void Perceptron_ReadResult(const axi_perceptron_t* InstancePtr, s8* SumQ4_4, u8* Ybit);

/* Util function */
char* Perceptron_Q4_4ToString(s8 Q, char* Out, size_t OutSize);

#ifdef __cplusplus
}
#endif

#endif /* AXI_PERCEPTRON_H */