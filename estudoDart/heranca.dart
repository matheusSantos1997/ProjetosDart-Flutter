class Animal {
  Animal(String cor);

  void dormir() {
    print('Dormindo');
  }

  void cor() {
    print('A cor do animal é');
  }

  void correr() {
    print('Correr como um');
  }
}

class Passaro extends Animal {
  Passaro(String cor) : super(cor);

  void dormir() {
    print('Dormindo');
  }

  @override
  void correr() {
    super.correr();
    print(' pássaro!');
  }

  @override
  void cor() {
    super.cor();
    print(' Azul');
  }
}

class Lagarto extends Animal {
  Lagarto(String cor) : super(cor);

  void dormir() {
    print('Dormindo');
  }

  @override // sobreescreve o metodo
  void correr() {
    super.correr();
    print(' lagarto!');
  }

  @override
  void cor() {
    super.cor();
    print(' verde');
  }
}

void main() {
  Passaro p = Passaro('azul');
  Lagarto l = Lagarto('verde');

  p.correr();
  p.cor();
  print('____________________________');
  l.correr();
  l.cor();
}
