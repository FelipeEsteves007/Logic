import 'medico.dart';
import 'dentista.dart';
import 'gerenciador.dart';
void main (){
  Medico medico = Medico("Medico 1");
  Dentista dentista = Dentista("Destinsta 1");

  Gerenciador gerenciador = Gerenciador();

  gerenciador.adicionar(medico);
  gerenciador.adicionar(dentista);
  gerenciador.listar();
}