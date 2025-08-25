void main (){
  List<int> idades = [17,19,12,45,70];

  idades.sort();
  print(idades);

  idades.sort((a, b) => b.compareTo(a));
  print(idades);
}