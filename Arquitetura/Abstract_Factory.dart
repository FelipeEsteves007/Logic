// É um padrão que cria famílias de objetos relacionados de forma consistente.
// Cada fábrica concreta gera produtos que pertencem ao mesmo conjunto ou estilo.
// O cliente pode trocar toda a família apenas mudando a fábrica escolhida.

// ========= Produtos (interfaces) =========
abstract class Cadeira {
  String modelo();
  void sentar() => print("Sentando na cadeira ${modelo()}.");
}

abstract class Sofa {
  String modelo();
  void deitar() => print("Deitando no sofá ${modelo()}.");
}

abstract class MesaDeCentro {
  String modelo();
  void apoiar() => print("Apoiando xícaras na mesa de centro ${modelo()}.");
}

// ========= Produtos concretos: ART DÉCO =========
class CadeiraArtDeco extends Cadeira {
  @override String modelo() => "Cadeira Art Déco";
}
class SofaArtDeco extends Sofa {
  @override String modelo() => "Sofá Art Déco";
}
class MesaDeCentroArtDeco extends MesaDeCentro {
  @override String modelo() => "Mesa de Centro Art Déco";
}

// ========= Produtos concretos: VITORIANO =========
class CadeiraVitoriano extends Cadeira {
  @override String modelo() => "Cadeira Vitoriana";
}
class SofaVitoriano extends Sofa {
  @override String modelo() => "Sofá Vitoriano";
}
class MesaDeCentroVitoriano extends MesaDeCentro {
  @override String modelo() => "Mesa de Centro Vitoriana";
}

// ========= Produtos concretos: MODERNO =========
class CadeiraModerno extends Cadeira {
  @override String modelo() => "Cadeira Moderna";
}
class SofaModerno extends Sofa {
  @override String modelo() => "Sofá Moderno";
}
class MesaDeCentroModerno extends MesaDeCentro {
  @override String modelo() => "Mesa de Centro Moderna";
}

// ========= Abstract Factory =========
// Cria uma FAMÍLIA de produtos relacionados e compatíveis entre si
abstract class MoveisFactory {
  Cadeira criarCadeira();
  Sofa criarSofa();
  MesaDeCentro criarMesaDeCentro();
}

// ========= Fábricas concretas (uma por estilo/família) =========
class ArtDecoFactory implements MoveisFactory {
  @override Cadeira criarCadeira() => CadeiraArtDeco();
  @override Sofa criarSofa() => SofaArtDeco();
  @override MesaDeCentro criarMesaDeCentro() => MesaDeCentroArtDeco();
}

class VitorianoFactory implements MoveisFactory {
  @override Cadeira criarCadeira() => CadeiraVitoriano();
  @override Sofa criarSofa() => SofaVitoriano();
  @override MesaDeCentro criarMesaDeCentro() => MesaDeCentroVitoriano();
}

class ModernoFactory implements MoveisFactory {
  @override Cadeira criarCadeira() => CadeiraModerno();
  @override Sofa criarSofa() => SofaModerno();
  @override MesaDeCentro criarMesaDeCentro() => MesaDeCentroModerno();
}

// ========= Cliente =========
// Usa apenas a interface da fábrica para obter uma família inteira compatível
void montarSala(MoveisFactory fabrica) {
  final cadeira = fabrica.criarCadeira();
  final sofa = fabrica.criarSofa();
  final mesa = fabrica.criarMesaDeCentro();

  print("Conjunto escolhido:");
  print("- ${cadeira.modelo()}");
  print("- ${sofa.modelo()}");
  print("- ${mesa.modelo()}");

  // Interação com os produtos
  cadeira.sentar();
  sofa.deitar();
  mesa.apoiar();
}

void main() {
  // Altere a fábrica para trocar TODA a família mantendo o mesmo código cliente:
  montarSala(ArtDecoFactory());
  print("-----");
  montarSala(VitorianoFactory());
  print("-----");
  montarSala(ModernoFactory());
}
