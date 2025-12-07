/*Dada la siguiente serie: 1 + 1⁄2 + 1⁄4 + 1/8 + 1/16 + 1/32 + ... Desarrolle un algoritmo o programa que determine el número de términos necesarios para obtener la suma que más se aproxime al valor de 1.99. Se debe imprimir el número 
de términos y el valor de la suma cuando cumpla la condición mencionada antes. */
void main() {
  double suma = 0;
  int terminos = 0;

  double termino = 1.0; // Primer término

  while (suma + termino <= 1.99) {
    suma += termino;
    terminos++;

    termino /= 2; // Cada término es la mitad del anterior
  }

  print("Número de términos: $terminos");
  print("Suma obtenida: ${suma.toStringAsFixed(10)}");
}
