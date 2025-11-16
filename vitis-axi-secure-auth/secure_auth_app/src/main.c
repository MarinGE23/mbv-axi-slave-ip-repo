/******************************************************************************
 * Secure Password Authentication System
 * Uses: AXI TRNG for salt generation, SHA-256 for password hashing,
 *       AXI 7-Segment display for status visualization
 * 
 * Author: Emanuel Marín
 * Date: November 2025
 *****************************************************************************/

#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "sleep.h"

// Include custom IP Core drivers
#include "axi_7seg.h"
#include "axi_trng.h"

/************************** Base Addresses ***********************************/
#define AXI_7SEG_BASEADDR   XPAR_AXI_7SEG_0_BASEADDR
#define AXI_TRNG_BASEADDR   XPAR_AXI_TRNG_0_BASEADDR

/************************** Constants ****************************************/
#define PASSWORD_MAX_LENGTH 32
#define SHA256_BLOCK_SIZE   64
#define SHA256_HASH_SIZE    32
#define SALT_SIZE           16

// Display codes
#define DISP_INIT           1111    // Initial setup mode
#define DISP_WAITING        2222    // Waiting for password input
#define DISP_AUTHENTICATED  8888    // Successfully authenticated
#define DISP_DENIED         0000    // Access denied
#define DISP_ERROR          9999    // Error state

/************************** SHA-256 Implementation ***************************/

// SHA-256 constants (first 32 bits of fractional parts of cube roots of first 64 primes)
static const u32 K[64] = {
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

typedef struct {
    u8 data[64];
    u32 datalen;
    u64 bitlen;
    u32 state[8];
} SHA256_CTX;

#define ROTRIGHT(a,b) (((a) >> (b)) | ((a) << (32-(b))))
#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

void sha256_transform(SHA256_CTX *ctx, const u8 data[])
{
    u32 a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];

    for (i = 0, j = 0; i < 16; ++i, j += 4)
        m[i] = (data[j] << 24) | (data[j + 1] << 16) | (data[j + 2] << 8) | (data[j + 3]);
    for ( ; i < 64; ++i)
        m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];

    a = ctx->state[0];
    b = ctx->state[1];
    c = ctx->state[2];
    d = ctx->state[3];
    e = ctx->state[4];
    f = ctx->state[5];
    g = ctx->state[6];
    h = ctx->state[7];

    for (i = 0; i < 64; ++i) {
        t1 = h + EP1(e) + CH(e,f,g) + K[i] + m[i];
        t2 = EP0(a) + MAJ(a,b,c);
        h = g;
        g = f;
        f = e;
        e = d + t1;
        d = c;
        c = b;
        b = a;
        a = t1 + t2;
    }

    ctx->state[0] += a;
    ctx->state[1] += b;
    ctx->state[2] += c;
    ctx->state[3] += d;
    ctx->state[4] += e;
    ctx->state[5] += f;
    ctx->state[6] += g;
    ctx->state[7] += h;
}

void sha256_init(SHA256_CTX *ctx)
{
    ctx->datalen = 0;
    ctx->bitlen = 0;
    ctx->state[0] = 0x6a09e667;
    ctx->state[1] = 0xbb67ae85;
    ctx->state[2] = 0x3c6ef372;
    ctx->state[3] = 0xa54ff53a;
    ctx->state[4] = 0x510e527f;
    ctx->state[5] = 0x9b05688c;
    ctx->state[6] = 0x1f83d9ab;
    ctx->state[7] = 0x5be0cd19;
}

void sha256_update(SHA256_CTX *ctx, const u8 data[], u32 len)
{
    u32 i;

    for (i = 0; i < len; ++i) {
        ctx->data[ctx->datalen] = data[i];
        ctx->datalen++;
        if (ctx->datalen == 64) {
            sha256_transform(ctx, ctx->data);
            ctx->bitlen += 512;
            ctx->datalen = 0;
        }
    }
}

