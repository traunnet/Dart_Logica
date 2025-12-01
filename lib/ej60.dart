/*Una empresa está interesada en automatizar el proceso anual de cálculo de intereses de mora y de
descuentos en el cobro de las facturas de los clientes a crédito. Para ello la empresa utiliza los
siguientes criterios:
a. Si la factura se paga se paga 60 días después de haber realizado la compra se cobra un
interés de mora del 8% sobre el monto de la factura.
b. Si la factura se paga entre 31 y 59 días después de haber realizado la compra se cobra un
interés de mora del 6% sobre el monto de la factura.
c. Si la factura se paga antes de los 15 días de haber realizado la compra se hace un descuento
del 2% sobre el monto de la factura.

Realice un algoritmo que lea los datos de las facturas por pantalla e imprima para cada factura el
número, nombre del cliente, el monto a cancelar, el monto a pagar por interés de mora y monto
descontado por pronto pago.
Los datos de cada factura son: Número de factura (num-fac), nombre del cliente (num-cli), monto de
la factura (mon-fac), fecha de compra (fec-com) y fecha de pago (fec-pag). */
void main() {
  // Lista de facturas con datos fijos
  List<Map<String, dynamic>> facturas = [
    {
      "numFac": "F001",
      "nomCli": "Carlos Pérez",
      "monFac": 1200.0,
      "fecCom": 10,
      "fecPag": 75
    },
    {
      "numFac": "F002",
      "nomCli": "Ana Gómez",
      "monFac": 800.0,
      "fecCom": 20,
      "fecPag": 40
    },
    {
      "numFac": "F003",
      "nomCli": "Luis Torres",
      "monFac": 500.0,
      "fecCom": 5,
      "fecPag": 12
    }
  ];

  for (var factura in facturas) {
    String numFac = factura["numFac"];
    String nomCli = factura["nomCli"];
    double monFac = factura["monFac"];
    int fecCom = factura["fecCom"];
    int fecPag = factura["fecPag"];

    int dias = fecPag - fecCom;
    double interes = 0;
    double descuento = 0;

    // Reglas de intereses y descuento
    if (dias >= 60) {
      interes = monFac * 0.08;
    } else if (dias >= 31 && dias <= 59) {
      interes = monFac * 0.06;
    } else if (dias < 15) {
      descuento = monFac * 0.02;
    }

    double montoFinal = monFac + interes - descuento;

    print("----- Factura Procesada -----");
    print("Número: $numFac");
    print("Cliente: $nomCli");
    print("Monto original: \$${monFac.toStringAsFixed(2)}");
    print("Días transcurridos: $dias");
    print("Interés de mora: \$${interes.toStringAsFixed(2)}");
    print("Descuento por pronto pago: \$${descuento.toStringAsFixed(2)}");
    print("Monto final a pagar: \$${montoFinal.toStringAsFixed(2)}");
    print("-----------------------------\n");
  }
}
