class Usuario {
  // parametros que podem ser nulos
  void teste(String nome, [int? idade, double? altura]) {
    var a = altura?.toStringAsFixed(2).replaceAll('.', ',');
    print('${nome} ${idade} ${a}');
  }
}

void main() {
  Usuario u = Usuario();
  u.teste('Matheus', 24, 1.70);
}
