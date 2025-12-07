/*Un comerciante de computadores ofrece P precio por compra al contado ó 12 cuotas de T Bolívares
cada una. Desarrolle un programa para calcular y mostrar cuál es el porcentaje que se cobra por el
recargo en el pago del computador por cuotas.*/

  double precioContra = 1200000;
  double cuota = 120000;

  double totalCredito = 12 * cuota;
  double recargo = totalCredito - precioContra;
  double porcentaje = (recargo / precioContra) * 100;

void main() {

  print("=== RESULTADOS ===");
  print("Precio total a crédito: $totalCredito COP");
  print("Recargo total: $recargo COP");
  print("Porcentaje de recargo: ${porcentaje.toStringAsFixed(0)}%");
}
