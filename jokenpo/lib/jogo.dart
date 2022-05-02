// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace
import 'dart:math';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("images/padrao.png");
  String _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada(String escolhaUsuario) {
    List<String> opcoes = ["pedra", "papel", "tesoura"];
    int numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print("Escolha do App: $escolhaApp");
    print("Escolha do usuário: $escolhaUsuario");

    // exibiçao da imagem escolhida pelo App
    switch (escolhaApp) {
      case "pedra":
        setState(() {
          _imageApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _imageApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _imageApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    // validaçao do ganhador
    // usuario ganhador
    if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
      setState(() {
        _mensagem = "Parabéns!!! Você ganhou :)";
      });
    } else if ((escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
        (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
        (escolhaApp == "papel" && escolhaUsuario == "pedra")) {
      setState(() {
        _mensagem = "Você perdeu :(";
      });
    } else {
      setState(() {
        _mensagem = "Opa!! houve um empate";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JokenPo"),
          backgroundColor: Colors.blue[400],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // text
              // image
              //text result
              // line 3 images
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "Escolha do App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image(
                image: _imageApp,
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  _mensagem,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('pedra'),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('papel'),
                    child: Image.asset(
                      "images/papel.png",
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada('tesoura'),
                    child: Image.asset(
                      "images/tesoura.png",
                      height: 100,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 3)),
                  GestureDetector(
                    onTap: () => _limparRodada(),
                    child: Image.asset(
                      "images/clean.png",
                      height: 100,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  _limparRodada() {
    setState(() {
      _imageApp = AssetImage("images/padrao.png");
      _mensagem = "Escolha uma opção abaixo";
    });
  }
}
