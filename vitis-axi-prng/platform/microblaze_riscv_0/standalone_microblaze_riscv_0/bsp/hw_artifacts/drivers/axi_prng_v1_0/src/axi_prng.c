/**
 * @file axi_prng.c
 * @brief Implementation of AXI PRNG driver functions
 */

#include "axi_prng.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI PRNG driver instance
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 * @param BaseAddress is the base address of the device
 */
void Prng_Initialize(axi_prng_t *InstancePtr, u32 BaseAddress)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    
    /* Setup the instance */
    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
}

/**
 * Enable the PRNG to generate random numbers
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 */
void Prng_Enable(axi_prng_t *InstancePtr)
{   
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Set enable bit */
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_ENABLE, 1);
}

/**
 * Disable the PRNG
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 */
void Prng_Disable(axi_prng_t *InstancePtr)
{   
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Clear enable bit */
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_ENABLE, 0);
}

/**
 * Change the seed value for the PRNG
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 * @param Seed is the new seed value (0 will use default seed in hardware)
 */
void Prng_ChangeSeed(axi_prng_t *InstancePtr, u32 Seed)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_NEW_SEED, Seed);
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_UPDATE_SEED, 1);
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_UPDATE_SEED, 0);
}

/**
 * Change the range for scaled random number output
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 * @param Low is the lower bound (inclusive)
 * @param High is the upper bound (exclusive)
 */
void Prng_ChanceRange(axi_prng_t *InstancePtr, u32 Low, u32 High)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_NEW_LOW, Low);
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_NEW_HIGH, High);
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_UPDATE_RANGE, 1);
    AXI_PRNG_WRITE_REG(InstancePtr->BaseAddress, PRNG_REG_UPDATE_RANGE, 0);
}

/**
 * Read the raw 32-bit random number from the PRNG
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 * @return 32-bit raw random number
 */
u32 Prng_RawRandom(axi_prng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    Prng_Enable(InstancePtr);
    u32 raw = AXI_PRNG_READ_REG(InstancePtr->BaseAddress, PRNG_REG_RANDOM_RAW);
    Prng_Disable(InstancePtr);

    return raw;
}

/**
 * Read the random number scaled to the current range
 *
 * @param InstancePtr is a pointer to the axi_prng_t instance
 * @return 32-bit random number in the configured range [Low, High)
 */
u32 Prng_Random(axi_prng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Prng_Enable(InstancePtr);
    u32 rnd = AXI_PRNG_READ_REG(InstancePtr->BaseAddress, PRNG_REG_RANDOM_IN_RANGE);
    Prng_Disable(InstancePtr);

    return rnd;
}
