// todo en dart empieza con una funcion main
//main es del tipo dynamic eso significa que puede regresar cualquier cosa
//para que no sea dynamic debemos colocar un void a la funcion para que no retorne nada
void main() {
  // !las instrucciones en dart terminan con ; este no es opcional
  var myName = "Fernando";
  //tambien podemos definir un string de la siguiente manera
  String myLastName = "Jauregui";
  //tambien podemos definir variables del tipo final estas variables ya no se pueden cambiar son constantes (val en kotlin)
  //una vez establecido su valor ya no se puede restablecer
  final String miNombre = 'Ricardo';
  //LATE con este le decimos que le daremos una asignacion tardia no es necesario iniciarlo en ese momento
  late final int numero;
  numero = 5;
  //las constantes son variables que no cambiaran nunca a travez de nuestro programa
  const constante = 'Lima';
  // * al momento de imprimir podemos colocarle una funcion como toLowerCase siempre y cuando estos vengan dentro de las llaves
  print(
      "Hola $miNombre ${myName.toLowerCase()} ${myLastName.toUpperCase()} $constante $numero");
}
