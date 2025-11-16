/**
 * @file axi_trng.c
 * @brief Implementation of AXI TRNG driver functions
 */

#include "axi_trng.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI TRNG driver instance
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @param BaseAddress is the base address of the device
 */
void Trng_Initialize(axi_trng_t *InstancePtr, u32 BaseAddress)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    
    /* Setup the instance */
    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    /* Set default values */
    Trng_SetSampleDivider(InstancePtr, DEFAULT_SAMPLE_DIV);
    Trng_SetRange(InstancePtr, DEFAULT_RANGE_LOW, DEFAULT_RANGE_HIGH); 
    
    /* Clear any existing alarms and start disabled (clear control register) */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, 0);
}

/**
 * Enable the TRNG to generate random numbers
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 */
void Trng_Enable(axi_trng_t *InstancePtr)
{   
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read current control register */
    control_reg = AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL);
    
    /* Set enable bit */
    control_reg |= TRNG_CTRL_ENABLE_BIT;
    
    /* Write back to control register */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, control_reg);
}

/**
 * Disable the TRNG
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 */
void Trng_Disable(axi_trng_t *InstancePtr)
{   
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read current control register */
    control_reg = AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL);
    
    /* Clear enable bit */
    control_reg &= ~TRNG_CTRL_ENABLE_BIT;
    
    /* Write back to control register */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, control_reg);
}

/**
 * Reset the TRNG to default configuration
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 */
void Trng_Reset(axi_trng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Set default values */
    Trng_SetSampleDivider(InstancePtr, DEFAULT_SAMPLE_DIV);
    Trng_SetRange(InstancePtr, DEFAULT_RANGE_LOW, DEFAULT_RANGE_HIGH); 

    /* Clear any existing alarms and start disabled (clear control register) */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, 0);
}

/**
 * Set the sample divider for the TRNG
 * Higher values = slower sampling = potentially better entropy
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @param Divider is the sample divider value (minimum 1)
 */
void Trng_SetSampleDivider(axi_trng_t *InstancePtr, u32 Divider)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Ensure minimum divider value */
    if (Divider == 0) {
        Divider = 1;
    }
    
    /* Write sample divider register */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_SAMPLE_DIV, Divider);
}

/**
 * Clear health test alarms
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 */
void Trng_ClearAlarms(axi_trng_t *InstancePtr)
{
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read current control register */
    control_reg = AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL);
    
    /* Pulse clear alarms bit */
    control_reg |= TRNG_CTRL_CLR_ALARMS_BIT;
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, control_reg);
    
    /* Clear the bit */
    control_reg &= ~TRNG_CTRL_CLR_ALARMS_BIT;
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_CONTROL, control_reg);
}

/**
 * Set the range for scaled random number output
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @param Low is the lower bound (inclusive)
 * @param High is the upper bound (exclusive)
 */
void Trng_SetRange(axi_trng_t *InstancePtr, u32 Low, u32 High)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Write low and high bounds to their respective registers */
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_RANGE_LOW, Low);
    AXI_TRNG_WRITE_REG(InstancePtr->BaseAddress, TRNG_REG_RANGE_HIGH, High);
}

/**
 * Read the random number scaled to the current range
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return 32-bit random number in the configured range [Low, High)
 */
u32 Trng_Random(axi_trng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from scaled random number register */
    return AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_RANDOM_IN_RANGE);
}

/**
 * Read the raw 32-bit random number from the TRNG
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return 32-bit raw random number
 */
u32 Trng_RawRandom(axi_trng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from raw random number register */
    return AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_RANDOM_RAW);
}

/**
 * Get the complete status register
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return Status register value
 */
u32 Trng_GetStatus(axi_trng_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from status register */
    return AXI_TRNG_READ_REG(InstancePtr->BaseAddress, TRNG_REG_STATUS);
}

/**
 * Check if TRNG health tests are passing
 * 
 * Combined status of both RCT and APT tests.
 * Use this for general health monitoring in applications.
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance  
 * @return 1 if both RCT and APT are passing (TRNG is healthy),
 *         0 if either test has failed
 */
int Trng_IsHealthy(axi_trng_t *InstancePtr)
{
    u32 status;
    
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    status = Trng_GetStatus(InstancePtr);
    return (status & TRNG_STATUS_HEALTH_OK_BIT) ? 1 : 0;
}

/**
 * Check if TRNG is busy generating random numbers
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return 1 if busy, 0 if idle
 */
int Trng_IsBusy(axi_trng_t *InstancePtr)
{
    u32 status;
    
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    status = Trng_GetStatus(InstancePtr);
    return (status & TRNG_STATUS_BUSY_BIT) ? 1 : 0;
}

/**
 * Check if Repetition Count Test (RCT) has failed
 * 
 * RCT detects stuck-at faults by monitoring consecutive identical bits.
 * It fails when a sequence of identical bits exceeds the maximum allowed run length.
 * 
 * This indicates potential hardware issues or insufficient entropy.
 * Typical causes: oscillator synchronization problems, timing violations,
 * or insufficient sampling interval.
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return 1 if RCT detected excessive repetition (hardware issue suspected),
 *         0 if test is passing (normal operation)
 */
int Trng_IsRctFailed(axi_trng_t *InstancePtr)
{
    u32 status;
    
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    status = Trng_GetStatus(InstancePtr);
    return (status & TRNG_STATUS_RCT_FAIL_BIT) ? 1 : 0;
}

/**
 * Check if Adaptive Proportion Test (APT) has failed
 * 
 * APT monitors the ratio of ones in a fixed-size window of bits.
 * It fails if the count of ones falls outside the acceptable range,
 * indicating bias in the random stream.
 * 
 * This detects statistical anomalies in entropy quality:
 * - Too few ones: suggests bias toward zeros
 * - Too many ones: suggests bias toward ones
 * 
 * Example normal expectation: ~256 ones in 512 bits (50% distribution).
 *
 * @param InstancePtr is a pointer to the axi_trng_t instance
 * @return 1 if APT detected significant bias (entropy quality issue),
 *         0 if bit distribution is within acceptable limits
 */
int Trng_IsAptFailed(axi_trng_t *InstancePtr)
{
    u32 status;
    
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    status = Trng_GetStatus(InstancePtr);
    return (status & TRNG_STATUS_APT_FAIL_BIT) ? 1 : 0;
}