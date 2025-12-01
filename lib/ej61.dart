/*Diseñe un algoritmo o programa que permita calcular la multiplicación de dos números, utilizando el
método de la multiplicación Rusa, el cual consiste en multiplicar por dos el multiplicando y dividir
entre dos el multiplicador hasta que el multiplicador tome el valor 1. Durante este proceso, se deben
sumar todos los multiplicandos correspondientes a multiplicadores impares y este resultado es el de
la multiplicación. Ejemplo:
a. 25 x 7 = 175 (multiplicador = 25, multiplicando = 7)
b. 25 7
c. 12 14
d. 6 28 suma= 7 + 56 + 112 = 175
e. 3 56
f. 1 112*/

void main() {
  // Datos fijos
  int multiplicador = 25; // se divide entre 2
  int multiplicando = 7;  // se multiplica por 2

  int m1 = multiplicador;
  int m2 = multiplicando;

  int suma = 0;

  print("Multiplicación rusa de $multiplicador x $multiplicando\n");
  print("Mult.   Multipl.");

  while (m1 >= 1) {
    print("$m1       $m2");

    // Si el multiplicador (m1) es impar, se suma el multiplicando (m2)
    if (m1 % 2 != 0) {
      suma += m2;
    }

    // Se divide m1 y se multiplica m2
    m1 = m1 ~/ 2;
    m2 = m2 * 2;
  }

  print("\nResultado final: $suma");
}
