/*100 personas presentaron una prueba constituida por 3 preguntas. Se requiere desarrollar un
algoritmo o programa que permita determinar la cantidad de personas que respondieron:
a. correctamente las tres preguntas.
b. Correctamente solamente la primera y la segunda pregunta.
c. Correctamente solamente la primera y la tercera pregunta.
d. Correctamente solamente la segunda y la tercera pregunta.
e. Correctamente la primera pregunta por lo menos.
f. Correctamente la segunda pregunta por lo menos.
g. Correctamente la tercera pregunta por lo menos.
h. Además, cuántos no respondieron correctamente ninguna pregunta. */


void main() {
  List<List<int>> respuestas = List.generate(
    100,
    (i) => [
      i % 2,     // P1 alterna entre correcto e incorrecto
      i % 3 == 0 ? 1 : 0,  // P2 correcta cada 3 personas
      i % 4 == 0 ? 1 : 0,  // P3 correcta cada 4 personas
    ],
  );

  int todasTres = 0;
  int p1yP2 = 0;
  int p1yP3 = 0;
  int p2yP3 = 0;
  int p1AlMenos = 0;
  int p2AlMenos = 0;
  int p3AlMenos = 0;
  int ninguna = 0;

  for (var persona in respuestas) {
    int p1 = persona[0];
    int p2 = persona[1];
    int p3 = persona[2];

    if (p1 == 1 && p2 == 1 && p3 == 1) {
      todasTres++;
    }

    if (p1 == 1 && p2 == 1 && p3 == 0) {
      p1yP2++;
    }

    if (p1 == 1 && p2 == 0 && p3 == 1) {
      p1yP3++;
    }

    if (p1 == 0 && p2 == 1 && p3 == 1) {
      p2yP3++;
    }

    if (p1 == 1) p1AlMenos++;

    if (p2 == 1) p2AlMenos++;

    if (p3 == 1) p3AlMenos++;

    if (p1 == 0 && p2 == 0 && p3 == 0) {
      ninguna++;
    }
  }

  print("===== RESULTADOS =====");
  print("a) Las tres correctas: $todasTres");
  print("b) Solo P1 y P2: $p1yP2");
  print("c) Solo P1 y P3: $p1yP3");
  print("d) Solo P2 y P3: $p2yP3");
  print("e) Primera por lo menos: $p1AlMenos");
  print("f) Segunda por lo menos: $p2AlMenos");
  print("g) Tercera por lo menos: $p3AlMenos");
  print("h) Ninguna correcta: $ninguna");
}
