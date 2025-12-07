void main() {
  // Cada empresa tiene: actividad, localización, trabajadores
  List<Map<String, dynamic>> empresas = [
    {"actividad": 1, "loc": 1, "trab": 50},  // Agrícola - norte
    {"actividad": 2, "loc": 2, "trab": 120}, // Industrial - sur
    {"actividad": 3, "loc": 1, "trab": 80},  // Minera - norte
    {"actividad": 2, "loc": 3, "trab": 200}, // Industrial - este
    {"actividad": 4, "loc": 4, "trab": 40},  // Pesquera - oeste
    {"actividad": 1, "loc": 3, "trab": 70},  // Agrícola - este
    {"actividad": 3, "loc": 2, "trab": 100}, // Minera - sur
    {"actividad": 2, "loc": 4, "trab": 150}, // Industrial - oeste
  ];

  int totalEmpresas = empresas.length;

  int contAgricolas = 0;
  int contMineras = 0;
  int contIndustrialNorte = 0;
  int contIndustrialSur = 0;
  int contIndustrialEste = 0;
  int contIndustrialOeste = 0;

  // Para promedios de trabajadores por actividad
  Map<int, int> sumaTrabAct = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};
  Map<int, int> contAct =     {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};

  for (var emp in empresas) {
    int act = emp["actividad"];
    int loc = emp["loc"];
    int trab = emp["trab"];

    if (act == 1) contAgricolas++;

    if (act == 3) contMineras++;

    sumaTrabAct[act] = sumaTrabAct[act]! + trab;
    contAct[act] = contAct[act]! + 1;

    if (act == 2) {
      if (loc == 1) contIndustrialNorte++;
      else if (loc == 2) contIndustrialSur++;
      else if (loc == 3) contIndustrialEste++;
      else if (loc == 4) contIndustrialOeste++;
    }
  }

  double porcAgricolas = (contAgricolas * 100) / totalEmpresas;

  double porcMineras = (contMineras * 100) / totalEmpresas;

  print("Promedio de trabajadores por actividad:");
  for (int act in sumaTrabAct.keys) {
    if (contAct[act]! > 0) {
      double prom = sumaTrabAct[act]! / contAct[act]!;
      print("Actividad $act → Promedio: ${prom.toStringAsFixed(2)}");
    }
  }

  Map<String, int> industriaPorZona = {
    "Norte": contIndustrialNorte,
    "Sur": contIndustrialSur,
    "Este": contIndustrialEste,
    "Oeste": contIndustrialOeste
  };

  String zonaMayor = "";
  int mayor = -1;

  industriaPorZona.forEach((zona, cant) {
    if (cant > mayor) {
      mayor = cant;
      zonaMayor = zona;
    }
  });

  print("----- RESULTADOS -----");
  print("Porcentaje de empresas agrícolas: ${porcAgricolas.toStringAsFixed(2)}%");
  print("Porcentaje de empresas mineras: ${porcMineras.toStringAsFixed(2)}%");
  print("Localización con más industrias: $zonaMayor ($mayor empresas)");
}
