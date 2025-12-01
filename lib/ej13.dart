List<int> cantidades = [12, 5, 2, 12, 4, 8, 3, 2];//cantidades de billetes y monedas
List<int> valores = [50000, 20000, 10000, 5000, 2000, 1000, 500, 100];//valores de billetes y monedas

int CalcularDineroTotal(List<int> cantidades, List<int> valores) {
  int dineroTotal = 0;

  for (int i = 0; i < cantidades.length; i++) {
    //el i++ es para que el ciclo avance en cada iteracion
    //funcion para recorrer las listas y calcular el dinero total
    int cantidad = cantidades[i];
    int valor = valores[i];

    int totalPorDenominacion = cantidad * valor;

    dineroTotal += totalPorDenominacion;
  }

  return dineroTotal;
}

void main() {
  int total = CalcularDineroTotal(cantidades, valores);

  print("=== Resumen del Dinero en el Banco ===");
  print("Cantidades: $cantidades");
  print("Valores: $valores");
  print("Dinero Total: $total");
}