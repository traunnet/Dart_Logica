/*72.Conociendo la masa y distancia de dos cuerpos se puede determinar la Fuerza de atracción que se
ejerce entre ambos. Se desea determinar las fuerzas de atracción ejercida entre la tierra y diversos satélites ubicados a distintas alturas. Para lo cual la NASA le ha solicitado a usted construir un
programa que responda a los siguientes requerimientos:
a) Cuál es la mayor y menor fuerza de atracción ejercida por los satélites en estudio
b) La fuerza de atracción promedio ejercida por los satélites en estudio
c) La mayor masa de todos los satélites estudiados
d) La masa promedio de los satélites
e) La menor y mayor altura de los satélites
La fórmula para determinar la Fuerza de atracción es:
F = G m M
r
2
donde:
m: masa satélite;
M: Masa tierra (5,97 * 10 24 Kg);
r: distancia de los cuerpos;
G: Constante Gravitatoria (6,67259 * 10-11 N*m2)Kg2
Considere la siguiente muestra para realizar la prueba del Programa:
Satélite País Masa Altura
Kg. Mts
Canada 1 Canadá 8.300 31.200.000
Alfa 1 Chile 5.500 36.000.000
Boby 4 EE.UU. 12.000 33.450.000
Che 3 Argentina 3.350 34.200.000*/

void main() {
  const double G = 6.67259e-11; // Constante gravitatoria
  const double M = 5.97e24; // Masa de la Tierra (kg)

  List<List<dynamic>> satelites = [
    ["Canada 1", "Canadá", 8300.0, 31200000.0],
    ["Alfa 1", "Chile", 5500.0, 36000000.0],
    ["Boby 4", "EE.UU.", 12000.0, 33450000.0],
    ["Che 3", "Argentina", 3350.0, 34200000.0],
  ];

  int total = satelites.length;

  double mayorF = -1;
  double menorF = double.infinity;
  double sumaFuerzas = 0;

  double mayorMasa = -1;
  double sumaMasa = 0;

  double menorAltura = double.infinity;
  double mayorAltura = -1;

  // Lista para mostrar fuerzas individuales
  List<Map<String, dynamic>> resultados = [];

  for (var s in satelites) {
    String nombre = s[0];
    String pais = s[1];
    double masa = s[2];
    double altura = s[3];

    // Distancia r = radio Tierra + altura
    // Radio Tierra: 6,371,000 m
    double r = 6371000 + altura;

    // Fuerza gravitatoria: F = G * m * M / r²
    double F = G * masa * M / (r * r);

    resultados.add({
      "nombre": nombre,
      "pais": pais,
      "masa": masa,
      "altura": altura,
      "fuerza": F,
    });

    // Actualizar estadísticas
    if (F > mayorF) mayorF = F;
    if (F < menorF) menorF = F;

    sumaFuerzas += F;

    if (masa > mayorMasa) mayorMasa = masa;
    sumaMasa += masa;

    if (altura > mayorAltura) mayorAltura = altura;
    if (altura < menorAltura) menorAltura = altura;
  }

  double promedioFuerza = sumaFuerzas / total;
  double promedioMasa = sumaMasa / total;

  print("=============== FUERZAS GRAVITACIONALES NASA ===============\n");

  for (var s in resultados) {
    print("Satélite: ${s['nombre']} (${s['pais']})");
    print("Masa: ${s['masa']} kg");
    print("Altura: ${s['altura']} m");
    print("Fuerza ejercida: ${s['fuerza']} N\n");
  }

  print("===================== RESULTADOS =====================");
  print("Mayor fuerza de atracción: $mayorF N");
  print("Menor fuerza de atracción: $menorF N");
  print("Fuerza promedio: $promedioFuerza N");

  print("\nMayor masa: $mayorMasa kg");
  print("Masa promedio: $promedioMasa kg");

  print("\nAltura mínima: $menorAltura m");
  print("Altura máxima: $mayorAltura m");
  print("========================================================");
}
