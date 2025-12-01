 void main() {
  String nombre = "Juan";
  int horasNormales = 22;
  double pagoHora = 25000.00;
  int horasExtras = 6;
  int hijos = 2;

  double paroForzoso = 0.05;
  double habitacion = 0.02;
  double cajaAhorro = 0.07;

  double actAcademica = 35000.00;
  double primaHogar = 28000.00;
  double asignacionHijo = 57300.00;

  double sueldoBase = horasNormales * pagoHora;
  double pagoHoraExtra = pagoHora * 1.25;
  double pagoExtra = horasExtras * pagoHoraExtra;
  double sueldoBruto = sueldoBase + pagoExtra;
 double pagoporhijo = asignacionHijo * hijos;
  double deduccionParo = sueldoBase * paroForzoso;
  double deduccionHabitacion = sueldoBase * habitacion;
  double deduccionCaja = sueldoBase * cajaAhorro;
  double totalDeducciones = deduccionParo + deduccionHabitacion + deduccionCaja;

  double totalAsignaciones = actAcademica + primaHogar + (hijos * asignacionHijo);

  double sueldoNeto = sueldoBruto - totalDeducciones + totalAsignaciones;

  print("=== Resumen de Nómina ===");
  print("Trabajador: $nombre");
  print("Sueldo Base: $sueldoBase");
  print("Pago Extras: $pagoExtra");
  print("Sueldo Bruto: $sueldoBruto");
  print("Deducciones: $totalDeducciones");
  print("Asignaciones: $totalAsignaciones");
  print("Sueldo Neto: $sueldoNeto");
  print("pagototalporhijos: $pagoporhijo");
}



/*Se conoce de un trabajador su nombre, el número de horas normales trabajadas, el pago de una hora
normal y el número de horas extras trabajadas. Además, que, cada hora extra se paga 25% más del
valor de una hora normal. Si se deducen al trabajador sobre el sueldo base 5% del paro forzoso, 2%
de política habitacional y 7% para caja de ahorro. Si se le asignan 25000 Bolívares por actualización
académica, 17300 Bolívares por cada hijo y una prima por hogar de 18000 Bolívares. Calcule y
muestre las asignaciones, las deducciones y el sueldo neto del trabajador.*/


