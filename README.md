# cursoverilog
Repositorio con ejercicios en Verilog HDL para aprender diseño digital con FPGA. Cada carpeta incluye código fuente y testbench. La dificultad aumenta progresivamente. Ideal para estudiantes, autodidactas e ingenieros que usan Vivado y la placa Nexys A7.

## Ejercicio No. 0
Este ejercicio inicial consiste en un módulo Verilog sencillo que conecta directamente el estado de 16 interruptores a 16 LEDs en la tarjeta Nexys A7. Su objetivo es familiarizar al usuario con la sintaxis básica del lenguaje, la definición de puertos y la asignación directa de señales, sirviendo como punto de partida para entender el flujo de diseño digital.

## Ejercicio No. 1
Este primer ejercicio implementa un inversor lógico en Verilog. Usamos un interruptor (`sw[0]`) como entrada y mostramos la salida invertida en un LED (`led[0]`). Es un ejemplo básico para introducir el flujo de diseño digital en Vivado, incluyendo la descripción del módulo, simulación con testbench y la asignación de pines usando el archivo `.xdc` para la FPGA Nexys A7-100T.

## Ejercicio No. 2
En este ejercicio se desarrolla un módulo de nivel superior llamado top_puertas, que tiene como objetivo instanciar varios submódulos de puertas lógicas básicas: NOT, AND, OR, NAND, NOR, XOR y XNOR. El diseño utiliza dos entradas (in_a e in_b) y genera una salida correspondiente para cada tipo de puerta. Este ejercicio permite al estudiante comprender el concepto de jerarquía en Verilog, la reutilización de módulos y cómo conectar múltiples componentes lógicos en un solo sistema. Los resultados se visualizan en los LEDs de la tarjeta Nexys A7-100T, permitiendo una verificación física del comportamiento de cada puerta.

## Ejercicio No. 3
Este ejercicio presenta el diseño de un medio sumador, un circuito combinacional que permite sumar dos bits y generar una salida de suma y una de acarreo (carry). Se implementa en dos versiones: una estructural, mediante la instancia de módulos XOR y AND previamente diseñados, y otra conductual, utilizando operadores lógicos directamente en las asignaciones. Ambas versiones se validan mediante un testbench que compara sus salidas para todas las combinaciones posibles de entrada. Este ejercicio es clave para entender la diferencia entre diseño estructural y comportamental en Verilog, así como para avanzar hacia sumadores más complejos como el full adder.

## Ejercicio No. 4
En este ejercicio se implementa y verifica el funcionamiento de un sumador completo de un bit utilizando dos enfoques: una versión basada en la interconexión de puertas lógicas básicas (AND, OR, XOR), y otra mediante una descripción comportamental en Verilog. Ambos diseños se integran en un módulo superior llamado sumTotal, que permite comparar sus salidas en paralelo. El testbench asociado prueba todas las combinaciones posibles de entradas (in_a, in_b, cin) y muestra los resultados en consola, facilitando la validación funcional del diseño. Este ejercicio tiene como objetivo reforzar los conceptos fundamentales del diseño digital estructural y comportamental.

## Ejercicio No. 5
En este ejercicio se implementa un sumador de 4 bits utilizando una arquitectura tipo ripple carry, compuesta por cuatro sumadores completos conectados en cascada. El diseño permite sumar dos números de 4 bits, considerando un bit de acarreo de entrada (cin) y generando un bit de acarreo de salida (cout). Se desarrolla un módulo para el sumador completo de un bit (sumCompleto), otro módulo que integra los cuatro sumadores (sumproAcarreo) y un banco de pruebas (testbench) que verifica el funcionamiento correcto mediante múltiples combinaciones de entrada con y sin acarreo inicial. Este ejercicio refuerza los conceptos de diseño estructural en Verilog, uso de módulos jerárquicos y simulación con testbenches.

## Ejercicio No. 6
En este ejercicio implementamos un sumador de acarreo anticipado (Carry Lookahead Adder, CLA) de 4 bits. A diferencia del sumador por propagación de acarreo, el CLA mejora el rendimiento al calcular los bits de acarreo en paralelo mediante las señales de propagación y generación. Este enfoque reduce significativamente el tiempo de retardo, lo que lo convierte en una solución eficiente para operaciones aritméticas de alta velocidad en circuitos digitales. El módulo sumCla representa esta lógica, y su funcionalidad se verifica mediante un testbench que evalúa múltiples combinaciones de entrada, tanto con como sin acarreo inicial.