void sha256_final(SHA256_CTX *ctx, u8 hash[])
{
    u32 i;

    i = ctx->datalen;

    // Pad whatever data is left in the buffer.
    if (ctx->datalen < 56) {
        ctx->data[i++] = 0x80;
        while (i < 56)
            ctx->data[i++] = 0x00;
    }
    else {
        ctx->data[i++] = 0x80;
        while (i < 64)
            ctx->data[i++] = 0x00;
        sha256_transform(ctx, ctx->data);
        memset(ctx->data, 0, 56);
    }

    // Append to the padding the total message's length in bits and transform.
    ctx->bitlen += ctx->datalen * 8;
    ctx->data[63] = ctx->bitlen;
    ctx->data[62] = ctx->bitlen >> 8;
    ctx->data[61] = ctx->bitlen >> 16;
    ctx->data[60] = ctx->bitlen >> 24;
    ctx->data[59] = ctx->bitlen >> 32;
    ctx->data[58] = ctx->bitlen >> 40;
    ctx->data[57] = ctx->bitlen >> 48;
    ctx->data[56] = ctx->bitlen >> 56;
    sha256_transform(ctx, ctx->data);

    // Since this implementation uses little endian byte ordering and SHA uses big endian,
    // reverse all the bytes when copying the final state to the output hash.
    for (i = 0; i < 4; ++i) {
        hash[i]      = (ctx->state[0] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 4]  = (ctx->state[1] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 8]  = (ctx->state[2] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 12] = (ctx->state[3] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 16] = (ctx->state[4] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 20] = (ctx->state[5] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 24] = (ctx->state[6] >> (24 - i * 8)) & 0x000000ff;
        hash[i + 28] = (ctx->state[7] >> (24 - i * 8)) & 0x000000ff;
    }
}

/************************** Password Authentication **************************/

typedef struct {
    u8 password_hash[SHA256_HASH_SIZE];
    u8 salt[SALT_SIZE];
    u8 is_configured;
} PasswordStore;

// Global password storage (in real application, this would be in non-volatile memory)
static PasswordStore g_password_store = {0};

/**
 * Generate a random salt using TRNG
 */
void generate_salt(axi_trng_t *trng, u8 *salt, u32 length)
{
    for (u32 i = 0; i < length; i += 4) {
        u32 random = Trng_RawRandom(trng);
        salt[i]     = (random >> 24) & 0xFF;
        if (i + 1 < length) salt[i + 1] = (random >> 16) & 0xFF;
        if (i + 2 < length) salt[i + 2] = (random >> 8) & 0xFF;
        if (i + 3 < length) salt[i + 3] = random & 0xFF;
    }
}

/**
 * Hash password with salt using SHA-256
 */
void hash_password_with_salt(const char *password, const u8 *salt, u32 salt_len, u8 *hash_output)
{
    SHA256_CTX ctx;
    sha256_init(&ctx);
    
    // Hash: SHA256(password || salt)
    sha256_update(&ctx, (const u8*)password, strlen(password));
    sha256_update(&ctx, salt, salt_len);
    
    sha256_final(&ctx, hash_output);
}

/**
 * Store password securely (first time setup)
 */
void store_password(axi_trng_t *trng, const char *password)
{
    xil_printf("\r\n[SECURITY] Generating random salt...\r\n");
    generate_salt(trng, g_password_store.salt, SALT_SIZE);
    
    xil_printf("[SECURITY] Hashing password with SHA-256...\r\n");
    hash_password_with_salt(password, g_password_store.salt, SALT_SIZE, 
                           g_password_store.password_hash);
    
    g_password_store.is_configured = 1;
    
    xil_printf("[SECURITY] Password stored securely!\r\n");
    xil_printf("[DEBUG] Salt (hex): ");
    for (int i = 0; i < SALT_SIZE; i++) {
        xil_printf("%02X", g_password_store.salt[i]);
    }
    xil_printf("\r\n[DEBUG] Hash (hex): ");
    for (int i = 0; i < SHA256_HASH_SIZE; i++) {
        xil_printf("%02X", g_password_store.password_hash[i]);
    }
    xil_printf("\r\n");
}

