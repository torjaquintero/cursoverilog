`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Curso de programación en lenguaje Verilog
// Ejercicio No. 0
// Estado de interruptores y leds
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Circuito que asigna el estado de los interruptores a los leds
//
//================================================================

module estadoled(
    input [15:0] SW,
    output [15:0] LED
    );

    assign LED = SW; // Cada LED refleja el estado de su interruptor

endmodule

//================================================================
// Fin del módulo estadoled - Ejercicio 0
//================================================================
