/*Dada una cantidad entera de Bolívares, desarrolle un algoritmo que permita desglosar dicha
cantidad en los billetes de curso legal en el País. Recuerde que estos son: 50000, 20000, 10000,
5000, 2000, 1000, 500, 100, 50, 20, 10.*/

void main() {
  int monto = 45000; // ← Puedes poner aquí el monto que quieras desglosar

  List<int> billetes = [
    50000,
    20000,
    10000,
    5000,
    2000,
    1000,
    500,
    100,
    50,
    20,
    10,
  ];

  print("Monto a desglosar: $monto Bs\n");

  for (int b in billetes) {
    int cantidad = monto ~/ b;
    monto = monto % b;

    print("Billetes de $b Bs: $cantidad");
  }
}
