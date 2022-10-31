// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns!',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
