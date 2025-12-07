/*Un hombre desea saber cuánto dinero se generará por concepto de intereses sobre la cantidad
que tiene en inversión en el banco. El decidirá reinvertir los intereses siempre y cuando éstos
excedan a $7000 y en ese caso, desea saber cuánto dinero tendrá finalmente en su cuenta.*/
void main() {
  // Datos fijos
  double capital = 50000; 
  double tasa = 12;         
  // Cálculo del interés
  double interes = capital * (tasa / 100);

  double dineroFinal;

  // Verificación
  if (interes > 7000) {
    dineroFinal = capital + interes;
    print("Los intereses superan 7000, se reinvierten.");
  } else {
    dineroFinal = capital;
    print("Los intereses NO superan 7000, no se reinvierten.");
  }

  // Salidas
  print("Interés generado: \$${interes.toStringAsFixed(2)}");
  print("Dinero final en la cuenta: \$${dineroFinal.toStringAsFixed(2)}");
}
