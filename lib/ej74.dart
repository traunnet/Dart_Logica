/*La bloquera “El Milagro” es una pequeña empresa dedicada a la fabricación de bloques de cemento
para construcción. Actualmente cuenta con una plantilla de obreros, cada uno de los cuales tiene un
número X de unidades a producir por semana. La secretaria registra, cada día, el número de bloques
que produjo cada obrero, para totalizar el sábado lo producido en la semana. De cada obrero se
conoce: nombre y cantidad de unidades producidas por día. Desarrolle un programa, que calcule y
muestre:
• Por obrero:
o Nombre
o Total, producido en la semana.
o Porcentaje que representa la producción semanal, respecto al límite
establecido.
• En general:
o Porcentaje de obreros que alcanzaron o superaron el número de unidades
producidas establecidas.
o Nombre del obrero que más produjo y cantidad producida.
o Promedio de producción de la bloquera en la semana.*/

void main() {
  // Meta semanal (unidades establecidas)
  int metaSemanal = 500;

  String nombre1 = "Carlos";
  int d1_lun = 80,
      d1_mar = 75,
      d1_mie = 70,
      d1_jue = 90,
      d1_vie = 85,
      d1_sab = 60;
  int total1 = d1_lun + d1_mar + d1_mie + d1_jue + d1_vie + d1_sab;
  double porc1 = (total1 * 100) / metaSemanal;

  String nombre2 = "María";
  int d2_lun = 60,
      d2_mar = 65,
      d2_mie = 70,
      d2_jue = 60,
      d2_vie = 55,
      d2_sab = 50;
  int total2 = d2_lun + d2_mar + d2_mie + d2_jue + d2_vie + d2_sab;
  double porc2 = (total2 * 100) / metaSemanal;

  String nombre3 = "Pedro";
  int d3_lun = 90,
      d3_mar = 95,
      d3_mie = 100,
      d3_jue = 85,
      d3_vie = 90,
      d3_sab = 80;
  int total3 = d3_lun + d3_mar + d3_mie + d3_jue + d3_vie + d3_sab;
  double porc3 = (total3 * 100) / metaSemanal;

  print("=========== RESULTADOS POR OBRERO ===========");
  print(
    "Obrero: $nombre1  | Total: $total1 | % Meta: ${porc1.toStringAsFixed(2)}%",
  );
  print(
    "Obrero: $nombre2  | Total: $total2 | % Meta: ${porc2.toStringAsFixed(2)}%",
  );
  print(
    "Obrero: $nombre3  | Total: $total3 | % Meta: ${porc3.toStringAsFixed(2)}%",
  );
  print("");


  // Cuántos alcanzaron la meta
  int alcanzaron = 0;
  if (total1 >= metaSemanal) alcanzaron++;
  if (total2 >= metaSemanal) alcanzaron++;
  if (total3 >= metaSemanal) alcanzaron++;

  double porcAlcanzaron = (alcanzaron * 100) / 3;

  // Buscar el obrero que más produjo
  String mejorNombre = nombre1;
  int mejorTotal = total1;

  if (total2 > mejorTotal) {
    mejorTotal = total2;
    mejorNombre = nombre2;
  }
  if (total3 > mejorTotal) {
    mejorTotal = total3;
    mejorNombre = nombre3;
  }

  // Promedio total de producción de la empresa
  double promedioEmpresa = (total1 + total2 + total3) / 3;

  print("=========== RESULTADOS GENERALES ===========");
  print(
    "Porcentaje de obreros que alcanzaron la meta: ${porcAlcanzaron.toStringAsFixed(2)}%",
  );
  print("Obrero que más produjo: $mejorNombre con $mejorTotal bloques");
  print(
    "Promedio de producción semanal de la bloquera: ${promedioEmpresa.toStringAsFixed(2)}",
  );
}
