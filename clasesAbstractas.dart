//en aca veremos lo que son las clases abstractas y la palabra reservada extends
//Son moldes que nos sirven para crear otros moldes
//una clase abstracta no se puede instanciar por si misma
void main() {
  //final plantaEnergia = EnergyPlant();
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);

  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print("Wind: ${chargePhone(windPlant)}");
  print("Nuclear: ${chargePhone(nuclearPlant)}");
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Energia no suficiente');

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

//creamos la clase abstracta
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear,wind,water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumoEnergia(double cantidadEnergia) {
    throw UnimplementedError();
  }
}

//como nostros dijimos nos crearemos otras clases
//la palabra extends es herancia de otra clase
class WindPlant extends EnergyPlant {
  //nos creamos nuestro constructor de la clase WindPlant
  WindPlant({required double initialEnergy})
      : super(
            energyLeft: initialEnergy,
            type:
                PlantType.wind); //aca implementamos la herencia del constructor

  //ahora tambien colocamos los metodos de la clase padre
  //estos metodos tienen que llamarse exactamente igual y cumplir con la misma firma
  @override
  void consumoEnergia(double amount) {
    energyLeft -=
        amount; //para este ejemplo le colocaremos que el energy sera la resta entre este y el amount
  }
}

//ahora implementaremos una clase
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear; // le podemos colocar de tipo final por que nunca lo cambiaremos
  
  NuclearPlant({required this.energyLeft});

  @override
  void consumoEnergia(double amount) {
    energyLeft -=(amount*0.5); //para este ejemplo le colocaremos que el energy sera la resta entre este y el amount
  }
}
