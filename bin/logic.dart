void main (){
  List<int> originalList = List.generate(20, (i) => i + 1);
  print(originalList);

  List<int> sublist1 = originalList.sublist(0,5);
  print("sublist 1: $sublist1");

  List<int> sublist2 = originalList.sublist(14);
  print("sublist 2: $sublist2");

}

