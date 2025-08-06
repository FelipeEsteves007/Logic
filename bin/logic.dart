import 'dart:io';

void main() {
  List<String> pagamentos = <String>["Cartão", "Boleto", "Paypal", "pix"];
  String entrada = "";

  void getOperacao() {
    print(
        "Qual o método de pagamento desejado? Temos: ${pagamentos.toString()}");

    entrada = stdin.readLineSync() ?? "";

    if (pagamentos.contains(entrada)) {
      print("Pagamento válido via $entrada");
    } else {
      print("Pagamento inválido, aceitamos apenas ${pagamentos.toString()}");
      getOperacao();
    }
  }

  getOperacao();
}
