/*Una empresa proveedora de equipos de computación desea una aplicación que le permita controlar
las ventas y las comisiones de venta en los diferentes estados y ciudades donde posean canales de
comercialización. Para cada Estado pueden existir varias ciudades donde la empresa está presente;
a su vez cada ciudad puede contener canales de comercialización con vendedores de tienda (locales)
y de calle. Cada ciudad tiene asignada una cantidad de unidades de venta esperada. Cada estado,
ciudad, canal de comercialización y vendedor es identificado por códigos numéricos de 2,3,4 y 5
dígitos respectivamente. Los dos últimos dígitos del código de ciudad deben ser igual al código del
estado y los dos primeros dígitos del código de vendedor indican si el mismo es de tienda (valor 11)
o de calle (valor 12). La empresa paga un porcentaje de comisión del 10% para los vendedores de
tienda y un 15% de comisión para los vendedores de calle en función del monto total vendido por
los mismos, es decir, que la aplicación debe pedir por vendedor el total de unidades vendidas y el
monto total correspondiente a esa cantidad. La empresa le solicita que desarrolle un programa que
cubra lo siguiente:
• Calcular e imprimir por ciudad el código, el nombre, total de unidades vendidas, monto total bruto,
monto de comisión por vendedores de tienda, monto de comisión por vendedores de calle, código
del canal de comercialización con mayor monto neto de veta y el código del vendedor con menor
número de unidades vendidas.
• Calcular e imprimir por Estado el código, nombre, mono neto vendido, el porcentaje de ciudades que
no alcanzaron las cantidades esperadas y la cantidad de ciudades que obtuvieron de un 40% a un
60% por encima de la cantidad esperada.*/

void main() {
  // Estados
  List<Map<String, dynamic>> estados = [
    {"codigo": 10, "nombre": "Estado Norte"},
    {"codigo": 20, "nombre": "Estado Sur"},
  ];

  // Ciudades (3 dígitos, últimos 2 = estado)
  List<Map<String, dynamic>> ciudades = [
    {"codigo": 110, "nombre": "Ciudad A", "esperado": 500, "estado": 10},
    {"codigo": 210, "nombre": "Ciudad B", "esperado": 400, "estado": 10},
    {"codigo": 320, "nombre": "Ciudad C", "esperado": 350, "estado": 20},
  ];

  // Canales por ciudad
  List<Map<String, dynamic>> canales = [
    {"codigo": 1001, "ciudad": 110},
    {"codigo": 1002, "ciudad": 110},
    {"codigo": 2001, "ciudad": 210},
    {"codigo": 3001, "ciudad": 320},
  ];

  // Vendedores (5 dígitos: primeros 2 => tipo: 11 tienda, 12 calle)
  List<Map<String, dynamic>> vendedores = [
    {"codigo": 11001, "canal": 1001, "unidades": 100, "monto": 40000},
    {"codigo": 11002, "canal": 1001, "unidades": 80, "monto": 20000},

    {"codigo": 12003, "canal": 1002, "unidades": 30, "monto": 10000},
    {"codigo": 12004, "canal": 1002, "unidades": 50, "monto": 15000},

    {"codigo": 11005, "canal": 2001, "unidades": 70, "monto": 21000},
    {"codigo": 12006, "canal": 2001, "unidades": 40, "monto": 10000},

    {"codigo": 11007, "canal": 3001, "unidades": 60, "monto": 24000},
    {"codigo": 12008, "canal": 3001, "unidades": 20, "monto": 5000},
  ];

  print("============== INFORME POR CIUDAD ==============\n");

  // Por estado
  Map<int, double> ventasPorEstado = {};
  Map<int, int> ciudadesNoCumplen = {};
  Map<int, int> ciudades40a60 = {};

  for (var ciudad in ciudades) {
    int codCiudad = ciudad["codigo"];
    String nombreCiudad = ciudad["nombre"];
    int esperado = ciudad["esperado"];
    int codEstado = ciudad["estado"];

    int totalUnidades = 0;
    double totalMonto = 0;

    double comisionTienda = 0;
    double comisionCalle = 0;

    int vendedorMinUnidades = -1;
    int minUnidades = 999999;

    int canalMaxMonto = -1;
    double maxMontoCanal = -1;

    // Agrupar canales por ciudad
    var canalesCiudad = canales.where((c) => c["ciudad"] == codCiudad);

    for (var canal in canalesCiudad) {
      int codCanal = canal["codigo"];
      double montoCanal = 0;

      // Vendedores del canal
      var vend = vendedores.where((v) => v["canal"] == codCanal);

      for (var v in vend) {
        int unidades = v["unidades"];
        double monto = v["monto"];
        int codVend = v["codigo"];

        totalUnidades += unidades;
        totalMonto += monto;

        // Tipo de vendedor
        int tipo = int.parse(codVend.toString().substring(0, 2));

        if (tipo == 11) {
          comisionTienda += monto * 0.10;
        } else if (tipo == 12) {
          comisionCalle += monto * 0.15;
        }

        // Vendedor con menor unidades
        if (unidades < minUnidades) {
          minUnidades = unidades;
          vendedorMinUnidades = codVend;
        }

        // Monto del canal
        montoCanal += monto;
      }

      // Canal con mayor monto
      if (montoCanal > maxMontoCanal) {
        maxMontoCanal = montoCanal;
        canalMaxMonto = codCanal;
      }
    }

    // Guardar ventas por estado
    ventasPorEstado[codEstado] = (ventasPorEstado[codEstado] ?? 0) + totalMonto;

    // Ciudades que NO cumplieron
    if (totalUnidades < esperado) {
      ciudadesNoCumplen[codEstado] = (ciudadesNoCumplen[codEstado] ?? 0) + 1;
    }

    // Ciudades con +40% y +60%
    if (totalUnidades >= esperado * 1.40 && totalUnidades <= esperado * 1.60) {
      ciudades40a60[codEstado] = (ciudades40a60[codEstado] ?? 0) + 1;
    }

    print("Ciudad $codCiudad – $nombreCiudad");
    print("  Total unidades vendidas: $totalUnidades");
    print("  Monto total bruto: \$${totalMonto.toStringAsFixed(2)}");
    print(
      "  Comisión vendedores de tienda: \$${comisionTienda.toStringAsFixed(2)}",
    );
    print(
      "  Comisión vendedores de calle: \$${comisionCalle.toStringAsFixed(2)}",
    );
    print("  Canal con mayor monto neto: $canalMaxMonto");
    print("  Vendedor con menor unidades vendidas: $vendedorMinUnidades\n");
  }

  print("\n============== INFORME POR ESTADO ==============\n");

  for (var estado in estados) {
    int codEstado = estado["codigo"];
    String nombre = estado["nombre"];

    double ventasTotales = ventasPorEstado[codEstado] ?? 0;

    int totalCiudades = ciudades.where((c) => c["estado"] == codEstado).length;

    int noCumplen = ciudadesNoCumplen[codEstado] ?? 0;
    int entre40y60 = ciudades40a60[codEstado] ?? 0;

    double porcentajeNoCumplen = (noCumplen / totalCiudades) * 100;

    print("Estado $codEstado – $nombre");
    print("  Monto neto total vendido: \$${ventasTotales.toStringAsFixed(2)}");
    print(
      "  % de ciudades que NO cumplieron: ${porcentajeNoCumplen.toStringAsFixed(2)}%",
    );
    print("  Ciudades con +40% y +60% de lo esperado: $entre40y60\n");
  }
}
