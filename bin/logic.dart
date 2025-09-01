void main (){
  List<int> num = List.generate(20, (i) => i + 1);
  print(num);

  List<int> first = num.sublist(0,5);
  print(first);

  List<int> less = num.sublist(num.length - 5);
  print(less);
}


