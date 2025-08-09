void main() {
  int num = 10;
  bool isPrime = true;

  if (num <= 1) {
    isPrime = false;
  } else {
    for (var i = 2; i < num; i++) {
      if (num % i == 0) {
        isPrime = false;
      }
    }
  }

  if (isPrime) {
    print("Its prime!");
  } else {
    print("Its not prime!!");
  }
}
