/*Se desea obtener el promedio de g grupos que están en un mismo año escolar, siendo que cada
grupo puede tener n alumnos que cada alumno puede llevar m materias y que en todas las materias
se promedian tres calificaciones para obtener el promedio de la materia. Lo que se desea es mostrar
el promedio de los grupos, el promedio de cada grupo y el promedio de cada alumno.*/

void main() {
  // Datos fijos: grupos, alumnos, materias, calificaciones
  // Estructura: grupos[g][alumno][materia][calificaciones]
  List<List<List<List<double>>>> grupos = [
    // Grupo 1
    [
      // Alumno 1
      [
        [4.0, 3.5, 5.0], // Materia 1
        [3.0, 4.0, 4.5], // Materia 2
      ],
      // Alumno 2
      [
        [5.0, 4.5, 4.0],
        [4.0, 3.5, 4.0],
      ],
    ],

    // Grupo 2
    [
      // Alumno 1
      [
        [3.0, 3.5, 4.0],
        [4.0, 4.0, 4.5],
      ],
      // Alumno 2
      [
        [5.0, 5.0, 4.5],
        [4.5, 4.0, 4.0],
      ],
      // Alumno 3
      [
        [3.5, 3.0, 3.5],
        [4.0, 3.5, 3.0],
      ],
    ],
  ];

  double promedioGeneral = 0;
  int totalGrupos = grupos.length;

  print("===== PROMEDIOS =====");

  // Recorrer grupos
  for (int g = 0; g < grupos.length; g++) {
    double sumaGrupo = 0;
    int totalAlumnos = grupos[g].length;

    print("\n--- Grupo ${g + 1} ---");

    // Recorrer alumnos
    for (int a = 0; a < grupos[g].length; a++) {
      double sumaAlumno = 0;
      int totalMaterias = grupos[g][a].length;

      // Recorrer materias
      for (int m = 0; m < grupos[g][a].length; m++) {
        List<double> cal = grupos[g][a][m];

        // Promedio de la materia
        double promedioMateria = cal.reduce((a, b) => a + b) / cal.length;

        sumaAlumno += promedioMateria;
      }

      double promedioAlumno = sumaAlumno / totalMaterias;
      print("Alumno ${a + 1}: Promedio = ${promedioAlumno.toStringAsFixed(2)}");

      sumaGrupo += promedioAlumno;
    }

    double promedioGrupo = sumaGrupo / totalAlumnos;
    print("Promedio del Grupo ${g + 1}: ${promedioGrupo.toStringAsFixed(2)}");

    promedioGeneral += promedioGrupo;
  }

  promedioGeneral /= totalGrupos;

  print("\n===== PROMEDIO GENERAL DE TODOS LOS GRUPOS =====");
  print("Promedio General: ${promedioGeneral.toStringAsFixed(2)}");
}
