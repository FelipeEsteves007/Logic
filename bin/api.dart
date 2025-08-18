import 'dart:convert';

import 'package:http/http.dart'; // importando http pra poder usar a uri

void main() {
  //fetchRecipes(); // chamando a função pra ser executada
  //requestDataAsync("Paulo Coelho");
  //fetchRecipesAndFilter(["ovo"]);
  //fetchPlayerAndMakeTeams();
  fetchVetAndSchedule("Dra. Patrícia Gomes");
}

fetchRecipes() {
  String url =
      "https://gist.githubusercontent.com/FelipeEsteves007/97362e5c8492c0852432a9911688a95d/raw/65875cc8ba4d53ffdb763e6c17f76bf97ce6ffd0/recipes.json"; //String url par o gist
  Future<Response> futureResponse = get(Uri.parse(
      url)); // pegando com get e transformando o gist para objeto URI, onde sera uma futura resposata (Assincrona), do tipo Respose
  print(futureResponse);
  futureResponse.then(
    (Response response) {
      // ao terminar de buscar os dados entao printa o corpo do texto (lista de maps)
      //print(response.body);
    },
  );
}

requestDataAsync(String name) async {
  // funcao assincrona
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json"; // colocando numa variavel do tipo string
  Response response = await get(Uri.parse(
      url)); // transformando a resposta em uri, colocando await pra esperar o acontecimento da função
  List<dynamic> listBooks = (json.decode(response
      .body)); // decodificamos o "o corpo do json" e colocamos numa lista
  List<dynamic> booksByAtuhor = listBooks
      .where((book) => book["author"] == name)
      .toList(); // cria uma lista de autores e percorre com where onde vemos se a string passada é igual a que tem na lsita

  for (dynamic book in booksByAtuhor) {
    print("Titule: ${book["title"]}");
  }
}

fetchRecipesAndFilter(List<String> listIngredients) async {
  // funcao assincrona
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json";
  Response response = await get(Uri.parse(url)); // pegamos a uri
  List<dynamic> listRecipes =
      json.decode(response.body); // e transformamos numa lista de receitas

  List<String> listPossibleRecipes = []; // lista de possibilidades

  for (dynamic recipeDyn in listRecipes) {
    // pra cada receita dentro da lista total de receitas
    Map<String, dynamic> recipe =
        recipeDyn as Map<String, dynamic>; // transformamos num map
    List<dynamic> recipeIngredients =
        recipe["ingredients"]; // pegamos apenas os ingredinetes desses maps

    bool containsAllIngredients = listIngredients.every(
      // verificamos se os ingrediente uqe o usuario colocou, esta na lista total de ingredientes
      (ingredient) {
        bool isContainsIngredient = false;
        for (String recipeIngredient in recipeIngredients) {
          // pra cada ingredinete
          if (recipeIngredient
              .toLowerCase()
              .contains(ingredient.toLowerCase())) {
            // comparamos
            isContainsIngredient = true;
            break;
          }
        }
        return isContainsIngredient; // retornamos se for verdadeiro ou false
      },
    );

    if (containsAllIngredients) {
      listPossibleRecipes.add(recipe[
          "name"]); // se conter adicionamis as receitas com esses ingredientes
    }
  }

  for (String recipe in listPossibleRecipes) {
    print("Receita: $recipe");
  }
}

fetchPlayerAndMakeTeams() async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
  Response response = await get(Uri.parse(url));

  Map<String, dynamic> mapPlayers = json.decode(response.body); // pegamos um map de players

  int playersPerTeam = mapPlayers["rules"]["playersPerTeam"]; // pegamos o numero de jogadores (4)

  List<dynamic> listPlayers = mapPlayers["players"]; // lista dynamic de players
  listPlayers.sort(
      (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"])); // comparamos as rodadas esperadas

  List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam); // pegamos a lista de 0 a 3 do primeiro time
  List<dynamic> listSecondTeam =
      listPlayers.sublist(playersPerTeam, playersPerTeam * 2); // depois de 4 a 7

  print("**Time A**");
  for (Map<String, dynamic> person in listFirstTeam) {
    print(person["name"]);
  }

  print("\n**Time B**");
  for (Map<String, dynamic> person in listSecondTeam) {
    print(person["name"]);
  }
}

fetchVetAndSchedule(String veterinarian) async {
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listAppointments = json.decode(response.body);

  List<dynamic> vetAppointments = listAppointments
    .where((appointments) => appointments['veterinarian'] == veterinarian)
    .toList();

  vetAppointments.sort((a, b) => DateTime.parse(a["appointment"])
    .compareTo(DateTime.parse(b["appointment"])));
    
  print("Consultas Agendadas para $veterinarian: ");
    for (Map<String, dynamic> appointment in vetAppointments){
      print("Pet: ${appointment["pet_name"]} - Horário: ${appointment["appointment"]}");
    }


}
