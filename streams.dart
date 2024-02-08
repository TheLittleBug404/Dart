//los streams son como el flujo de agua(corriente de agua) que tenemos en casa nosotros podemos hacer lo que queramos como cerrar el grifo
//abrir el grifo podemos evitar que se cierre etc es el mismo concepto con los streams
void main(){
  /*para que los streams empiezen a emitir valores alguien tiene que estar escuchandolos
  para esto colocaremos el .listen
  esto emitira valores hasta el infinito si queremos que este stream emita x valores 
  usaremos take los valores empezaran desde cero
  */
  emitirNumeros().listen((valor) {
    print('Stream value: $valor');
  });
}
//nos creamos una funcion que regresara un Stream
//tenemos que indicar que tipo de informacion fluye a traves del stream en este caso sera numeros int
Stream<int> emitirNumeros(){
  /*hay varias formas de crear un stream para este caso usaremos un constructor llamado periodico(periodic)
  En el periodic le colocaremos el periodo de tiempo entre cada una de las emisiones
  1re Parametro: Colocamos la duracion que lo emitiremos en este caso un segundo
  2do parametro: que es lo que queremos hacer cuando este segundo pase
  retornamos un stream ya que es una funcion que retorna stream
  */
  return Stream.periodic(const Duration(seconds: 1),(value){
    //print('Desde periodic: $value');
    return value;
  }).take(6); //este take me dejara emitir 6 valores
}