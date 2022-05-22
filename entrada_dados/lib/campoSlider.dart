// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Entrada de dados Switch",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
                value: valor.truncateToDouble(),
                min: 0,
                max: 10,
                label: label,
                divisions: 5, // divisores no slider
                activeColor: Colors.red,
                inactiveColor: Colors.purple,
                onChanged: (double novoValor) {
                  setState(() {
                    valor = novoValor;
                    label = novoValor.toString();
                  });
                  // print("Valor selecionado: " + novoValor.toString());
                }),
            ElevatedButton(
              onPressed: () {
                print("Valor selecionado: " + valor.toString());
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
