/*El gobierno del estado de México desea reforestar un bosque que mide determinado número de
hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
70% Pino, 20% Oyamel, 10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
50% Pino, 30% Oyamel, 20% Cedro
El gobierno desea saber el número de pinos, oyameles y cedros que tendrá que sembrar en el bosque,
si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 oyameles y
en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil
metros cuadrados.*/
void main() {
  // Superficie del bosque en hectáreas (puedes cambiar este valor)
  double hectareas = 150.0;

  // Conversión a metros cuadrados
  double superficie = hectareas * 10000;

  // Porcentajes según superficie
  double porcentajePino, porcentajeOyamel, porcentajeCedro;

  if (superficie > 1000000) {
    porcentajePino = 0.70;
    porcentajeOyamel = 0.20;
    porcentajeCedro = 0.10;
  } else {
    porcentajePino = 0.50;
    porcentajeOyamel = 0.30;
    porcentajeCedro = 0.20;
  }

  // Superficie por tipo de árbol
  double superficiePino = superficie * porcentajePino;
  double superficieOyamel = superficie * porcentajeOyamel;
  double superficieCedro = superficie * porcentajeCedro;

  // Cálculo de árboles por tipo
  int numPinos = ((superficiePino / 10) * 8).floor();
  int numOyameles = ((superficieOyamel / 15) * 15).floor();
  int numCedros = ((superficieCedro / 18) * 10).floor();

  // Resultados
  print("Superficie total: ${superficie.toStringAsFixed(0)} m²");
  print("Número de pinos a sembrar: $numPinos");
  print("Número de oyameles a sembrar: $numOyameles");
  print("Número de cedros a sembrar: $numCedros");
}
