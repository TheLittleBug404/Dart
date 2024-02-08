void main() {
  //instanciamos la clase Auto
  final Auto carro = Auto("Toyota", "Azul", "3589TGL");
  print(carro);
  print(carro.modelo);
  print(carro.color);
  print(carro.placa);
}

//aca definiremos la clase celular
class Celular {
  //colocaremos que ambos datos que tenemos seran opcionales con el signo ?
  String? nombre;
  String? marca;
  //podemos colocar en nuestro constructor el metodo de la clase entre llaves esto para colocarle valores de opcion a nuestros parametros 
  //que nosotros queramos
  Celular({
    required this.nombre,
    this.marca = "Sony"
  });
}

//Creamos la clase auto
class Auto {
  String modelo;
  String color;
  String placa;
  //en esta clase iniciaremos las variables desde el constructor
  //el constructor es la funcion que se llama cuando se llama a la instancia
  //en dart se inicializa el constructor de la siguiente manera
  Auto(this.modelo, this.color, this.placa);
}
