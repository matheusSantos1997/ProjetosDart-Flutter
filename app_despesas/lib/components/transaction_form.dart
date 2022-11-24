// ignore_for_file: avoid_print, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  // final valueController = TextEditingController();

  final MoneyMaskedTextController moneyMaskedTextControllerValue =
      MoneyMaskedTextController(
          thousandSeparator: '.', decimalSeparator: ',', precision: 2);

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(
            moneyMaskedTextControllerValue.text.replaceAll(",", ".")) ??
        0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: titleController,
            onSubmitted: (_) => _submitForm(),
            decoration: const InputDecoration(labelText: 'Título'),
          ),
          TextField(
            controller: moneyMaskedTextControllerValue,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (_) => _submitForm(), // submit via teclado
            decoration: const InputDecoration(labelText: 'Valor (R\$)'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text("Nova Transação"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.purple)),
            ],
          )
        ]),
      ),
    );
  }
}
