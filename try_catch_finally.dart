
void main() async{
  print('Inicio del programa');
  try{
    final value = await httpGet('https//fernando-herrera.com/cursos');
    print('exito: $value');
  }on Exception catch(error){
    print('Tenemos una exception: $error');
  }
  catch(e){
    print('Error algo no corrio bien : $e');
  }finally{
    print('Aca entramos al finally');
  }
  
  print('Fin del programa');
}
//crearemos un future 
//un async siempre nos devolvera un future
Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  //si colocamos el throw se ira directo al error y en el main entrara al catch
  throw Exception('No hay parametros en el URL');
  //si colocamos el return todo saldra bien y nos mandara al try
  //return 'Tenemos un valor de la funcion';
}
