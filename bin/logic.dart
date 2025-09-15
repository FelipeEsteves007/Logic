int maximumNumberOfWords (String text, String brokenLetters){
  Set<String> letters = brokenLetters.split('').toSet(); // {"a", "d"}, separou letras

  List<String> words = text.split(' '); // separou as palavras, "hello" e "world"

  int count = 0; // contador 

  for (String word in words){
    bool isValid = true;

    for (int i = 0; i < word.length; i++){
      if (letters.contains(word[i])){
        isValid = false;
        break;
      }
    }
    if (isValid){
      count ++;
    }
  }
  return count;
}




void main (){
  String text = "hello world";
  String brokenLetters = "ad";

  int result = maximumNumberOfWords(text, brokenLetters);
  print("Palavras que podemos escrever $result");

}