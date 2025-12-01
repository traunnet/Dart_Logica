/*Dados tres datos enteros positivos, que representan las longitudes de los lados de un probable
triángulo, desarrolle un algoritmo que determine si los datos corresponden a un triángulo. En caso
de que sí correspondan, escriba si el triángulo es equilátero, isósceles o escaleno. Calcule además
su área. Considere que es triángulo si se cumple que la suma de los dos lados menores es mayor
que la del lado mayor. Tome en cuenta además que el área de un triángulo la calculamos como:
area = √S(S­A)(S­B)(S­C) donde S es la mitad de la suma de los lados A, B y C.
Recuerde:
Equilátero: todos los lados son iguales.
Isósceles: 2 lados iguales y 1 diferente.
Escaleno: Todos los lados diferentes. */

import 'dart:math';

void main() {
  // Ejemplo de entrada
  int a = 5;
  int b = 5;
  int c = 8;

  verificarTriangulo(a, b, c);
}

void verificarTriangulo(int a, int b, int c) {
  // Ordenamos los lados para identificar el mayor
  List<int> lados = [a, b, c]..sort();
  int menor1 = lados[0];
  int menor2 = lados[1];
  int mayor = lados[2];

  // Verificamos condición de existencia del triángulo
  if (menor1 + menor2 > mayor) {
    print("Sí es un triángulo");

    // Determinar tipo de triángulo
    if (a == b && b == c) {
      print("El triángulo es equilátero");
    } else if (a == b || b == c || a == c) {
      print("El triángulo es isósceles");
    } else {
      print("El triángulo es escaleno");
    }

    // Calcular área con fórmula de Herón
    double s = (a + b + c) / 2.0;
    double area = sqrt(s * (s - a) * (s - b) * (s - c));
    print("El área del triángulo es: ${area.toStringAsFixed(2)}");
  } else {
    print("Los datos NO corresponden a un triángulo");
  }
}
