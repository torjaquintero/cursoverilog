`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Testbench para el ejercicio No. 1
// Inversor lógico
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Banco de pruebas para verificar el comportamiento del módulo 
// inversorLogico. Se alterna la señal de entrada y se monitorean 
// las salidas.
//
//================================================================

module tbinversorLogico();
    reg in;
    wire out;
    
    inversorLogico ic1(in, out);
    
    initial begin
        $monitor("Time = %t, in = %b, out = %b", $time, in, out);
        
        repeat(10) begin
            in = 0;
            #10;
            
            in = 1;
            #10;
        end
        
        $finish;
    end
    
endmodule

//================================================================
// Fin del testbench tbinversorLogico - Ejercicio 1
//================================================================
