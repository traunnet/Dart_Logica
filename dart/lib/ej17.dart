/*Dados como datos el precio final pagado por un producto y su precio de venta al público (PVP), se
requiere que calcule y muestre el porcentaje de descuento que le ha sido aplicado.*/

double pvp = 16000;
double precioFinal = 12000;

void main() {
  double descuento = pvp - precioFinal;
  double porcentajeDescuento = (descuento / pvp) * 100;

  print("================");
  print("El precio del producto es de: ${pvp.toStringAsFixed(0)}");
  print("El precio final del producto es de: ${precioFinal.toStringAsFixed(0)}");
  print("El descuento aplicado es de: ${porcentajeDescuento.toStringAsFixed(0)}%");
  print("================");
}
