//Aca definiremos el tipo de variables que tiene DART
void main() {
  // ! tipos de variables String
  final String pokemon = "Pikachu";
  // ! tipos de variable int
  final int hp = 100;
  // !tipos de variable Booleana
  final bool isAlive = true;
  // !Listado de tipo String
  final List<String> caracteristicas = ['amarillo', 'Peludo'];
  // !Listado de tipo String
  final List<int> medidas = [2, 3];
  //TIPOS DE DATOS dynamic
  dynamic errorMessage = 'Hola Ricardo';
  errorMessage = true; //BOOBLEANO
  errorMessage = [1, 2, 3, 4]; //listado de numeros
  errorMessage = {1, 2, 3, 4, 5}; //set de datos
  errorMessage = () => true; //funcion que retorna el valor booelano TRUE
  errorMessage = null; //valor de tipo null
  // * todo lo que coloquemos entre las comillas triples seran nuestros string multilinea
  print("""
  $pokemon
  $hp
  $isAlive
  $caracteristicas
  $medidas
  $errorMessage
  """);
}
