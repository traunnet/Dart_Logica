/*Escriba un algoritmo para producir una tabla de conversión de temperatura para convertir valores
en grados Fahrenheit a su equivalente en grados Celsius, grados Kelvin y grados Rankine.
Las ecuaciones de conversión son:
C = 5(F-32) / 9
R = F + 459.67
K = C + 273.15
Donde F = temperatura en grados Fahrenheit
C = temperatura en grados Celsius
R = temperatura en grados Rankine
K = temperatura en grados Kelvin
Haga que el programa imprima encabezados para cada columna en la tabla.
Datos muestra:
de 28 a 54 oF en intervalos de 1 oF
de 450 a 950 oF en intervalos de 50 oF
de –50 a 250 oF en intervalos de 10 oF*/

void main() {
  print("==========================================");
  print(" CONVERSIÓN: 28°F a 54°F (intervalo 1°F)");
  print("==========================================");
  imprimirTabla(28, 54, 1);

  print("\n==========================================");
  print(" CONVERSIÓN: 450°F a 950°F (intervalo 50°F)");
  print("==========================================");
  imprimirTabla(450, 950, 50);

  print("\n==========================================");
  print(" CONVERSIÓN: -50°F a 250°F (intervalo 10°F)");
  print("==========================================");
  imprimirTabla(-50, 250, 10);
}

void imprimirTabla(int inicio, int fin, int paso) {
  print("Fahrenheit   Celsius        Kelvin         Rankine");

  for (int F = inicio; F <= fin; F += paso) {
    double C = 5 * (F - 32) / 9;
    double R = F + 459.67;
    double K = C + 273.15;

    print(
      "${F.toString().padRight(12)}"
      "${C.toStringAsFixed(2).padRight(14)}"
      "${K.toStringAsFixed(2).padRight(14)}"
      "${R.toStringAsFixed(2)}",
    );
  }
}
