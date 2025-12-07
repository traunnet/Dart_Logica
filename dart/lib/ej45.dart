import 'dart:math';

void main() {
  // --- VALORES FIJOS ---
  double A = 1;
  double B = -5;
  double C = 6;

  print("Ecuación: ${A}x² + ${B}x + ${C} = 0");

  // --- Calcular discriminante ---
  double D = pow(B, 2) - (4 * A * C);

  print("Discriminante (D): $D\n");

  // --- Evaluar cada caso ---
  if (D == 0) {
    // Una única solución real
    double X = -B / (2 * A);
    print("D = 0 → Tiene una raíz doble:");
    print("X1 = X2 = $X");
  } else if (D > 0) {
    // Dos soluciones reales
    double X1 = (-B + sqrt(D)) / (2 * A);
    double X2 = (-B - sqrt(D)) / (2 * A);

    print("D > 0 → Tiene dos soluciones reales:");
    print("X1 = $X1");
    print("X2 = $X2");
  } else {
    // No tiene soluciones reales
    print("D < 0 → No tiene solución en los números reales.");
  }
}
