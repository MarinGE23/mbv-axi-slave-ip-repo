/**
 * @file axi_pulsegen.c
 * @brief Implementation of AXI Pulse Generator driver functions
 */

#include "axi_pulsegen.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI Pulse Generator driver instance
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @param BaseAddress is the base address of the device
 */
void PulseGen_Initialize(axi_pulsegen_t *InstancePtr, u32 BaseAddress)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    
    /* Setup the instance */
    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    /* Set default values */
    PulseGen_SetPeriod(InstancePtr, DEFAULT_PERIOD);
    PulseGen_SetWidth(InstancePtr, DEFAULT_WIDTH);
    
    /* Apply configuration and start disabled */
    PulseGen_ApplyConfiguration(InstancePtr);
    PulseGen_Stop(InstancePtr);
}

/**
 * Start pulse generation
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 */
void PulseGen_Start(axi_pulsegen_t *InstancePtr)
{   
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read current control register */
    control_reg = AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL);
    
    /* Set start bit */
    control_reg |= PULSEGEN_CTRL_START_BIT;
    
    /* Write back to control register */
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL, control_reg);
}

/**
 * Stop pulse generation
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 */
void PulseGen_Stop(axi_pulsegen_t *InstancePtr)
{   
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read current control register */
    control_reg = AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL);
    
    /* Clear start bit */
    control_reg &= ~PULSEGEN_CTRL_START_BIT;
    
    /* Write back to control register */
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL, control_reg);
}

/**
 * Reset the Pulse Generator to default configuration
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 */
void PulseGen_Reset(axi_pulsegen_t *InstancePtr)
{
    u32 control_reg;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Pulse reset bit */
    control_reg = AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL);
    control_reg |= PULSEGEN_CTRL_RESET_BIT;
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL, control_reg);
    
    /* Clear reset bit */
    control_reg &= ~PULSEGEN_CTRL_RESET_BIT;
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL, control_reg);

    /* Set default values */
    PulseGen_SetPeriod(InstancePtr, DEFAULT_PERIOD);
    PulseGen_SetWidth(InstancePtr, DEFAULT_WIDTH);
    PulseGen_ApplyConfiguration(InstancePtr);
}

/**
 * Set the pulse period (in clock cycles)
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @param Period is the period in clock cycles (minimum 2)
 */
void PulseGen_SetPeriod(axi_pulsegen_t *InstancePtr, u32 Period)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Ensure minimum period value */
    if (Period < 2) {
        Period = 2;
    }
    
    /* Write period register */
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_PERIOD, Period);
}

/**
 * Set the pulse width (in clock cycles)
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @param Width is the width in clock cycles (must be less than period)
 */
void PulseGen_SetWidth(axi_pulsegen_t *InstancePtr, u32 Width)
{
    u32 current_period;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Read current period to validate width */
    current_period = AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_PERIOD);
    
    /* Ensure width is valid (0 < width < period) */
    if (Width == 0) {
        Width = 1;
    }
    if (Width >= current_period) {
        Width = current_period - 1;
    }
    
    /* Write width register */
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_WIDTH, Width);
}

/**
 * Set both period and width parameters
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @param Period is the period in clock cycles
 * @param Width is the width in clock cycles
 */
void PulseGen_SetPulseParameters(axi_pulsegen_t *InstancePtr, u32 Period, u32 Width)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /* Set period first */
    PulseGen_SetPeriod(InstancePtr, Period);
    
    /* Then set width (with validation against the new period) */
    if (Width == 0) {
        Width = 1;
    }
    if (Width >= Period) {
        Width = Period - 1;
    }
    
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_WIDTH, Width);
}

/**
 * Apply the configuration to the pulse generator
 * This asserts the config_valid signal to load new period/width values
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 */
void PulseGen_ApplyConfiguration(axi_pulsegen_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Pulse config_valid bit */
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONFIG_VALID, 0x1);
    AXI_PULSEGEN_WRITE_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONFIG_VALID, 0x0);
}

/**
 * Get the current control register value
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @return Control register value
 */
u32 PulseGen_GetControlStatus(axi_pulsegen_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from control register */
    return AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_CONTROL);
}

/**
 * Get the current period setting
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @return Current period in clock cycles
 */
u32 PulseGen_GetPeriod(axi_pulsegen_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from period register */
    return AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_PERIOD);
}

/**
 * Get the current width setting
 *
 * @param InstancePtr is a pointer to the axi_pulsegen_t instance
 * @return Current width in clock cycles
 */
u32 PulseGen_GetWidth(axi_pulsegen_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Read from width register */
    return AXI_PULSEGEN_READ_REG(InstancePtr->BaseAddress, PULSEGEN_REG_WIDTH);
}