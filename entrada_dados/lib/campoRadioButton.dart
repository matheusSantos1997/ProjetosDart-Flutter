// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: const Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha!);
                }),
            RadioListTile(
                title: const Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha!);
                }),
            ElevatedButton(
                onPressed: () {
                  print("Resultado: " + _escolhaUsuario!);
                },
                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ))

            /* const Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: " + escolha!);
                }),
            const Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: " + escolha!);
                }) */
          ],
        ),
      ),
    );
  }
}
