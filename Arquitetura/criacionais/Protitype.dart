// É um padrão onde você não cria um objeto do zero usando new ou constructor.
// Em vez disso, você clona um objeto existente (o “protótipo”).
// Útil quando criar um objeto é caro/demorado ou quando você quer várias cópias parecidas.

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  // método clone → faz uma cópia do objeto atual
  Pessoa clone(){
    return Pessoa(nome, idade);
  }
}

void main (){
  var original = Pessoa("Felipe", 22);

   // cria uma cópia (clone)
   var copia = original.clone();

   print("original: ${original.nome}");
   print("copia: ${copia.nome}");
   copia.nome = "Larissa";
   print("copia: ${copia.nome}");


   print(identical(original, copia)); // false → objetos diferentes
}