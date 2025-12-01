/*La UNICEF desea obtener información estadística sobre los orfanatorios ubicados dentro de la
República y sobre los niños huérfanos internados en esos orfanatorios. Por cada niño se conoce:
sexo, edad, nombre del orfanatorio y estado de la República al que pertenece el Orfanatorio. Escriba
un Programa para calcular y mostrar lo siguiente:
a. Porcentaje de huérfanos del Estado Táchira y del Distrito Capital respecto al total del País.
b. Número de huérfanos en cada grupo. Los grupos se definen según la Edad:
Grupo 1: menores de 1 año
Grupo 2: edad comprendida entre 1 y 3 años
Grupo 3: edad comprendida entre 4 y 6 años
Grupo 4: mayores de 6 años
c. Cantidad de niños y niñas y porcentaje que representa cada uno.*/

void main() {
  List<List<dynamic>> ninos = [
    ["M", 2, "Casa Hogar Luz", "Táchira"],
    ["F", 1, "Hogar Esperanza", "Distrito Capital"],
    ["M", 7, "Niños del Sol", "Miranda"],
    ["F", 5, "Refugio Ángeles", "Táchira"],
    ["M", 0, "Hogar Futuro", "Lara"],
    ["F", 3, "Hogar Sonrisas", "Distrito Capital"],
    ["M", 8, "Casa Hogar Luz", "Zulia"],
    ["F", 4, "Refugio Ángeles", "Carabobo"],
  ];

  int total = ninos.length;

  int tachira = 0;
  int distritoCapital = 0;

  int grupo1 = 0; // < 1 año
  int grupo2 = 0; // 1 - 3
  int grupo3 = 0; // 4 - 6
  int grupo4 = 0; // > 6

  int ninosM = 0;
  int ninosF = 0;

  for (var nino in ninos) {
    String sexo = nino[0];
    int edad = nino[1];
    String estado = nino[3];

    // Contar por estado
    if (estado == "Táchira") tachira++;
    if (estado == "Distrito Capital") distritoCapital++;

    // Contar grupos por edad
    if (edad < 1) grupo1++;
    else if (edad <= 3) grupo2++;
    else if (edad <= 6) grupo3++;
    else grupo4++;

    // Contar por sexo
    if (sexo == "M") ninosM++;
    else ninosF++;
  }

  double porcTachira = (tachira * 100) / total;
  double porcDC = (distritoCapital * 100) / total;

  double porcM = (ninosM * 100) / total;
  double porcF = (ninosF * 100) / total;

  print("=============== ESTADÍSTICAS UNICEF ===============");

  print("\nA) Porcentaje de huérfanos por estado:");
  print("Táchira: ${porcTachira.toStringAsFixed(2)} %");
  print("Distrito Capital: ${porcDC.toStringAsFixed(2)} %");

  print("\nB) Huérfanos por grupo de edad:");
  print("Grupo 1 (< 1 año): $grupo1");
  print("Grupo 2 (1 - 3 años): $grupo2");
  print("Grupo 3 (4 - 6 años): $grupo3");
  print("Grupo 4 (> 6 años): $grupo4");

  print("\nC) Cantidad por sexo:");
  print("Niños (M): $ninosM  → ${porcM.toStringAsFixed(2)}%");
  print("Niñas (F): $ninosF  → ${porcF.toStringAsFixed(2)}%");

  print("\n====================================================");
}
