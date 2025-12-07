/*67. Una persona adquiere una deuda de Bs. 12775, la cual cancela mediante pagos de montos crecientes
de los cuales el primero es por Bs. 100 y además la diferencia de dos pagos consecutivos es Bs. 125.
Determinar el número de pagos que realiza la persona así como el monto del último pago. Muestre
en pantalla una tabla con el monto de cada pago y el monto pendiente por cancelar. Respuesta:
número pagos = 14, monto del último = 1725. */

void main() {

  double deudaInicial = 12775;
  double primerPago = 100;
  double diferencia = 125;

  double deudaRestante = deudaInicial;
  double pagoActual = primerPago;
  int numeroPago = 1;
  double sumaPagos = 0;

  print("=======================================");
  print("     TABLA DE PAGOS DE LA DEUDA");
  print("=======================================");
  print("Pago\tMonto\tDeuda restante");
  print("---------------------------------------");

  while (sumaPagos < deudaInicial) {
    // Si el pago excede la deuda, ajustarlo
    if (pagoActual > deudaRestante) {
      pagoActual = deudaRestante;
    }

    deudaRestante -= pagoActual;
    sumaPagos += pagoActual;

    // Imprimir fila
    print("$numeroPago\t$pagoActual\t$deudaRestante");

    // Preparar siguiente pago
    pagoActual += diferencia;
    numeroPago++;
  }

  int totalPagos = numeroPago - 1;
  double ultimoPago = sumaPagos == deudaInicial ? pagoActual - diferencia : 0;

  print("=======================================");
  print("Número total de pagos: $totalPagos");
  print("Monto del último pago: $ultimoPago");
  print("=======================================");
}
