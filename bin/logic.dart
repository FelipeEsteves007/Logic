void main (){
  List<String> words = ["Abacaxi", "Banana", "Amora", "Laranja", "Ameixa"];

 List<String> withA = words.where((p) => p.startsWith("A")).toList();
 print(withA);
 print(withA[0]);
}