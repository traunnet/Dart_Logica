/*Calcular el término doceavo y la suma de los doce primeros términos de la sucesión: 6, 11, 16, 21.
Respuesta: a12=61, suma=402.*/

void main() {
  int a1 = 6; // Primer término
  int d = 5; // Diferencia
  int n = 12; // Número de términos

  // Calcular término 12
  int a12 = a1 + (n - 1) * d;

  // Calcular suma de los 12 términos
  int suma = (n * (a1 + a12)) ~/ 2;

  print("El término 12 es: $a12");
  print("La suma de los primeros 12 términos es: $suma");
}
