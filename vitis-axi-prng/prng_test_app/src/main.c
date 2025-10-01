#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "axi_prng.h"


#define AXI_PRNG_BASEADDR XPAR_AXI_PRNG_0_BASEADDR
#define NUM_RANDOM_VALUES 5


int main()
{
    init_platform();
    xil_printf("Test AXI PRNG with Multiple Seeds and Ranges\n\r");

    // PRNG instance
    axi_prng_t prng;
    Prng_Initialize(&prng, AXI_PRNG_BASEADDR);
    
    // Try different seeds
    u32 seeds[] = {0x000002F1, 0xDEADBEEF, 0xCAFEBABE, 0xFFFFFFFF};
    int num_seeds = sizeof(seeds) / sizeof(seeds[0]);
    
    // Define different ranges to test
    u32 ranges[][2] = {
        {0, 100},      // Original range
        {50, 150},     // Shifted range
        {1000, 2000},  // Big range
        {1, 10},       // Small range
        {999, 1002}    // Very narrow range
    };
    int num_ranges = sizeof(ranges) / sizeof(ranges[0]);
    
    for (int s = 0; s < num_seeds; s++) {
        xil_printf("\n=== Using Seed: 0x%08X ===\n\r", seeds[s]);
        Prng_ChangeSeed(&prng, seeds[s]);
        
        for (int r = 0; r < num_ranges; r++) {
            xil_printf("--- Range [%u, %u] ---\n\r", ranges[r][0], ranges[r][1]);
            Prng_ChanceRange(&prng, ranges[r][0], ranges[r][1]);
            
            for (int i = 0; i < NUM_RANDOM_VALUES; i++) {
                u32 rnd = Prng_Random(&prng);
                u32 raw = Prng_RawRandom(&prng);
                xil_printf("Random[%d] = %u (raw: 0x%08X)\n\r", i, rnd, raw);
            }
            xil_printf("\n\r");
        }
    }
    
    xil_printf("\n=== Simulating Dice Rolls (1-6) ===\n\r");
    Prng_ChangeSeed(&prng, 0x12345678);
    Prng_ChanceRange(&prng, 1, 7);  // [1, 7) = 1, 2, 3, 4, 5, 6
    
    for (int i = 0; i < NUM_RANDOM_VALUES * 2; i++) {
        u32 dice_roll = Prng_Random(&prng);
        xil_printf("Dice roll %d: %u\n\r", i + 1, dice_roll);
    }
    
    cleanup_platform();
    return 0;
}
