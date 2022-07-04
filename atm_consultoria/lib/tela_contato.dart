// ignore_for_file: prefer_const_constructors, unnecessary_const, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_contato.png"),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Contato",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("atendimento@atmconsultoria.com.br"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Telefone: (13) 3525-8596"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Celular: (13) 99589-5236"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
