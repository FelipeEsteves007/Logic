void main (){
  print(isStrongPassword("Senha123!"));  // true
  print(isStrongPassword("fraco"));      // false
}

bool isStrongPassword (String passwowrd){ // chamamos uma funcao bool com a string senha
  List< bool Function(String) > rules = [ // fazemos uma lista de funcoes bool onde ira receber uma string 
    (p) => p.length >= 8, // se for maior ou igual a 8
    (p) => p.contains(RegExp(r'[A-Z]')),// deve conter letra maiuscula
    (p) => p.contains(RegExp(r'[a-z]')), // deve conter letra miniscula
    (p) => p.contains(RegExp(r'[0-9]')), // deve conter de 0 a 9
    (p) => p.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]')) // deve conter caracteres especiais
  ]; // RegExp é um detector de padroes, o r é de raw string (transforma a string em literal, sem interpretar)
    return rules.every((rule) => rule(passwowrd)); // every verifica cada funcao da lista de rules, passando a string password e assim verificando se é true ou false
}