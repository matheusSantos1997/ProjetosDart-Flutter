// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // text, number, emailAddress, datetime
              keyboardType: TextInputType.text, // tipo de teclado utilizado
              decoration: InputDecoration(
                  labelText: "Digite um valor", counterText: ""), // placeholder
              enabled: true, // desabilita ou habilita campo
              maxLength: 6, // limita o máximo e caracteres
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              style: TextStyle(color: Colors.black),
              obscureText: true, // criptografa o texto como campo senha
              // onChanged: (String e) { // executa a callback sempre que um valor for alterado
              //   // funcao quando um valor é modificado
              //   print("valor digitado: " + e);
              // },
              onSubmitted: (String texto) {
                print("valor enviado " + texto);
              },
              controller: _textEditingController, // captura o que foi digitado
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("valor digitado: " + _textEditingController.text);
            },
            child: Text("Salvar", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
          )
        ],
      ),
    );
  }
}