/**
 * Verify password against stored hash
 */
int verify_password(const char *password)
{
    u8 computed_hash[SHA256_HASH_SIZE];
    
    xil_printf("\r\n[SECURITY] Computing password hash...\r\n");
    hash_password_with_salt(password, g_password_store.salt, SALT_SIZE, computed_hash);
    
    xil_printf("[DEBUG] Computed hash: ");
    for (int i = 0; i < SHA256_HASH_SIZE; i++) {
        xil_printf("%02X", computed_hash[i]);
    }
    xil_printf("\r\n");
    
    // Constant-time comparison to prevent timing attacks
    u8 result = 0;
    for (int i = 0; i < SHA256_HASH_SIZE; i++) {
        result |= (computed_hash[i] ^ g_password_store.password_hash[i]);
    }
    
    return (result == 0);
}

/**
 * Read password from UART (simple implementation)
 */
void read_password(char *buffer, u32 max_length)
{
    char c;
    u32 index = 0;
    
    xil_printf("Enter password: ");
    
    while (index < max_length - 1) {
        c = inbyte();  // Read one character from UART
        
        if (c == '\r' || c == '\n') {  // Enter key
            break;
        } else if (c == 127 || c == 8) {  // Backspace
            if (index > 0) {
                index--;
                xil_printf("\b \b");  // Erase character on screen
            }
        } else if (c >= 32 && c <= 126) {  // Printable characters
            buffer[index++] = c;
        }
    }
    
    buffer[index] = '\0';
    xil_printf("\r\n");
}

/**
 * Display user profile (simulated)
 */
void display_user_profile(axi_7seg_t *seg7)
{
    xil_printf("\r\n");
    xil_printf("========================================\r\n");
    xil_printf("       SECURE USER PROFILE ACCESS       \r\n");
    xil_printf("========================================\r\n");
    xil_printf("User: admin\r\n");
    xil_printf("Access Level: Administrator\r\n");
    xil_printf("Security Level: HIGH\r\n");
    xil_printf("========================================\r\n");
    xil_printf("\r\n");
    
    // Animate the display
    Seg7_SetNumber(seg7, DISP_AUTHENTICATED);
    usleep(500000);
}

/**
 * Main authentication system
 */
