//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 5 - Sumador de Propagación de Acarreo
// Testbench para el módulo sumproAcarreo
//
// Descripción:
// Este testbench simula el funcionamiento del sumador de 
// propagación de acarreo de 4 bits. Se prueban diferentes 
// combinaciones de entradas con y sin acarreo inicial.
//================================================================

`timescale 1ns / 1ps

module tbsumproAcarreo;

    // Declaración de señales
    reg [3:0] in_a, in_b;  // Entradas de 4 bits
    reg cin;               // Acarreo inicial
    wire [3:0] sum;        // Resultado de la suma
    wire cout;             // Acarreo final

    // Instanciación del módulo sumproAcarreo (Unidad Bajo Prueba)
    sumproAcarreo uut (
        .in_a(in_a),
        .in_b(in_b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Estímulos de prueba
    initial begin
        // Prueba 1: Suma sin acarreo inicial
        in_a = 4'b0000; in_b = 4'b0000; cin = 0; #10;
        in_a = 4'b0001; in_b = 4'b0001; cin = 0; #10;
        in_a = 4'b0010; in_b = 4'b0011; cin = 0; #10;
        in_a = 4'b0101; in_b = 4'b1010; cin = 0; #10;
        in_a = 4'b1111; in_b = 4'b0001; cin = 0; #10;

        // Prueba 2: Suma con acarreo inicial
        in_a = 4'b0000; in_b = 4'b0000; cin = 1; #10;
        in_a = 4'b0001; in_b = 4'b0001; cin = 1; #10;
        in_a = 4'b0010; in_b = 4'b0011; cin = 1; #10;
        in_a = 4'b0101; in_b = 4'b1010; cin = 1; #10;
        in_a = 4'b1111; in_b = 4'b0001; cin = 1; #10;

        // Prueba 3: Casos extremos
        in_a = 4'b1111; in_b = 4'b1111; cin = 0; #10;
        in_a = 4'b1111; in_b = 4'b1111; cin = 1; #10;

        // Finalizar la simulación
        $finish;
    end

    // Monitoreo de señales en la consola
    initial begin
        $display("Tiempo | in_a    in_b    cin || sum     cout");
        $monitor("%4t    | %b  %b    %b   || %b   %b",
                 $time, in_a, in_b, cin, sum, cout);
    end

endmodule
