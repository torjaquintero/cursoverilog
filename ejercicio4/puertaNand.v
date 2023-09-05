`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 4
// La puerta lógica NAND
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica NAND
// 
//================================================================


module puertaNand(
    input in1, in2,
    output outNand
    );
    
    assign outNand = ~(in1 & in2);
endmodule
