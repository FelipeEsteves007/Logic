import 'conta.dart';
import 'mixin_imposto.dart';

class ContaInvestimento extends Conta with Imposto {
  final double cashback = 0.5;

  ContaInvestimento(
    super.titular, 
    super.saldo
    );

    void saldoCashback (){
      saldo += saldo * cashback;
      imprimirSaldo();
    }

    void saldoCashbackImposto (){
      saldo += saldo * cashback;
      saldo -= saldo * taxa;
      imprimirSaldo();
    }

}