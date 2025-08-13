void main (){
  Medico medico = Medico();  //instanciando Tipo Medico que ira implementar a os metodos Medico
  Dentista dentista = Dentista (); // o mesmo com dentista 

  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos(); // Tipo Gerenciador que ira realizar os metodos da classe de gerenciador
  gerenciador.add(medico); // add medico
  gerenciador.add(dentista); // add dentista

  gerenciador.calc();
}

abstract class Agendamento {  // classe abstrata pois é um molde (sendo interface pois as classes que implementarão ela deverão cumprir esses dois metodos)
  calcularDuracaoConsulta();
  verificarDisponibilidade();
}

class Medico implements Agendamento{  //medico implementando a class agendamento
  @override
  calcularDuracaoConsulta() {
    print('Consulta 30 minutos');
  }
  @override
  verificarDisponibilidade() {
    print("Verificar no calendário");
  }
}

class Dentista implements Agendamento { // dentista implementado a class agendamento 
   @override
  calcularDuracaoConsulta() {
    print('Consulta 45 minutos');
  }
  @override
  verificarDisponibilidade() {
    print("Verificar intervalos ");
  }
}

class GerenciadorDeAgendamentos {  // gerenciador onde tem uma lista de profissionais 
  List<Agendamento> profissionais = [];

  void add (Agendamento profissional){ // add profissionais na lista
    profissionais.add(profissional); //profssional é do tipo agendamento onde ele ira ter dois metodos por interface (implementação)
  }

  void calc (){ // calcular e exbir os metodos 
    for (var profissional in profissionais){ // pra cada item dentro da lista fazemos: 
        profissional.calcularDuracaoConsulta();
        profissional.verificarDisponibilidade();
    }
  }
}