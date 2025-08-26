void main (){
  List<int> numbers = List<int>.generate(20, (i) => i + 1);
  print(numbers);

  List<int> first = numbers.sublist(0,5);
  print(first);

  List<int> less = numbers.sublist(numbers.length - 5);
  print(less);
}