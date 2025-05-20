//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 3 - Testbench
// Unidad bajo prueba: medioSum
//
// Descripción:
// Testbench para verificar el funcionamiento del módulo medioSum,
// el cual implementa un medio sumador en dos versiones: 
// estructural (con puertas XOR y AND) y conductual (con operadores).
// Se prueban las 4 combinaciones posibles de entrada.
//================================================================

`timescale 1ns / 1ps

module tbmedioSum;

    // Entradas
    reg in_a;
    reg in_b;

    // Salidas
    wire sumPuertas;
    wire carryPuertas;
    wire sumComp;
    wire carryComp;

    // Instancia del módulo a probar
    medioSum uut (
        .in_a(in_a),
        .in_b(in_b),
        .sumPuertas(sumPuertas),
        .carryPuertas(carryPuertas),
        .sumComp(sumComp),
        .carryComp(carryComp)
    );

    // Procedimiento de prueba
    initial begin
        $display("Tiempo | A B | SumP CarryP | SumC CarryC");
        $display("========================================");

        // Prueba de todas las combinaciones posibles
        in_a = 0; in_b = 0; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumPuertas, carryPuertas, sumComp, carryComp);

        in_a = 0; in_b = 1; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumPuertas, carryPuertas, sumComp, carryComp);

        in_a = 1; in_b = 0; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumPuertas, carryPuertas, sumComp, carryComp);

        in_a = 1; in_b = 1; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumPuertas, carryPuertas, sumComp, carryComp);

        $display("========================================");
        $finish;
    end

endmodule
