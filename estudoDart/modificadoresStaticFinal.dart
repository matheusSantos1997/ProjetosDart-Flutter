abstract class Configuracoes {
  static String identificadorApp = 'ettre65445gsdgdf545g4df';
  static String notificacaoSom = 'Sim';

  static void configuracaoInicial() {
    print('Executa configuraçoes adicionais');
  }
}

void main() {
  // Configuracoes config = Configuracoes();
  String result = Configuracoes.identificadorApp;
  print(result);

  Configuracoes.configuracaoInicial();
}
