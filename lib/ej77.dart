/*Desarrolle un algoritmo o programa que partiendo de la cantidad de habitantes que tiene cada uno
de los M municipios de los 5 principales Estados del País, calcule y muestre:
a. Estado con mayor población (nombre y cantidad),
b. Estado con menor población (nombre y cantidad),
c. Porcentaje que representan el total de los habitantes de los 5 Estados, respecto al total del
País y
d. Promedio de habitantes por Estado.*/
void main() {
  List<String> estados = [
    "Estado A",
    "Estado B",
    "Estado C",
    "Estado D",
    "Estado E",
  ];

  List<List<int>> poblacionMunicipios = [
    [120000, 85000, 90000, 76000], // Estado A
    [200000, 150000, 180000], // Estado B
    [95000, 110000, 105000, 98000, 102000], // Estado C
    [300000, 220000], // Estado D
    [140000, 130000, 125000], // Estado E
  ];

  List<int> poblacionEstados = [];

  for (var municipios in poblacionMunicipios) {
    int total = municipios.reduce((a, b) => a + b);
    poblacionEstados.add(total);
  }

  // Calcular estado mayor y menor población
  int maxPoblacion = poblacionEstados.reduce((a, b) => a > b ? a : b);
  int minPoblacion = poblacionEstados.reduce((a, b) => a < b ? a : b);

  String estadoMayor = estados[poblacionEstados.indexOf(maxPoblacion)];
  String estadoMenor = estados[poblacionEstados.indexOf(minPoblacion)];

  // Total de los 5 estados
  int totalCincoEstados = poblacionEstados.reduce((a, b) => a + b);

  // Supongamos un total nacional fijo
  int totalPais = 6000000;

  // Porcentaje respecto al total nacional
  double porcentaje = (totalCincoEstados / totalPais) * 100;

  // Promedio por estado
  double promedio = totalCincoEstados / estados.length;

  print("====== RESULTADOS ======\n");

  print("a) Estado con mayor población:");
  print("   $estadoMayor con $maxPoblacion habitantes\n");

  print("b) Estado con menor población:");
  print("   $estadoMenor con $minPoblacion habitantes\n");

  print(
    "c) Porcentaje del total de habitantes de los 5 estados respecto al país:",
  );
  print("   ${porcentaje.toStringAsFixed(2)}%\n");

  print("d) Promedio de habitantes por Estado:");
  print("   ${promedio.toStringAsFixed(2)} habitantes\n");
}
