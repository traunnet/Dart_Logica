/*59. Desarrolle un programa que capture las notas del primer parcial de Matemática, Programación
e inglés de un grupo indeterminado de alumnos y calcule e imprima:
a. Nota menor de Programación.
b. Porcentaje de alumnos que no presentaron el examen de inglés, respecto a los que sí
presentaron.
c. Número de alumnos que aprobaron todas las materias.
d. Promedio general en Programación.
e. Porcentaje de alumnos que reprobaron Matemática, respecto al total de alumnos que
presentaron el examen de matemática. */
class Alumno {
  double matematica;
  double programacion;
  double ingles;

  Alumno(this.matematica, this.programacion, this.ingles);
}

void main() {
  List<Alumno> alumnos = [
    Alumno(15, 18, 10),
    Alumno(8, 12, -1), // no presentó inglés
    Alumno(20, 19, 16),
    Alumno(-1, 14, 12), // no presentó matemática
    Alumno(9, 7, 8),
    Alumno(10, 11, -1),
  ];

  double menorProg = double.infinity;
  int presentaronIngles = 0;
  int noPresentaronIngles = 0;
  int aprobaronTodas = 0;

  double sumaProg = 0;
  int countProg = 0;

  int reprobaronMate = 0;
  int presentaronMate = 0;

  for (var a in alumnos) {

    if (a.programacion >= 0 && a.programacion < menorProg) {
      menorProg = a.programacion;
    }

    if (a.ingles >= 0) {
      presentaronIngles++;
    } else {
      noPresentaronIngles++;
    }

    if (a.matematica >= 10 && a.programacion >= 10 && a.ingles >= 10) {
      aprobaronTodas++;
    }

    // Promedio de Programación
    sumaProg += a.programacion;
    countProg++;

    // Reprobados Matemática
    if (a.matematica >= 0) {
      presentaronMate++;

      if (a.matematica < 10) {
        reprobaronMate++;
      }
    }
  }

  double porcentajeIngles = presentaronIngles == 0
      ? 0
      : (noPresentaronIngles / presentaronIngles) * 100;

  double promedioProg = sumaProg / countProg;

  double porcentajeReprobadosMate = presentaronMate == 0
      ? 0
      : (reprobaronMate / presentaronMate) * 100;

  print("===== RESULTADOS =====");

  print("a) Nota menor de Programación: $menorProg");

  print(
    "b) % que NO presentaron inglés respecto a los que SÍ: "
    "${porcentajeIngles.toStringAsFixed(2)}%",
  );

  print("c) Alumnos que aprobaron todas las materias: $aprobaronTodas");

  print(
    "d) Promedio general de Programación: "
    "${promedioProg.toStringAsFixed(2)}",
  );

  print(
    "e) % reprobados en Matemática respecto a los que presentaron: "
    "${porcentajeReprobadosMate.toStringAsFixed(2)}%",
  );
}
