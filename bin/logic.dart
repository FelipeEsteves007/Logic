void main (){
  String texto =  "Parou! Este código não continua.";
  int i = 0;

  do {
    print(texto[i]);
    i++;
  } while (i <= texto.length && texto[i - 1] != "!" );
}