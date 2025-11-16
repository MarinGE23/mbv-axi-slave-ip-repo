/**
 * @file axi_7seg.c
 * @brief Implementation of AXI 7-Segment driver functions
 */

#include "axi_7seg.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI 7-Segment driver instance
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 * @param BaseAddress is the base address of the device
 */
void Seg7_Initialize(axi_7seg_t *InstancePtr, u32 BaseAddress)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    
    /* Setup the instance */
    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
    
    /* Initialize display - enable all digits, clear values */
    Seg7_EnableAllDigits(InstancePtr);
    Seg7_ClearDisplay(InstancePtr);
}

/**
 * Reset the 7-Segment display to default state
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 */
void Seg7_Reset(axi_7seg_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Clear values */
    Seg7_ClearDisplay(InstancePtr);
}

/**
 * Enable all 4 digits of the display
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 */
void Seg7_EnableAllDigits(axi_7seg_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Set all anode bits to enable all digits */
    AXI_7SEG_WRITE_REG(InstancePtr->BaseAddress, SEG7_REG_ANODE_CTRL, SEG7_ANODE_ALL_BITS);
}

/**
 * Set value for a specific digit
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 * @param Digit is the digit number (0-3)
 * @param Value is the digit value (0-9)
 */
void Seg7_SetDigit(axi_7seg_t *InstancePtr, u8 Digit, u8 Value)
{
    u32 current_values;
    u32 shift_amount;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    Xil_AssertVoid(Digit < 4);
    Xil_AssertVoid(Value <= 9);
    
    /* Read current digit values */
    current_values = AXI_7SEG_READ_REG(InstancePtr->BaseAddress, SEG7_REG_DIGIT_VALUES);
    
    /* Calculate shift amount for the specified digit */
    shift_amount = Digit * 8;
    
    /* Clear the current value for this digit */
    current_values &= ~(0xFF << shift_amount);
    
    /* Set the new value for this digit */
    current_values |= ((u32)Value << shift_amount);
    
    /* Write back updated values */
    AXI_7SEG_WRITE_REG(InstancePtr->BaseAddress, SEG7_REG_DIGIT_VALUES, current_values);
}

/**
 * Set values for all 4 digits at once
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 * @param Digit0 is the value for digit 0 (0-9)
 * @param Digit1 is the value for digit 1 (0-9)
 * @param Digit2 is the value for digit 2 (0-9)
 * @param Digit3 is the value for digit 3 (0-9)
 */
void Seg7_SetAllDigits(axi_7seg_t *InstancePtr, u8 Digit0, u8 Digit1, u8 Digit2, u8 Digit3)
{
    u32 digit_values;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    Xil_AssertVoid(Digit0 <= 9);
    Xil_AssertVoid(Digit1 <= 9);
    Xil_AssertVoid(Digit2 <= 9);
    Xil_AssertVoid(Digit3 <= 9);
    
    /* Pack all digit values into a single 32-bit word */
    digit_values = ((u32)Digit3 << 24) | ((u32)Digit2 << 16) | 
                   ((u32)Digit1 << 8)  | ((u32)Digit0);
    
    /* Write all digit values at once */
    AXI_7SEG_WRITE_REG(InstancePtr->BaseAddress, SEG7_REG_DIGIT_VALUES, digit_values);
}

/**
 * Display a decimal number (0-9999) on the 7-segment display
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 * @param Number is the number to display (0-9999)
 */
void Seg7_SetNumber(axi_7seg_t *InstancePtr, u16 Number)
{
    u8 digits[4];
    u16 temp = Number;
    int i;
    
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Extract individual digits */
    for (i = 0; i < 4; i++) {
        digits[i] = temp % 10;
        temp = temp / 10;
    }
    
    /* Set all digits */
    Seg7_SetAllDigits(InstancePtr, digits[0], digits[1], digits[2], digits[3]);
}

/**
 * Clear the display (set all digits to 0)
 *
 * @param InstancePtr is a pointer to the axi_7seg_t instance
 */
void Seg7_ClearDisplay(axi_7seg_t *InstancePtr)
{
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    
    /* Set all digits to 0 */
    Seg7_SetAllDigits(InstancePtr, 0, 0, 0, 0);
}