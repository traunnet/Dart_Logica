/*Calcular el salario neto de un trabajador en función del número de horas trabajadas, el precio de la
hora y considerando un descuento fijo al sueldo base por concepto de impuestos del 20%.*/
int horasTrabajadas = 160;
double precioHora = 50.0;
double descuentoImpuestos = 0.20;
double sueldoBruto = horasTrabajadas * precioHora;
double descuento = sueldoBruto * descuentoImpuestos;
double sueldoNeto = sueldoBruto - descuento;
void main() {
  print("===============================");
  print("Sueldo bruto: $sueldoBruto");
  print("Descuento por impuestos (20%): $descuento");
  print("Sueldo neto: $sueldoNeto");
  print("===============================");
}
