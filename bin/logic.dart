void main (){
  List<int> idades = [10,67,11,9,45,76];

  idades.sort();
  print(idades);

  idades.sort((a, b) => b.compareTo(a));
  print(idades);
}