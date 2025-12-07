/*El cambio de divisas en la bolsa de Madrid el 25/08/1987 fue el siguiente
100 chelines austríacos = 956.871 pesetas
1 dólar EEUU = 122.499 pesetas
100 dracmas griegos = 88.607 pesetas
100 francos belgas = 323.728 pesetas
1 franco francés = 20.110 pesetas
1 libra esterlina = 178.938 pesetas
100 liras italianas = 9.289 pesetas
Lea una cantidad en chelines austriacos e imprima el equivalente en pesetas. Lea una
cantidad en dracmas griegos e imprima su equivalente en francos franceses. Finalmente, lea una
cantidad en pesetas e imprima su equivalente en dólares y liras italianas.*/

double chelinesAustriacos = 5000.0; 
double dracmasGriegos = 3000.0;     
double pesetas = 10000.0;         
double pesetasPorCheline = 956.871 / 100;
double francosPorDracma = 20.110 / 88.607;
double dolaresPorPeseta = 1 / 122.499;
double lirasPorPeseta = 100 / 9.289;
double equivalentePesetas = chelinesAustriacos * pesetasPorCheline;
double equivalenteFrancos = dracmasGriegos * francosPorDracma;
double equivalenteDolares = pesetas * dolaresPorPeseta;
double equivalenteLiras = pesetas * lirasPorPeseta;
void main() {
  print("===============================");
  print("Equivalente de $chelinesAustriacos chelines austríacos en pesetas: ${equivalentePesetas.toStringAsFixed(2)} pesetas");
  print("Equivalente de $dracmasGriegos dracmas griegos en francos franceses: ${equivalenteFrancos.toStringAsFixed(2)} francos franceses");
  print("Equivalente de $pesetas pesetas en dólares: ${equivalenteDolares.toStringAsFixed(2)} dólares");
  print("Equivalente de $pesetas pesetas en liras italianas: ${equivalenteLiras.toStringAsFixed(2)} liras italianas");
  print("===============================");
}