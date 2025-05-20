//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 6 - Sumador de Acarreo Anticipado (CLA)
// Testbench para el módulo sumCla
//
// Descripción:
// Este testbench simula el funcionamiento del sumador de acarreo 
// anticipado (Carry Lookahead Adder) de 4 bits. Se evalúan diferentes 
// combinaciones de entrada con y sin acarreo inicial para verificar 
// el comportamiento del módulo.
//================================================================

`timescale 1ns / 1ps

module testbench_sumCla;
    // Declaración de señales
    reg [3:0] A, B;     // Entradas de 4 bits
    reg cin;            // Acarreo de entrada
    wire [3:0] sum;     // Resultado de la suma
    wire cout;          // Acarreo de salida

    // Instanciación del módulo a probar
    sumCla uut (
        .A(A),
        .B(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Estímulos de prueba
    initial begin
        // Casos sin acarreo inicial
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        A = 4'b0001; B = 4'b0010; cin = 0; #10;
        A = 4'b0101; B = 4'b0101; cin = 0; #10;
        A = 4'b1111; B = 4'b0001; cin = 0; #10;

        // Casos con acarreo inicial
        A = 4'b0000; B = 4'b0000; cin = 1; #10;
        A = 4'b0011; B = 4'b0101; cin = 1; #10;
        A = 4'b1111; B = 4'b1111; cin = 1; #10;

        // Fin de la simulación
        $finish;
    end

    // Monitoreo de señales para observar la salida en consola
    initial begin
        $monitor("Time: %0t | A=%b, B=%b, cin=%b | sum=%b, cout=%b",
                 $time, A, B, cin, sum, cout);
    end
endmodule
