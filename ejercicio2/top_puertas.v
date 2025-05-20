//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Autor: torjaquintero
//
// Ejercicio No. 2
// Módulo de puertas lógicas
// Tarjeta de desarrollo: Nexys A7
//
// Descripción:
// Módulo de nivel superior que instancia diferentes puertas lógicas: 
// inversor, AND, OR, NAND, NOR, XOR y XNOR. Utiliza dos entradas 
// (in_a, in_b) y genera una salida para cada tipo de puerta. 
// Este diseño introduce el concepto de jerarquía en Verilog mediante 
// la interconexión de múltiples submódulos.
//================================================================

module top_puertas (
    input wire in_a,         // Entrada lógica A
    input wire in_b,         // Entrada lógica B

    output wire out_inversor, // Salida de la puerta inversora (NOT)
    output wire out_and,      // Salida de la puerta AND
    output wire out_or,       // Salida de la puerta OR
    output wire out_nand,     // Salida de la puerta NAND
    output wire out_nor,      // Salida de la puerta NOR
    output wire out_xor,      // Salida de la puerta XOR
    output wire out_xnor      // Salida de la puerta XNOR
);

// Instancia del módulo inversor
// Solo usa la entrada A para generar la salida negada
inversor inv_inst(
    .in(in_a),              // Entrada conectada a in_a
    .out(out_inversor)      // Salida conectada a out_inversor
);

// Instancia del módulo AND
puertaAnd and_inst (
    .in_a(in_a),            // Entrada A
    .in_b(in_b),            // Entrada B
    .out(out_and)           // Salida del AND
);

// Instancia del módulo OR
puertaOr or_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_or)
);

// Instancia del módulo NAND
puertaNand nand_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nand)
);

// Instancia del módulo NOR
puertaNor nor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nor)
);

// Instancia del módulo XOR
puertaXor xor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xor)
);

// Instancia del módulo XNOR
puertaXnor xnor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xnor)
);

endmodule
