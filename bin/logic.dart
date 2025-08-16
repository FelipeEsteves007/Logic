void main (){
  print(invertString("amor"));
}

String invertString (String str){
  return str.split('').reversed.join("");
}