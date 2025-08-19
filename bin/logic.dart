// 0 1 2 3 5 8

List<int> fibonacci(int num) {
  List<int> seq = [];

  if (num <= 0) {
    return seq;
  }

  if (num >= 1) seq.add(0);

  if (num >= 2) seq.add(1);

  for (int i = 2; i < num; i++) {
    int next = seq[i - 1] + seq[i - 2];
    seq.add(next);
  }
  return seq;
}

void main() {
  print(fibonacci(7));
}
