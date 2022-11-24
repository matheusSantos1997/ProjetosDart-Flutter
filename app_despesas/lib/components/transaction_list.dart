// ignore_for_file: sized_box_for_whitespace

import 'package:app_despesas/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    // transformando a lista de transaçao em resultados
    /*   List<dynamic> transactionResult = transactions.map((tr) {
      // print(tr.title);
      return Card(
        child: Row(
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.value.toStringAsFixed(2).replaceAll('.', ',')}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat('d MMM y').format(tr.date),
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            )
          ],
        ),
      );
    }).toList(); */

    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (buildContext, index) {
          final tr = transactions[index];

          return Card(
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat('d MMM y').format(tr.date),
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        // children: [...transactionResult],
      ),
    );
  }
}
