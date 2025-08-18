// 0 1 1 2 3 5 8
List<int> fibonacci (int n){ // uma funcao que retorna uma lista com um int como parametro
  List<int> seq = [];  // declaramos uma lista


  if(n <= 0) return seq; // if a funcao for menor que zero, retorna o array vazio
  if(n >= 1) seq.add(0); // if a funcao for maior ou igual a um recebe o primeiro elemento 0
  if(n >= 2) seq.add(1); // if a funcao for maior ou igual dois recebe o segundo elemento 1

  for (int i = 2; i < n; i ++){ // loop começa no dois 
    int next = seq[i -1] + seq[i - 2];  // next recebe 2 - 1 + 2 - 2 = 1 o terceiro elemento 
    seq.add(next); // add na lista 
  }
  return seq; // retorna o array da funcao 
}




void main(){
  print(fibonacci(7)); // chama a funcao
}