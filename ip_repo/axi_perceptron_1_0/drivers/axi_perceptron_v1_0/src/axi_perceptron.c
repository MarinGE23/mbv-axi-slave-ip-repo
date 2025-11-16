/**
 * @file axi_perceptron.c
 * @brief Implementation of AXI Perceptron driver functions
 */

#include "axi_perceptron.h"
#include "xil_io.h"
#include "sleep.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI Perceptron driver instance
 *
 * @param  InstancePtr is a pointer to the axi_perceptron_t instance
 * @param  BaseAddress is the base address of the device
 */
void Perceptron_Initialize(axi_perceptron_t* InstancePtr, u32 BaseAddress) {
    /* Verify arguments */
    Xil_AssertVoid(InstancePtr != NULL);
    
    /* Setup the instance */
    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    /* Set default params */
    Perceptron_SetTrainingParams(InstancePtr, DEFAULT_MAX_EPOCHS, DEFAULT_ETA_Q4_4);
}

void Perceptron_StartTraining(axi_perceptron_t* InstancePtr, u8 Targets, u32* StatusOut) {
    u32 ctrl = ((u32)Targets << PERCEPTRON_CTRL_TARGETS_SHIFT) | PERCEPTRON_CTRL_START_MASK;
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_CONTROL, ctrl);
    ctrl &= ~PERCEPTRON_CTRL_START_MASK;
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_CONTROL, ctrl);
    
    u32 status;
    const u32 max_iters = (MAX_WAIT_MS * 1000u) / (POLL_US ? POLL_US : 1u);
    for (u32 i = 0; i < max_iters; ++i) {
        status = AXI_PERCEPTRON_READ_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_STATUS);
        u32 conv = (status & PERCEPTRON_STATUS_CONV_MASK) ? 1u : 0u;

        if (conv) {
            break;
        } 

        if (POLL_US) usleep(POLL_US);
    }

    if (StatusOut) *StatusOut = status;
}

void Perceptron_SetTrainingParams(axi_perceptron_t* InstancePtr, u16 MaxEpochs, s8 LearningRate) {
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_MAXEPOCHS, (u32)MaxEpochs);
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_ETA, (u32)(u8)LearningRate);
}

void Perceptron_LoadWeights(axi_perceptron_t* InstancePtr, s8 Weight1, s8 Weight2, s8 Bias) {
    u32 reg = 0;
    reg |= ((u32)(u8)Weight1) << 8;
    reg |= ((u32)(u8)Weight2) << 16;
    reg |= ((u32)(u8)Bias)  << 24;
    reg |= 1u; /* LOAD_INIT = 1 */
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_INIT, reg);
    reg &= ~1u; /* de-assert LOAD_INIT */
    AXI_PERCEPTRON_WRITE_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_INIT, reg);
}

u32 Perceptron_ReadStatus(const axi_perceptron_t* InstancePtr) {
    return AXI_PERCEPTRON_READ_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_STATUS);
}

void Perceptron_ReadWeights(const axi_perceptron_t* InstancePtr, s8* W1, s8* W2, s8* B) {
    u32 w12 = AXI_PERCEPTRON_READ_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_W12);
    u32 br  = AXI_PERCEPTRON_READ_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_BIAS);
    if (W1) *W1 = (s8)(w12 & 0xFF);
    if (W2) *W2 = (s8)((w12 >> 8) & 0xFF);
    if (B)  *B  = (s8)(br & 0xFF);
}

void Perceptron_ReadResult(const axi_perceptron_t* InstancePtr, s8* SumQ4_4, u8* Ybit) {
    /* With W=8, sum_dbg is 10-bit signed in [10:1]. Cast to s8 for convenience. */
    u32 rr = AXI_PERCEPTRON_READ_REG(InstancePtr->BaseAddress, PERCEPTRON_REG_RESULT);
    if (Ybit) *Ybit = (u8)(rr & 0x1);
    if (SumQ4_4) {
        const unsigned nbits = 8 + 2; /* W + 2 when W=8 */
        s32 raw = (s32)((rr >> 1) & ((1u << nbits) - 1));
        *SumQ4_4 = (s8)raw;
    }
}

/* Util function */
char* Perceptron_Q4_4ToString(s8 Q, char* Out, size_t OutSize) {
    /* Needs at least 10 bytes for "-15.9375\0" */
    if (!Out || OutSize < 10) return NULL;
    int neg = (Q < 0);
    int a   = neg ? -Q : Q;
    int ip  = a >> 4;
    int fp  = a & 0xF;
    static const char* fp_str[16] = {
        "0000","0625","1250","1875","2500","3125","3750","4375",
        "5000","5625","6250","6875","7500","8125","8750","9375"
    };
    /* snprintf is not always available/linked in BSP; build manually. */
    char sign = neg ? '-' : '\0';
    if (sign) {
        /* format: -<ip>.<frac> */
        int n = 0;
        Out[n++] = '-';
        /* ip (0..15) */
        Out[n++] = '0' + (char)(ip / 10);
        if (Out[n-1] == '0') { n--; }               /* skip leading zero if <10 */
        Out[n++] = '0' + (char)(ip % 10);
        Out[n++] = '.';
        /* copy 4 digits */
        for (int i = 0; i < 4; ++i) Out[n++] = fp_str[fp][i];
        Out[n] = '\0';
    } else {
        int n = 0;
        if (ip >= 10) { Out[n++] = '1'; Out[n++] = (char)('0' + (ip - 10)); }
        else { Out[n++] = (char)('0' + ip); }
        Out[n++] = '.';
        for (int i = 0; i < 4; ++i) Out[n++] = fp_str[fp][i];
        Out[n] = '\0';
    }
    return Out;
}