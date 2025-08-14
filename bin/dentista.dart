import 'profissional.dart';
import 'agendamento.dart';

class Dentista extends Profissional implements Agendamento{
  Dentista (super.nome);

  @override
  void calcularDuracaoConsulta(){
    print ("Duracação de 30min");
  }

  @override
  void verificaDisponibilidade(){
    print("Ver no calendário");
  }
}