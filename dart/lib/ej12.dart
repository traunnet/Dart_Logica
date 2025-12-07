/*Calcule y muestre, a un alumno, cuál será su promedio general en las tres materias más difíciles que
cursa y cuál será el promedio que obtendrá en cada una de ellas. Estas materias se evalúan como se
muestra a continuación:
Matemática Examen 90% y 10% del promedio de tres tareas.
Física Examen 80% y 20% del promedio de dos tareas.
Química Examen 85% y 15% del promedio de tres tareas.*/

List<double> matematicas = [70.0, 70.0, 80.0]; //lista de tareas de matematicas
double examenMatematicas = 85.0; //nota del examen de matematicas
List<double> fisica = [82.0, 72.0, 78.0];
double examenFisica = 82.0;
List<double> quimica = [78.0, 79.0, 60.0];
double examenQuimica = 76.0; //nota del examen de quimica

double calcularSuma(List<double> tareas) {
  //funcion para calcular la suma de las tareas
  double suma = 0.0;
  //el for recorre cada nota en la lista de tareas y las suma
  //el in indica que se esta recorriendo una lista
  for (double nota in tareas) {
    //se suma cada nota a la variable suma
    suma += nota;
  }
  return suma;
}

double calcularPromedio(List<double> tareas) {
  //funcion para calcular el promedio de las tareas
  double suma = calcularSuma(tareas);
  //el length obtiene la cantidad de elementos en la lista
  return suma / tareas.length;
}

//calculo de los promedios de cada materia
double promedioMatematicas =
    (examenMatematicas * 0.9) + (calcularPromedio(matematicas) * 0.1);
double promedioFisica = (examenFisica * 0.8) + (calcularPromedio(fisica) * 0.2);
double promedioQuimica =
    (examenQuimica * 0.85) + (calcularPromedio(quimica) * 0.15);
double promedioGeneral =
    (promedioMatematicas + promedioFisica + promedioQuimica) / 3;

//Impresion de los resultados
void main() {
  print("=== Resumen de Promedios ===");
  print("Promedio Matemáticas: ${promedioMatematicas.toStringAsFixed(2)}");
  //el toStringAsFixed(2) limita el numero de decimales a 2
  print("Promedio Física: ${promedioFisica.toStringAsFixed(2)}");
  print("Promedio Química: ${promedioQuimica.toStringAsFixed(2)}");
  print("Promedio General: ${promedioGeneral.toStringAsFixed(2)}");
}
