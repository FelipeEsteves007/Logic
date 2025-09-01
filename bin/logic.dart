void main (){
  print(isStrongPassword("Senha123!"));  
  print(isStrongPassword("fraco"));      
}

bool isStrongPassword (String senha){
  List<bool Function(String)> validacao = [
    (senha) => senha.length >= 8,
    (senha) => senha.contains(RegExp(r'[A-Z]')),
    (senha) => senha.contains(RegExp(r'[a-z]')),
    (senha) => senha.contains(RegExp(r'[0-9]')),
    (senha) => senha.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]')),
  ];
  return validacao.every((rule) => rule(senha));
}