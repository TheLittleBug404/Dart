void main() {
  print(mensaje(nombre: "Fernando",mensaje: "Hi, "));
}

//tenemos 2 tipos de parametros que son obligatorios y posicionales
//dart nos ofrece una forma de poder colocarle nombres a nuestros parametros
//con la palabra required le obligamos a que siempre entre un valor al parametro
String mensaje({required String nombre, String mensaje = "Hola "}) {
  return "$mensaje Ricardo";
}
