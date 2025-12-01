/*Dos números A y B son amigos, cuando la suma de los divisores menores que A es igual a B, al mismo
tiempo cuando la suma de los divisores menores que B es igual a A. Los dos menores números amigos
son 220 y 284, debido a que:
a. divisores de 220 1+2+4+5+10+11+20+22+44+45+110 = 284
b. divisores de 284 1+2+4+71+142 = 220
c. los siguientes pares de amigos son: 1184 y 1210; 2620 y 2924; 5020 y 5564, etc.*/

// Función para calcular la suma de divisores propios de un número
int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      suma += i;
    }
  }
  return suma;
}

void main() {
  print("Primeros pares de números amigos:");

  int encontrados = 0;
  int numero = 2;

  while (encontrados < 4) { // buscamos los primeros 4 pares
    int sumaA = sumaDivisores(numero);
    int sumaB = sumaDivisores(sumaA);
    // condición de números amigos:
    // 1. La suma de divisores de A es B
    // 2. La suma de divisores de B es A
    // 3. A != B (para evitar pares triviales)
    if (sumaB == numero && numero != sumaA) {
      print("Par ${encontrados + 1}: $numero y $sumaA");
      encontrados++;
    }

    numero++;
  }
}