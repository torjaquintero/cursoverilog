//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2 - Testbench
// Módulo bajo prueba: top_puertas
//
// Descripción:
// Testbench que verifica el correcto funcionamiento del módulo 
// top_puertas, el cual integra todas las puertas lógicas básicas: 
// NOT, AND, OR, NAND, NOR, XOR y XNOR. 
// Se prueban las 4 combinaciones posibles de entrada.
//================================================================

`timescale 1ns / 1ps

module tbPuertas;

// Declaración de señales de entrada
reg in_a_tb;
reg in_b_tb;

// Declaración de señales de salida
wire out_inversor_tb;
wire out_and_tb;
wire out_or_tb;
wire out_nand_tb;
wire out_nor_tb;
wire out_xor_tb;
wire out_xnor_tb;

// Instancia del módulo bajo prueba
topPuertas uut (
    .in_a(in_a_tb),
    .in_b(in_b_tb),
    .out_inversor(out_inversor_tb),
    .out_and(out_and_tb),
    .out_or(out_or_tb),
    .out_nand(out_nand_tb),
    .out_nor(out_nor_tb),
    .out_xor(out_xor_tb),
    .out_xnor(out_xnor_tb)
);

initial begin
    $display("Prueba del módulo top_puertas");
    $display("A B | INV AND OR NAND NOR XOR XNOR");

    // Prueba 1: A = 0, B = 0
    in_a_tb = 0; in_b_tb = 0;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Prueba 2: A = 0, B = 1
    in_a_tb = 0; in_b_tb = 1;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Prueba 3: A = 1, B = 0
    in_a_tb = 1; in_b_tb = 0;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Prueba 4: A = 1, B = 1
    in_a_tb = 1; in_b_tb = 1;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    $finish;
end

endmodule
