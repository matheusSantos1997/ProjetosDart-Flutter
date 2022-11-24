import 'dart:math';

import 'package:app_despesas/components/transaction_form.dart';
import 'package:app_despesas/components/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, dynamic value) {
    // adiciona uma nova transaçao
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), // vai gerar um número ramdomico
      title: title,
      value: value,
      date: DateTime.now(),
    );

    // atualiza a lista de transaçao com a nova transaçao adiconada

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
