int lengthOfLastWord (String s){
  int count = 0;
  int i = s.length -1;

  while (i >= 0 && s[i] == ' '){
    i--;
  }

  while (i >= 0 && s[i] != ' '){
    count ++;
    i--;
  }

  return count;
}

void main () {
  print(lengthOfLastWord("Hello World"));                 // 5
  print(lengthOfLastWord("   fly me   to   the moon  ")); // 4
  print(lengthOfLastWord("luffy is still joyboy"));       // 6
  print(lengthOfLastWord("Hello"));                       // 5
  print(lengthOfLastWord("     "));                       // 0
}