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
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"

// Direcciones de los registros del TRNG (asumiendo base address 0x43C00000)
#define TRNG_BASE_ADDR XPAR_AXI_TRNG_0_BASEADDR

// Offset de los registros
#define CONTROL_REG_OFFSET      0x00  // slv_reg0
#define SAMPLE_DIV_OFFSET       0x04  // slv_reg1
#define RANGE_LOW_OFFSET        0x08  // slv_reg2
#define RANGE_HIGH_OFFSET       0x0C  // slv_reg3
#define RANDOM_RAW_OFFSET       0x10  // slv_reg4
#define RANDOM_IN_RANGE_OFFSET  0x14  // slv_reg5
#define STATUS_REG_OFFSET       0x18  // slv_reg6

// Bits del registro de control
#define ENABLE_BIT      0
#define CLR_ALARMS_BIT  1
#define VN_ENABLE_BIT   2

// Bits del registro de estado
#define HEALTH_OK_BIT   0
#define BUSY_BIT        1
#define RCT_FAIL_BIT    2
#define APT_FAIL_BIT    3

// Funciones de acceso a registros
void trng_write_reg(u32 offset, u32 data) {
    Xil_Out32(TRNG_BASE_ADDR + offset, data);
}

u32 trng_read_reg(u32 offset) {
    return Xil_In32(TRNG_BASE_ADDR + offset);
}

// Inicializar el TRNG
void trng_init() {
    print("Inicializando TRNG...\r\n");
    
    // 1. Limpiar alarmas
    trng_write_reg(CONTROL_REG_OFFSET, (1 << CLR_ALARMS_BIT));
    
    // 2. Configurar divisor de muestreo (valor ejemplo: 1000)
    trng_write_reg(SAMPLE_DIV_OFFSET, 1000);
    
    // 3. Configurar rango por defecto 0-100
    trng_write_reg(RANGE_LOW_OFFSET, 0);
    trng_write_reg(RANGE_HIGH_OFFSET, 100);
    
    // 4. Esperar un poco
    for(int i = 0; i < 1000; i++);
    
    // 5. Limpiar registro de control (quitar clear alarms)
    trng_write_reg(CONTROL_REG_OFFSET, 0);
    
    print("TRNG inicializado\r\n");
}

// Habilitar el TRNG
void trng_enable(int use_von_neumann) {
    u32 control_val = (1 << ENABLE_BIT);
    if (use_von_neumann) {
        control_val |= (1 << VN_ENABLE_BIT);
    }
    trng_write_reg(CONTROL_REG_OFFSET, control_val);
    print("TRNG habilitado\r\n");
}

// Deshabilitar el TRNG
void trng_disable() {
    trng_write_reg(CONTROL_REG_OFFSET, 0);
    print("TRNG deshabilitado\r\n");
}

// Leer y mostrar el estado del TRNG
void trng_print_status() {
    u32 status = trng_read_reg(STATUS_REG_OFFSET);
    
    xil_printf("Estado TRNG: 0x%08X\r\n", status);
    xil_printf("  Health OK: %d\r\n", (status >> HEALTH_OK_BIT) & 1);
    xil_printf("  Busy: %d\r\n", (status >> BUSY_BIT) & 1);
    xil_printf("  RCT Fail: %d\r\n", (status >> RCT_FAIL_BIT) & 1);
    xil_printf("  APT Fail: %d\r\n", (status >> APT_FAIL_BIT) & 1);
}

// Leer números aleatorios
void trng_read_random(int num_samples) {
    print("Leyendo numeros aleatorios...\r\n");
    
    for(int i = 0; i < num_samples; i++) {
        // Esperar a que haya datos válidos
        while(!(trng_read_reg(STATUS_REG_OFFSET) & (1 << BUSY_BIT))) {
            // Esperar activa
        }
        
        // Leer números aleatorios
        u32 raw_random = trng_read_reg(RANDOM_RAW_OFFSET);
        u32 ranged_random = trng_read_reg(RANDOM_IN_RANGE_OFFSET);
        
        xil_printf("Muestra %d:\r\n", i+1);
        xil_printf("  Raw: 0x%08X (%u)\r\n", raw_random, raw_random);
        xil_printf("  Rango [0,100]: %u\r\n", ranged_random);
        
        // Pequeña pausa entre muestras
        for(int j = 0; j < 100000; j++);
    }
}

// Probar diferentes rangos
void trng_test_ranges() {
    print("Probando diferentes rangos...\r\n");
    
    // Rango 1: 0-10
    trng_write_reg(RANGE_LOW_OFFSET, 0);
    trng_write_reg(RANGE_HIGH_OFFSET, 10);
    for(int i = 0; i < 100000; i++); // Esperar actualización
    
    u32 random1 = trng_read_reg(RANDOM_IN_RANGE_OFFSET);
    xil_printf("Rango [0,10]: %u\r\n", random1);
    
    // Rango 2: 50-150
    trng_write_reg(RANGE_LOW_OFFSET, 50);
    trng_write_reg(RANGE_HIGH_OFFSET, 150);
    for(int i = 0; i < 100000; i++); // Esperar actualización
    
    u32 random2 = trng_read_reg(RANDOM_IN_RANGE_OFFSET);
    xil_printf("Rango [50,150]: %u\r\n", random2);
    
    // Restaurar rango por defecto
    trng_write_reg(RANGE_LOW_OFFSET, 0);
    trng_write_reg(RANGE_HIGH_OFFSET, 100);
}

int main()
{
    init_platform();

    print("=== Test AXI TRNG ===\r\n\r\n");
    
    // 1. Inicialización
    trng_init();
    trng_print_status();
    
    // 2. Probar sin Von Neumann
    print("\r\n--- Test sin Von Neumann ---\r\n");
    trng_enable(0);
    for(int i = 0; i < 1000000; i++); // Esperar que genere datos
    trng_print_status();
    trng_read_random(5);
    
    // 3. Probar con Von Neumann
    print("\r\n--- Test con Von Neumann ---\r\n");
    trng_enable(1);
    for(int i = 0; i < 1000000; i++); // Esperar que genere datos
    trng_print_status();
    trng_read_random(5);
    
    // 4. Probar diferentes rangos
    print("\r\n--- Test de rangos ---\r\n");
    trng_test_ranges();
    
    // 5. Limpiar y deshabilitar
    print("\r\n--- Finalizando ---\r\n");
    trng_write_reg(CONTROL_REG_OFFSET, (1 << CLR_ALARMS_BIT)); // Limpiar alarmas
    trng_disable();
    trng_print_status();
    
    print("\r\nTest TRNG completado exitosamente!\r\n");
    
    cleanup_platform();
    return 0;
}