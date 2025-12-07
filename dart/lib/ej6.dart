/*Un maestro desea saber qué porcentaje de hombres y qué porcentaje de mujeres hay en un grupo
de estudiantes.*/

int mujeres = 13;
int hombres = 12;
int totalEstudiantes = mujeres + hombres;
double porcentajeMujeres = (mujeres / totalEstudiantes) * 100;
double porcentajeHombres = (hombres / totalEstudiantes) * 100;
void main() {
  print("===============================");
  print("Total de estudiantes: $totalEstudiantes");
  print("Porcentaje de mujeres: ${porcentajeMujeres.toStringAsFixed(2)}%");
  print("Porcentaje de hombres: ${porcentajeHombres.toStringAsFixed(2)}%");
  print("===============================");
}
