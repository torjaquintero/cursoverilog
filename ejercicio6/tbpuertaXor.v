`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
// 
// Created by: torjaquintero
// 
// Curso de programación en lenguaje Verilog
// Ejercicio No. 6-test bench
// La puerta lógica or exclusiva XOR
// Tarjeta de desarrollo: Nexys A7
// 
// Circuito de una puerta lógica XOR
// 
//================================================================

module tbpuertaXor();
    reg in1,in2;
    wire outXor;
    
    puertaXor ic1(in1, in2, outXor);
    
    initial begin
        $monitor("Time = %t, in = %b, out = %b", $time, in1, in2, outXor);
    
        repeat(10) begin
            in1=0;
            in2=0;
            #10;
        
            in1=1;
            in2=0;
            #10;
            
            in1=0;
            in2=1;
            #10;
            
            in1=1;
            in2=1;
            #10;
            
        end
        $finish;
    end
    
endmodule
