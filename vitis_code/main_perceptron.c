#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "axi_perceptron.h"

#define AXI_PERCEPTRON_BASEADDR XPAR_AXI_PERCEPTRON_0_BASEADDR

static void print_weights(const axi_perceptron_t* perceptron, const char* tag) {
    s8 w1, w2, b;
    char s1[12], s2[12], sb[12];
    Perceptron_ReadWeights(perceptron, &w1, &w2, &b);
    Perceptron_Q4_4ToString(w1, s1, sizeof s1);
    Perceptron_Q4_4ToString(w2, s2, sizeof s2);
    Perceptron_Q4_4ToString(b,  sb, sizeof sb);
    xil_printf("%sw1=%s, w2=%s, b=%s\r\n", tag, s1, s2, sb);
}

static void print_targets_name(u8 targets) {
    switch(targets) {
        case PERCEPTRON_TARGETS_AND:  xil_printf("AND"); break;
        case PERCEPTRON_TARGETS_OR:   xil_printf("OR"); break;
        case PERCEPTRON_TARGETS_NAND: xil_printf("NAND"); break;
        case PERCEPTRON_TARGETS_NOR:  xil_printf("NOR"); break;
        case PERCEPTRON_TARGETS_XOR:  xil_printf("XOR"); break;
        case PERCEPTRON_TARGETS_XNOR: xil_printf("XNOR"); break;
        default: xil_printf("CUSTOM(0x%01X)", targets & 0xF); break;
    }
}

static void print_eta(s8 eta_q4_4) {
    char eta_str[12];
    Perceptron_Q4_4ToString(eta_q4_4, eta_str, sizeof eta_str);
    xil_printf("%s\r\n", eta_str);
}

static void print_status(u32 status) {
    xil_printf("   Status: 0x%08x (conv=%u) \r\n",
               status,
               (status & PERCEPTRON_STATUS_CONV_MASK) ? 1u : 0u);
}

int main(void) {
    init_platform();
    xil_printf("\r\nTest AXI Perceptron\r\n");

    // Perceptron instance
    axi_perceptron_t perceptron;

    // Target logic function to train
    u8 targets = PERCEPTRON_TARGETS_AND;

    // Maximum number of training epochs
    u16 max_epochs = 64;
    // Learning rate in Q4.4 format
    s8 eta_q4_4 = (s8)8;

    // Initial weights and bias (all zeros to start)
    s8 w1_init = 0, w2_init = 0, b_init = 0;

    // Status register value 
    u32 status = 0;

    // Initialize and configure
    xil_printf("\r\nInitializing Perceptron...\r\n");
    Perceptron_Initialize(&perceptron, AXI_PERCEPTRON_BASEADDR);

    xil_printf("\r\nConfiguring training parameters...\r\n");
    xil_printf("   Max epochs: %u\r\n", max_epochs);
    xil_printf("   Learning rate (eta): ");
    print_eta(eta_q4_4);
    Perceptron_SetTrainingParams(&perceptron, max_epochs, eta_q4_4);
    
    xil_printf("\r\nLoading initial weights and bias...\r\n");
    print_status(Perceptron_ReadStatus(&perceptron));
    print_weights(&perceptron, "   ");
    Perceptron_LoadWeights(&perceptron, w1_init, w2_init, b_init);

    // Training start
    xil_printf("\r\nStarting training...\r\n");
    xil_printf("   Training: ");
    print_targets_name(targets);
    xil_printf(" function...\r\n");
    Perceptron_StartTraining(&perceptron, targets, &status);

    // Results
    xil_printf("\r\nTraining completed.\r\n");
    print_status(status);
    print_weights(&perceptron, "   ");

    xil_printf("\r\n--- Test completed ---\r\n");
    cleanup_platform();
    return 0;
}