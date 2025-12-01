/*Dada una cantidad en metros, se requiere que la convierta a pies y pulgadas, considerando lo
siguiente: 1 metro = 39.27 pulgadas; 1 pie = 12 pulgadas.*/

int metros = 10;
double pulgadasPorMetro = 39.27;
double piesPorPulgada = 1 / 12;
double totalPulgadas = metros * pulgadasPorMetro;
double totalPies = totalPulgadas * piesPorPulgada;
void main() {
  print("===============================");
  print("Cantidad en metros: $metros metros");
  print("Equivalente en pulgadas: ${totalPulgadas.toStringAsFixed(2)} pulgadas");
  print("Equivalente en pies: ${totalPies.toStringAsFixed(2)} pies");
  print("===============================");
}
