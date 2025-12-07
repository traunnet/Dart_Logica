/* */

void main() {
  List<Map<String, dynamic>> alumnos = [
    {"edad": 18, "sexo": "M", "edo": 1, "esp": 1},
    {"edad": 22, "sexo": "F", "edo": 2, "esp": 2},
    {"edad": 25, "sexo": "F", "edo": 1, "esp": 1},
    {"edad": 20, "sexo": "M", "edo": 1, "esp": 3},
    {"edad": 17, "sexo": "F", "edo": 3, "esp": 2},
    {"edad": 23, "sexo": "M", "edo": 4, "esp": 1},
    {"edad": 19, "sexo": "M", "edo": 1, "esp": 3},
    {"edad": 30, "sexo": "F", "edo": 2, "esp": 4},
  ];

  int total = alumnos.length;

  int contM = 0, contF = 0;
  int sumaEdadM = 0, sumaEdadF = 0;

  Map<int, int> contEstado = {1: 0, 2: 0, 3: 0, 4: 0}; // Soltero, casado, viudo, divorciado
  Map<int, int> contEsp = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};

  int mujeresAdultas = 0;
  int hombresJovenes = 0;

  int hombresSolteros = 0;
  int mujeresSolteras = 0;

  for (var a in alumnos) {
    int edad = a["edad"];
    String sexo = a["sexo"];
    int edo = a["edo"];
    int esp = a["esp"];

    if (sexo == "M") {
      contM++;
      sumaEdadM += edad;
    } else {
      contF++;
      sumaEdadF += edad;
    }

    contEstado[edo] = contEstado[edo]! + 1;

    contEsp[esp] = contEsp[esp]! + 1;

    if (sexo == "F" && edad > 21) mujeresAdultas++;

    if (sexo == "M" && edad > 17 && edad < 21) hombresJovenes++;

    if (edo == 1) {
      if (sexo == "M") hombresSolteros++;
      else mujeresSolteras++;
    }
  }

  double promEdadM = contM > 0 ? sumaEdadM / contM : 0;
  double promEdadF = contF > 0 ? sumaEdadF / contF : 0;

  print("------ RESULTADOS ------");

  print("a. Promedio edad mujeres: ${promEdadF.toStringAsFixed(2)}");
  print("b. Promedio edad hombres: ${promEdadM.toStringAsFixed(2)}");

  print("c. Cantidad de hombres: $contM");
  print("   Cantidad de mujeres: $contF");

  print("\nd. Porcentaje por estado civil:");
  contEstado.forEach((edo, cant) {
    double p = (cant * 100) / total;
    String nombre = edo == 1
        ? "Soltero"
        : edo == 2
            ? "Casado"
            : edo == 3
                ? "Viudo"
                : "Divorciado";
    print("   $nombre: ${p.toStringAsFixed(2)}%");
  });

  print("\ne. Cantidad y porcentaje por especialidad:");
  contEsp.forEach((esp, cant) {
    double p = (cant * 100) / total;
    print("   Especialidad $esp: $cant alumnos (${p.toStringAsFixed(2)}%)");
  });

  double porcMujAdultas = (mujeresAdultas * 100) / total;
  double porcHomJovenes = (hombresJovenes * 100) / total;

  print("\nf. Porcentaje de mujeres adultas (>21): ${porcMujAdultas.toStringAsFixed(2)}%");
  print("g. Porcentaje de hombres jóvenes (18–20): ${porcHomJovenes.toStringAsFixed(2)}%");

  print("\nh. Hombres solteros: $hombresSolteros");
  print("   Mujeres solteras: $mujeresSolteras");
}
