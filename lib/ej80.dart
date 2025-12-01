/*La Oficina Central de Estadística e Informática (OCEI) desea conocer cierta información sobre la
situación actual del país en cuanto a los niveles actuales de desempleo, analfabetismo y del potencial
de profesionales existentes en Venezuela. Los Estados son identificados por un código entero
positivo de dos (02) dígitos significativos. Las ciudades mediante un código de cuatro (04) dígitos
significativos, de los cuales los dos últimos dígitos corresponden al Estado al cual pertenecen. Los
municipios se identifican con un código de cuatro (06) dígitos significativos, de los cuales los primeros
dígitos corresponden al código de Estado y los dos siguientes dígitos a los dos primeros dígitos del
código de la ciudad en la cual están ubicados. Los datos fueron tomados de personas mayores de 18
años y los mismos son los siguientes: edad; nivel de educación (N: ninguna, B: básica, S: secundaria,
P: profesional); situación actual (D: desempleado, E: empleado). Se requiere que desarrolle un
programa que cumpla con lo siguiente:
• Determinar e imprimir por municipio el código y la cantidad de personas con las siguientes
características: desempleado, sin ningún nivel de educación y mayores de 25 años.
• Calcular e imprimir el código de las ciudades cuyas personas establecidas en la parte anterior sean
más del 50%.
• Calcular e imprimir el código del Estado con mayor porcentaje de profesionales desempleados.*/

void main() {
  List<Map<String, dynamic>> personas = [
    // Municipio 101001 (Estado 10, Ciudad 1001)
    {"municipio": 101001, "edad": 30, "educacion": "N", "situacion": "D"},
    {"municipio": 101001, "edad": 40, "educacion": "B", "situacion": "E"},
    {"municipio": 101001, "edad": 50, "educacion": "N", "situacion": "D"},

    // Municipio 102001 (Estado 10, Ciudad 1002)
    {"municipio": 102001, "edad": 28, "educacion": "N", "situacion": "D"},
    {"municipio": 102001, "edad": 22, "educacion": "S", "situacion": "E"},
    {"municipio": 102001, "edad": 35, "educacion": "N", "situacion": "D"},

    // Municipio 203002 (Estado 20, Ciudad 3002)
    {"municipio": 203002, "edad": 45, "educacion": "P", "situacion": "D"},
    {"municipio": 203002, "edad": 33, "educacion": "P", "situacion": "D"},
    {"municipio": 203002, "edad": 29, "educacion": "B", "situacion": "E"},
  ];

  Map<int, int> municipiosConteo = {}; // personas sin edu, >25, desempleadas
  Map<int, int> ciudadesTotales = {}; // total personas por ciudad
  Map<int, int> ciudadesCriterio = {}; // personas criterio por ciudad

  Map<int, int> estadosProfDes = {}; // profesionales desempleados por estado
  Map<int, int> estadosTotal = {}; // total encuestados por estado

  for (var p in personas) {
    int municipio = p["municipio"];
    int edad = p["edad"];
    String edu = p["educacion"];
    String sit = p["situacion"];

    // Extraer ciudad y estado desde el código
    int ciudad = int.parse(municipio.toString().substring(0, 4));
    int estado = int.parse(municipio.toString().substring(0, 2));

    // Contar población total por ciudad y estado
    ciudadesTotales[ciudad] = (ciudadesTotales[ciudad] ?? 0) + 1;
    estadosTotal[estado] = (estadosTotal[estado] ?? 0) + 1;

    // 1) CRITERIOS DEL MUNICIPIO
    bool cumple = (sit == "D" && edu == "N" && edad > 25);

    if (cumple) {
      municipiosConteo[municipio] = (municipiosConteo[municipio] ?? 0) + 1;

      ciudadesCriterio[ciudad] = (ciudadesCriterio[ciudad] ?? 0) + 1;
    }

    // 2) PROFESIONALES DESEMPLEADOS POR ESTADO
    if (edu == "P" && sit == "D") {
      estadosProfDes[estado] = (estadosProfDes[estado] ?? 0) + 1;
    }
  }

  print("=========== INFORME POR MUNICIPIO ===========\n");

  municipiosConteo.forEach((municipio, cantidad) {
    print("Municipio $municipio:");
    print("  Personas con características requeridas: $cantidad\n");
  });

  print("=========== CIUDADES > 50% CRITERIO ===========\n");

  for (var ciudad in ciudadesTotales.keys) {
    int total = ciudadesTotales[ciudad]!;
    int cond = ciudadesCriterio[ciudad] ?? 0;

    double porcentaje = (cond / total) * 100;

    if (porcentaje > 50) {
      print("Ciudad $ciudad supera el 50% ($porcentaje%)\n");
    }
  }

  print("=========== ESTADO CON MAYOR % DE PROF. DESEMPLEADOS ===========\n");

  double mayorPorcentaje = -1;
  int estadoMax = 0;

  for (var estado in estadosTotal.keys) {
    int total = estadosTotal[estado]!;
    int profDes = estadosProfDes[estado] ?? 0;

    double porc = (profDes / total) * 100;

    if (porc > mayorPorcentaje) {
      mayorPorcentaje = porc;
      estadoMax = estado;
    }
  }

  print("Estado con mayor porcentaje: $estadoMax");
  print("Porcentaje: ${mayorPorcentaje.toStringAsFixed(2)}%\n");
  print("==============================================");
}
