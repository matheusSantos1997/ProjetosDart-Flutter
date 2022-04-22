// armazenando objetos
class Usuario {
  String nome;
  int idade;

  Usuario(this.nome, this.idade);
}

void main() {
  /* List<String> lista = ['Morango', 'Manga', 'Banana'];
  lista.add('Melancia'); // insere um item na lista
  // lista.insert(0, 'Pera'); // insere e escolhe em qual posiçao da lista que adicionar o item
  lista.removeAt(0); // remove o item pelo indice
  print(lista);
  print(lista.contains(
      'Manga')); // constains verifica se contém determinado item na lista
  // armazenando objetos */

  List<Usuario> usuarios = [];
  usuarios.add(Usuario('Matheus', 24));
  usuarios.add(Usuario('Fulano', 1000));
  usuarios.add(Usuario('Ciclano', 30));

  usuarios.forEach((u) {
    print('Nome: ${u.nome} Idade: ${u.idade}');
  });
  // for (Usuario usuario in usuarios) {
  //   print('Nome: ${usuario.nome} Idade: ${usuario.idade}');
  // }
}
