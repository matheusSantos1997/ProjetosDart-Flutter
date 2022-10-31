// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import './resultado.dart';
import './questao.dart';
import './resposta.dart';

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

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': ['Coelho', 'Cachorro', 'Gato', 'Hamster'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': ['Vinicius', 'Joao', 'Leo', 'Bonieky'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
    // print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    // List<Widget> widgets;

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Menu Teste'),
            ),
            body: temPerguntaSelecionada
                ? Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // children pode receber varios Widgets
                      Questao(
                          _perguntas[_perguntaSelecionada]['texto'].toString()),
                      ...respostas
                          .map((r) => Resposta(r, _responder))
                          .toList(), // converte a lista de strings em lista de widget
                    ],
                  )
                : Resultado()));
  }
}
