/*Un vendedor recibe un sueldo base, más un 10% extra por comisiones de sus ventas. El vendedor
desea saber cuánto dinero obtendrá por concepto de comisiones por las tres ventas que realizó en
el mes y el total que recibirá tomando en cuenta su sueldo base y sus comisiones.*/

void main() {
  double sueldoBase = 80000.0;
  double venta1 = 15000.0;
  double venta2 = 22000.0;
  double venta3 = 18000.0;

  double comision1 = venta1 * 0.10;
  double comision2 = venta2 * 0.10;
  double comision3 = venta3 * 0.10;

  double totalComisiones = comision1 + comision2 + comision3;
  double totalSueldo = sueldoBase + totalComisiones;

  print("===============================");
  print("Sueldo base: $sueldoBase");
  print("Comisión por venta 1: $comision1");
  print("Comisión por venta 2: $comision2");
  print("Comisión por venta 3: $comision3");
  print("Total comisiones: $totalComisiones");
  print("Total sueldo con comisiones: $totalSueldo");
  print("===============================");
}
