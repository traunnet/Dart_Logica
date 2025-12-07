/* Desarrolle un algoritmo o programa que permita calcular y mostrar la suma de todos los números
pares comprendidos entre 97 y 1003. Respuesta: 249150*/

void main() {
  int inicio = 97;
  int fin = 1003;
  int suma = 0;

  for (int i = inicio; i <= fin; i++) {
    if (i % 2 == 0) {
      // Verifica si es par
      suma += i;
    }
  }

  print("La suma de los números pares entre $inicio y $fin es: $suma");
}
