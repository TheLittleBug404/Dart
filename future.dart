void main() {
  print('Inicio del programa');
  httpGet('https//fernando-herrera.com/cursos')
  .then((value) {
    print(value);
  }).catchError((err) {
    print('Error => $err');
  });
  print('Fin del programa');
}

//crearemos un future para un hhtp.get
Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), () {
    //esta funcion la ejecutaremos cuando pase ese segundo que le establecimos arriba
    throw 'Error en la peticion HTTP';
    //return ('Respuesta de la peticion HTTP');
  });
}
