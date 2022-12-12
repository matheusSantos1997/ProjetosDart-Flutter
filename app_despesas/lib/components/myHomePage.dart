// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, file_names, unused_element
import 'package:app_despesas/components/chart.dart';
import 'package:app_despesas/components/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:app_despesas/components/transaction_form.dart';
import 'dart:math';
import '../models/transaction.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [];

  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        const Duration(days: 7),
      ));
    }).toList();
  }

  _addTransaction(String title, dynamic value, DateTime date) {
    // adiciona uma nova transaçao
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), // vai gerar um número ramdomico
      title: title,
      value: value,
      date: date,
    );

    // atualiza a lista de transaçao com a nova transaçao adiconada

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop(); // fecha o modal após submeter o formulario
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String textTitle = "Despesas Pessoais";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          textTitle,
          style: const TextStyle(fontFamily: 'OpenSans'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Chart(_recentTransactions),
          TransactionList(_transactions),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
