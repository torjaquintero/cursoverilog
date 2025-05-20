//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta AND
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo simple de puerta AND. Toma dos entradas y produce 
// como salida el resultado de la operación lógica AND entre ellas. 
// Este módulo ilustra cómo implementar puertas lógicas binarias en Verilog.
//================================================================

`timescale 1ns / 1ps

module puertaAnd(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida AND de in_a y in_b
);

    assign out = in_a & in_b;  // Operación AND lógica

endmodule
