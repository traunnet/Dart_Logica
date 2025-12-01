/*El dueño de una empresa desea planificar las decisiones financieras que tomará en el siguiente
año. La manera de planificarlas depende de lo siguiente: Si actualmente su capital se encuentra
con saldo negativo, pedirá un préstamo bancario para que su nuevo saldo sea de $10000. si su
capital tiene actualmente un saldo positivo pedirá un préstamo bancario para tener un nuevo saldo
de $20000, pero si su capital tiene actualmente un saldo superior a los $20000 no pedirá ningún
préstamo.
Posteriormente repartirá su presupuesto de la siguiente manera:
$5000 para equipo de cómputo
$2000 para mobiliario y del resto la mitad será para la compra de insumos y la otra para
otorgar incentivos al personal.
Desplegar qué cantidades se destinarán para la compra de insumos e incentivos al personal y, en caso
de que fuera necesario, a cuánto ascendería la cantidad que se pediría al banco.*/
void main() {
  // VALOR FIJO
  double capital = 14000;

  double prestamo = 0;
  double capitalFinal = 0;

  // --- Determinar si se necesita préstamo ---
  if (capital < 0) {
    prestamo = 10000 - capital;
    capitalFinal = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    capitalFinal = 20000;
  } else {
    prestamo = 0;
    capitalFinal = capital;
  }

  // --- Distribución del presupuesto ---
  double equipoComputo = 5000;
  double mobiliario = 2000;

  double resto = capitalFinal - equipoComputo - mobiliario;
  double insumos = resto / 2;
  double incentivos = resto / 2;

  // --- Resultados ---
  print("\n===== RESULTADOS (CAPITAL) =====");
  print("Capital actual: \$$capital");
  print("Capital final del año: \$${capitalFinal.toStringAsFixed(2)}");

  if (prestamo > 0) {
    print("Préstamo solicitado al banco: \$${prestamo.toStringAsFixed(2)}");
  } else {
    print("No se requiere préstamo.");
  }

  print("Monto para insumos: \$${insumos.toStringAsFixed(2)}");
  print(
    "Monto para incentivos al personal: \$${incentivos.toStringAsFixed(2)}",
  );
}
