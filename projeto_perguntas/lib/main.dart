// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cachorro', 'pontuacao': 5},
        {'texto': 'Gato', 'pontuacao': 3},
        {'texto': 'Hamster', 'pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto': 'Vinicius', 'pontuacao': 10},
        {'texto': 'Joao', 'pontuacao': 5},
        {'texto': 'Leo', 'pontuacao': 3},
        {'texto': 'Bonieky', 'pontuacao': 1}
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao; // soma a pontuacao
      });
    }
    // print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> widgets;

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Perguntas'),
            backgroundColor: Colors.purple,
          ),
          body: Container(
              child: SingleChildScrollView(
            child: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    quandoResponder: _responder)
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
          )),
        ));
  }
}
