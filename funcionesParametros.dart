void main() {
  print(saluda());
  print(saludo2());
  print("La suma de los numeros 4 y 5 es: " + suma(4, 5).toString());
  print("La suma de los numeros 14 y 16 es: ${suma(14, 16)}");
  print("La resta de los numeros 6 y 14 es: ${resta(6, 14)}");
  print("Multiplicacion: ${multiplicacion(3)}");
}

//nos crearemos una funcion sencilla que devuelve un valor de tipo String
String saluda() {
  return "Hola como estas";
}

//a continuacion haremos una funcion lamda
String saludo2() => "Hola esta es un funcion lamda";
int suma(int a, int b) {
  return (a + b);
}

//funcion de la resta pero en lambda
int resta(int a, int b) => (a - b);

//parametros opcionales en la funcion en este ejemplo le damos al valor de b un valor de cero esto solo se cumplira en caso de que
//a b no le asignemos ningun valor
int multiplicacion(int a, [int b = 0]) => (a * b);
