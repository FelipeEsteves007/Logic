String inverterString (String texto){
  return texto.split('').reversed.join();
}

void main (){
  print(inverterString("amor"));
}