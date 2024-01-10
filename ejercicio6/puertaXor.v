`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 6
// Puerta or exclusiva XOR
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de un inversor lógico básico
// 
//================================================================


module puertaXor(
    input in1, in2,
    output out,
    );
    
    assign out = in1 ^ in2;
endmodule
