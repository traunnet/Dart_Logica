/*Un alumno desea saber cuál será su calificación final en la materia de computación. Dicha calificación
se compone de los siguientes porcentajes: 55% del promedio de sus tres calificaciones parciales,
30% de la calificación del examen final y 15% de la calificación de un trabajo final.*/

int calificacion1 = 85;
int calificacion2 = 90;
int calificacion3 = 80;
int examenFinal = 88;
int trabajoFinal = 92;

double promedioParciales = (calificacion1 + calificacion2 + calificacion3) / 3;
double porcentajeParciales = promedioParciales * 0.55;
double porcentajeExamenFinal = examenFinal * 0.30;
double porcentajeTrabajoFinal = trabajoFinal * 0.15;
double calificacionFinal =
    porcentajeParciales + porcentajeExamenFinal + porcentajeTrabajoFinal;
void main() {
  print("===============================");
  print("Calificación final en computación: $calificacionFinal");
  print("===============================");
}
