void main (){
  print(invertida("roma"));
}

String invertida (String palavra){
  return palavra.split('').reversed.join('');
}