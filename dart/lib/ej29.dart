/* *Se tienen 4 dígitos en las variables A, B, C, D que forman un entero positivo N. Se desea redondear
N a la centena más próxima y mostrar el resultado. Considere los siguientes ejemplos: Si A es 2, B
es 3, C es 6 y D es 2, entonces N es 2362 y el resultado redondeado es 2400. Si N es 2342, el
resultado redondeado será 2300 y si N es 2962, el resultado redondeado será 3000.*/

void main() {
  int a = 2;
  int b = 3;
  int c = 3;
  int d = 2;

  // Formar el número completo
  int N = (a * 1000) + (b * 100) + (c * 10) + d;

  int resultado;

  // Redondear a la centena más cercana
  if (c >= 5) {
    resultado = (a * 1000) + (b * 100) + 100; // subir una centena
    
  } else {
    resultado = (a * 1000) + (b * 100); // quedarse con la centena actual
  }

  print("El número original es: $N");
  print("El número redondeado es: $resultado");
}
