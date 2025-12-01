/*Dados los datos A, B, C y D que representan números enteros; escriba un algoritmo que calcule el
resultado de las siguientes expresiones:
Si D=0 (A-C)2
Si D>0 (A-B )3*/

double a = 5;
double b = 3;
double c = 2;
double d = 0;

void main() {
  double resultado;

  if (d == 0) {
    resultado = (a - c) * (a - c);
    print("D es igual a 0. El resultado de (A-C)² es: ${resultado.toStringAsFixed(2)}");
  } else if (d > 0) {
    resultado = (a - b) * (a - b) * (a - b);
    print("D es mayor que 0. El resultado de (A-B)³ es: ${resultado.toStringAsFixed(2)}");
  } else {
    print("D es menor que 0. No se realiza ningún cálculo.");
  }
}