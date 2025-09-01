void main (){
  List<String> palavras = ["Abacaxi", "Banana", "Amora", "Laranja", "Ameixa"];
  List<String> comA = palavras.where((palavra) => palavra.startsWith("A")).toList();
  print(comA);
  print(comA[0]);
}