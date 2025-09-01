void main (){
  print(recursiva(7));
}

int recursiva (int n){
  if (n == 1){
    return 1;
  }
  return n + recursiva(n - 1);
}

