void main (){
  List<int> idades = [17,25,94,10,16,70];

  idades.sort((a, b) => a.compareTo(b));  // sort vai ordenar vai pegar o primeiro e seindo elemento e o compare ira ver se é maior e menor para a lista toda 
  print(idades);

  idades.sort((a, b) => b.compareTo(a)); // aqui invertemos 
  print(idades);
}