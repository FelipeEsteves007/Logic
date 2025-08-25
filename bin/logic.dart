void main (){
   List<String> cidades = ["São Paulo", "Curitiba", "Rio de Janeiro", "Brasília", "Fortaleza"];

   cidades.sort();
   print(cidades);

   cidades.sort((a, b) => b.compareTo(a));
   print(cidades);
}