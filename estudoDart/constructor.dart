// create class
class Usuario {
  String _usuario;
  String _senha;

  // Method constructor
  Usuario(this._usuario, this._senha) {
    print('authentication test');
  }

  // void method
  void autenticar() {
    String usuario = 'matheus.uspeu@gmail.com';
    String senha = '123456';

    if (_usuario == usuario && _senha == senha) {
      print('Usuário autenticado');
    } else {
      print('Usuário não autenticado');
    }
  }
}

void main() {
  // instance class Usuario
  Usuario u = Usuario('matheus.uspeu@gmail.com', '123456');

  u.autenticar();
}
