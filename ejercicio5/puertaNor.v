`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 5
// La puerta lógica NOR
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica NOR
// 
//================================================================


module puertaNor(
    input in1, in2,
    output outNor
    );
    
    assign outNor = ~(in1 | in2);
endmodule
