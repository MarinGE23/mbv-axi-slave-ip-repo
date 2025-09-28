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

// Definition of PRNG registers
#define AXI_PRNG_BASEADDR    XPAR_AXI_PRNG_0_BASEADDR
#define REG_ENABLE           (AXI_PRNG_BASEADDR + 0)
#define REG_UPDATE_SEED      (AXI_PRNG_BASEADDR + 4)
#define REG_NEW_SEED         (AXI_PRNG_BASEADDR + 8)
#define REG_UPDATE_RANGE     (AXI_PRNG_BASEADDR + 12)
#define REG_NEW_LOW          (AXI_PRNG_BASEADDR + 16)
#define REG_NEW_HIGH         (AXI_PRNG_BASEADDR + 20)
#define REG_RANDOM_RAW       (AXI_PRNG_BASEADDR + 24)
#define REG_RANDOM_IN_RANGE  (AXI_PRNG_BASEADDR + 28)

#define NUM_RANDOM_VALUES    5

// Function to change seed
void change_seed(u32 new_seed) {
    Xil_Out32(REG_NEW_SEED, new_seed);
    Xil_Out32(REG_UPDATE_SEED, 1);
    usleep(10);
    Xil_Out32(REG_UPDATE_SEED, 0);
    usleep(10);
}

// Function to change range [low, high]
void change_range(u32 low, u32 high) {
    Xil_Out32(REG_NEW_LOW, low);
    Xil_Out32(REG_NEW_HIGH, high);
    Xil_Out32(REG_UPDATE_RANGE, 1);
    usleep(10);
    Xil_Out32(REG_UPDATE_RANGE, 0);
    usleep(10);
}

// Function to generate a random number
u32 generate_random() {
    Xil_Out32(REG_ENABLE, 1);
    usleep(1);
    u32 rnd = Xil_In32(REG_RANDOM_IN_RANGE);
    Xil_Out32(REG_ENABLE, 0);
    return rnd;
}

// Function to generate a raw random number
u32 generate_raw_random() {
    Xil_Out32(REG_ENABLE, 1);
    usleep(1);
    u32 raw = Xil_In32(REG_RANDOM_RAW);
    Xil_Out32(REG_ENABLE, 0);
    return raw;
}

int main()
{
    init_platform();
    
    print("Test AXI PRNG with Multiple Seeds and Ranges\n\r");
    
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
        change_seed(seeds[s]);
        
        for (int r = 0; r < num_ranges; r++) {
            xil_printf("--- Range [%u, %u] ---\n\r", ranges[r][0], ranges[r][1]);
            change_range(ranges[r][0], ranges[r][1]);
            
            for (int i = 0; i < NUM_RANDOM_VALUES; i++) {
                u32 rnd = generate_random();
                u32 raw = generate_raw_random();
                xil_printf("Random[%d] = %u (raw: 0x%08X)\n\r", i, rnd, raw);
            }
            xil_printf("\n\r");
        }
    }
    
    xil_printf("\n=== Simulating Dice Rolls (1-6) ===\n\r");
    change_seed(0x12345678);
    change_range(1, 7);  // [1, 7) = 1, 2, 3, 4, 5, 6
    
    for (int i = 0; i < 10; i++) {
        u32 dice_roll = generate_random();
        xil_printf("Dice roll %d: %u\n\r", i + 1, dice_roll);
    }
    
    cleanup_platform();
    return 0;
}