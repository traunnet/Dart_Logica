/*Escriba un algoritmo, que dado como dato el sueldo de un trabajador, le aplique un aumento del
15% si su sueldo es inferior a Bs. 40.000 y 12% en caso contrario. Imprima el nuevo sueldo del
trabajador.*/

int sueldoActual = 50000;

void main() {
  double nuevoSueldo;

  if (sueldoActual < 40000) {
    nuevoSueldo = sueldoActual + (sueldoActual * 0.15);
  } else {
    nuevoSueldo = sueldoActual + (sueldoActual * 0.12);
  }

  print("==============================");
  print("El sueldo actual es de: ${sueldoActual.toStringAsFixed(0)} pesos");
  print("El nuevo sueldo con el aumento aplicado es de: ${nuevoSueldo.toStringAsFixed(0)} pesos");
  print("==============================");
}