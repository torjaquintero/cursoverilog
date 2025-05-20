//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta NOR
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo simple de puerta NOR. Toma dos entradas y produce 
// como salida el complemento lógico de la operación OR entre ellas. 
// Este módulo ilustra cómo implementar una puerta NOR en Verilog.
//================================================================

`timescale 1ns / 1ps

module puertaNor(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida NOR (NOT OR) de in_a y in_b
);

    assign out = ~(in_a | in_b);  // Operación NOR lógica

endmodule
