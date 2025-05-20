//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 6 - Sumador de Acarreo Anticipado (CLA)
//
// Descripción:
// Este módulo implementa un sumador de acarreo anticipado (Carry 
// Lookahead Adder) de 4 bits. A diferencia del sumador con 
// propagación en cascada, el CLA calcula los acarreos de forma 
// anticipada para mejorar la velocidad del sistema.
//================================================================

module sumCla(
    input [3:0] A, B,   // Operandos de entrada
    input cin,          // Acarreo de entrada
    output [3:0] sum,   // Resultado de la suma
    output cout         // Acarreo de salida
);

    // Señales internas de generación (G), propagación (P) y acarreo (C)
    wire [3:0] G, P, C;

    // -------------------------------------------------------------
    // Cálculo de señales de generación y propagación de acarreo
    // -------------------------------------------------------------
    assign G = A & B;  // G[i] = 1 si el bit i genera un acarreo
    assign P = A ^ B;  // P[i] = 1 si el bit i puede propagar un acarreo

    // -------------------------------------------------------------
    // Cálculo del acarreo anticipado para cada bit
    // -------------------------------------------------------------
    assign C[0] = cin;                                  // Primer acarreo viene de la entrada
    assign C[1] = G[0] | (P[0] & C[0]);                  // Acarreo para el bit 1
    assign C[2] = G[1] | (P[1] & C[1]);                  // Acarreo para el bit 2
    assign C[3] = G[2] | (P[2] & C[2]);                  // Acarreo para el bit 3
    assign cout = G[3] | (P[3] & C[3]);                  // Acarreo final de salida

    // -------------------------------------------------------------
    // Cálculo del resultado de la suma usando P y C
    // -------------------------------------------------------------
    assign sum = P ^ C; // sum[i] = A[i] ⊕ B[i] ⊕ C[i]

endmodule
