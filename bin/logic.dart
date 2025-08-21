void main (){
  List<String> palavras = ["Abacaxi", "Banana", "Amora", "Laranja", "Ameixa"];

    List<String> comA = palavras
      .where((p) => p.endsWith("a"))
      .toList();

    print(comA);
    print(comA[1]);
}
