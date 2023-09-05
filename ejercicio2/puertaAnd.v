`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 2
// La puerta lógica AND
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica AND
// 
//================================================================


module puertaAnd(
    input in1, in2,
    output outAnd
    );
    
    assign outAnd = in1 & in2;
endmodule
