import 'conta.dart';

class ContaCorrente extends Conta {
  final double emprestimo = 300;

  ContaCorrente(super.titular, super.saldo);

  @override
  void enviar(double valor) {
    if (valor > saldo + emprestimo) {
      print('O valor é maior que seu saldo');
    } else {
      saldo -= valor; 
      print('Enviado R\$ ${valor.toStringAsFixed(2)} com sucesso!');
    }
    imprimirSaldo();
  }
}
