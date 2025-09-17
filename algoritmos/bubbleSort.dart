List<int> bubbleSort (List<int> list){
  int n = list.length; // tamanho da lista

  for (int i = 0; i < n - 1; i++){ // percorrer ate o penultimo elemento 
    for (int j = 0; j < n - i - 1; j++){ // percorrer e comparar
      if (list[j] > list[j + 1]){
        int temp = list[j];
        list [j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

void main (){
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  List<int> result = bubbleSort(numbers);
  print(result);
}