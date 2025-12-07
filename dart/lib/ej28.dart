/*Una empresa quiere hacer una compra de varias piezas de la misma clase a un fabricante de
refacciones. La empresa dependiendo del monto total de la compra, decidirá qué hacer para pagar
al fabricante. Si el monto total de la compra excede de $500000 la empresa tendrá la capacidad
de invertir de su propio dinero un 55% del monto de la compra, pedir presta al banco un 30% y el
resto lo pagará solicitando un crédito al fabricante. Si el monto total de la compra no excede de
$500000 la empresa tendrá capacidad de invertir de su propio dinero un 70% y el restante 30% lo
pagará solicitando crédito al fabricante. El fabricante cobra por concepto de intereses un 20%
sobre la cantidad que se le pague a crédito. Calcule y muestre la cantidad a invertir de los fondos
de la empresa, la cantidad a pagar a crédito, el monto a pagar por intereses y si es necesario, la
cantidad prestada al banco.*/

void main() {

  double T = 30000;  

  double propio = 0.0;
  double banco = 0.0;
  double credito = 0.0;
  double interes = 0.0;

  // Caso 1: compra mayor a 500000
  if (T > 500000) {
    propio = 0.55 * T;
    banco  = 0.30 * T;
    credito = T - propio - banco; // equivale a 15%
  } 
  // Caso 2: compra menor o igual a 500000
  else {
    propio = 0.70 * T;
    banco  = 0.0;
    credito = 0.30 * T;
  }

  // Intereses del fabricante (20% del crédito)
  interes = 0.20 * credito;

  double totalPagarFabricante = credito + interes;

  // Resultados
  print("Monto total de la compra: \$${T.toStringAsFixed(2)}");
  print("Inversión propia:          \$${propio.toStringAsFixed(2)}");
  print("Préstamo bancario:         \$${banco.toStringAsFixed(2)}");
  print("Crédito al fabricante:     \$${credito.toStringAsFixed(2)}");
  print("Intereses (20%):           \$${interes.toStringAsFixed(2)}");
  print("Total al fabricante:       \$${totalPagarFabricante.toStringAsFixed(2)}");
}
