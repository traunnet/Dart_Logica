/*Calcule el área de un triángulo en función de las longitudes de sus lados, utilizando la fórmula:
√p(p­a)(p­b)(p­c) donde p = (a+b+c) / 2*/

import 'dart:math';

int ladoA = 5;
int ladoB = 6;
int ladoC = 7;
double p = (ladoA + ladoB + ladoC) / 2;
double areaTriangulo = sqrt(p * (p - ladoA) * (p - ladoB) * (p - ladoC));
void main() {
  print("===============================");
  print("Área del triángulo: ${areaTriangulo.toStringAsFixed(2)}");
  print("===============================");
}
