//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 4 - Sumador Completo
// Módulo: puertaAnd
//
// Descripción:
// Este módulo implementa una compuerta AND básica que opera sobre 
// dos entradas binarias (in_a, in_b) y genera una salida que resulta 
// de la operación lógica AND.
//================================================================

`timescale 1ns / 1ps

module puertaAnd(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida AND (in_a & in_b)
);

    assign out = in_a & in_b;  // Operación lógica AND

endmodule
