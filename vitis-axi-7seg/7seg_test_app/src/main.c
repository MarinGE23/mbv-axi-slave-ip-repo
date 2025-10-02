#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "axi_7seg.h"
#include "sleep.h"

#define AXI_7SEG_BASEADDR XPAR_AXI_7SEG_0_BASEADDR

int main()
{
    init_platform();
    xil_printf("\r\nTest AXI 7SEG\r\n");

    // Initialize the 7-Segment driver
    axi_7seg_t seg7;
    Seg7_Initialize(&seg7, AXI_7SEG_BASEADDR);

    Seg7_SetAllDigits(&seg7, 1, 3, 5, 7); // 7531
    usleep(1000000); // 1s

    Seg7_SetDigit(&seg7, 3, 0); // 0531
    usleep(1000000);

    Seg7_SetDigit(&seg7, 0, 0); // 0530
    usleep(1000000);

    Seg7_SetNumber(&seg7, 3);
    usleep(1000000);

    Seg7_SetNumber(&seg7, 10);
    usleep(1000000);

    Seg7_SetNumber(&seg7, 2025);
    usleep(1000000);

    Seg7_Reset(&seg7);
    usleep(100000);

    for (u16 i = 0; i <= 100; i++) {
        Seg7_SetNumber(&seg7, i);
        usleep(200000);
    }

    Seg7_Reset(&seg7);

    xil_printf("\r\n--- Test completed ---\r\n");
    cleanup_platform();
    return 0;
}
