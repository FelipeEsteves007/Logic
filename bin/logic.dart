void main (){
  print(fibonacci(7));
}

List<int> fibonacci (n){
  // 0 1 1 2 3 5 8

  List<int> seq = [];

  if (n < 1 ){
    return seq;
  }

  if (n >= 1) seq.add(0);

  if(n >= 2) seq.add(1);

  for (int i = 2; i < n; i++){
    int next = seq[i-1] + seq[i-2];
    seq.add(next);
  }
  return seq;
}