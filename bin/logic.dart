mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel){
    return papel == "admin";
    }

    void executarOperacao (String papel, Function operacao){
      if (verificarPermissaoAdmin(papel)){
        operacao();
      } else {
        print ("Acesso negado");
      }
    }
}

class ServisoUsuario with ControleAcesso {
  void deletar(){
    executarOperacao("admin", () => print("Deletado"));
  }
}

class ServicoProduto with ControleAcesso {
  void addProduto(){
    executarOperacao("admin", () => print("Adicionado"));
  }
}