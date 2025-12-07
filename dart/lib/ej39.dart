/*Una persona se encuentra en la disyuntiva de comprar un automóvil o un terreno, los cuales
cuestan exactamente la misma cantidad de dinero. Sabe que mientras el automóvil se devalúa,
con el terreno sucede lo contrario. Esta persona comprará el automóvil si al cabo de tres años la
devaluación de éste no es mayor que la mitad del incremento del valor del terreno. Ayúdele a esta
persona a determinar si debe o no comprar el automóvil.*/
void main() {
  // Valor inicial (mismo para ambos)
  double valorInicial = 100000.0;

  // Supuestos: porcentajes de cambio en 3 años
  double devaluacionAuto = 0.30;
  double incrementoTerreno = 0.50;

  // Cálculos
  double valorAuto = valorInicial * (1 - devaluacionAuto);
  double valorTerreno = valorInicial * (1 + incrementoTerreno);

  double perdidaAuto = valorInicial - valorAuto;
  double gananciaTerreno = valorTerreno - valorInicial;

  // Condición de compra
  if (perdidaAuto <= (gananciaTerreno / 2)) {
    print("Debe comprar el automóvil.");
  } else {
    print("No debe comprar el automóvil. Es mejor el terreno.");
  }

  // Mostrar detalles
  print(
    "Valor del automóvil después de 3 años: \$${valorAuto.toStringAsFixed(2)}",
  );
  print(
    "Valor del terreno después de 3 años: \$${valorTerreno.toStringAsFixed(2)}",
  );
  print("Pérdida del auto: \$${perdidaAuto.toStringAsFixed(2)}");
  print("Ganancia del terreno: \$${gananciaTerreno.toStringAsFixed(2)}");
}
