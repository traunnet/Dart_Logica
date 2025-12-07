void main() {

  String v1_num = "AA101";

  String v1_p1_nombre = "Carlos Ruiz";
  String v1_p1_codigo = "CR12";
  String v1_p1_m1_cod = "M1";
  double v1_p1_m1_peso = 2.0;
  String v1_p1_m2_cod = "M2";
  double v1_p1_m2_peso = 4.5;

  String v1_p2_nombre = "Ana Torres";
  String v1_p2_codigo = "AT99";
  String v1_p2_m1_cod = "M3";
  double v1_p2_m1_peso = 8.0;
  String v1_p2_m2_cod = "M4";
  double v1_p2_m2_peso = 2.2;

  String v2_num = "BB202";
  String v2_p1_nombre = "Luis Pérez";
  String v2_p1_codigo = "LP11";
  String v2_p1_m1_cod = "X1";
  double v2_p1_m1_peso = 10.0;
  String v2_p1_m2_cod = "X2";
  double v2_p1_m2_peso = 7.0;

  // Pasajero 2 — Vuelo 2
  String v2_p2_nombre = "María León";
  String v2_p2_codigo = "ML44";
  String v2_p2_m1_cod = "X3";
  double v2_p2_m1_peso = 3.0;
  String v2_p2_m2_cod = "X4";
  double v2_p2_m2_peso = 14.0;

  int totalPasajeros = 4;
  int pasajerosSinPago = 0;
  double totalGeneral = 0;

  double tarifa(double peso) {
    if (peso > 15) return peso * 2500;
    if (peso > 12) return peso * 2000;
    if (peso > 9) return peso * 1500;
    if (peso > 6) return peso * 1200;
    if (peso > 3) return peso * 600;
    return 0;
  }

  print("\n======= VUELO $v1_num =======");

  double v1_p1_total = v1_p1_m1_peso + v1_p1_m2_peso;
  double v1_p1_monto = tarifa(v1_p1_total);

  print("\nPasajero: $v1_p1_nombre ($v1_p1_codigo)");
  print(
    "Maleta mayor peso: "
    "${v1_p1_m1_peso > v1_p1_m2_peso ? v1_p1_m1_cod : v1_p1_m2_cod}",
  );
  print("Peso total equipaje: $v1_p1_total");
  print("Monto a pagar: $v1_p1_monto");

  totalGeneral += v1_p1_monto;
  if (v1_p1_monto == 0) pasajerosSinPago++;

  // Pasajero 2 — Vuelo 1
  double v1_p2_total = v1_p2_m1_peso + v1_p2_m2_peso;
  double v1_p2_monto = tarifa(v1_p2_total);

  print("\nPasajero: $v1_p2_nombre ($v1_p2_codigo)");
  print(
    "Maleta mayor peso: "
    "${v1_p2_m1_peso > v1_p2_m2_peso ? v1_p2_m1_cod : v1_p2_m2_cod}",
  );
  print("Peso total equipaje: $v1_p2_total");
  print("Monto a pagar: $v1_p2_monto");

  totalGeneral += v1_p2_monto;
  if (v1_p2_monto == 0) pasajerosSinPago++;
  print("\n======= VUELO $v2_num =======");

  // Pasajero 1 — Vuelo 2
  double v2_p1_total = v2_p1_m1_peso + v2_p1_m2_peso;
  double v2_p1_monto = tarifa(v2_p1_total);

  print("\nPasajero: $v2_p1_nombre ($v2_p1_codigo)");
  print(
    "Maleta mayor peso: "
    "${v2_p1_m1_peso > v2_p1_m2_peso ? v2_p1_m1_cod : v2_p1_m2_cod}",
  );
  print("Peso total equipaje: $v2_p1_total");
  print("Monto a pagar: $v2_p1_monto");

  totalGeneral += v2_p1_monto;
  if (v2_p1_monto == 0) pasajerosSinPago++;

  // Pasajero 2 — Vuelo 2
  double v2_p2_total = v2_p2_m1_peso + v2_p2_m2_peso;
  double v2_p2_monto = tarifa(v2_p2_total);

  print("\nPasajero: $v2_p2_nombre ($v2_p2_codigo)");
  print(
    "Maleta mayor peso: "
    "${v2_p2_m1_peso > v2_p2_m2_peso ? v2_p2_m1_cod : v2_p2_m2_cod}",
  );
  print("Peso total equipaje: $v2_p2_total");
  print("Monto a pagar: $v2_p2_monto");

  totalGeneral += v2_p2_monto;
  if (v2_p2_monto == 0) pasajerosSinPago++;
  
  double porcentaje = pasajerosSinPago * 100 / totalPasajeros;

  print("\n======================================");
  print("Porcentaje de pasajeros sin pago: ${porcentaje.toStringAsFixed(2)}%");
  print("Monto total general: $totalGeneral");
  print("======================================");
}
