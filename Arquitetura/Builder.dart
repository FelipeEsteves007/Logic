// É um padrão usado quando você precisa criar objetos complexos passo a passo.
// A ideia é separar a construção do objeto da sua representação final.
// Com Builder você consegue montar o mesmo objeto de formas diferentes, sem deixar o código cheio de construtores gigantes.
// Produto final: Sanduíche
class Sanduiche {
  String pao;
  String? carne;
  String? queijo;
  String? molho;

  Sanduiche(this.pao, {this.carne, this.queijo, this.molho});

  void mostrar() {
    print("Sanduíche: pão $pao, carne $carne, queijo $queijo, molho $molho");
  }
}

class SanduicheBuilder {
  String _pao = "francês";
  String? _carne;
  String? _queijo;
  String? _molho;

  SanduicheBuilder setPao (String pao){
    _pao = pao; // guarda o valor recebido no atributo interno
    return this;  // devolve o próprio objeto builder
  }

  SanduicheBuilder setCarne (String carne){
    _carne = carne; 
    return this;  
  }

  SanduicheBuilder setQueijo (String queijo){
    _queijo = queijo; 
    return this;  
  }

  SanduicheBuilder setMolho (String molho){
    _molho = molho;
    return this;
  }

  Sanduiche build() {
    return Sanduiche(_pao, carne: _carne, queijo: _queijo, molho: _molho);
  }
}

void main (){
  // monta um sanduíche passo a passo

  var sanduiche1 = SanduicheBuilder()
    .setPao("integral")
      .setCarne("frango")
      .setQueijo("prato")
      .build();

  var sanduiche2 = SanduicheBuilder()
      .setPao("australiano")
      .setCarne("picanha")
      .setMolho("barbecue")
      .build();     

  sanduiche1.mostrar();
  sanduiche2.mostrar(); 
}