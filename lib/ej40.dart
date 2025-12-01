/*Desarrolle un programa que calcule y muestre el monto que debe pagar un suscriptor por concepto
de consumo de luz eléctrica y servicio de aseo urbano. Dicho monto se calcula multiplicando la
diferencia de la lectura anterior y la lectura actual por el costo de cada Kilovatio hora, según la
siguiente escala:
0 - 100 2.622,00 Bs.
101 - 300 79,78 Bs. / Kwh
301 – 500 89,52 Bs. /Kwh
501 – en adelante 97,95 Bs. / Khw */

void main() {
  // Lecturas fijas (puedes cambiarlas)
  int lecturaAnterior = 120;
  int lecturaActual = 550;

  // Servicio de aseo urbano (fijo)
  double aseoUrbano = 15000.0;

  // Cálculo del consumo
  int consumo = lecturaActual - lecturaAnterior;
  double montoLuz = calcularMonto(consumo);
  double montoTotal = montoLuz + aseoUrbano;

  print("Consumo: $consumo Kwh");
  print("Monto por luz eléctrica: ${montoLuz.toStringAsFixed(2)} Bs.");
  print("Monto por aseo urbano: ${aseoUrbano.toStringAsFixed(2)} Bs.");
  print("Monto total a pagar: ${montoTotal.toStringAsFixed(2)} Bs.");
}

double calcularMonto(int consumo) {
  double monto = 0.0;

  if (consumo <= 100) {
    monto += consumo * 2622.00;
  } else {
    monto += 100 * 2622.00;
    if (consumo <= 300) {
      monto += (consumo - 100) * 79.78;
    } else {
      monto += 200 * 79.78;
      if (consumo <= 500) {
        monto += (consumo - 300) * 89.52;
      } else {
        monto += 200 * 89.52;
        monto += (consumo - 500) * 97.95;
      }
    }
  }

  return monto;
}
