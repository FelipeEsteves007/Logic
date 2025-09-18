List<int> selectionSort(List<int> arr) {
  int n = arr.length; // tamanho do array

  for (int i = 0; i < n - 1; i++) { // percorrer o array
    int minIndex = i; //// assume que o menor valor começa na posição atual (i), no caso o primeiro indice

    for (int j = i + 1; j < n; j++) {  // percorre os elementos seguintes
      if (arr[j] < arr[minIndex]) { // se encontrar um valor menor...
        minIndex = j; //  ...atualiza o índice do menor valor
      }
    }
    int temp = arr[minIndex];
    arr[minIndex] = arr[i];
    arr[i] = temp;
    print("Menor valor encontrado na passada $i : ${arr[i]}");
  }
  return arr;
}

void main() {
  print(selectionSort([7, 5, 1, 8, 3]));
}
