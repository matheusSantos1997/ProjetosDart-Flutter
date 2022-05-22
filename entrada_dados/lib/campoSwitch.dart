// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaImagem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados Switch"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: const Text("Receber notificações ? "),
              value: _escolhaUsuario,
              onChanged: (bool? value) {
                setState(() {
                  _escolhaUsuario = value!;
                });
              },
            ),

            SwitchListTile(
              secondary: const Icon(Icons.add),
              activeColor: Colors.red,
              title: const Text("Carregar imagens automáticamente ? "),
              value: _escolhaImagem,
              onChanged: (bool? value) {
                setState(() {
                  _escolhaImagem = value!;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_escolhaUsuario && _escolhaImagem) {
                    print("escolha: ativar notificações");
                  } else {
                    print("escolha: NÃO ativar notificações");
                  }
                  // print("Resultado: " + _escolhaUsuario.toString());
                },
                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ))

            /* Switch(
                value: _escolhaUsuario,
                onChanged: (bool? value) {
                  setState(() {
                    _escolhaUsuario = value!;
                  });
                }), */

            // const Text("Receber notificações?")
          ],
        ),
      ),
    );
  }
}
