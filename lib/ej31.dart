/*Dados como datos los valores enteros P y Q, determine si los mismos satisfacen la siguiente
expresión: P3 + Q4 – 2*P2 > 680. En caso afirmativo debe mostrar los valores de P y Q, de lo contrario
muestre un mensaje alusivo al hecho.*/

import 'dart:math';

bool cumpleExpresion(int p, int q) {
  int valor = pow(p, 3).toInt() + pow(q, 4).toInt() - 2 * pow(p, 2).toInt();
  return valor > 680;
}

void main() {
  int p = 680;
  int q = 122;

  print("P = $p");
  print("Q = $q");

  if (cumpleExpresion(p, q)) {
    print("La expresión se cumple para P = $p y Q = $q.");
  } else {
    print("La expresión NO se cumple para los valores ingresados.");
  }
}
