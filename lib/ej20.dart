/*Calcule qué tanto por ciento anual cobraron por un préstamo de Bolívares X, si se pagaron Bolívares
Y de intereses en 4 años. La fórmula del interés es:
Capital. Tiempo. Razón
I = ------------------------------
100*/

double prestamo = 5000;
double interesPagado = 1000;
double anos = 4;

double funcion1 = interesPagado * 100; 
double funcion2 = prestamo * anos;     

double total = funcion1 / funcion2;  

void main() {
  print("============================");
  print("El Capital del préstamo fue de ${prestamo.toStringAsFixed(0)} pesos.");
  print("El Interés total pagado en ${anos.toStringAsFixed(0)} años fue de ${interesPagado.toStringAsFixed(0)} pesos.");
  print("La tasa de interés anual cobrada es de ${total.toStringAsFixed(0)}%");
  print("============================");
}