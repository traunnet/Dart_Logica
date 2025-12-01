/*Un banco está interesado en diseñar un software que le permita calcular y generar ciertos listados
sobre las deudas de sus clientes a créditos. El algoritmo debe procesar para cada estado y sus
agencias los clientes con pagarés pendientes a una fecha (dd/mm/aaaa) dad y generar los recibos
correspondientes para ser enviados a los clientes. Cada estado, agencia y cliente es identificado por
un código. Los pagarés tienen una fecha de vencimiento (dd/mm/aaaa), un monto a pagar y un
número que lo identifica; un cliente debe tener más que un pagaré.
Se quiere un algoritmo o programa que permita:
• Imprimir un recibo para cada cliente cuyo encabezado es su código, nombre, dirección,
código de estado y código de agencia. El detalle del recibo contendrá un número del pagaré,
la fecha de vencimiento y el monto del pagaré. Al final del recibo debe colocar la cantidad
de pagares pendientes y el monto total pendiente.
• Imprimir por agencia su código, estado, la cantidad de clientes con pagares pendientes,
monto total adeudado y el código de cliente con mayor deuda.
• Imprimir por estado su código, el monto total adeudado en el estado y el código de agencia
con menor y mayor monto adeudado.
• Calcular e imprimir el monto promedio adeudado en razón de los montos máximos
adeudados por las agencias a nivel nacional.
NOTA: Los cálculos se deben realizar en función de una fecha dada. No se podrán utilizar vectores
ni matrices.*/

void main() {
  int diaCorte = 15, mesCorte = 3, anoCorte = 2025;

  double totalNacionalAgencias = 0;
  int conteoAgencias = 0;

  String codEstado1 = "E01";

  double montoTotalEstado1 = 0;
  double minAgenciaEstado1 = 999999999;
  double maxAgenciaEstado1 = -1;
  String codAgMin1 = "", codAgMax1 = "";

  String codAgencia11 = "A11";
  double totalAg11 = 0;
  int clientesPend11 = 0;

  // CLIENTE 1 — datos fijos:
  String codCli111 = "C111", nom111 = "Juan López", dir111 = "Av. 1";
  int contPag111 = 0;
  double deuda111 = 0;

  // Pagaré 1
  int numP1 = 1, dV1 = 10, mV1 = 2, aV1 = 2025;
  double montoP1 = 1500;

  if (fechaMenor(dV1, mV1, aV1, diaCorte, mesCorte, anoCorte)) {
    contPag111++;
    deuda111 += montoP1;
  }

  // Pagaré 2
  int numP2 = 2, dV2 = 20, mV2 = 4, aV2 = 2025;
  double montoP2 = 1000;

  if (fechaMenor(dV2, mV2, aV2, diaCorte, mesCorte, anoCorte)) {
    contPag111++;
    deuda111 += montoP2;
  }

  // Mostrar recibo
  print("=== RECIBO CLIENTE ===");
  print("Cliente: $codCli111  Nombre: $nom111  Dir: $dir111");
  print("Estado: $codEstado1   Agencia: $codAgencia11");
  print("Pagarés pendientes: $contPag111  Total: $deuda111\n");

  if (contPag111 > 0) {
    clientesPend11++;
    totalAg11 += deuda111;
  }

  // CLIENTE 2 — datos fijos:
  String codCli112 = "C112", nom112 = "Ana Ruiz", dir112 = "Calle 5";
  int contPag112 = 0;
  double deuda112 = 0;

  // Pagaré único cliente 2
  int numP3 = 1, dV3 = 1, mV3 = 3, aV3 = 2025;
  double montoP3 = 900;

  if (fechaMenor(dV3, mV3, aV3, diaCorte, mesCorte, anoCorte)) {
    contPag112++;
    deuda112 += montoP3;
  }

  print("=== RECIBO CLIENTE ===");
  print("Cliente: $codCli112  Nombre: $nom112  Dir: $dir112");
  print("Estado: $codEstado1   Agencia: $codAgencia11");
  print("Pagarés pendientes: $contPag112  Total: $deuda112\n");

  if (contPag112 > 0) {
    clientesPend11++;
    totalAg11 += deuda112;
  }

  // Resumen de agencia 11
  print("=== RESUMEN AGENCIA $codAgencia11 ===");
  print("Clientes con pagarés pendientes: $clientesPend11");
  print("Total adeudado agencia: $totalAg11\n");

  // Actualizar estado 1
  montoTotalEstado1 += totalAg11;
  if (totalAg11 < minAgenciaEstado1) {
    minAgenciaEstado1 = totalAg11;
    codAgMin1 = codAgencia11;
  }
  if (totalAg11 > maxAgenciaEstado1) {
    maxAgenciaEstado1 = totalAg11;
    codAgMax1 = codAgencia11;
  }

  totalNacionalAgencias += totalAg11;
  conteoAgencias++;

  print("=== RESUMEN ESTADO $codEstado1 ===");
  print("Monto total adeudado: $montoTotalEstado1");
  print("Agencia con menor adeudo: $codAgMin1");
  print("Agencia con mayor adeudo: $codAgMax1\n");

  double promedioNacional = totalNacionalAgencias / conteoAgencias;

  print("=== PROMEDIO NACIONAL ===");
  print("Promedio de adeudos por agencia: $promedioNacional");
}

bool fechaMenor(int d, int m, int a, int d2, int m2, int a2) {
  if (a < a2) return true;
  if (a > a2) return false;
  if (m < m2) return true;
  if (m > m2) return false;
  return d <= d2;
}
