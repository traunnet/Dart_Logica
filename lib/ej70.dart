/*Una estación climática proporciona un par de temperaturas diarias (máx, min), el rango normal de
temperatura es entre 14 y 30 ° C. La pareja fin de temperaturas es 0,0. Se pide determinar:
g. El número de días cuyas temperaturas se han proporcionado.
h. Las medias máxima y mínima.
i. Número de errores que ingresaron (temperaturas fuera de rango).
j. Porcentaje que representan los errores ingresados.*/
void main() {
  List<List<double>> datos = [
    [28, 15],
    [31, 16], // error (max > 30)
    [25, 14],
    [18, 10], // error (min < 14)
    [30, 20],
    [0, 0] // fin
  ];

  int dias = 0;
  int errores = 0;
  double sumaMax = 0;
  double sumaMin = 0;

  for (var temp in datos) {
    double tmax = temp[0];
    double tmin = temp[1];

    if (tmax == 0 && tmin == 0) break;

    dias++;
    sumaMax += tmax;
    sumaMin += tmin;

    if (tmax < 14 || tmax > 30 || tmin < 14 || tmin > 30) {
      errores++;
    }
  }

  double mediaMax = sumaMax / dias;
  double mediaMin = sumaMin / dias;
  double porcentajeErrores = (errores * 100) / dias;

  print("===== RESULTADOS =====");
  print("Días procesados: $dias");
  print("Media de temperatura máxima: ${mediaMax.toStringAsFixed(2)} °C");
  print("Media de temperatura mínima: ${mediaMin.toStringAsFixed(2)} °C");
  print("Errores: $errores");
  print("Porcentaje de errores: ${porcentajeErrores.toStringAsFixed(2)} %");
}
