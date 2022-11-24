// ignore_for_file: sort_child_properties_last, avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // ocupa a tela de ponta a ponta
      child: ElevatedButton(
          onPressed: quandoSelecionado,
          child: Text(texto),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, foregroundColor: Colors.white)),
    );
  }
}
