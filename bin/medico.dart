import 'profissional.dart';
import 'agendamento.dart';

class Medico extends Profissional implements Agendamento {
  Medico(super.nome);

  @override
  void calcularDuracaoConsulta(){
    print ("Duracação de 1h");
  }

  @override
  void verificaDisponibilidade(){
    print("Ver no calendário");
  }
}
