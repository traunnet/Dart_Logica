/*Una persona debe realizar un muestreo con 100 personas para determinar el promedio de peso de
los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Para ello, conforme
encuentra a las personas introduce los datos a su computadora, la cual mediante un programa las
clasifica y despliega los cuatro promedios que la persona requiere. Las categorías se trabajan de
acuerdo a la siguiente tabla: 
categoría         edad
niño              0 a 12 años
joven            13 a 29 años
adulto          30 a 59 años
viejo            60 años en adelante
*/
void main() {
  List<Map<String, dynamic>> personas = List.generate(
    100,
    (i) => {
      "edad": (i % 80) + 1,        
      "peso": 20 + (i % 60).toDouble()  
    },
  );

  double sumaNinos = 0;
  double sumaJovenes = 0;
  double sumaAdultos = 0;
  double sumaViejos = 0;

  int cantNinos = 0;
  int cantJovenes = 0;
  int cantAdultos = 0;
  int cantViejos = 0;

  for (var persona in personas) {
    int edad = persona["edad"];
    double peso = persona["peso"];

    if (edad >= 0 && edad <= 12) {
      sumaNinos += peso;
      cantNinos++;
    } else if (edad >= 13 && edad <= 29) {
      sumaJovenes += peso;
      cantJovenes++;
    } else if (edad >= 30 && edad <= 59) {
      sumaAdultos += peso;
      cantAdultos++;
    } else if (edad >= 60) {
      sumaViejos += peso;
      cantViejos++;
    }
  }

  double promNinos = cantNinos > 0 ? sumaNinos / cantNinos : 0;
  double promJovenes = cantJovenes > 0 ? sumaJovenes / cantJovenes : 0;
  double promAdultos = cantAdultos > 0 ? sumaAdultos / cantAdultos : 0;
  double promViejos = cantViejos > 0 ? sumaViejos / cantViejos : 0;

  print("========== PROMEDIOS DE PESO ==========");
  print("Niños ($cantNinos personas): ${promNinos.toStringAsFixed(2)} kg");
  print("Jóvenes ($cantJovenes personas): ${promJovenes.toStringAsFixed(2)} kg");
  print("Adultos ($cantAdultos personas): ${promAdultos.toStringAsFixed(2)} kg");
  print("Viejos ($cantViejos personas): ${promViejos.toStringAsFixed(2)} kg");
}
