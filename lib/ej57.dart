/*Para calcular la raíz cuadrada de un número N positivo, Herón de Alejandría ideó la siguiente fórmula:
RN = (X + N / X) /2, donde RN es la raíz de N y se calcula hasta cuando la diferencia entre X y RN es
menor que 0.000001; tomando X el valor de RN en cada iteración. Se debe leer el número y asegurar
que es positivo. Se puede iniciar el cálculo dándole a X el valor 0.1.*/

void main() {
  double n = 50; // Número a calcular (cambiar por cualquier positivo)

  if (n <= 0) {
    print("El número debe ser positivo.");
    return;
  }

  double x = 0.1;  // valor inicial
  double rn = (x + n / x) / 2;

  while ((x - rn).abs() >= 0.000001) {
    x = rn;
    rn = (x + n / x) / 2;
  }

  print("La raíz cuadrada aproximada de $n es: ${rn.toStringAsFixed(6)}");
}
