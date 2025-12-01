/*15. Calcular y mostrar el monto total a pagar en un mes de luz eléctrica, teniendo como dato la lectura
anterior, la lectura actual y el costo por kilovatio.*/
void calcularCostoElectricidad(
  double lecturaAnterior,
  double lecturaActual,
  double costoPorKilovatio,
) {
  double consumo = lecturaActual - lecturaAnterior;
  double montoTotal = consumo * costoPorKilovatio;
  print("=== Resumen del Consumo Eléctrico ===");
  print("Lectura Anterior: ${lecturaAnterior.toStringAsFixed(2)}");
  print("Lectura Actual: ${lecturaActual.toStringAsFixed(2)}");
  print("Consumo: ${consumo.toStringAsFixed(2)}");
  print("Costo por Kilovatio: ${costoPorKilovatio.toStringAsFixed(2)}");
  print("Monto Total a Pagar: ${montoTotal.toStringAsFixed(2)} ");
}

void main() {
  double lecturaAnterior = 350.0; 
  double lecturaActual = 500.0;
  double costoPorKilovatio = 0.15; 

  calcularCostoElectricidad(lecturaAnterior, lecturaActual, costoPorKilovatio);
}
