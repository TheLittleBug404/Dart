void main(){
  emitirCadenas().listen((int value){
    print('Stream value: $value');
  });
}
//funcion o metodo que regresa un string
Stream<int> emitirCadenas() async*{
  //emitiremos esta lista de enteros de forma secuencial
  final valuesToEmit = [1,2,3,4,5,8];
  for(int i in valuesToEmit){
    await Future.delayed(Duration(seconds: 1));
    //emitimos el valor pero en esta estructura no colocamos return
    //colocamos yield en vez de return
    yield i;
  }
}