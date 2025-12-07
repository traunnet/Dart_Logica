/*Cinco miembros de un club contra la obesidad desean saber cuánto han bajado o subido de peso
desde la última vez que se reunieron. Para esto se debe realizar un ritual de pesaje en donde cada
uno se pesa en diez básculas distintas para así tener el promedio más exacto de su peso. Si existe
diferencia positiva entre este promedio de peso y el peso de la última vez que se reunieron, significa
que subieron de peso. Pero si la diferencia es negativa, significa que bajaron. Lo que el problema
requiere es que por cada persona se imprima un mensaje que diga SUBIO ó BAJO y la cantidad de
kilos que subió o bajó de peso.*/

void main() {

  String p1_nombre = "Carlos";
  double p1_ant = 92.0;
  double p1_b1 = 91, p1_b2 = 92, p1_b3 = 90, p1_b4 = 92, p1_b5 = 91;
  double p1_b6 = 93, p1_b7 = 92, p1_b8 = 91, p1_b9 = 92, p1_b10 = 91;
  double p1_prom = (p1_b1 + p1_b2 + p1_b3 + p1_b4 + p1_b5 +
                    p1_b6 + p1_b7 + p1_b8 + p1_b9 + p1_b10) / 10;
  double p1_dif = p1_prom - p1_ant;

  String p2_nombre = "Ana";
  double p2_ant = 70.5;
  double p2_b1 = 70, p2_b2 = 70.2, p2_b3 = 70.3, p2_b4 = 70.4, p2_b5 = 70.6;
  double p2_b6 = 70.5, p2_b7 = 70.7, p2_b8 = 70.8, p2_b9 = 70.5, p2_b10 = 70.4;
  double p2_prom = (p2_b1 + p2_b2 + p2_b3 + p2_b4 + p2_b5 +
                    p2_b6 + p2_b7 + p2_b8 + p2_b9 + p2_b10) / 10;
  double p2_dif = p2_prom - p2_ant;

  String p3_nombre = "Luis";
  double p3_ant = 105.0;
  double p3_b1 = 104, p3_b2 = 103.8, p3_b3 = 104.2, p3_b4 = 104.1, p3_b5 = 104.0;
  double p3_b6 = 103.9, p3_b7 = 104.3, p3_b8 = 104.0, p3_b9 = 103.7, p3_b10 = 104.2;
  double p3_prom = (p3_b1 + p3_b2 + p3_b3 + p3_b4 + p3_b5 +
                    p3_b6 + p3_b7 + p3_b8 + p3_b9 + p3_b10) / 10;
  double p3_dif = p3_prom - p3_ant;

  String p4_nombre = "María";
  double p4_ant = 60.0;
  double p4_b1 = 59.5, p4_b2 = 59.7, p4_b3 = 59.8, p4_b4 = 59.9, p4_b5 = 60.0;
  double p4_b6 = 60.1, p4_b7 = 60.2, p4_b8 = 60.1, p4_b9 = 60.0, p4_b10 = 59.9;
  double p4_prom = (p4_b1 + p4_b2 + p4_b3 + p4_b4 + p4_b5 +
                    p4_b6 + p4_b7 + p4_b8 + p4_b9 + p4_b10) / 10;
  double p4_dif = p4_prom - p4_ant;

  String p5_nombre = "Pedro";
  double p5_ant = 80.0;
  double p5_b1 = 79.8, p5_b2 = 79.9, p5_b3 = 80.0, p5_b4 = 80.1, p5_b5 = 80.2;
  double p5_b6 = 80.3, p5_b7 = 80.1, p5_b8 = 80.0, p5_b9 = 79.9, p5_b10 = 80.2;
  double p5_prom = (p5_b1 + p5_b2 + p5_b3 + p5_b4 + p5_b5 +
                    p5_b6 + p5_b7 + p5_b8 + p5_b9 + p5_b10) / 10;
  double p5_dif = p5_prom - p5_ant;

  print("\n=========== RESULTADOS DE PESO ===========");

  imprimirResultado(p1_nombre, p1_dif);
  imprimirResultado(p2_nombre, p2_dif);
  imprimirResultado(p3_nombre, p3_dif);
  imprimirResultado(p4_nombre, p4_dif);
  imprimirResultado(p5_nombre, p5_dif);
}

void imprimirResultado(String nombre, double dif) {
  String estado = dif > 0 ? "SUBIÓ" : "BAJÓ";
  print("$nombre: $estado ${dif.abs().toStringAsFixed(2)} kg");
}
