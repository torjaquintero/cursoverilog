`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Curso de programación en lenguaje Verilog
// Ejercicio No. 1
// Inversor lógico
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo que implementa un inversor lógico, asignando la salida 
// como la negación del valor de entrada.
//
//================================================================

module inversorLogico(
    input in,
    output out
    );

    assign out = ~in;

endmodule

//================================================================
// Fin del módulo inversorLogico - Ejercicio 1
//================================================================
