//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 4 - Sumador Completo
// Testbench para el módulo sumTotal con salidas por puertas lógicas
// y salidas por descripción comportamental
//
// Descripción:
// Se prueban todas las combinaciones de entrada y se comparan
// las salidas sumPuertas / sumComp y coutPuertas / coutComp
//================================================================

`timescale 1ns / 1ps

module tbsumTotal;

    // Declaración de señales de entrada (reg) y salida (wire)
    reg in_a, in_b, cin;
    wire sumPuertas, coutPuertas;
    wire sumComp, coutComp;

    // Instanciación del módulo sumTotal (Unidad Bajo Prueba)
    sumTotal uut (
        .in_a(in_a),
        .in_b(in_b),
        .cin(cin),
        .sumPuertas(sumPuertas),
        .coutPuertas(coutPuertas),
        .sumComp(sumComp),
        .coutComp(coutComp)
    );

    // Secuencia de pruebas
    initial begin
        // Probar todas las combinaciones posibles de entradas
        in_a = 0; in_b = 0; cin = 0; #10;
        in_a = 0; in_b = 0; cin = 1; #10;
        in_a = 0; in_b = 1; cin = 0; #10;
        in_a = 0; in_b = 1; cin = 1; #10;
        in_a = 1; in_b = 0; cin = 0; #10;
        in_a = 1; in_b = 0; cin = 1; #10;
        in_a = 1; in_b = 1; cin = 0; #10;
        in_a = 1; in_b = 1; cin = 1; #10;

        // Fin de la simulación
        $finish;
    end

    // Mostrar resultados en consola
    initial begin
        $display("Tiempo | in_a in_b cin || sumPuertas coutPuertas || sumComp coutComp");
        $monitor("%4t    |   %b    %b   %b  ||     %b         %b     ||   %b      %b", 
                  $time, in_a, in_b, cin, sumPuertas, coutPuertas, sumComp, coutComp);
    end

endmodule
