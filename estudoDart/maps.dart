void main() {
  // chave -> valor
  Map frutas = Map();
  frutas[0] = 'Morango';
  frutas[1] = 'Manga';

  print(frutas[0]);

  Map<int, String> estados = Map();
  estados[0] = 'São Paulo';
  estados[1] = 'Minas Gerais';
  estados[2] = 'Rio de Janeiro';

  // print(estados[0]);
  // print(estados.keys); // recupera apenas as chaves do Map
  // print(estados.values); // recupera apenas os valores do Map
  // print(estados.containsValue('Minas Gerais'));
  // estados.forEach((key, value) => {print('$key - $value')});
  Map<String, dynamic> usuarios =
      Map(); // observaçao => dinamico quando pode ser qualquer tipo de valor recebido
  usuarios['nome'] = 'Matheus';
  usuarios['idade'] = 24;

  print(usuarios);
}
