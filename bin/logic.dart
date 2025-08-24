void main (){
  List<int> numbers =  List.generate(20, (i) => i + 1);
  print(numbers);

  List<int> firstFive = numbers.sublist(0,5);
  print(firstFive);

  List<int> lastFive = numbers.sublist(numbers.length - 5);
  print(lastFive);
}