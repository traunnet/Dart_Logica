/*Una persona desea iniciar un negocio, para lo cual piensa verificar cuánto dinero le prestaría el
banco por hipotecar su casa. Tiene una cuenta bancaria, pero no quiere disponer de ella a menos
que el monto por hipotecar su casa sea muy pequeño. Si el monto de la hipoteca es menor que
$1.000.000 entonces invertirá el 50% de la inversión total, y un socio invertirá el otro 50%. Si el
monto de la hipoteca es de $1.000.000 o más, entonces invertirá el monto total de la hipoteca y el
resto del dinero que se necesite para cubrir la inversión total se repartirá a partes iguales entre el
socio y él.*/
void main() {
  // VALORES FIJOS
  double inversionTotal = 2000000;
  double hipoteca = 1500000;

  double aportePersona = 0;
  double aporteSocio = 0;

  // --- Lógica del problema ---
  if (hipoteca < 1000000) {
    // Caso 1: Hipoteca < 1 millón
    aportePersona = inversionTotal / 2;
    aporteSocio = inversionTotal / 2;
  } else {
    // Caso 2: Hipoteca >= 1 millón
    double faltante = inversionTotal - hipoteca;

    if (faltante < 0) faltante = 0;

    aportePersona = hipoteca + (faltante / 2);
    aporteSocio = faltante / 2;
  }

  // --- Resultados ---
  print("\n===== RESULTADOS (HIPOTECA) =====");
  print("Monto total de la inversión: \$$inversionTotal");
  print("Monto de la hipoteca: \$$hipoteca");

  print("Aporte de la persona: \$${aportePersona.toStringAsFixed(2)}");
  print("Aporte del socio: \$${aporteSocio.toStringAsFixed(2)}");
}
