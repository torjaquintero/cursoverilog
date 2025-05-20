//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta OR
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo simple de puerta OR. Toma dos entradas y produce 
// como salida el resultado de la operación lógica OR entre ellas. 
// Este módulo ilustra cómo implementar puertas lógicas binarias en Verilog.
//================================================================

`timescale 1ns / 1ps

module puertaOr(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida OR de in_a y in_b
);

    assign out = in_a | in_b;  // Operación OR lógica

endmodule
