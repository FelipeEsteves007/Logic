import 'dart:convert';
import 'package:http/http.dart';

void main () {
// requestDataAsync("Clarice Lispector");
requestVeterinarian("Dr. Carlos Lima");
}


// 1) Sua tarefa é criar uma função em Dart que busque todos os livros de um determinado pessoa autora e exiba os títulos dos livros encontrados no console.

requestDataAsync (String name) async {
  String url = 
  "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json"; 
  Response response = await get(Uri.parse(url));
  List<dynamic> listOfBooks = json.decode(response.body); 

  List<dynamic> byAuthor = listOfBooks
    .where((book) => book["author"] == name) 
    .toList();

  for (dynamic book in byAuthor){
    print("Title: ${book['title']}");
  }

}

// 2) Sua tarefa é criar uma função em Dart que filtre as consultas de um determinado veterinário e as organize por ordem de dia e horário e mostre na tela.
requestVeterinarian (String name )  async {
  String url =
  "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listAppointment = json.decode(response.body);

  List<dynamic> listVeterinarian = listAppointment
    .where((vet) => vet["veterinarian"] == name)
    .toList();

  listVeterinarian.sort((a, b) => DateTime.parse(a["appointment"])
    .compareTo(DateTime.parse(b["appointment"])));

    print("Consultas $name");
    for (Map<String,dynamic> appointment in listVeterinarian){
      print("Pet: ${appointment["pet_name"]} appointment: ${appointment["appointment"]}");
    }
}
