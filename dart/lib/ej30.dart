/*Una compañía de alquiler de automóviles sin conductor, desea calcular y mostrar lo que debe pagar
cada cliente, de acuerdo a las siguientes condiciones:
a. Si no se rebasan los 300 km, se cancelan 5000 Bolívares
b. Si la distancia recorrida es superior a 300 km
 Pero inferior a 1000 se cobran 5000 Bolívares más 200 Bolívares por cada kilómetro
superior a 300.
 Si es superior a 1000 se cobran 5000 Bolívares más 200 Bolívares por cada kilómetro,
para las distancias entre 300 y 1000 kilómetros y 150 Bolívares por cada kilómetro para
las distancias mayores a 1000.*/

double calcularPago(int kmRecorridos) {
  double pago = 0.0;

  if (kmRecorridos <= 300) {
    pago = 5000.0;
  } else if (kmRecorridos > 300 && kmRecorridos <= 1000) {
    pago = 5000.0 + (200.0 * (kmRecorridos - 300));
  } else if (kmRecorridos > 1000) {
    pago = 5000.0 + (200.0 * (1000 - 300)) + (150.0 * (kmRecorridos - 1000));
  }

  return pago;
}

void main() {
  int kmRecorridos = 3000; // Ejemplo de kilómetros recorridos
  double totalPagar = calcularPago(kmRecorridos);

  print("Kilómetros recorridos: $kmRecorridos km");
  print("Total a pagar: \$${totalPagar.toStringAsFixed(2)} Bolívares");
}
