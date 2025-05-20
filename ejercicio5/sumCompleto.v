//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 5 - Sumador de Propagación de Acarreo
// Módulo: sumCompleto
//
// Descripción:
// Implementación de un sumador completo (Full Adder) de 1 bit.
// Calcula la suma de dos bits y un acarreo de entrada (cin).
// Entrega una suma (sum) y un acarreo de salida (cout).
//
// Este módulo es utilizado como bloque básico en el sumador
// de propagación de acarreo de 4 bits del ejercicio 5.
//================================================================

`timescale 1ns / 1ps

module sumCompleto (
    input in_a,         // Bit de entrada A
    input in_b,         // Bit de entrada B
    input cin,          // Acarreo de entrada
    output sum,         // Resultado de la suma
    output cout         // Acarreo de salida
);

    // Operación XOR para obtener la suma
    assign sum = in_a ^ in_b ^ cin;

    // Lógica para calcular el acarreo de salida
    assign cout = (in_a & in_b) | (cin & (in_a ^ in_b));

endmodule
