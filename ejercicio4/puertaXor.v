//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 4 - Sumador Completo
// Módulo: puertaXor
//
// Descripción:
// Este módulo implementa una compuerta XOR que opera sobre dos
// entradas binarias (in_a, in_b) y genera una salida que resulta 
// de la operación lógica XOR.
//================================================================

`timescale 1ns / 1ps

module puertaXor(
    input wire in_a,       // Entrada A
    input wire in_b,       // Entrada B
    output wire out        // Salida XOR (in_a ^ in_b)
);

    assign out = in_a ^ in_b;  // Operación lógica XOR

endmodule
