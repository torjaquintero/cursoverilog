//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas - Inversor
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Este es un módulo simple de inversor (puerta NOT). Recibe una 
// única entrada y genera como salida su complemento lógico. 
// Este módulo sirve para mostrar cómo crear e instanciar funciones 
// lógicas básicas en Verilog.
//================================================================

`timescale 1ns / 1ps

module inversor(
    input wire in,       // Señal de entrada
    output wire out      // Señal de salida (entrada invertida)
);

    assign out = ~in;    // Inversión lógica (puerta NOT)

endmodule
