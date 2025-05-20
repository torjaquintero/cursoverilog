//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 5 - Sumador de Propagación de Acarreo de 4 bits
//
// Descripción:
// Este módulo implementa un sumador de 4 bits utilizando propagación
// de acarreo mediante la interconexión de cuatro sumadores completos
// de 1 bit. La señal de acarreo de cada etapa se propaga a la siguiente.
//================================================================

`timescale 1ns / 1ps

module sumproAcarreo (
    input [3:0] in_a,     // Primer número de entrada de 4 bits
    input [3:0] in_b,     // Segundo número de entrada de 4 bits
    input cin,            // Acarreo de entrada
    output [3:0] sum,     // Resultado de la suma
    output cout           // Acarreo de salida (final)
);
    wire [2:0] carry;     // Acarreos intermedios entre los sumadores

    // Primer sumador completo (bit 0)
    sumCompleto sum_0 (
        .in_a(in_a[0]),
        .in_b(in_b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(carry[0])
    );

    // Segundo sumador completo (bit 1)
    sumCompleto sum_1 (
        .in_a(in_a[1]),
        .in_b(in_b[1]),
        .cin(carry[0]),
        .sum(sum[1]),
        .cout(carry[1])
    );

    // Tercer sumador completo (bit 2)
    sumCompleto sum_2 (
        .in_a(in_a[2]),
        .in_b(in_b[2]),
        .cin(carry[1]),
        .sum(sum[2]),
        .cout(carry[2])
    );

    // Cuarto sumador completo (bit 3)
    sumCompleto sum_3 (
        .in_a(in_a[3]),
        .in_b(in_b[3]),
        .cin(carry[2]),
        .sum(sum[3]),
        .cout(cout)
    );
endmodule
