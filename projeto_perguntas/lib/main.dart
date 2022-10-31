// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
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
  var _perguntaSelecionada = 0;

  String resposta1 = 'Resposta 1';
  String resposta2 = 'Resposta 2';
  String resposta3 = 'Resposta 3';

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _perguntas = [
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
        'respostas': ['Maria', 'Joao', 'Leo', 'Bonieky'],
      }
    ];

    List<String> respostas =
        _perguntas[_perguntaSelecionada].cast()['respostas'];

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
            body: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // children pode receber varios Widgets
                Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                ...respostas.map((t) => Resposta(t, _responder)).toList(),
              ],
            )));
  }
}
