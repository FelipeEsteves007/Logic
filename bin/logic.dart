void main (){
  int num = 7;
  bool primo = true;

  if (num <= 1){
    primo = false;
  } else {
    for (int i = 2; i < num; i++){
      if (num % i == 0){
        primo = false;
        break;
      }
    }
  }

  if (primo){
    print("È primo");
  } else {
    print("Não é primo");
  }
}