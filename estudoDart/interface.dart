/*
   Mixins é uma maneira de utilizar códigos em
   múltiplas hierarquias de classes
*/
// interface Pessoa
abstract class IPessoa {
  void configurar();
}

mixin Escrita {
  void escreverArtigo() {
    print('Escrever testando');
  }
}

class Pessoa with Escrita implements IPessoa {
  // implementa a interface na classe
  @override
  void configurar() {
    print('implementado com sucesso!');
  }
}

void main() {
  Pessoa p = Pessoa();
  p.configurar();
  p.escreverArtigo();
}
