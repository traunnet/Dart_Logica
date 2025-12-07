/*14. El siguiente sistema de ecuaciones lineales:
aX + bY = c
dX + eY = f

se resuelve con las fórmulas:
ce - bf af - cd
X = --------- Y = --------- calcule y muestre el valor de X e Y.
ae – bd ae – bd*/

void main() {
  double a = 2.0;
  double b = 3.0;
  double c = 5.0;
  double d = 4.0;
  double e = 1.0;
  double f = 6.0;

  double denominador = (a * e) - (b * d);

  if (denominador == 0) {
    print("El sistema no tiene solución única.");
  } else {
    double x = ((c * e) - (b * f)) / denominador;
    double y = ((a * f) - (c * d)) / denominador;

    print("=== Solución del Sistema de Ecuaciones ===");
    print("Valor de X: ${x.toStringAsFixed(2)}");
    print("Valor de Y: ${y.toStringAsFixed(2)}");
  }
}
