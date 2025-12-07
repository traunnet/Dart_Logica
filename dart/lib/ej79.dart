/*Una pequeña Librería de la Ciudad desea controlar los datos de los diferentes autores cuyos libros
están a la venta. Cada autor ha escrito diversos libros, pudiendo estos ser clasificados de acuerdo al
género: ciencia ficción, romance, acción, terror, novela, autoayuda y académico. Para cada texto se
conoce: código, género y número de páginas. Escriba un programa, que permita calcular y mostrar:
• Por autor:
 Apellido
 Total, de páginas escritas o Código del libro con mayor número de páginas y
cantidad de páginas.
• En General:
 Porcentaje de libros de ciencia ficción, respecto al total de libros.
 Cantidad de libros de ciencia ficción y romance que hay en existencia.
 Apellido del autor con mayor cantidad de libros escritos y cantidad de libros
escritos.*/

void main() {
  List<Map<String, dynamic>> autores = [
    {
      "apellido": "García",
      "libros": [
        {"codigo": 101, "genero": "ciencia ficción", "paginas": 320},
        {"codigo": 102, "genero": "romance", "paginas": 250},
        {"codigo": 103, "genero": "acción", "paginas": 290},
      ],
    },
    {
      "apellido": "Mendoza",
      "libros": [
        {"codigo": 201, "genero": "terror", "paginas": 180},
        {"codigo": 202, "genero": "novela", "paginas": 450},
      ],
    },
    {
      "apellido": "Ruiz",
      "libros": [
        {"codigo": 301, "genero": "ciencia ficción", "paginas": 500},
        {"codigo": 302, "genero": "autoayuda", "paginas": 220},
        {"codigo": 303, "genero": "académico", "paginas": 400},
        {"codigo": 304, "genero": "romance", "paginas": 280},
      ],
    },
  ];

  int totalLibros = 0;
  int totalCienciaFiccion = 0;
  int totalRomance = 0;

  // Para determinar autor con más libros
  String autorMasLibros = "";
  int cantidadMasLibros = 0;


  print("========== INFORME POR AUTOR ==========\n");

  for (var autor in autores) {
    String apellido = autor["apellido"];
    List libros = autor["libros"];

    int totalPaginas = 0;

    int maxPaginas = -1;
    int codigoMaxPaginas = 0;

    // Si este autor tiene más libros que el actual mejor
    if (libros.length > cantidadMasLibros) {
      cantidadMasLibros = libros.length;
      autorMasLibros = apellido;
    }

    for (var libro in libros) {
      int paginas = libro["paginas"];
      String genero = libro["genero"];
      int codigo = libro["codigo"];

      totalPaginas += paginas;
      totalLibros++;

      // Contar ciencia ficción y romance
      if (genero == "ciencia ficción") {
        totalCienciaFiccion++;
      }
      if (genero == "romance") {
        totalRomance++;
      }

      // Libro con más páginas
      if (paginas > maxPaginas) {
        maxPaginas = paginas;
        codigoMaxPaginas = codigo;
      }
    }

    print("Autor: $apellido");
    print("  Total de páginas escritas: $totalPaginas");
    print(
      "  Libro con más páginas: Código $codigoMaxPaginas con $maxPaginas páginas\n",
    );
  }

  double porcentajeCienciaFiccion = (totalCienciaFiccion / totalLibros) * 100;

  print("========== INFORME GENERAL ==========\n");

  print(
    "Porcentaje de libros de ciencia ficción: ${porcentajeCienciaFiccion.toStringAsFixed(2)}%",
  );
  print("Cantidad de libros de ciencia ficción: $totalCienciaFiccion");
  print("Cantidad de libros de romance: $totalRomance\n");

  print(
    "Autor con mayor cantidad de libros: $autorMasLibros ($cantidadMasLibros libros)",
  );
}
