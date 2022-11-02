import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';

import './questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.quandoResponder,
      super.key});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : null;
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((r) => Resposta(r, quandoResponder)).toList(),
      ],
    );
  }
}
