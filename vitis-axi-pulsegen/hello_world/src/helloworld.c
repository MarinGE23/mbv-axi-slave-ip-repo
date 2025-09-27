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
#include "xil_types.h"
#include "xil_io.h"
#include "xparameters.h"
#include "sleep.h"

int main()
{
    init_platform();
    print("AXI Pulse Gen Test\n\r");
    
    // Configure custom values
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 8, 400000000);  // 4s
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 12, 100000000); // 1s
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 4, 1);          // config_valid
    usleep(1000);
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 4, 0);
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR, 1);              // start
    
    print("Pulse gen configured: Period=4s, Width=1s\n\r");
    
    while(1) {
        // Empty while loop
    }
    
    cleanup_platform();
    return 0;
}
