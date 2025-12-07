void main() {

  int M = 452;   // kg de harina
  int N = 197;   // litros de aceite
  double b1 = 132;   // precio bulto harina (24 kg)
  double b2 = 180;   // precio caja aceite (15 L)
  double b3 = 7.5;   // precio retail kg harina
  double b4 = 14.5;  // precio retail litro aceite

  // --- Harina ---
  int bultosHarina = M ~/ 24;           
  int harinaSuelta = M % 24;          

  double ingresoHarina = bultosHarina * b1 + harinaSuelta * b3;

  // --- Aceite ---
  int cajasAceite = N ~/ 15; //división entera
  int aceiteSuelto = N % 15; // residuo

  double ingresoAceite = cajasAceite * b2 + aceiteSuelto * b4; 

  // Total
  double ingresoTotal = ingresoHarina + ingresoAceite;

  print("Ingreso por harina: $ingresoHarina");
  print("Ingreso por aceite: $ingresoAceite");
  print("Ingreso total: $ingresoTotal");
}
