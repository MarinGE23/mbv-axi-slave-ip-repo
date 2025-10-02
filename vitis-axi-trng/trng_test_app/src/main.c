#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "axi_trng.h"

#define AXI_TRNG_BASEADDR XPAR_AXI_TRNG_0_BASEADDR

#define NUM_RANDOM_VALUES 5
#define SAMPLE_DIVIDER    16
#define RANGE_LOW         0
#define RANGE_HIGH        100

// Read and display the status of the TRNG
void print_status(axi_trng_t *trng) {    
    xil_printf("\r\nTRNG Status: 0x%08X\r\n", Trng_GetStatus(trng));
    xil_printf("  Health OK: %d\r\n", Trng_IsHealthy(trng));
    xil_printf("  Busy: %d\r\n", Trng_IsBusy(trng));
    xil_printf("  RCT Fail: %d\r\n", Trng_IsRctFailed(trng));
    xil_printf("  APT Fail: %d\r\n", Trng_IsAptFailed(trng));
}

int main()
{
    init_platform();
    xil_printf("Test AXI TRNG\n\r");

    // Initialize the TRNG driver
    axi_trng_t trng;
    Trng_Initialize(&trng, AXI_TRNG_BASEADDR);

    // Configure TRNG
    Trng_SetSampleDivider(&trng, SAMPLE_DIVIDER);  // Sample every SAMPLE_DIVIDER cycles 
    Trng_SetRange(&trng, RANGE_LOW, RANGE_HIGH);   // Output range [RANGE_LOW, RANGE_HIGH)

    // Enable TRNG
    Trng_Enable(&trng);

    // Test without Von Neumann
    Trng_DisableVonNeumann(&trng);
    xil_printf("\r\n--- Test without Von Neumann ---\r\n");
    for (int i = 0; i < NUM_RANDOM_VALUES; i++) {
        u32 rnd = Trng_Random(&trng);
        u32 raw = Trng_RawRandom(&trng);
        xil_printf("Random[%d] = %u (raw: 0x%08X)\n\r", i, rnd, raw);
    }

    // Test with Von Neumann
    Trng_EnableVonNeumann(&trng);
    xil_printf("\r\n--- Test with Von Neumann ---\r\n");
    for (int i = 0; i < NUM_RANDOM_VALUES; i++) {
        u32 rnd = Trng_Random(&trng);
        u32 raw = Trng_RawRandom(&trng);
        xil_printf("Random[%d] = %u (raw: 0x%08X)\n\r", i, rnd, raw);
    }

    // Simulating Dice Rolls
    Trng_EnableVonNeumann(&trng);
    Trng_SetRange(&trng, 1, 7);  // [1, 7) = 1, 2, 3, 4, 5, 6
    xil_printf("\n=== Simulating Dice Rolls (1-6) ===\n\r");
    for (int i = 0; i < NUM_RANDOM_VALUES * 2; i++) {
        u32 dice_roll = Trng_Random(&trng);
        xil_printf("Dice roll %d: %u\n\r", i + 1, dice_roll);
    }

    // Disable TRNG when done to save power
    Trng_Disable(&trng);

    // Print status after testing
    print_status(&trng);

    xil_printf("\r\n--- Test completed ---\r\n");
    cleanup_platform();
    return 0;
}
