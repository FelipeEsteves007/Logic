bool isStrongPassword (String password){  // funcao boleana onde recebe a senha
  List<bool Function(String)> rules = [ // lista de funcoes bool
    (p) => p.length >= 8, // se a senha maior ou igual a 8 
    (p) => p.contains(RegExp(r'[A-Z]')), // se a senha conter letra maiuscula
    (p) => p.contains(RegExp(r'[a-z]')),
    (p) => p.contains(RegExp(r'[0-9]')),
    (p) => p.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))
  ];

  return rules.every((rule) => rule(password)); // “Todos os elementos da lista atendem a essa condição?” 
} 

void main () {
   print(isStrongPassword("Senha123!"));  // true
  print(isStrongPassword("fraco"));      // false
}