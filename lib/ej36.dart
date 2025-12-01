/*37. Dados tres datos enteros positivos, que representan las longitudes de los lados de un probable
triángulo, desarrolle un algoritmo que determine si los datos corresponden a un triángulo. En caso
de que sí correspondan, escriba si el triángulo es equilátero, isósceles o escaleno. Calcule además
su área. Considere que es triángulo si se cumple que la suma de los dos lados menores es mayor
que la del lado mayor. Tome en cuenta además que el área de un triángulo la calculamos como:
area = √S(S­A)(S­B)(S­C) donde S es la mitad de la suma de los lados A, B y C.
Recuerde:
Equilátero: todos los lados son iguales.
Isósceles: 2 lados iguales y 1 diferente.
Escaleno: Todos los lados diferentes.*/
import 'dart:math';

void main() {
  double A = 5;
  double B = 5;
  double C = 5;

  List<double> lados = [A, B, C]..sort();
  double menor1 = lados[0];
  double menor2 = lados[1];
  double mayor = lados[2];

  print("Lados ingresados: A=$A, B=$B, C=$C");

  if (menor1 + menor2 <= mayor) {
    print("Los valores NO forman un triángulo.");
    return;
  }

  print("Los valores SÍ forman un triángulo.");

  String tipo;

  if (A == B && B == C) {
    tipo = "Equilátero";
  } else if (A == B || A == C || B == C) {
    tipo = "Isósceles";
  } else {
    tipo = "Escaleno";
  }

  print("Tipo de triángulo: $tipo");

  double S = (A + B + C) / 2;
  double area = sqrt(S * (S - A) * (S - B) * (S - C));

  print("Área del triángulo: ${area.toStringAsFixed(2)}");
}
