//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta NAND
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo simple de puerta NAND. Toma dos entradas y produce 
// como salida el complemento lógico de la operación AND entre ellas. 
// Este módulo muestra cómo implementar una puerta NAND en Verilog.
//================================================================

`timescale 1ns / 1ps

module puertaNand(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida NAND (NOT AND) de in_a y in_b
);

    assign out = ~(in_a & in_b);  // Operación NAND lógica

endmodule
