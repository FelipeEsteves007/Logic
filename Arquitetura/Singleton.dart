class Config {
  // static pq a variavel vai pertencer a esta classe
  // final pq a variavel só pode ser atribuida uma vez
  // privada pq só pode ser acessada desta classe
  static final  Config _instancia = Config._();

  Config._(); // construtor ele é privado pq evita que outras partes do codigo instaciem 

  factory Config() => _instancia; // factory é um construtor que desenvolve outros 

  String idioma = "pt-BR";
  String tema = "claro";

  void mudarIdioma(String novo) {
    idioma = novo;
  }

  void mudarTema(String novo) {
    tema = novo;
  }

  void mostrar() {
    print("Idioma: $idioma | Tema: $tema");
  }

}

void main() {
 
  var a = Config();
  var b = Config();

  a.mudarIdioma("en-US");
  a.mudarTema("escuro");

  a.mostrar(); 
  b.mostrar(); 

  print(identical(a, b)); // apontam para o mesmo objeto na memoria 
}
//Fornece um ponto de acesso global → ou seja, qualquer lugar do seu código pode chamar Config() e ter acesso à mesma instância.
//Garante que uma classe tenha uma única instância