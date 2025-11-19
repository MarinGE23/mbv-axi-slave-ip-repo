#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartlite_l.h"   // For XUartLite_RecvByte()
#include "axi_7seg.h"

#define AXI_7SEG_BASEADDR XPAR_AXI_7SEG_0_BASEADDR

int main()
{
    init_platform();
    xil_printf("\r\nTest AXI 7SEG\r\n");

    // Initialize the 7-Segment driver
    axi_7seg_t seg7;
    Seg7_Initialize(&seg7, AXI_7SEG_BASEADDR);

    u32 digit;
    u32 data = 0;
    while(1){
        digit = XUartLite_RecvByte(XPAR_XUARTLITE_0_BASEADDR);
        digit = digit-48; // ASCII -> Int
        if(digit > 9){
            xil_printf("\n\r");
            data = 0;
        } else {
            data = (data<<8) + digit;
        };
        AXI_7SEG_WRITE_REG(AXI_7SEG_BASEADDR, SEG7_REG_DIGIT_VALUES, data);
    }

    xil_printf("\r\n--- Test completed ---\r\n");
    cleanup_platform();
    return 0;
}
