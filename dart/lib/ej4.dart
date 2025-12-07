/*Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea saber cuánto
deberá pagar finalmente por su compra.*/
double producto1 = 2000.0;
double producto2 = 4000.0;
double producto3 = 2000.0;

double totalCompra = producto1 + producto2 + producto3;
double descuento = totalCompra * 0.15;
double totalPagar = totalCompra - descuento;

void main() {
  print("===============================");
  print("Total de la compra: $totalCompra");
  print("Descuento del 15%: $descuento");
  print("Total a pagar: $totalPagar");
  print("===============================");
}
