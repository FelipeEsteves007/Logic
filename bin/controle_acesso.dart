mixin ControleAcesso {
  bool verificaPermissao (String papel){
    return papel == "Admin";
  }

  void executarOperacao (String papel, Function operacao){
    if (verificaPermissao(papel)){
      operacao();
    } else {
      print ("permissão negada!");
    }
  }
}