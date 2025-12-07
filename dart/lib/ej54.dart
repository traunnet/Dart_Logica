import 'dart:math';

void main() {
  const int cantidadCuestionarios = 64;
  const int totalPreguntas = 23;

  List<List<int>> cuestionarios = List.generate(
    cantidadCuestionarios,
    (_) => List.generate(totalPreguntas, (_) => Random().nextInt(5) + 1),
  );

  List<double> promedios = [];
  double sumaGeneral = 0;

  double promedioMax = -1;
  int cuestionarioMax = -1;

  double promedioMin = 999;
  int cuestionarioMin = -1;

  int menoresQue3 = 0;
  int mayoresQue4 = 0;
  int entre45y5 = 0;

  for (int i = 0; i < cantidadCuestionarios; i++) {
    int suma = cuestionarios[i].reduce((a, b) => a + b);
    double promedio = suma / totalPreguntas;

    promedios.add(promedio);
    sumaGeneral += promedio;

    // Mayor promedio
    if (promedio > promedioMax) {
      promedioMax = promedio;
      cuestionarioMax = i + 1;
    }

    // Menor promedio
    if (promedio < promedioMin) {
      promedioMin = promedio;
      cuestionarioMin = i + 1;
    }

    // Contadores especiales
    if (promedio < 3) menoresQue3++;
    if (promedio > 4) mayoresQue4++;
    if (promedio >= 4.5 && promedio <= 5) entre45y5++;
  }

  double promedioGeneral = sumaGeneral / cantidadCuestionarios;

  double porcentajeMenor3VsMayor4 = (mayoresQue4 == 0)
      ? 0
      : (menoresQue3 / mayoresQue4) * 100;

  double porcentaje45a5 = (entre45y5 / cantidadCuestionarios) * 100;

  print("========== RESULTADOS ==========");
  print("Promedio general de todos los cuestionarios: "
      "${promedioGeneral.toStringAsFixed(2)}");

  print("\nPromedio más alto: ${promedioMax.toStringAsFixed(2)} "
      "→ Cuestionario #$cuestionarioMax");

  print("Promedio más bajo: ${promedioMin.toStringAsFixed(2)} "
      "→ Cuestionario #$cuestionarioMin");

  print("\nPorcentaje (promedios < 3 / promedios > 4): "
      "${porcentajeMenor3VsMayor4.toStringAsFixed(2)}%");

  print("Porcentaje de promedios entre 4.5 y 5: "
      "${porcentaje45a5.toStringAsFixed(2)}%");
}
