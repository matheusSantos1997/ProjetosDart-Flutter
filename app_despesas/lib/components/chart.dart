// ignore_for_file: avoid_print

import 'package:app_despesas/components/chart_bar.dart';
import 'package:app_despesas/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  const Chart(this.recentTransaction, {super.key});

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (int index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );

      double totalSum = 0.0;

      for (int i = 0; i < recentTransaction.length; i++) {
        bool sameDay = recentTransaction[i].date.day == weekDay.day;
        bool sameMonth = recentTransaction[i].date.month == weekDay.month;
        bool sameYear = recentTransaction[i].date.year == weekDay.year;

        // verifica se é o mesmo dia, mes e ano
        if (sameDay && sameMonth && sameYear) {
          totalSum += recentTransaction[i].value;
        }
      }

      return {
        'day':
            DateFormat.E().format(weekDay)[0], // E representa o dia da semana
        'value': totalSum,
      };
    }).reversed.toList();
  }

  double get _weekTotalValue {
    return groupedTransactions.fold(0.0, (sum, item) {
      return sum + (item['value'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...groupedTransactions.map((tr) {
              return Flexible(
                // divide o os elementos do chart em tamanhos iguais
                fit: FlexFit.tight,
                child: ChartBar(
                  tr['day'].toString(),
                  double.parse(tr['value'].toString()),
                  _weekTotalValue == 0
                      ? 0
                      : double.parse(tr['value'].toString()) /
                          _weekTotalValue, // valor / totalSemana
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
