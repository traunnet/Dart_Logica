/*Un científico desea que un algoritmo le ayude en su trabajo analizándole tres valores que se
suministran, para determinar si los dos primeros son las medidas de una figura conocida. Para ello,
calcule el área de cada una de las figuras que se mencionan a continuación y compárela con el
tercer valor suministrado; si hay coincidencia, imprima un mensaje que indique de qué figura se
trata. Las figuras a analizar son:

4

• Triángulo: b*h Valor1 y Valor2 son base y altura
2
• Círculo: pi * r2 Valor1 y Valor2 son radio y pi
• Rectángulo: b * h Valor1 y Valor2 son base y altura.*/

import 'dart:math';
double valor1 = 12.0; //primer valor
double valor2 = 50.0; //segundo valor
double valor3 = 300.0; //tercer valor
void main() {
  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = pi * pow(valor1, 2);
  double areaRectangulo = valor1 * valor2;

  if (areaTriangulo == valor3) {
    print("Los valores corresponden a un Triángulo con área: $areaTriangulo");
  } else if (areaCirculo == valor3) {
    print("Los valores corresponden a un Círculo con área: $areaCirculo");
  } else if (areaRectangulo == valor3) {
    print("Los valores corresponden a un Rectángulo con área: $areaRectangulo");
  } else {
    print("Los valores no corresponden a ninguna figura conocida.");
  }
}