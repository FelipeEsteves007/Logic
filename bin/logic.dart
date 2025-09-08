void main (){
  int n = 11;

  List<int> result = convertInteger(n);
  print(result);
}

List<int> convertInteger (int n){
  for (int a = 1; a < n; a++){
    int b = n - a; //

    if (isNoZero(a) && isNoZero(b)){
      return [a,b];
    }
  }
  return [];
}

bool isNoZero (int num){
  return (!num.toString().contains('0'));
}