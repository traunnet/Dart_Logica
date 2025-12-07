/*Muchos bancos y cajas de ahorro calculan los intereses de las cantidades depositadas por los clientes
diariamente con base en las siguientes premisas: un capital de $1000, con una tasa de interés del
6%, renta un interés en un día de 0.06 multiplicado por 1000 y dividido por 365. Esta operación
producirá $0.16 de interés y el capital acumulado será 1000,16. El interés para el segundo día se
calculará multiplicando 0.06 por 1000 y dividiendo el resultado por 365. Diseñar un programa que
reciba tres entradas: el capital a depositar, la tasa de interés y la duración del depósito en semanas
y calcule el capital total acumulado al final del período de tiempo especificado.*/

void main() {
  double capital = 1000;      // Capital inicial
  double tasa = 0.06;         // Tasa de interés (6% = 0.06)
  int semanas = 4;            // Duración del depósito en semanas

  int dias = semanas * 7;

  double capitalActual = capital;

  for (int d = 1; d <= dias; d++) {
    double interesDiario = (capitalActual * tasa) / 365;
    capitalActual += interesDiario;
  }

  print("Capital inicial: \$${capital.toStringAsFixed(2)}");
  print("Tasa de interés: ${(tasa * 100).toStringAsFixed(2)}%");
  print("Tiempo: $semanas semanas ($dias días)");
  print("Capital acumulado final: \$${capitalActual.toStringAsFixed(2)}");
}
