#ifndef AXI_PERCEPTRON_H
#define AXI_PERCEPTRON_H

/**
 * @file    axi_perceptron.h
 * @brief   Lightweight driver for the AXI Perceptron IP (AXI4-Lite).
 *
 * The IP exposes the following registers at AXI base address (offsets in bytes):
 *   0x00 (R/W) CTRL:
 *        bit[0]   START (write 1 then clear to 0)
 *        bit[7:4] TARGETS = {t11,t10,t01,t00} mapped to bits {7,6,5,4}
 *   0x04 (R/W) MAX_EPOCHS (u16)
 *   0x08 (R/W) ETA (s8, Q4.4)
 *   0x0C (R/W) INIT:
 *        bit[0]   LOAD_INIT (strobe 1 -> 0)
 *        [15:8]   W1_INIT (s8, Q4.4)
 *        [23:16]  W2_INIT (s8, Q4.4)
 *        [31:24]  B_INIT  (s8, Q4.4)
 *   0x10 (R)   STATUS:
 *        bit[18]  BUSY
 *        bit[17]  DONE (may be a short pulse)
 *        bit[16]  CONVERGED
 *        [15:0]   EPOCH_COUNT
 *   0x14 (R)   W12: W1 in [7:0], W2 in [15:8] (both s8, Q4.4)
 *   0x18 (R)   BIAS: B in [7:0] (s8, Q4.4)
 *   0x1C (R)   RESULT:
 *        bit[0]   y (0/1)
 *        [10:1]   sum_dbg (signed, Q4.4 with width W+2 when W=8 -> 10 bits)
 *
 * Timing note: DONE/BUSY may be very short pulses when training converges quickly.
 * This driver’s blocking train function detects progress via EPOCH_COUNT and
 * “stability” after BUSY de-asserts, making it robust against short pulses.
 */

#include <stddef.h>
#include "xil_types.h"

#ifdef __cplusplus
extern "C" {
#endif

/* ---------- Public types ---------- */

typedef struct {
    u32 BaseAddress;
} AxiPerceptron;

/* ---------- Register map (offsets) ---------- */
enum {
    AXIPERC_REG_CTRL      = 0x00u,
    AXIPERC_REG_MAXEPOCHS = 0x04u,
    AXIPERC_REG_ETA       = 0x08u,
    AXIPERC_REG_INIT      = 0x0Cu,
    AXIPERC_REG_STATUS    = 0x10u,
    AXIPERC_REG_W12       = 0x14u,
    AXIPERC_REG_BIAS      = 0x18u,
    AXIPERC_REG_RESULT    = 0x1Cu
};

/* ---------- Bit fields ---------- */
#define AXIPERC_CTRL_START_MASK      (0x1u)
#define AXIPERC_CTRL_TARGETS_SHIFT   (4u)

#define AXIPERC_STATUS_BUSY_MASK     (1u << 18)
#define AXIPERC_STATUS_DONE_MASK     (1u << 17)
#define AXIPERC_STATUS_CONV_MASK     (1u << 16)
#define AXIPERC_STATUS_EPOCHS_MASK   (0x0000FFFFu)

/* ---------- Targets helpers (truth tables for x1,x2 in {11,10,01,00}) ---------- */
#define AXIPERC_TARGETS_AND   (0x8u)  /* 1000b */
#define AXIPERC_TARGETS_OR    (0xEu)  /* 1110b */
#define AXIPERC_TARGETS_NAND  (0x7u)  /* 0111b */
#define AXIPERC_TARGETS_NOR   (0x1u)  /* 0001b */
#define AXIPERC_TARGETS_XOR   (0x6u)  /* 0110b */
#define AXIPERC_TARGETS_XNOR  (0x9u)  /* 1001b */

/* ---------- API ---------- */

/**
 * @brief  Initialize a driver instance with the AXI base address.
 * @param  dev       Pointer to an AxiPerceptron instance.
 * @param  baseaddr  AXI base address (e.g., XPAR_AXI_PERCEPTRON_0_BASEADDR).
 */
void AxiPerceptron_Init(AxiPerceptron* dev, u32 baseaddr);

/**
 * @brief  Configure training parameters.
 * @param  dev          Driver instance.
 * @param  max_epochs   Maximum number of epochs (u16).
 * @param  eta_q4_4     Learning rate in signed Q4.4 (s8).
 */
void AxiPerceptron_SetConfig(AxiPerceptron* dev, u16 max_epochs, s8 eta_q4_4);

/**
 * @brief  Load initial weights/bias (Q4.4, s8) and strobe LOAD_INIT.
 * @param  dev  Driver instance.
 * @param  w1   Initial W1 (Q4.4).
 * @param  w2   Initial W2 (Q4.4).
 * @param  b    Initial Bias (Q4.4).
 */
void AxiPerceptron_LoadInit(AxiPerceptron* dev, s8 w1, s8 w2, s8 b);

/**
 * @brief  Start a training sequence by writing TARGETS and pulsing START.
 *         (Non-blocking; use ReadStatus() / TrainBlocking() to monitor.)
 * @param  dev      Driver instance.
 * @param  targets  4-bit truth table packed as {t11,t10,t01,t00} in bits [3:0].
 */
void AxiPerceptron_Start(AxiPerceptron* dev, u8 targets);

/**
 * @brief  Blocking training helper with robust completion detection.
 * @param  dev         Driver instance.
 * @param  targets     Truth table (see helpers above).
 * @param  epochs_out  If non-NULL, returns final epoch count.
 * @param  status_out  If non-NULL, returns final STATUS register.
 * @param  poll_us     Poll period in microseconds (e.g., 100).
 * @param  max_wait_ms Maximum wait time in milliseconds (safety timeout).
 * @return 1 on observed progress/completion; 0 if no progress was ever observed.
 */
void AxiPerceptron_TrainBlocking(AxiPerceptron* dev, u8 targets,
                                u16* epochs_out, u32* status_out,
                                u32 poll_us, u32 max_wait_ms);

/**
 * @brief  Read STATUS.
 * @return Raw STATUS register.
 */
u32 AxiPerceptron_ReadStatus(const AxiPerceptron* dev);

/**
 * @brief  Read current weights and bias (Q4.4, s8).
 */
void AxiPerceptron_ReadWeights(const AxiPerceptron* dev, s8* w1, s8* w2, s8* b);

/**
 * @brief  Read current prediction output and debug sum (Q4.4 signed).
 * @param  sum_q4_4  If non-NULL, receives signed Q4.4 sum (width W+2; cast to s8 when W=8).
 * @param  y_bit     If non-NULL, receives y (0/1).
 */
void AxiPerceptron_ReadResult(const AxiPerceptron* dev, s8* sum_q4_4, u8* y_bit);

/**
 * @brief  Convert a signed Q4.4 value to a fixed-string like "-1.0625".
 * @param  q         Signed Q4.4 value.
 * @param  out       Output buffer (min 10 bytes recommended).
 * @param  out_size  Buffer size.
 * @return Pointer to @p out for convenience; NULL if @p out is too small.
 */
char* AxiPerceptron_Q4_4ToString(s8 q, char* out, size_t out_size);

/* ---------- Small utilities ---------- */

/** Sign-extend @p v that has @p nbits significant bits (nbits ∈ [1..31]). */
static inline s32 AxiPerceptron_Sext(s32 v, unsigned nbits) {
    s32 m = 1 << (nbits - 1);
    return (v ^ m) - m;
}

#ifdef __cplusplus
}
#endif

#endif /* AXI_PERCEPTRON_H */
