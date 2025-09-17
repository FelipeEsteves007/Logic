// É um padrão que cria um único tipo de objeto através de um método abstrato.
// Cada fábrica concreta decide como instanciar esse objeto.
// O cliente usa apenas a interface, sem conhecer a classe concreta.

// Produto: interface comum para todos os transportes
abstract class Transporte {
  void entregar();
}

// Produto concreto 1
class Carro implements Transporte {
  @override
  void entregar() {
    print("Entregar de carro...");
  }
}

// Produto concreto 2
class Bicicleta implements Transporte {
  @override
  void entregar() {
    print("Entregar de bicicleta...");
  }
}

// Criador: declara o método fábrica
abstract class TransporteFactory {
  Transporte criarTransporte();
}

// Fábrica concreta 1
class BicicletaFactory implements TransporteFactory {
  @override
  Transporte criarTransporte() {
    return Bicicleta();
  }
}

// Fábrica concreta 2
class CarroFactory implements TransporteFactory {
  @override
  Transporte criarTransporte() {
    return Carro();
  }
}

void main (){
  // Suponha que quero entregar de carro
  TransporteFactory fabricaCarro = CarroFactory(); // Usa a fábrica de Carro para criar um Transporte (Carro) e chamar seu método entregar
  Transporte transporte1 = fabricaCarro.criarTransporte();
  transporte1.entregar();

    // Agora quero entregar de bicicleta
    TransporteFactory fabricaBike = BicicletaFactory();
    Transporte transporte2 = fabricaBike.criarTransporte();
    transporte2.entregar();
}
