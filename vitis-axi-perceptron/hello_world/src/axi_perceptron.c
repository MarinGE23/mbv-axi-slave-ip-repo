#include "axi_perceptron.h"
#include "xil_io.h"
#include "sleep.h"

/* ---------- Internal helpers ---------- */
static inline void write(const AxiPerceptron* d, u32 off, u32 val) {
    Xil_Out32(d->BaseAddress + off, val);
}
static inline u32 read(const AxiPerceptron* d, u32 off) {
    return Xil_In32(d->BaseAddress + off);
}

void AxiPerceptron_Init(AxiPerceptron* dev, u32 baseaddr) {
    dev->BaseAddress = baseaddr;
}

void AxiPerceptron_SetConfig(AxiPerceptron* dev, u16 max_epochs, s8 eta_q4_4) {
    write(dev, AXIPERC_REG_MAXEPOCHS, (u32)max_epochs);
    write(dev, AXIPERC_REG_ETA, (u32)(u8)eta_q4_4);
}

void AxiPerceptron_LoadInit(AxiPerceptron* dev, s8 w1, s8 w2, s8 b) {
    u32 reg = 0;
    reg |= ((u32)(u8)w1) << 8;
    reg |= ((u32)(u8)w2) << 16;
    reg |= ((u32)(u8)b)  << 24;
    reg |= 1u; /* LOAD_INIT = 1 */
    write(dev, AXIPERC_REG_INIT, reg);
    reg &= ~1u; /* de-assert LOAD_INIT */
    write(dev, AXIPERC_REG_INIT, reg);
}

void AxiPerceptron_Start(AxiPerceptron* dev, u8 targets) {
    u32 ctrl = ((u32)targets << AXIPERC_CTRL_TARGETS_SHIFT) | AXIPERC_CTRL_START_MASK;
    write(dev, AXIPERC_REG_CTRL, ctrl);
    /* short pulse on START */
    usleep(50);
    ctrl &= ~AXIPERC_CTRL_START_MASK;
    write(dev, AXIPERC_REG_CTRL, ctrl);
}

void AxiPerceptron_TrainBlocking(AxiPerceptron* dev, u8 targets,
                                u16* epochs_out, u32* status_out,
                                u32 poll_us, u32 max_wait_ms)
{
    const u32 max_iters = (max_wait_ms * 1000u) / (poll_us ? poll_us : 1u);

    /* Start */
    u32 status = read(dev, AXIPERC_REG_STATUS);
    u32 last_e = status & AXIPERC_STATUS_EPOCHS_MASK;
    AxiPerceptron_Start(dev, targets);

    /* Poll */
    int progressed = 0;
    int stable_cnt = 0;
    for (u32 i = 0; i < max_iters; ++i) {
        status = read(dev, AXIPERC_REG_STATUS);
        u32 busy   = (status & AXIPERC_STATUS_BUSY_MASK) ? 1u : 0u;
        u32 conv   = (status & AXIPERC_STATUS_CONV_MASK) ? 1u : 0u;
        u32 epochs =  status & AXIPERC_STATUS_EPOCHS_MASK;

        if (epochs != last_e) {
            progressed = 1;
            stable_cnt = 0;
            last_e     = epochs;
        } else {
            ++stable_cnt;
        }

        /* Exit when: not busy AND (progressed & stable long enough OR converged stable) */
        if (!busy && ((progressed && stable_cnt >= 5) || (conv && stable_cnt >= 3))) {
            break;
        }

        if (poll_us) usleep(poll_us);
    }

    if (status_out) *status_out = status;
    if (epochs_out) *epochs_out = (u16)(status & AXIPERC_STATUS_EPOCHS_MASK);
}

u32 AxiPerceptron_ReadStatus(const AxiPerceptron* dev) {
    return read(dev, AXIPERC_REG_STATUS);
}

void AxiPerceptron_ReadWeights(const AxiPerceptron* dev, s8* w1, s8* w2, s8* b) {
    u32 w12 = read(dev, AXIPERC_REG_W12);
    u32 br  = read(dev, AXIPERC_REG_BIAS);
    if (w1) *w1 = (s8)(w12 & 0xFF);
    if (w2) *w2 = (s8)((w12 >> 8) & 0xFF);
    if (b)  *b  = (s8)(br & 0xFF);
}

void AxiPerceptron_ReadResult(const AxiPerceptron* dev, s8* sum_q4_4, u8* y_bit) {
    /* With W=8, sum_dbg is 10-bit signed in [10:1]. Cast to s8 for convenience. */
    u32 rr = read(dev, AXIPERC_REG_RESULT);
    if (y_bit) *y_bit = (u8)(rr & 0x1);
    if (sum_q4_4) {
        const unsigned nbits = 8 + 2; /* W + 2 when W=8 */
        s32 raw = (s32)((rr >> 1) & ((1u << nbits) - 1));
        raw = AxiPerceptron_Sext(raw, nbits);
        *sum_q4_4 = (s8)raw;
    }
}

char* AxiPerceptron_Q4_4ToString(s8 q, char* out, size_t out_size) {
    /* Needs at least 10 bytes for "-15.9375\0" */
    if (!out || out_size < 10) return NULL;
    int neg = (q < 0);
    int a   = neg ? -q : q;
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
        out[n++] = '-';
        /* ip (0..15) */
        out[n++] = '0' + (char)(ip / 10);
        if (out[n-1] == '0') { n--; }               /* skip leading zero if <10 */
        out[n++] = '0' + (char)(ip % 10);
        out[n++] = '.';
        /* copy 4 digits */
        for (int i = 0; i < 4; ++i) out[n++] = fp_str[fp][i];
        out[n] = '\0';
    } else {
        int n = 0;
        if (ip >= 10) { out[n++] = '1'; out[n++] = (char)('0' + (ip - 10)); }
        else { out[n++] = (char)('0' + ip); }
        out[n++] = '.';
        for (int i = 0; i < 4; ++i) out[n++] = fp_str[fp][i];
        out[n] = '\0';
    }
    return out;
}
