bool isStrongPassword (String password){ 
  List<bool Function(String)> rules = [
    (p) => p.length >= 8,
    (p) => p.contains(RegExp(r'[A-Z]')),
    (p) => p.contains(RegExp(r'[a-z]')),
    (p) =>  p.contains(RegExp(r'[0-9]')),
    (p) =>  p.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]')),
  ];
  return rules.every((rule) => rule(password));
}
void main (){
 print(isStrongPassword("Senha123!"));  
  print(isStrongPassword("fraco"));
}