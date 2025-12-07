/*53. Una empresa requiere realizar el cálculo de la nómina semanal de un conjunto M de empleados; para
ello dispone que los datos de entrada son: nombre, nacionalidad (V o E), edad, tipo de empleado
(1,2,3) y número de horas trabajadas. Con esta información se desea calcular e imprimir:
a. Sueldo básico o bruto. Considere para ello que el pago por hora depende del tipo de
empleado, según la siguiente distribución:
• Si el tipo empleado es 1 Bs. 5000
• Si el tipo empleado es 2 Bs. 10000
• Si el tipo empleado es 3 Bs. 15000
b. Seguro Social, que corresponde al 3% del Sueldo Básico, si éste último es mayor a 100000.
c. Total, de venezolanos por tipo de empleado.
d. Total, de Extranjeros cuya edad es impar.
e. Promedio de edad de todos los empleados.
f. Total, general a pagar en sueldos. */

class Empleado {
  String nombre;
  String nacionalidad; // V o E
  int edad;
  int tipo;  
  int horas;

  Empleado(this.nombre, this.nacionalidad, this.edad, this.tipo, this.horas);
}

void main() {

  List<Empleado> empleados = [
    Empleado("Ana", "V", 25, 1, 30),
    Empleado("Luis", "E", 33, 2, 40),
    Empleado("Maria", "V", 40, 3, 50),
    Empleado("Jose", "E", 27, 1, 20),
    Empleado("Pedro", "V", 19, 2, 25),
  ];

  int totalV1 = 0, totalV2 = 0, totalV3 = 0;
  int totalExtranjerosEdadImpar = 0;
  int sumaEdad = 0;
  double totalGeneralSueldos = 0;

  for (var emp in empleados) {

    int pagoHora = 0;
    if (emp.tipo == 1) pagoHora = 5000;
    else if (emp.tipo == 2) pagoHora = 10000;
    else if (emp.tipo == 3) pagoHora = 15000;

    int sueldoBasico = pagoHora * emp.horas;

    double seguro = sueldoBasico > 100000 ? sueldoBasico * 0.03 : 0;

    sumaEdad += emp.edad;
    totalGeneralSueldos += sueldoBasico - seguro;

    if (emp.nacionalidad == "V") {
      if (emp.tipo == 1) totalV1++;
      if (emp.tipo == 2) totalV2++;
      if (emp.tipo == 3) totalV3++;
    }

    if (emp.nacionalidad == "E" && emp.edad % 2 != 0) {
      totalExtranjerosEdadImpar++;
    }

    print("\n>>> ${emp.nombre}");
    print("Sueldo básico: $sueldoBasico");
    print("Seguro social: ${seguro.toStringAsFixed(2)}");
    print("Sueldo neto: ${(sueldoBasico - seguro).toStringAsFixed(2)}");
  }

  double promedioEdad = sumaEdad / empleados.length;


  print("\n=========== RESULTADOS GENERALES ===========");
  print("Total Venezolanos Tipo 1: $totalV1");
  print("Total Venezolanos Tipo 2: $totalV2");
  print("Total Venezolanos Tipo 3: $totalV3");
  print("Total Extranjeros con edad impar: $totalExtranjerosEdadImpar");
  print("Promedio de edad: ${promedioEdad.toStringAsFixed(2)} años");
  print("Total general a pagar: ${totalGeneralSueldos.toStringAsFixed(2)} Bs.");
}
