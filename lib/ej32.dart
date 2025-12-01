/*en una tienda efectúan un descuento a los clientes dependiendo del monto de la compra. El
descuento se efectúa con base en el siguiente criterio:
a. Si el monto es inferior a $500, no hay descuento.
b. Si está comprendido entre $500 y $1000 inclusive, se hace un descuento del 5%
c. Si está comprendido entre $1000 y $7000 inclusive, se hace un descuento del 11%
d. Si está comprendido entre $7000 y $15000 inclusive, el descuento es del18%
e. Si el monto es mayor a $15000, hay un 25% de descuento.
Calcule y muestre el nombre del cliente, el monto de la compra, monto a pagar y descuento recibido. */

double calcularMontoAPagar(double montoCompra) {
  double descuento = 0.0;

  if (montoCompra < 500) {
    descuento = 0.0;
  } else if (montoCompra >= 500 && montoCompra <= 1000) {
    descuento = 0.05 * montoCompra;
  } else if (montoCompra > 1000 && montoCompra <= 7000) {
    descuento = 0.11 * montoCompra;
  } else if (montoCompra > 7000 && montoCompra <= 15000) {
    descuento = 0.18 * montoCompra;
  } else if (montoCompra > 15000) {
    descuento = 0.25 * montoCompra;
  }

  return montoCompra - descuento;
}

void main() {
  String nombreCliente = "Juan Pérez";
  double montoCompra = 12000.0;

  double montoAPagar = calcularMontoAPagar(montoCompra);
  double descuentoRecibido = montoCompra - montoAPagar;

  print("Nombre del cliente: $nombreCliente");
  print("Monto de la compra: \$${montoCompra.toStringAsFixed(2)}");
  print("Descuento recibido: \$${descuentoRecibido.toStringAsFixed(2)}");
  print("Monto a pagar: \$${montoAPagar.toStringAsFixed(2)}");
}
