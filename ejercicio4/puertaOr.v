//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 4 - Sumador Completo
// Módulo: puertaOr
//
// Descripción:
// Este módulo implementa una compuerta OR básica que opera sobre 
// dos entradas binarias (in_a, in_b) y genera una salida que resulta 
// de la operación lógica OR.
//================================================================

`timescale 1ns / 1ps

module puertaOr(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida OR (in_a | in_b)
);

    assign out = in_a | in_b;  // Operación lógica OR

endmodule
