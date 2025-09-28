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

u32 digit;
u32 data;

int main()
{
    init_platform();

    print("Program Start !!!\n\r \n\r");

    // Anodes Mask
    Xil_Out32(XPAR_AXI_7SEG_0_BASEADDR, 0x0000000F);

    // Initial Value
    Xil_Out32(XPAR_AXI_7SEG_0_BASEADDR+4, 0x00000000);

    data = 0;

    while(1){
        digit = XUartLite_RecvByte(XPAR_XUARTLITE_0_BASEADDR);
        digit = digit-48; // ASCII -> Int
        if(digit > 9 || digit < 0){
            xil_printf("\n\r");
            data = 0;
        } else {
            xil_printf("%d", digit);
            data = (data<<8) + digit;
        };
        Xil_Out32(XPAR_AXI_7SEG_0_BASEADDR+4, data);
    }

    cleanup_platform();
    return 0;
}
