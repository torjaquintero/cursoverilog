//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Puerta XNOR
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo de puerta XNOR. Produce una salida alta únicamente cuando 
// las entradas son iguales.
//================================================================

`timescale 1ns / 1ps

module puertaXnor(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida XNOR (in_a ~^ in_b)
);

    assign out = ~(in_a ^ in_b);  // Operación lógica XNOR

endmodule
