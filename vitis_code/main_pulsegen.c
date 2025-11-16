#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "axi_pulsegen.h"

#define AXI_PULSEGEN_BASEADDR XPAR_AXI_PULSEGEN_0_BASEADDR

int main()
{
    axi_pulsegen_t pulsegen;
    
    init_platform();
    xil_printf("\r\nTest AXI Pulse Gen\r\n");
    
    // Initialize and configure using driver
    PulseGen_Initialize(&pulsegen, AXI_PULSEGEN_BASEADDR);
    PulseGen_SetPulseParameters(&pulsegen, 400000000, 100000000);
    PulseGen_ApplyConfiguration(&pulsegen);
    PulseGen_Start(&pulsegen);
    
    xil_printf("Pulse gen configured: Period=4s, Width=1s\n\r");
    xil_printf("Pulse generation active\n\r");
    
    cleanup_platform();
    return 0;
}