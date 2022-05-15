// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final TextEditingController _controllerAlcool = TextEditingController();
  // final TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  final MoneyMaskedTextController _moneyMaskedTextControllerAlcool =
      MoneyMaskedTextController(
          thousandSeparator: '.', decimalSeparator: ',', precision: 2);
  final MoneyMaskedTextController _moneyMaskedTextControllerGasoline =
      MoneyMaskedTextController(
          thousandSeparator: '.', decimalSeparator: ',', precision: 2);

  void _calcular() {
    double? precoAlcool = double.tryParse(
        _moneyMaskedTextControllerAlcool.text.replaceAll(",", "."));
    double? precoGasolina = double.tryParse(
        _moneyMaskedTextControllerGasoline.text.replaceAll(",", "."));

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilizando (,)";
      });
    } else {
      /*
      * Se o preço do álcool dividido pelo preço da gasolina 
      * for >= a 0.7 é melhor abastecer com gasolina 
      * senão é melhor utilizar álcool     
      */
      double resultado = (precoAlcool / precoGasolina);

      if (resultado >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com álcool";
        });
      }

      _limparCampos();
    }
  }

  void _limparCampos() {
    _moneyMaskedTextControllerAlcool.text = "";
    _moneyMaskedTextControllerGasoline.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logo.png"),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Alcool, ex: 1,59"),
                style: TextStyle(fontSize: 22),
                controller: _moneyMaskedTextControllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina, ex: 3,59"),
                style: TextStyle(fontSize: 22),
                controller: _moneyMaskedTextControllerGasoline,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: _calcular,
                  child: Text("Calcular", style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    textStyle: TextStyle(color: Colors.white),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  _textoResultado,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
