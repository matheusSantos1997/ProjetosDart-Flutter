// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_const
import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  final String _conteudo =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non urna eu sem vestibulum laoreet in sit amet purus. Sed eget venenatis nibh. Sed placerat, eros ut accumsan accumsan, ipsum nunc luctus metus, ac commodo felis quam vel tortor. Donec ac enim vel quam tempus luctus at sit amet nunc. Aenean nisl metus, auctor in tortor id, sodales dignissim ex. Curabitur ac nisi neque. Mauris lacinia et nunc eget efficitur. Proin tincidunt dui auctor orci porttitor, pellentesque placerat ante lobortis. Vestibulum dictum ligula semper posuere imperdiet. Donec ac ipsum massa. Nulla convallis dapibus ultricies. Donec ornare magna tempor justo malesuada, at tempor dolor pretium. Curabitur sollicitudin leo ac lacinia viverra. Proin at dui ornare, convallis elit ultrices, consequat tortor. Mauris rutrum augue a placerat commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non urna eu sem vestibulum laoreet in sit amet purus. Sed eget venenatis nibh. Sed placerat, eros ut accumsan accumsan, ipsum nunc luctus metus, ac commodo felis quam vel tortor. Donec ac enim vel quam tempus luctus at sit amet nunc. Aenean nisl metus, auctor in tortor id, sodales dignissim ex. Curabitur ac nisi neque. Mauris lacinia et nunc eget efficitur. Proin tincidunt dui auctor orci porttitor, pellentesque placerat ante lobortis. Vestibulum dictum ligula semper posuere imperdiet. Donec ac ipsum massa. Nulla convallis dapibus ultricies. Donec ornare magna tempor justo malesuada, at tempor dolor pretium. Curabitur sollicitudin leo ac lacinia viverra. Proin at dui ornare, convallis elit ultrices, consequat tortor. Mauris rutrum augue a placerat commodo.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Sobre a empresa",
                      style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(_conteudo),
              )
            ],
          ),
        ),
      ),
    );
  }
}
