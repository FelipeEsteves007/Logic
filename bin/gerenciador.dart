import 'controle_acesso.dart';
import 'agendamento.dart';

class Gerenciador with ControleAcesso{
  List<Agendamento> profissionais = [];

  void adicionar (Agendamento profissional){
    profissionais.add(profissional);
  }

  void listar (){
    for (var profissional in profissionais){
      profissional.verificaDisponibilidade();
      profissional.calcularDuracaoConsulta();
    }
  }
}