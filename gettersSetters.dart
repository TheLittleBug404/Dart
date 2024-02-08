//en aca veremos los getters y setters
void main() {
  final Calcula rectangulo = Calcula(ancho: 20.0, altura: 30.0);
  //rectangulo.setAlto = 4.0;
  //rectangulo.setAncho =  5.0;
  print("Area del rectangulo calculada desde un Getter: ${rectangulo.area} ");
}

//clase para calcular el area de un rectangulo
class Calcula {
  //al colocar _ le volvemos de propiedad privada eso significa que esa variable solo sera visible dentro de esta clase
  double _ancho;
  double _altura;

  Calcula({required double ancho, required double altura})
      : assert(ancho >= 0 && altura >=0 ),
        _ancho = ancho,
        _altura = altura;

  //nos creamos el getter con el cual podemos hacer los mismo que la funcion calcular area
  double get area {
    return (_ancho * _altura);
  }

  //nos creaamos el setter para el ancho
  set setAncho(double valor) {
    print('Setting nuevo valor ancho $valor');
    if (valor < 0) throw ('Valor de ancho menor a cero');
    _ancho = valor;
  }
  set setAlto(double valor) {
    print('Setting nuevo valor ancho $valor');
    if (valor < 0) throw ('Valor de alto menor a cero');
    _altura = valor;
  }
}
