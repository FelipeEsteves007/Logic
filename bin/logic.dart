import 'dart:io';

void main() {
  List<String> nomeAlunos = [];
  List<List<double>> notaAlunos = [];
  menu(nomeAlunos, notaAlunos);
}

void infoAlunos (List<String> nomeAlunos, List<List<double>> notaAlunos){
  print ("Digite o nome do aluno: ");
  String? nome = stdin.readLineSync();

  if (nome != null){
    nomeAlunos.add(nome);
  }

  print ("Digite as notas do aluno:");
  List<double> notas = [];

  while(true){
    print("Digite uma nota e 'fim' parar encerrar...");
    String? entradaNota = stdin.readLineSync();

    if (entradaNota == "fim"){
      break;
    } else if (entradaNota != null){
      double nota = double.parse(entradaNota);
      notas.add(nota);
    }
  }
  notaAlunos.add(notas);
}

double media (List<double> notas){
  double soma = 0;
  for (var nota in notas){
    soma += nota;
  }
  return soma / notas.length;
}

void listarAlunos (List<String> nomeAlunos, List<List<double>> notaAlunos){
  print ("Lista de alunos e suas médias: ");
  for (int i = 0; i < nomeAlunos.length; i++){
    double m = media(notaAlunos[i]);
    print ("${nomeAlunos[i]}: ${m.toStringAsFixed(2)}");
  }
}

void menu(List<String> nomeAlunos,List<List<double>> notaAlunos){
  String? acao;
  while (acao != "sair"){
    print ("Escolha: registrar, listar, sair");
    acao = stdin.readLineSync();
    
    switch (acao){
      case 'registrar':
      infoAlunos(nomeAlunos,notaAlunos);
      break;

      case 'listar': 
      listarAlunos(nomeAlunos, notaAlunos);
      break;

      case 'sair':
      print("encerrando...");
      break;
    }
  }
}