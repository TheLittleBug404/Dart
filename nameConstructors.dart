//aca veremos que los constructores pueden tener distintos nombres
void main() {
  final Empresa e = Empresa(
      nombre: 'Facebol',
      descripcion: 'Empresa de emprendedores',
      tieneNit: false);
  print(e);
  //que pasa si recibimos un objeto como un JSON
  //nos creamos un Map
  final Map<String, dynamic> rawJson = {
    'nombre': 'YPFB',
    'descripcion': 'Empresa de gas en Bolivia',
    'tieneNit': true
  };
  //con el JSON nos crearemos una instancia de nuestra clase empresa con el constructor from JSON
  //
  final empre = Empresa.fromJSON(rawJson);
  print(empre);
}

class Empresa {
  String nombre;
  String descripcion;
  bool tieneNit;
  //Empresa(this.nombre, this.descripcion, this.tieneNit);
  //haremos un constructor donde necesitaremos todos su parametros
  Empresa(
      {required this.nombre,
      required this.descripcion,
      required this.tieneNit});
  //nos crearemos un constructor que pueda recibir un objeto como un JSON
  //de este constructor necesitamos regresar una instancia
  //tambien necesitamos recibir la cantidad de argumentos que nostros queramos
  //en este ejemplo le daremos de parametro un Map que se llame Json
  Empresa.fromJSON(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'Nombre no encontrado',
        descripcion = json['descripcion'] ?? 'Descripcion no encontrada',
        tieneNit = json['tieneNit'] ?? false;

  @override
  String toString() {
    //usaremos un ternario para saber si la empresa tiene nit o no
    //para esto usaremos el signo de ? y le daremos las opciones true y false
    // este es el ternario ${tieneNit ? 'Si tiene':'No tiene'
    return "Nombre: $nombre\nDescripcion: $descripcion\nNit: ${tieneNit ? 'Si tiene' : 'No tiene'}";
  }
}
