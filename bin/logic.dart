int soma (List<int> list){
  int total = 0;

  for (int num in list){
    total += num;
  }
  return total;
}

int contaRecursiva (List<int> list){
  if (list.isEmpty){
    return 0;
  } else {
    return 1 + contaRecursiva(list.sublist(1));
  }
}

int listaValorAlto (List<int> list){
  int atual = list[0];
  
  for (int proximo in list){
    if (proximo > atual){
      atual = proximo;
    }
  }
  return atual;
}

int valorMaximoRecursivo (List<int> list){
  if (list.isEmpty){
    return 0;
  }
  
  if (list.length == 2){
    return list[0] > list[1] ? list[0] : list[1];
  }

  int subMax = valorMaximoRecursivo(list.sublist(1)); 
  return subMax > list[0] ? subMax : list[0]; 
}

void main (){
  print(soma([1,2,3,4,5]));
  print(contaRecursiva([1,2,3,4,5]));
  print(listaValorAlto([90,13,34,55]));
  print(valorMaximoRecursivo([90,13,34,55]));
  print(valorMaximoRecursivo([0]));
}