//Tipos de datos MAPS
void main() {
  //creandonos un mapa que contiene los datos de pokemon
  //datos de tipo MAPS
  //<llave,dato>
  final Map<String, dynamic> pokemon = {
    'nombre': 'Pikachu',
    'hp': 100,
    'estaVivo': true,
    'habilidades': 'Electrico',
    'tecnicas': <String>[
      'Ataque relampago',
      'Ataque pelotita',
      'Ataque hiper trueno'
    ],
    'amigos': {
      //tambien podemos colocar un Map dentro de otro Map
      1: 'Volvazor',
      2: 'Escuartol',
      3: 'Charmander'
    }
  };
  //Maps de tipo <int,String>
  final tercios = {1: 'abc', 2: 'def', 3: 'ghi', 4: 'jkl', 150: 'ewq'};
  //print(pokemon);
  //print(tercios);
  //usamos el metodo de llaves cuadradas para imprimir
  print("Nombre del pokemon: ${pokemon['nombre']}");
  //entrando a un mapa dentro de otro mapa
  print("Amigo 1 del pokemon: ${pokemon['amigos'][1]}");
  print("Amigo 3: ${pokemon['amigos'][3]}");
  print("Amigo 2: ${pokemon['amigos'][2]}");
  print("Nombre de la Tercia: ${tercios[150]}");
}
