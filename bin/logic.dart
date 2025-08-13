void main() {
  Ingrediente banana = Fruta("banana", "Fruta");
  Ingrediente cenoura = Legume("cenoura", "legume");
  Ingrediente sal = Tempero("sal", "tempero");

  banana.detalhes();
  cenoura.detalhes();
  sal.detalhes();
}

class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes() {
    print("Nome: $nome, Tipo: $tipo");
  }
}

class Fruta extends Ingrediente {
  Fruta(super.nome, super.tipo);

  @override
  void detalhes() {
    print("As frutas geralmente não são cozidas nas receitas. ");
  }
}

class Legume extends Ingrediente {
  Legume(super.nome, super.tipo);
  @override
  void detalhes() {
    print("Os legumes geralmente precisam ser cozidos nas receitas.");
  }
}

class Tempero extends Ingrediente {
  Tempero(super.nome, super.tipo);

  @override
  void detalhes() {
    print("Os temperos são usados para condimentar os alimentos.");
  }
}
