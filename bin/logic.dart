void main (){
  List<String> palavras = ["Abacaxi", "Banana", "Amora", "Laranja", "Ameixa"];

  List<String> withA = palavras.where((caractere) => caractere.startsWith("A")).toList();
  print(withA);
  print(withA[0]);

}