class Conta {
  // double _saldo = 0;
  double _saque = 0;

  // Getter -> Obter
  double get saque {
    // validaçoes
    return this._saque;
  }

  //Setter -> Configurar
  set saque(double saque) {
    if (saque > 0 && saque <= 500) {
      this._saque = saque;
    }
  }
}

void main() {
  Conta conta = Conta();
  conta.saque = 60.00;
  print(conta.saque.toStringAsFixed(2).replaceAll('.', ','));
}
