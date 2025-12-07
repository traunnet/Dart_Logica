/*Suponga que un individuo decide invertir su capital en un banco y desea saber cuánto dinero ganará
después de un mes si el banco paga a razón de 2% mensual.*/

void main() {
  double capital = 40000.0;
  double tasaInteres = 0.02;

  double ganancia = capital * tasaInteres;
  double total = capital + ganancia;

  print("===============================");
  print("Capital inicial: \$${capital.toStringAsFixed(2)}");
  print("Ganancia después de un mes: \$${ganancia.toStringAsFixed(2)}");
  print("Total después de un mes: \$${total.toStringAsFixed(2)}");
  print("===============================");
}
