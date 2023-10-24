`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 1-test bench
// El inversor lógico
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica inversora NOT
// 
//================================================================

module tbinversor();
    reg in1,in2;
    wire outNot;
    
    inversor ic1(in, out);
    
    initial begin
      $monitor("Time = %t, in = %b, out = %b", $time, in, out);
    
        repeat(10) begin
            in=0;
            #10;
        
            in=1;
            #10;            
        end
        $finish;
    end
    
endmodule
