void main() {
  final numeros = [1,2,3,4,5,5,6,7,8,8,9,10]; //esta es una lista de tipo int
  print('Lista de tipo numerica: $numeros'); //imprimimos la lista
  print(
      'Numero de elementos ${numeros.length}'); //imprimimos el numero de elementos de la lista
  print("Imprimiendo el elemento 1: ${numeros[0]}");
  print('Primer elemento de la lista: ${numeros.first}');
  print(
      "Ultimo elemento de la lista: ${numeros.last}"); //ultimo elemento de la lista

  //notamos que al dar la vuelta la lista, esta ya sale entre parentesis () esto sucede por que se volvio de tipo iterable
  print("Lista ordenada de manera inversa: ${numeros.reversed}");

  final numerosReversos = numeros.reversed;
  print("Iterable: $numerosReversos");
  //este iterable lo podemos volver de nuevo una lista con el metodo toList()
  //al hacer esto los datos vovleran aoparecer dentro de dentro de los corchetes[]
  print("Recuperando la lista del iterable: ${numerosReversos.toList()}");
  //con el metodo toSet() en un iterable podemos convertir la lista en un dato de tipo set
  //notemos que los datos de tipo set son datos donde no se repiten valores
  //los datos de tipo set son datos dentro de llaves {}
  //lso valores de un set son valores unicos no tendremos valores duplicados
  print("Dato de tipo set: ${numerosReversos.toSet()}");

  final numerosMayoresACinco = numeros.where((num) {
    return num >= 5; //retornara los numeros en la lista que son mayores o iguales a 5
  });
  print("Numeros mayores a 5 de la lista : ${numerosMayoresACinco.toSet()}");
}
