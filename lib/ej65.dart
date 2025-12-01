/*Calcular el sueldo neto de los trabajadores de una compañía sabiendo que este depende de los
siguientes datos:
• sueldo básico mensual 100000 si es obrero
• sueldo básico mensual 165500 si es administrativo
• sueldo básico mensual 250000 si es ejecutivo Las asignaciones y deducciones son:
• aporte por cada hijo hasta 5 hijos 10% del sueldo básico
• aporte por asistencia superior al 95% de los 30 días del mes 5% del sueldo básico.
• Deducción del 10% del sueldo básico para la caja de ahorros.
• Deducción para el seguro social 2% del sueldo básico
Por cada empleado debe salir un registro con el nombre y cédula, sueldo básico, aporte a la Caja de
Ahorros, seguro social y sueldo neto.*/

void main() {
  // Datos fijos: nombre, cedula, tipo (1=obrero,2=admin,3=ejecutivo), hijos, asistencia en días (de 30)
  List<Map<String, dynamic>> empleados = [
    {"nombre": "Ana Pérez", "ced": "12345678", "tipo": 1, "hijos": 2, "asis": 29},
    {"nombre": "Luis Gómez", "ced": "87654321", "tipo": 2, "hijos": 4, "asis": 30},
    {"nombre": "Carlos Ruiz", "ced": "45678912", "tipo": 3, "hijos": 6, "asis": 25},
  ];

  for (var emp in empleados) {
    String nombre = emp["nombre"];
    String ced = emp["ced"];
    int tipo = emp["tipo"];
    int hijos = emp["hijos"];
    int asistencia = emp["asis"];

    double sueldoBasico = 0;
    if (tipo == 1) sueldoBasico = 100000;
    if (tipo == 2) sueldoBasico = 165500;
    if (tipo == 3) sueldoBasico = 250000;

    int hijosValidos = hijos > 5 ? 5 : hijos;
    double aporteHijos = hijosValidos * (sueldoBasico * 0.10);

    double aporteAsistencia = 0;
    if (asistencia > (30 * 0.95)) {
      aporteAsistencia = sueldoBasico * 0.05;
    }

    double totalAsignaciones = aporteHijos + aporteAsistencia;

    double cajaAhorros = sueldoBasico * 0.10;
    double seguroSocial = sueldoBasico * 0.02;

    double totalDeducciones = cajaAhorros + seguroSocial;

    double sueldoNeto = sueldoBasico + totalAsignaciones - totalDeducciones;

    print("------------------------------------");
    print("Nombre: $nombre");
    print("Cédula: $ced");
    print("Sueldo Básico: $sueldoBasico");
    print("Aporte Caja Ahorros: $cajaAhorros");
    print("Seguro Social: $seguroSocial");
    print("Sueldo Neto: ${sueldoNeto.toStringAsFixed(2)}");
  }
}
