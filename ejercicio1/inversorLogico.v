`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 1
// El inversor lógico
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de un inversor lógico básico
// 
//================================================================


module inversor(
    input in,
    output out,
    );
    
    assign out = ~in;
endmodule
