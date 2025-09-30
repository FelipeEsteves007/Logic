void insertionSort (List<int> list){
    // O loop vai até o penúltimo elemento para poder comparar i com i+1
    for (int i = 0; i < list.length - 1; i++){
        // Se o item i for maior que item i+1, esta fora de ordem
        if (list[i] > list[i+ 1]){
            // Armazena o item menor (i+1) na variavel auxiliar 
            int aux = list[i + 1]; // o menor numero fica em aux


            // Realiza a troca 
            list[i + 1] = list[i]; // o maior numero vai pra posicão da frente
            list[i] = aux; // eo menor para a posição anterior

            int j = i - 1; // Ponteiro de busca a esqueda

            while (j >= 0){ // loop para trocas a esquerda
                if(aux < list[j]){ // se o item desta posição for menor do que o item a esquerda
                    list[j+1] = list[j]; // trocamos eles de lugar
                    list[j] = aux;
                } else {
                    break; // caso não, achamos a posição
                }
                j = j - 1;
            }

        }
    }
}

void main (){
    List<int> list = [11,  5,  12, 13, 6];
    print("Lista desordenada $list");
    insertionSort(list);
    print("Lista ordenada com Insertion Sort $list");
}