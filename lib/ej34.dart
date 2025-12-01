double temperatura = 85;
String deporte = "";

void main() {
  if (temperatura > 85) {
    deporte = "Natación";
  } else if (temperatura > 70 && temperatura <= 85) {
    deporte = "Tenis";
  } else if (temperatura > 32 && temperatura <= 70) {
    deporte = "Golf";
  } else if (temperatura > 10 && temperatura <= 32) {
    deporte = "Esquí";
  } else {
    deporte = "Marcha";
  }

  print("Temperatura: $temperatura °F");
  print("Deporte recomendado: $deporte");
}
