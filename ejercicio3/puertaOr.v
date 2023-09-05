`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 3
// La puerta lógica OR
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica OR
// 
//================================================================


module puertaOr(
    input in1, in2,
    output outOr
    );
    
    assign outOr = in1 | in2;
endmodule
