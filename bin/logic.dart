void main (){
  int num = 7;
  bool isPrime = true;

  if (num <= 1){
    print ("Is not prime");
    return;
  }

  for (int i = 2; i < num; i++){
    if (num % i == 0){
      isPrime = false;
      break;
    }
  }

  if (isPrime){
    print ("It's prime");
  } else {
    print ("Is not prime");
  }
}