// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, file_names
import 'package:app_despesas/components/transaction_user.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String textTitle = "Despesas Pessoais";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(textTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              child: Text("Gráfico"),
              elevation: 5,
            ),
          ),
          const TransactionUser()
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
