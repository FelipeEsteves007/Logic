int partition(List<int> arr, int left, int right) {
  int pivot = arr[right]; // nosso pivo é o ultimo indice
  int i = left - 1; // comeca apontando pro nada

  for (int j = left; j < right; j++) {
    // percorro com o ponteiro j
    if (arr[j] <= pivot) {
      // se o indice indicado é menor ou igual ao meu pivo
      i++; // incrimento meu ponteiro i
    // troca arr[i] e arr[j]
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    }
  }
  // coloca o pivô na posição certa
  int temp = arr[i + 1];
  arr[i + 1] = arr[right];
  arr[right] = temp;

  return i + 1;
}

void quicksort(List<int> arr, int left, int right) {
  // arr, seu indice inicial e seu indice final
  if (left < right) {
    int pi = partition(arr, left, right); // dividir maiores e menores e achar a posicao certa do pivo
    quicksort(arr, left, pi - 1);
    quicksort(arr, pi + 1, right);
  }
}

void main (){
  List<int> arr = [2 ,4, 3, 6, 7, 1, 5];

  quicksort(arr, 0, arr.length - 1);
  print(arr);
}
