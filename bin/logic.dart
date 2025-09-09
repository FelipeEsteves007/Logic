int romanInteger (String s){
  Map<String, int> value = {
      "I" : 1,
      "V" : 5,
      "X" : 10,
      "L" : 50,
      "C" : 100, 
      "D" : 500,
      "M" : 1000
  };

  int total = 0; 

  for (int i = 0; i < s.length - 1; i++){ 
    int current = value[s[i]]!; 
    int next = value[s[i + 1]]!; 

    if (current < next){
      total -= current;
    } else {
      total += current; 
    }
  }
  total += value[s[s.length - 1]]!;

  return total;
}

void main (){
  print(romanInteger("III"));      
  print(romanInteger("LVIII"));    
  print(romanInteger("MCMXCIV"));  
}
