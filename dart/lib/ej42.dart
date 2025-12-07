/*Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un médico
determina si una persona tiene anemia o no, lo cual depende de su nivel de hemoglobina en la
sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una persona es menor que
el rango que le corresponde, se determina su resultado como positivo y en caso contrario como
negativo. La tabla en la que el médico se basa para obtener el resultado es la siguiente:
EDAD NIVEL DE HEMOGLOBINA
0 - 1 mes 13 - 26 g%
Mayor de 1 y menor o igual de 6 meses 10 - 18 g%
Mayor de 6 y menor o igual de 12 meses 11 - 15 g%
Mayor de 1 y menor o igual que 5 años 11.5 - 15 g%
Mayor de 5 y menor o igual que 10 años 12.6 – 15.5 g%
Mayor de 10 y menor o igual que 15 años 13 - 15.5 g%
Mujeres mayores de 15 años 12 - 16 g%
Hombres mayores de 15 años 14 - 18 g%
Desarrolle un algoritmo que indique, si una persona tiene Anemia o no. */
void main() {
  int edadMeses = 15;
  int edadAnios = 13;
  String sexo = "M";
  double hemoglobina = 12.5;

  bool tieneAnemia = verificarAnemia(edadMeses, edadAnios, sexo, hemoglobina);

  if (tieneAnemia) {
    print("Resultado: POSITIVO → La persona tiene anemia.");
  } else {
    print("Resultado: NEGATIVO → La persona NO tiene anemia.");
  }
}

bool verificarAnemia(
  int edadMeses,
  int edadAnios,
  String sexo,
  double hemoglobina,
) {
  double min = 0, max = 0;

  if (edadMeses >= 0 && edadMeses <= 1) {
    min = 13;
    max = 26;
  } else if (edadMeses > 1 && edadMeses <= 6) {
    min = 10;
    max = 18;
  } else if (edadMeses > 6 && edadMeses <= 12) {
    min = 11;
    max = 15;
  } else if (edadAnios > 1 && edadAnios <= 5) {
    min = 11.5;
    max = 15;
  } else if (edadAnios > 5 && edadAnios <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edadAnios > 10 && edadAnios <= 15) {
    min = 13;
    max = 15.5;
  } else if (edadAnios > 15 && sexo == "M") {
    min = 12;
    max = 16;
  } else if (edadAnios > 15 && sexo == "H") {
    min = 14;
    max = 18;
  } else {
    print("Rango de edad no reconocido.");
    return false;
  }

  return hemoglobina < min;
}
