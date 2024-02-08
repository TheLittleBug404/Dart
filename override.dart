//En esta parte veremos la parte de override
void main() {
  final Laptop l =
      Laptop("Lenovo", "ideapadGAMING", "11va generacion");
  print(l);
}

//nos crearemos una clase
class Laptop {
  String marca;
  String modelo;
  String generacion;

  Laptop(this.marca, this.modelo, this.generacion);
  //nos creamos un metodo to String que retornara un String
  //en otras palabras sobreescribiremos el metodo toString que viene por defecto
  @override
  String toString() {
    return "Marca: $marca \nModelo: $modelo\nGeneracion: $generacion";
  }
}
