/*Construya un programa que, dados como datos la categoría y el sueldo del trabajador, calcule el
aumento correspondiente teniendo en cuenta la siguiente tabla:
categoria 1: 15%
categoria 2: 10%
categoria 3: 8%
categoria 4: 7%

como salida, mostrar la categoria del trabajador y su nuevo sueldo.
*/

void main() {
  int categoria = 8; 
  double sueldo = 150000; 

  double aumento;

  if (categoria == 1) {
    aumento = sueldo * 0.15;
  } else if (categoria == 2) {
    aumento = sueldo * 0.10;
  } else if (categoria == 3) {
    aumento = sueldo * 0.08;
  } else if (categoria == 4) {
    aumento = sueldo * 0.07;
  } else {
    print("❌ Categoría inválida. Debe ser 1, 2, 3 o 4.");
    return;
  }

  double nuevoSueldo = sueldo + aumento;

  print("Categoría del trabajador: $categoria");
  print("Nuevo sueldo: $nuevoSueldo");
}
