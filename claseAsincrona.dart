/**NOTEMOS QUE EN LA CLASE future.dart la salida de consola nos da : 
 * Inicio del programa (1)
 * Fin del programa (3)
 * Tenemos un valor en la funcion (2) 
 * pero si colocamos en la clase main la palabvra resevada (async) nosotros podemos
 * hacer que este codigo corra de manera lineal o sea nos mostrara (1)(2)(3) de manera lineal 
*/
void main() async{
  print('Inicio del programa');
  try{
    final value = await httpGet('https//fernando-herrera.com/cursos');
    print(value);
  }catch(e){
    print(e);
  }
  
  print('Fin del programa');
}
//crearemos un future 
//un async siempre nos devolvera un future
Future<String> httpGet(String url) async{
  //a comparacion de la clase future este codigp se modifico
  //el await nos hara detener la aplicacion por 1 seg y luego retornamos el return
  //await transforma los futures como si fuera codigo sincrono y secuencial
  await Future.delayed(const Duration(seconds: 1));
  //si colocamos el throw se ira directo al error y en el main entrara al catch
  throw 'Error al momento de hacer la peticion';
  //si colocamos el return todo saldra bien y nos mandara al try
  //return 'Tenemos un valor de la funcion';
}
