/*Una empresa comercializadora de productos cerámicos con sucursales y puntos de venta a nivel
nacional está interesada en desarrollar un software que le permita controlar sus ventas. Cada
sucursal posee un monto de venta esperado el cual debe cubrir y tiene asignados varios puntos de
venta, los cuales debe controlar. La sucursal es identificada con un código entero positivo de dos dígitos y los puntos de venta por un código entero positivo de cuatro dígitos, en el cual los dos
primeros dígitos corresponden al código de la sucursal a la cual reporta. Los productos
comercializados por la empresa son identificados por un código que va del 1 al 3, el PVP de cada uno
es dado como constante y todos los puntos de venta, venden los 3 tipos de productos. El 10% de las
ventas brutas de cada punto de venta es repartido entre los vendedores de la misma en forma
equitativa como comisión de venta. Se requiere que desarrolle un programa que responda a lo
siguiente:
• Imprimir por punto de venta: su código, las unidades vendidas, el monto neto de la venta,
el monto pagado por comisión a los vendedores y el código del producto con menor número
de unidades vendidas.
• Calcular y mostrar por sucursal su código, descripción, el monto total vendido, el porcentaje
de venta alcanzado en función de lo esperado y el código y monto del punto de venta que
más pagó por comisión de venta.
• Calcular y mostrar el porcentaje de las sucursales que alcanzaron el monto de venta
esperado.*/

void main() {
  // Precios de los 3 productos
  const List<double> precios = [10.0, 20.0, 30.0];

  // Datos de sucursales: código, descripción, monto esperado
  List<Map<String, dynamic>> sucursales = [
    {"codigo": 10, "descripcion": "Sucursal Norte", "esperado": 50000.0},
    {"codigo": 20, "descripcion": "Sucursal Sur", "esperado": 45000.0},
    {"codigo": 30, "descripcion": "Sucursal Centro", "esperado": 60000.0},
  ];

  List<Map<String, dynamic>> puntosVenta = [
    {
      "codigo": 1001,
      "ventas": [120, 80, 60], // (P1, P2, P3)
    },
    {
      "codigo": 1002,
      "ventas": [90, 70, 110],
    },
    {
      "codigo": 2001,
      "ventas": [50, 40, 30],
    },
    {
      "codigo": 2002,
      "ventas": [200, 150, 100],
    },
    {
      "codigo": 3001,
      "ventas": [300, 200, 100],
    },
  ];


  print("======== INFORME POR PUNTO DE VENTA ========\n");

  // Para almacenar comisiones por punto
  Map<int, double> comisionesPorPunto = {};

  // Para acumular ventas por sucursal
  Map<int, double> ventasPorSucursal = {
    for (var suc in sucursales) suc["codigo"]: 0.0,
  };

  // Procesar cada punto de venta
  for (var pv in puntosVenta) {
    int codigoPV = pv["codigo"];
    List<int> ventas = pv["ventas"];

    // Calcular monto bruto
    double montoBruto = 0;
    for (int i = 0; i < ventas.length; i++) {
      montoBruto += ventas[i] * precios[i];
    }

    // Comisión 10%
    double comision = montoBruto * 0.10;
    comisionesPorPunto[codigoPV] = comision;

    // Producto con menor venta
    int menorVentas = ventas.reduce((a, b) => a < b ? a : b);
    int productoMenor = ventas.indexOf(menorVentas) + 1; // producto 1,2,3

    // Determinar sucursal (primeros 2 dígitos)
    int sucursalCodigo = int.parse(codigoPV.toString().substring(0, 2));
    ventasPorSucursal[sucursalCodigo] =
        ventasPorSucursal[sucursalCodigo]! + montoBruto;

    // Imprimir resultados del punto
    print("Punto de Venta: $codigoPV");
    print("  Unidades vendidas: ${ventas}");
    print("  Monto Neto: \$${montoBruto.toStringAsFixed(2)}");
    print("  Comisión pagada (10%): \$${comision.toStringAsFixed(2)}");
    print("  Producto menos vendido: Producto $productoMenor\n");
  }


  print("\n======== INFORME POR SUCURSAL ========\n");

  int sucursalesCumplen = 0;

  for (var suc in sucursales) {
    int codigo = suc["codigo"];
    String desc = suc["descripcion"];
    double esperado = suc["esperado"];

    double vendido = ventasPorSucursal[codigo]!;
    double porcentaje = (vendido / esperado) * 100;

    // Buscar punto que más pagó comisión dentro de esta sucursal
    int mejorPunto = 0;
    double mayorComision = 0;

    comisionesPorPunto.forEach((codigoPunto, comisionPV) {
      if (codigoPunto.toString().startsWith(codigo.toString())) {
        if (comisionPV > mayorComision) {
          mayorComision = comisionPV;
          mejorPunto = codigoPunto;
        }
      }
    });

    if (vendido >= esperado) {
      sucursalesCumplen++;
    }

    print("Sucursal $codigo – $desc");
    print("  Total Vendido: \$${vendido.toStringAsFixed(2)}");
    print("  Porcentaje Alcanzado: ${porcentaje.toStringAsFixed(2)}%");
    print(
      "  Punto con mayor comisión: $mejorPunto (\$${mayorComision.toStringAsFixed(2)})\n",
    );
  }

  double porcentajeCumplen = (sucursalesCumplen / sucursales.length) * 100;

  print("======== RESULTADO GLOBAL ========\n");
  print(
    "Porcentaje de sucursales que alcanzaron la meta: ${porcentajeCumplen.toStringAsFixed(2)}%",
  );
}
