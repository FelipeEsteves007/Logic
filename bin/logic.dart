void main() {
  String frase = "Parou! Este código não continua.";
  int index = 0; // indice de cada espaco ou letra
  do {
    print(frase[index]); // printar cada letra (printando ao menos a primeira)
    index++; // mais mais
  } while (frase.length >= index && frase[index - 1] != "!"); // enquanto a o tamanho da fra for maior que o numero do index e a posicao de index q ja foi executada
  // for diferente de ! continua
}
