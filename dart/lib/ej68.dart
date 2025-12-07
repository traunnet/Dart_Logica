/* 68.Un número se dice que es perfecto si la suma de sus divisores excepto él mismo es igual a dicho
número. Ejemplo: 6 es un número perfecto ya que sus divisores: 1 + 2 + 3 suman seis. Diseñe un
algoritmo o programa que imprima los tres primeros números perfectos.*/

void main() {
  print("Los tres primeros números perfectos son:");

  int encontrados = 0; // contador de números perfectos encontrados
  int numero = 2; // empezamos desde 2

  while (encontrados < 3) {
    int sumaDivisores = 0;

    // calcular suma de divisores propios
    for (int i = 1; i < numero; i++) {
      if (numero % i == 0) {
        sumaDivisores += i;
      }
    }

    // verificar si es perfecto
    if (sumaDivisores == numero) {
      print(numero);
      encontrados++;
    }

    numero++;
  }
}
