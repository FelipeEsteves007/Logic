void main() {
  int num = 8;
  bool isPrime = true;

  if (num <= 1) {
    print("Is not prime");
    isPrime = false;
  } else {
    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
  }

  if (isPrime) {
    print("Its prime");
  } else {
    print("Its not prime");
  }
}
