// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print
import 'package:flutter/material.dart';

class CampoCheckBox extends StatefulWidget {
  const CampoCheckBox({Key? key}) : super(key: key);

  @override
  State<CampoCheckBox> createState() => _CampoCheckBoxState();
}

class _CampoCheckBoxState extends State<CampoCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                // checkbox com texto incluído
                title: const Text("Comida brasileira"),
                subtitle: const Text("A Melhor comida do mundo"),
                tileColor: Colors.cyanAccent,
                activeColor: Colors.redAccent,
                selected: false,
                secondary: const Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool? valor) {
                  setState(() {
                    _comidaBrasileira = valor!;
                    print(valor);
                  });
                }),
            CheckboxListTile(
                // checkbox com texto incluído
                title: const Text("Comida Mexicana"),
                subtitle: const Text("A comida mais apimentada do mundo"),
                tileColor: Colors.greenAccent,
                activeColor: Colors.redAccent,
                selected: false,
                secondary: const Icon(Icons.add_box),
                value: _comidaMexicana,
                onChanged: (bool? valor) {
                  setState(() {
                    _comidaMexicana = valor!;
                    print(valor);
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print("Comida brasileira: " +
                      _comidaBrasileira.toString() +
                      " Comida mexicana: " +
                      _comidaMexicana.toString());
                },
                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ))

            /* const Text("Comida brasileira"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool? valor) {
                  setState(() {
                    _estaSelecionado = valor!;
                  });
                  print("Checkbox: " + valor.toString());
                }) */
          ],
        ),
      ),
    );
  }
}
