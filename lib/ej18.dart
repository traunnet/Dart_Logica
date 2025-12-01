/*Resuelva el problema que tienen en una gasolinera. Los surtidores de la misma registran lo que
surten en galones, pero el precio de la gasolina está fijado en litros. Se requiere que calcule y muestre
lo que hay que cobrarle a un cliente, considerando que: (a) cada galón tiene 3.785 litros; (b) el precio
del litro es de 100 Bolívares.*/

double galon = 3.785;
double precio = 100;
double cantidad = 12;

double litrosTotal = cantidad * galon;
double total = litrosTotal * precio;

void main() {
  print("===============================");
  print(
    "El cliente debe pagar un total de ${total.toStringAsFixed(0)} pesos, por ${cantidad.toStringAsFixed(0)} galones de gasolina",
  );
  print("===============================");
}
