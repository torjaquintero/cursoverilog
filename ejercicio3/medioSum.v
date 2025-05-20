//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 3 - Medio Sumador
// Unidad bajo prueba: medioSum
//
// Descripción:
// Implementación de un medio sumador que recibe dos bits (in_a, in_b)
// y genera dos salidas: suma y acarreo. Se implementan dos versiones:
// una estructural mediante instanciación de puertas lógicas (XOR y AND),
// y otra por descripción conductual. Este módulo permite comparar ambos
// enfoques de diseño digital.
//================================================================

`timescale 1ns / 1ps

// Módulo XOR
module puertaXor(
    input in_a, in_b,
    output out
    );
    
    assign out = in_a ^ in_b;
endmodule

// Módulo AND
module puertaAnd(
    input in_a, in_b,
    output out
    );
    
    assign out = in_a & in_b;
endmodule

// Módulo medioSum (Medio Sumador)
module medioSum (
    input in_a,
    input in_b,
    output sumPuertas,     // Suma por puertas lógicas
    output carryPuertas,   // Acarreo por puertas lógicas
    output sumComp,        // Suma por descripción conductual
    output carryComp       // Acarreo por descripción conductual
);
    // Señales internas
    wire xor_out;
    wire and_out;

    // Implementación estructural
    puertaXor xor_inst (
        .in_a(in_a),
        .in_b(in_b),
        .out(xor_out)
    );

    puertaAnd and_inst (
        .in_a(in_a),
        .in_b(in_b),
        .out(and_out)
    );

    // Asignaciones estructurales
    assign sumPuertas = xor_out;
    assign carryPuertas = and_out;

    // Implementación conductual
    assign sumComp = in_a ^ in_b;
    assign carryComp = in_a & in_b;
endmodule
