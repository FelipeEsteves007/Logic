void main (){
  print(fibonacci(30));
}

List<int> fibonacci (int n){
  // 0 1 1 2 3 5 8

  List<int> seq = [];

  if (n < 1) return seq;
  if (n >= 1) seq.add(0);
  if (n >= 2) seq.add(1);


  // seq = [0,1]
  for (int i = 2; i < n; i++){
    int next = seq[i - 1] + seq[i - 2]; // next = seq[1] + seq[0] ou seja 1 + 0
    seq.add(next); // [0,1,1]
  }
  return seq.where((num) => num % 2 == 0).toList();
}