import 'package:http/http.dart';

void main (){
  fetchRecipes();
}

fetchRecipes(){
  String url = "https://gist.githubusercontent.com/FelipeEsteves007/97362e5c8492c0852432a9911688a95d/raw/65875cc8ba4d53ffdb763e6c17f76bf97ce6ffd0/recipes.json";
  Future<Response> futureResponse =  get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response) {
    print(response.body);
  },);
}