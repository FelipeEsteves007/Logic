import 'conta.dart';
import 'conta_corrente.dart';
import 'conta_poupanca.dart';
import 'conta_investimento.dart';

void main (){
  ContaCorrente contaFeCorrente = ContaCorrente("felps", 1000);
  ContaPoupanca contaFePoupanca = ContaPoupanca("Felipim", 1000);
  ContaInvestimento contaFeInvestimento = ContaInvestimento("felipeee", 2000);

  List<Conta> listaContas = [contaFeCorrente, contaFePoupanca, contaFeInvestimento];

  for (Conta conta in listaContas){
    print("Titular: ${conta.titular}; saldo: ${conta.saldo} ");
  }

  contaFeCorrente.enviar(1300);
  contaFePoupanca.calculaRendimento();
  contaFeInvestimento.saldoCashback();
  contaFeInvestimento.saldoCashbackImposto();
}