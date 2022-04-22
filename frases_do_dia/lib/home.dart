// ignore_for_file: file_names, prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_final_fields
  List<String> _frases = [
    "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
    "Novas amizades serão sempre bem-vindas.",
    "A vida e uma caixa preta nunca saberemos o seu real significado.",
    "não deveríamos temer a morte, mas sim a vida."
  ];

  String _fraseGerada = "Clique abaixo para gerar uma frase!";

  // gerando numeros randomicos
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    String frases = "Frases do dia";
    return Scaffold(
        appBar: AppBar(
          title: Text(frases),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity, // faz com que ocupe 100% da tela do dispositivo independente do tamanho
            /* decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber)), */
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      // onPrimary: Colors.white
                    ),
                    onPressed: _gerarFrase)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: Text("Rodapé",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ));
  }
}