int main()
{
    init_platform();
    
    char password[PASSWORD_MAX_LENGTH];
    int auth_attempts = 0;
    const int MAX_ATTEMPTS = 3;
    
    // Initialize hardware components
    axi_7seg_t seg7;
    axi_trng_t trng;
    
    Seg7_Initialize(&seg7, AXI_7SEG_BASEADDR);
    Trng_Initialize(&trng, AXI_TRNG_BASEADDR);
    
    // Configure and enable TRNG
    Trng_SetRange(&trng, 0, 0xFFFFFFFF);  // Full range for salt generation
    Trng_SetSampleDivider(&trng, 100);    // Faster sampling
    Trng_Enable(&trng);
    
    // Wait for TRNG to stabilize
    usleep(10000);
    
    // Check TRNG health
    if (!Trng_IsHealthy(&trng)) {
        xil_printf("\r\n[ERROR] TRNG health check failed!\r\n");
        Seg7_SetNumber(&seg7, DISP_ERROR);
        cleanup_platform();
        return -1;
    }
    
    // Display startup banner
    Seg7_SetNumber(&seg7, DISP_INIT);
    xil_printf("\r\n");
    xil_printf("========================================\r\n");
    xil_printf("  SECURE PASSWORD AUTHENTICATION SYSTEM \r\n");
    xil_printf("========================================\r\n");
    xil_printf("  Hardware Security Features:          \r\n");
    xil_printf("  - True Random Number Generator (TRNG)\r\n");
    xil_printf("  - SHA-256 Password Hashing            \r\n");
    xil_printf("  - Salt-based Protection               \r\n");
    xil_printf("========================================\r\n");
    xil_printf("\r\n");
    
    usleep(2000000);  // 2 seconds
    
    // Check if password is already configured
    if (!g_password_store.is_configured) {
        xil_printf("\r\n[SETUP] No password configured. Initial setup required.\r\n");
        xil_printf("[SETUP] Please create a secure password.\r\n");
        xil_printf("[INFO] Password requirements:\r\n");
        xil_printf("  - Maximum length: %d characters\r\n", PASSWORD_MAX_LENGTH);
        xil_printf("  - Will be hashed using SHA-256\r\n");
        xil_printf("  - Random salt will be generated using TRNG\r\n\r\n");
        
        read_password(password, PASSWORD_MAX_LENGTH);
        
        if (strlen(password) == 0) {
            xil_printf("[ERROR] Password cannot be empty!\r\n");
            Seg7_SetNumber(&seg7, DISP_ERROR);
            cleanup_platform();
            return -1;
        }
        
        store_password(&trng, password);
        
        xil_printf("\r\n[SUCCESS] Password configured successfully!\r\n");
        xil_printf("[INFO] You can now use this password to authenticate.\r\n");
        usleep(2000000);
    }
    
    // Authentication loop
    while (auth_attempts < MAX_ATTEMPTS) {
        Seg7_SetNumber(&seg7, DISP_WAITING);
        
        xil_printf("\r\n========================================\r\n");
        xil_printf("            AUTHENTICATION              \r\n");
        xil_printf("========================================\r\n");
        xil_printf("Attempt %d of %d\r\n", auth_attempts + 1, MAX_ATTEMPTS);
        
        read_password(password, PASSWORD_MAX_LENGTH);
        
        // Add small delay to prevent brute force
        usleep(500000);
        
        if (verify_password(password)) {
            // Authentication successful
            xil_printf("\r\n[SUCCESS] Authentication successful!\r\n");
            xil_printf("[ACCESS] Welcome back, user!\r\n");
            
            Seg7_SetNumber(&seg7, DISP_AUTHENTICATED);
            usleep(1000000);
            
            // Display user profile
            display_user_profile(&seg7);
            
            xil_printf("\r\n[SESSION] Session active. Press any key to logout...\r\n");
            inbyte();
            
            xil_printf("[SECURITY] Logging out...\r\n");
            Seg7_SetNumber(&seg7, DISP_WAITING);
            usleep(1000000);
            
            break;
            
        } else {
            // Authentication failed
            auth_attempts++;
            xil_printf("\r\n[DENIED] Authentication failed!\r\n");
            xil_printf("[SECURITY] Invalid password.\r\n");
            
            Seg7_SetNumber(&seg7, DISP_DENIED);
            usleep(2000000);
            
            if (auth_attempts >= MAX_ATTEMPTS) {
                xil_printf("\r\n[SECURITY] Maximum authentication attempts exceeded!\r\n");
                xil_printf("[SECURITY] System locked. Please reset the device.\r\n");
                
                // Flash error code on display
                for (int i = 0; i < 5; i++) {
                    Seg7_SetNumber(&seg7, DISP_ERROR);
                    usleep(300000);
                    Seg7_ClearDisplay(&seg7);
                    usleep(300000);
                }
                Seg7_SetNumber(&seg7, DISP_ERROR);
            }
        }
    }
    
    // Cleanup
    Trng_Disable(&trng);
    Seg7_ClearDisplay(&seg7);
    
    xil_printf("\r\n========================================\r\n");
    xil_printf("         SYSTEM SHUTDOWN                \r\n");
    xil_printf("========================================\r\n");
    xil_printf("[INFO] Thank you for using the secure authentication system.\r\n");
    
    cleanup_platform();
    return 0;
}