/*Una empresa X trabaja con láminas de hierro para fabricar una pieza. Se conoce que (a) la lámina
mide en promedio 4 metros de largo por 1.5 metros de ancho; (b) la pieza a fabricar consume 0.5
metros en total. Se requiere que calcule y muestre cuántas piezas se fabrican con una lámina y
cuánto será el desperdicio.*/

void main() {
  double largo = 4;
  double ancho = 1.5;
  double areaPieza = 0.5;

  double areaLamina = largo * ancho;
  int piezas = (areaLamina / areaPieza).floor();
  double desperdicio = areaLamina - (piezas * areaPieza);

  print("Área de la lámina: $areaLamina m²");
  print("Piezas que se pueden fabricar: $piezas");
  print("Desperdicio: $desperdicio m²");
}
