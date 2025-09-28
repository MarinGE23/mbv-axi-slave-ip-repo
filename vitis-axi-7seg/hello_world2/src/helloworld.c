/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"
#include "sleep.h"

// AXI 7-Segment Peripheral Base Address
#define AXI_7SEG_BASEADDR   XPAR_AXI_7SEG_0_BASEADDR
#define AXI_7SEG_ANODE_MASK (AXI_7SEG_BASEADDR + 0)
#define AXI_7SEG_DATA       (AXI_7SEG_BASEADDR + 4)

/**
 * Packs a 4-digit number (0000–9999) into a 32-bit word and
 * sends it to the AXI 7-segment display peripheral.
 *
 * Format: Each byte represents one digit
 *   [D3][D2][D1][D0]
 */
void display_number(u32 number)
{
    if (number > 9999) {
        xil_printf("Error: Number out of range (0-9999)\r\n");
        return;
    }

    // Extract digits and pack into 32-bit value
    u32 data = ((number / 1000) % 10) << 24 |
               ((number / 100)  % 10) << 16 |
               ((number / 10)   % 10) << 8  |
               (number % 10);

    // Write to AXI register
    Xil_Out32(AXI_7SEG_DATA, data);

    xil_printf("Displayed number: %04d\r\n", number);
}

int main()
{
    init_platform();

    print("\nProgram Start !!!\r\n\r\n");

    // Enable all 4 displays (anodes)
    Xil_Out32(AXI_7SEG_ANODE_MASK, 0x0000000F);

    display_number(3);
    usleep(1000000);

    display_number(10);
    usleep(1000000);

    display_number(2025);
    usleep(1000000);

    cleanup_platform();
    return 0;
}

