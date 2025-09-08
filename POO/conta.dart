import 'interfaceTransferivel.dart';

abstract class Conta implements Interfacetransferivel {  // classes são moldes
  String titular; // atributos são caracteristcas
  double _saldo; // privado - apenas a classe pode acessar

  Conta(this.titular, this._saldo); // construtor que serve inicializar o objeto
  
  // comportamentos desse objeto

  void receber (double valor){
    _saldo += valor;
    imprimirSaldo();
  }

  void enviar (double valor){
    if (valor > saldo){
      print('O valor é maior que seu saldo');
    } else {
      _saldo -= valor;
    }
    imprimirSaldo();
  }

  void imprimirSaldo (){
     print("Saldo atual de $titular: R\$ ${_saldo.toStringAsFixed(2)}");
  }

  double get saldo => _saldo; 
  set saldo(double valor) => _saldo = valor;
}