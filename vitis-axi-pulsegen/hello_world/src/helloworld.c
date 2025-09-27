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


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application!!!");

    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 4, 1); // config_valid = 1
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 8, 400000000); // period_in = 4s
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 12, 100000000); // width_in = 1s
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR + 4, 0); // config_valid = 0
    Xil_Out32(XPAR_AXI_PULSEGEN_0_BASEADDR, 1); // start = 1

    while(1){}

    cleanup_platform();
    return 0;
}
