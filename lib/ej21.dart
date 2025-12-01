/*Un mayorista compra a un agricultor un lote de X naranjas a Bs. Y la docena. Después de vender
todas las naranjas a los detallistas, obtiene Bs. K. Calcular el porcentaje de ganancia obtenida en la
inversión. Pruebe su programa con los siguientes valores: X=48000, Y=6, K=42000 para obtener 75%
como resultado.*/

double naranjas = 48000;
double precioDocena = 6;
double ventaTotal = 42000;

double docenas = naranjas / 12;
double costo = docenas * precioDocena;
double ganancia = ventaTotal - costo;

double porcentajeGanancia = (ganancia / costo) * 100;

void main() {
  print("===============================");
  print("Cantidad de naranjas: ${naranjas.toStringAsFixed(0)}.");
  print("Precio por docena: ${precioDocena.toString()} pesos.");
  print("Venta total: ${ventaTotal.toStringAsFixed(0)} pesos.");
  print("Costo total: ${costo.toStringAsFixed(0)} pesos por las naranjas.");
  print("Ganancia: ${ganancia.toStringAsFixed(0)} pesos");
  print("Porcentaje de ganancia: ${porcentajeGanancia.toStringAsFixed(0)}%.");
  print("===============================");
}
