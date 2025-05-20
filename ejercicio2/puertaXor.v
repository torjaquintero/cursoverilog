//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta XOR
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo de puerta XOR (OR exclusivo). Produce una salida alta 
// únicamente cuando las entradas son diferentes.
//================================================================

`timescale 1ns / 1ps

module puertaXor(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida XOR (in_a ^ in_b)
);

    assign out = in_a ^ in_b;  // Operación lógica XOR

endmodule
