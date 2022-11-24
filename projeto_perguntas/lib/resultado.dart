// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 210),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '$fraseResultado sua nota é $pontuacao',
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18),
            ),
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            onPressed: quandoReiniciarQuestionario,
          )
        ],
      ),
    );
  }
}
