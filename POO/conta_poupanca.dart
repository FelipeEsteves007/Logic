import 'conta.dart';

class ContaPoupanca extends Conta {
  final double rendimento = 0.03;
  
  ContaPoupanca(
    super.titular, 
    super.saldo,
    );

  void calculaRendimento (){
    saldo += saldo * rendimento;
    imprimirSaldo();
  } 

}