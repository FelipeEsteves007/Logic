void quickSort (List<int> list, int left, int right){
  if (left < right){
    int pi = partition(list, left, right);

    quickSort(list, left, pi - 1);
    quickSort(list, pi + 1, right);
  }
}

int partition (list, left, right){
  int pivot = list[right];
  int i = left - 1;

  for (int j = left; j < right; j++){
    if (list[j] <= pivot){
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  int temp = list[i + 1];
  list[i + 1] = list[right];
  list[right] = temp;
  return i + 1;
}

void main (){
  List<int> numbers = [10, 7, 8, 9, 1, 5];
  print("Antes da ordenação: $numbers");

  quickSort(numbers, 0, numbers.length - 1);

  print("Depois da ordenação: $numbers");
}