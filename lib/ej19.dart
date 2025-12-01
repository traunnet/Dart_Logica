/*19. En un hospital rural existen tres áreas: Ginecología, Pediatría y Traumatología. El presupuesto anual
del hospital se reparte conforme a la siguiente tabla:
Área Porcentaje del presupuesto
Ginecología 40%
Traumatología 30%
Pediatría 30%

Obtener la cantidad de dinero que recibirá cada área, para cualquier monto presupuestado.*/

double cantidadAnual = 800000;

double toma1 = (cantidadAnual * 40 / 100);
double toma2 = (cantidadAnual * 30 / 100);
double toma3 = (cantidadAnual * 30 / 100);

double total = (toma1 + toma2 + toma3);

void main (){
print("==============================");
print("El dinero dado a Ginecología es de ${toma1.toStringAsFixed(0)} pesos");
print("El dinero dado a Traumatología es de ${toma2.toStringAsFixed(0)} pesos");
print("El dinero dado a Pediatría es de ${toma3.toStringAsFixed(0)} pesos");
print("El dinero total suministrado por el hospital rural es de ${total.toStringAsFixed(0)} pesos");
print("==============================");

}