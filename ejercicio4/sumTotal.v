//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 4 - Sumador Completo
//
// Descripción:
// En este ejercicio se implementa un sumador completo utilizando 
// dos enfoques: uno estructural basado en puertas lógicas y 
// otro comportamental utilizando expresiones booleanas.
//================================================================

module sumTotalpuertas(input in_a, input in_b, input cin, output sumPuertas, output coutPuertas);
    wire xor1_out, xor2_out, and1_out, and2_out, or_out;

    // Primer XOR: A ^ B
    puertaXor xor1(.in_a(in_a), .in_b(in_b), .out(xor1_out));
    
    // Segundo XOR: (A ^ B) ^ Cin
    puertaXor xor2(.in_a(xor1_out), .in_b(cin), .out(sumPuertas));

    // Primer AND: A & B
    puertaAnd and1(.in_a(in_a), .in_b(in_b), .out(and1_out));

    // Segundo AND: (A ^ B) & Cin
    puertaAnd and2(.in_a(xor1_out), .in_b(cin), .out(and2_out));

    // OR final: Carry = (A & B) | ((A ^ B) & Cin)
    puertaOr or1(.in_a(and1_out), .in_b(and2_out), .out(coutPuertas));
endmodule


module sumTotalcomp(input in_a, input in_b, input cin, output sumComp, output coutComp);
    // Implementación comportamental del sumador completo
    assign sumComp = in_a ^ in_b ^ cin;
    assign coutComp = (in_a & in_b) | ((in_a ^ in_b) & cin);
endmodule


module sumTotal(input in_a, input in_b, input cin, output sumPuertas, output coutPuertas, output sumComp, output coutComp);
    // Instancias de los dos diseños del sumador completo
    sumTotalpuertas sumadorPuertas (.in_a(in_a), .in_b(in_b), .cin(cin), .sumPuertas(sumPuertas), .coutPuertas(coutPuertas));
    sumTotalcomp sumadorComp (.in_a(in_a), .in_b(in_b), .cin(cin), .sumComp(sumComp), .coutComp(coutComp));
endmodule
